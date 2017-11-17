    
package br.com.canvasweb.dao;


import br.com.canvasweb.dominio.AcessoPortfolio;
import br.com.canvasweb.dominio.Portfolio;
import br.com.canvasweb.dominio.Projetos;
import br.com.canvasweb.dominio.QPortfolio;
import br.com.canvasweb.dominio.QAcessoPortfolio;
import br.com.canvasweb.dominio.QUsuario;
import br.com.canvasweb.dominio.Usuario;
import com.querydsl.core.types.dsl.BooleanExpression;
import com.querydsl.jpa.JPAExpressions;
import com.querydsl.jpa.impl.JPAQuery;
import java.sql.SQLException;
import java.util.List;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServlet;
import javax.persistence.EntityManager;
import org.eclipse.persistence.exceptions.QueryException;

public class CadastroUsuarioDAO extends HttpServlet{
    
    public EntityManager getEM(){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("CanvasWebAppPU");

        return factory.createEntityManager();
    }
    
    
    public boolean adiciona(Usuario cadastro) throws SQLException{
            boolean verify = false;
            EntityManager em = getEM(); //abrindo conexão            
            QUsuario usuario = QUsuario.usuario;
            JPAQuery<Usuario> query = new JPAQuery<>(em);
            try{
            Usuario user = query.select(usuario).from(usuario).where(usuario.email.eq(cadastro.getEmail())).fetchFirst();
            if(user==null){
               em.getTransaction().begin();
                em.persist(cadastro);
                em.getTransaction().commit();
                em.close();
                System.out.println("GRAVOU NOVO");
                verify = true;
            }else{
              verify = false;
            }
        }catch(Exception e){            
                System.out.println(e);               
        }

          return verify;
                  
    }
    
    public boolean adicionaCanva(Projetos canvas){
           
            EntityManager em = getEM();
            em.getTransaction().begin();
            em.persist(canvas);
            em.getTransaction().commit();
            em.close();
          return true;
            
    }
    
    public boolean adicionaPortfolio(Portfolio portfolio, int id){
           
            EntityManager em = getEM();
            em.getTransaction().begin();            
            em.persist(portfolio);
            em.getTransaction().commit();
            QUsuario usuario = QUsuario.usuario;
            JPAQuery<Usuario> query = new JPAQuery<>(em);
            Usuario user = query.select(usuario).from(usuario).where(usuario.idUsuario.eq(id)).fetchOne();
            QPortfolio pt = QPortfolio.portfolio;
            JPAQuery<Portfolio> qr = new JPAQuery<>(em);          
            Portfolio pto = qr.from(pt).orderBy(pt.IdPortfolio.desc()).limit(1L).fetchOne();            
            em.close(); 
            AcessoPortfolio accp = new AcessoPortfolio();
            accp.setIdPortfolio(pto.getIdPortfolio());
            accp.setIdUsuario(user.getIdUsuario());
            this.addAcessoPorfolio(accp);
            
     return true;
    }
    
    public void addAcessoPorfolio(AcessoPortfolio acessoportfolio){
            EntityManager em = getEM();
            em.getTransaction().begin();            
            em.persist(acessoportfolio);
            em.getTransaction().commit();
            em.close();
    }
    
  public List<Usuario> buscaUsuario() throws SQLException{
      EntityManager  em = getEM();
      em.getTransaction().begin();
      QUsuario usuario = QUsuario.usuario;
      JPAQuery<Usuario> query = new JPAQuery<>(em);
      List<Usuario> lista = query.from(usuario).fetch();

    return lista;
  }
  
  public List<Portfolio> buscaPortfolio(int id) throws SQLException{
    EntityManager  em = getEM();
    em.getTransaction().begin();
    QPortfolio portfolio = QPortfolio.portfolio;
    QAcessoPortfolio acessoPortfolio = QAcessoPortfolio.acessoPortfolio; 
    JPAQuery<Portfolio> query =  new JPAQuery<>(em);
    List <Portfolio> lista = query.select(portfolio)
                                    .from(portfolio)
                                    .innerJoin(acessoPortfolio)
                                    .on(portfolio.IdPortfolio.eq(acessoPortfolio.idPortfolio))
                                    .where(acessoPortfolio.idUsuario.eq(id))
                                    .fetch();
    return lista;
  }
         
    public Usuario findName(Usuario userLogin){
        EntityManager em = getEM();
        em.getTransaction().begin();
        QUsuario usuario = QUsuario.usuario;
        JPAQuery<Usuario> query = new JPAQuery<>(em);
        try{
        Usuario user = query.select(usuario).from(usuario).where(usuario.email.eq(userLogin.getEmail()),
                usuario.senha.eq(userLogin.getSenha())).fetchOne();
        if(user.getEmail().equals(userLogin.getEmail())){
            if (user.getSenha().equals(userLogin.getSenha())) {
                Usuario u  = new Usuario();
                u.setIdUsuario(user.getIdUsuario());
                u.setEmail(user.getEmail());
                u.setNome(user.getNome());
                u.setTelefone(user.getTelefone());
                u.setTipo(user.getTipo());
                return u;
              
            }
        
        }}catch(Exception e){
           
        }
        return null;
    }

    
}
    