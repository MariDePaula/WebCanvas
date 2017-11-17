//
//package br.com.canvasweb.dao;
//
//import br.com.canvasweb.dominio.CadastroUsuario;
//import java.sql.SQLException;
//import java.util.logging.Level;
//import java.util.logging.Logger;
//
//
//public class testeBd {
//    public static void main(String[] args) {
//        CadastroUsuarioDAO dao = new CadastroUsuarioDAO();
//        CadastroUsuario cadastro = new  CadastroUsuario();
//        
//        cadastro.setNome("Janaina Jacobs Romano");
//        cadastro.setTelefone(983370107);
//        cadastro.setEmail("janaina.jcbs@hotmail.com");
//        cadastro.setTipo("administrador");
//        cadastro.setSenha("jana210111");
//       
//        
//        try {
//            dao.adiciona(cadastro);
//
//        } catch (SQLException ex) {
//            System.out.println(ex);
//        }
//        
//        
//    }
//    
//}
//            
//            
//            
////        ps.setString(1, cadastro.getNome());
////        ps.setInt(2, cadastro.getTelefone());
////        ps.setString(3, cadastro.getEmail());
////        ps.setString(4, cadastro.getTipo());
////        ps.setString(5, cadastro.getSenha());