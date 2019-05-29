/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.usuario;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.adm.AdministradorNegocio;
import modelo.usuario.UsuarioNegocio;

/**
 *
 * @author amaaa
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
      protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // entrada
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String perfil = request.getParameter("perfil");
        String nome = request.getParameter("nome");

        // processamento
        UsuarioNegocio usuarioNegocio = new UsuarioNegocio(); // utiliza a classe de negócio para verificar se o login e senha estão corretos
        AdministradorNegocio administradorNegocio = new AdministradorNegocio();
        
        boolean sucessoLogin1 = usuarioNegocio.efetuarLogin(email, senha);
        boolean sucessoLogin2 = administradorNegocio.efetuarLogin(email,senha);
        
        if (sucessoLogin1 && perfil.equals("usuario")) 
        { // caso o login e senha estejam corretos
            HttpSession session = request.getSession(true); // cria e referencia a sessão do usuario
            session.setAttribute("email", email); // coloca o atributo login na sessão do usuario
            session.setAttribute("perfil",perfil);//coloca o perfil na sessão usuario ou funcionario
            session.setAttribute("nome",nome);
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); // despacha a requisição para a página main.jsp, encaminhando as instância de request e response 
            rd.forward(request, response);
        }  else if (sucessoLogin2 && perfil.equals("administrador")) {
            HttpSession session = request.getSession(true); // cria e referencia a sessão do funcionario
            session.setAttribute("login", email); // coloca o atributo login na sessão do funcionario
            session.setAttribute("perfil",perfil);//coloca o perfil na sessão usuario ou funcionario
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp"); // despacha a requisição para a página main.jsp, encaminhando as instância de request e response 
            rd.forward(request, response);
        } 
           else {
         
            request.setAttribute("mensagem", "Algo está errado, não foi possível efetuar login. Dados incorretos!"); // coloca uma mensagem no objeto request
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp"); // despacha a requisição para a página index.jsp, encaminhando as instância de request e response
            rd.forward(request, response);
        }
    }

}
