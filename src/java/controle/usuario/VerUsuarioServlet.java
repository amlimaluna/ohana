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
import modelo.usuario.Usuario;
import modelo.usuario.UsuarioNegocio;

/**
 *
 * @author amaaa
 */
public class VerUsuarioServlet extends HttpServlet {

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
        HttpSession session = request.getSession(); // recupera a sessão do usuário
        String email = (String) session.getAttribute("email"); // recupera o atributo de email armazenado na sessão do usuário, caso não existe é retornado nulo
        UsuarioNegocio usuarioNegocio = new UsuarioNegocio();
        Usuario usuario = usuarioNegocio.obterUsuario(email); // recupera o objeto usuário por meio do email armazenado na sessão
        if (usuario != null) { // caso exista o usuário com o email armazenado na sessão
            request.setAttribute("usuario", usuario);
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/verUsuario.jsp");
            rd.forward(request, response);
        } else { // caso o email não exista na sessão ou não é um email válido no sistema
            request.setAttribute("mensagem", "Você não possui um login válido");
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }
    }

}
