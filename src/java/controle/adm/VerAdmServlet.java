/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.adm;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.adm.Administrador;
import modelo.adm.AdministradorNegocio;

/**
 *
 * @author amaaa
 */
public class VerAdmServlet extends HttpServlet {

        protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(); // recupera a sessão do usuário
        String login = (String) session.getAttribute("login"); // recupera o atributo de login armazenado na sessão do usuário, caso não existe é retornado nulo
        AdministradorNegocio administradorNegocio = new AdministradorNegocio();
        Administrador adm = administradorNegocio.obterAdministrador(login); // recupera o objeto usuário por meio do login armazenado na sessão
        if (adm != null) { // caso exista o usuário com o login armazenado na sessão
            request.setAttribute("administrador", adm);
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/administrador/verAdm.jsp");
            rd.forward(request, response);
        } else { // caso o login não exista na sessão ou não é um login válido no sistema
            request.setAttribute("mensagem", "Você não possui um login válido");
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }
    }

}
