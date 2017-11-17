
package br.com.canvasweb.controller;

import br.com.canvasweb.dao.CadastroUsuarioDAO;
import br.com.canvasweb.dominio.Portfolio;
import br.com.canvasweb.dominio.Projetos;
import br.com.canvasweb.dominio.Usuario;
import com.google.gson.Gson;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
public class CanvasController extends HttpServlet  {

        @RequestMapping("gravar")
        public void iniciando (Usuario cadastro,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

            CadastroUsuarioDAO dao = new CadastroUsuarioDAO();            
          try{
              if((dao.adiciona(cadastro))){

                 request.setAttribute("mensagem","Cadastrado com sucesso!");
                 RequestDispatcher dis = request.getRequestDispatcher("/cadastroUsuario");
                 dis.forward(request, response);
              }else{

                 request.setAttribute("mensagemError","E-mail já cadastrado");
                 RequestDispatcher dis = request.getRequestDispatcher("/cadastroUsuario");
                dis.forward(request, response);
              }              
          }catch(SQLException ex){
              System.out.println(ex);
          }
        }
        
        @RequestMapping("gravarCanvas")
        public void iniciandoCanvas (Model model, Projetos canvas, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            String pagina = "index.jsp?erro=1"; 
            CadastroUsuarioDAO dao = new CadastroUsuarioDAO();
            if(dao.adicionaCanva(canvas)){
                pagina="/cadastrarCanvas";
                request.setAttribute("mensagem","Cadastrado com sucesso!");
            }else{
                pagina = "/cadastrarCanvas";
                request.setAttribute("mensagem","Falha ao cadastrar");
            }
            RequestDispatcher dis = request.getRequestDispatcher(pagina);
            dis.forward(request, response);
            
        }
        
        @RequestMapping("cadastrarCanvas")
        public String cadastroCanvas(){
            return "/cadastrarCanvas";
        }
        
        @RequestMapping("cadastroUsuario")
        public String cadastroUsuario(){
            return "/cadastroUsuario";
        }
        
        @RequestMapping("cadastrarPortfolio")
        public String cadastroPortfolio(){
            return "/cadastrarPortfolio";
        }
     
        
        @RequestMapping("/")
        public String paginaInicial(){
            return "home";
        }
        
        @RequestMapping("home")
        public String acessaHome(){
            return "home";
        }
        
        
        @RequestMapping("lista")
        public String lista(Model model){
        return "exibir";
        }
        
        @RequestMapping("listaPortfolio")
        public String exibirPortfolios(Model model){
        return "exibirPortfolios";
        }
        

        @RequestMapping("login")
        public void efetuaLogin(Usuario userlog, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
          String pagina = "index.jsp?erro=1";
          CadastroUsuarioDAO dao = new CadastroUsuarioDAO();
              Usuario usuario = new Usuario();
              usuario.setEmail(userlog.getEmail());
              usuario.setSenha(userlog.getSenha());
          Usuario usuarioAutenticado = dao.findName(usuario);
            if(usuarioAutenticado != null) { 
             HttpSession sessaoUsuario = request.getSession();           
             sessaoUsuario.setAttribute("usuario",usuarioAutenticado);  
             sessaoUsuario.setAttribute("nome", usuarioAutenticado.getNome());
             sessaoUsuario.setAttribute("tipo", usuarioAutenticado.getTipo());
                 pagina="/painelUsuario";
          }else{
            request.setAttribute("mensagem","Usuario ou senha invalidos");
            pagina = "/home";         
            }
            RequestDispatcher dis = request.getRequestDispatcher(pagina);
            dis.forward(request, response);
        } 
        
        
       @RequestMapping("painelUsuario")
        public String painelUsuario(HttpServletRequest request, HttpServletResponse response){ 
           if(request.getSession().getAttribute("usuario")!= null){
            return "/painelUsuario";
           }
           return "/home";
        }  

        //<h1> Bem vindo <% out.print(session.getAttribute("login")); %>! </h1>
        @RequestMapping("gravacadastrarPortfolio")
        public void cadastarPortfolio (Portfolio portfolio,HttpServletRequest request,  HttpServletResponse response,HttpSession session) throws ServletException, IOException{
            session = request.getSession();
            Usuario usuario =  new Usuario();
            usuario = verificaDadosSession(request,session);
            CadastroUsuarioDAO dao = new CadastroUsuarioDAO();
            int id =usuario.getIdUsuario();
            if(dao.adicionaPortfolio(portfolio, id)){
                
                request.setAttribute("mensagem","Cadastrado com sucesso!");
                RequestDispatcher dis = request.getRequestDispatcher("/cadastrarPortfolio");
            
            }  
            RequestDispatcher dis = request.getRequestDispatcher("/cadastrarPortfolio");
            dis.forward(request, response);
        }
    
        
        
       @RequestMapping("/portfolios")
        public @ResponseBody String portfolios(HttpServletRequest request,HttpSession session) throws SQLException{
            session = request.getSession();
            Usuario usuario =  new Usuario();
            usuario = verificaDadosSession(request,session);
            CadastroUsuarioDAO dao = new CadastroUsuarioDAO();
            int id = usuario.getIdUsuario();
           Gson portfolio = new Gson();
           String portfolios = portfolio.toJson(dao.buscaPortfolio(id));
           return portfolios;
        }
                
        @RequestMapping("/retorno")
        public @ResponseBody String retorno() throws SQLException{
           CadastroUsuarioDAO dao = new CadastroUsuarioDAO();
           Gson gson = new Gson();
           String retorno = gson.toJson(dao.buscaUsuario());
            return retorno;
        }
   
        @RequestMapping("logout")
        public String efetuaLogout(HttpServletRequest request, HttpSession session){
           session =  request.getSession();
           session.invalidate();
          // session.setAttribute("mensagem", "Portfolio Cadasrtado com sucesso");
           return "/home";
        }
        public Usuario verificaDadosSession(HttpServletRequest request,HttpSession session){
            Object user = session.getAttribute("usuario");
            Usuario usuario = new Usuario();
            usuario = (Usuario) user;         
            return usuario;
        }

}
