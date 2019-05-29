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
import modelo.adm.AdministradorNegocio;
import modelo.adm.Administrador;
/**
 *
 * @author amaaa
 */
public class ObterAdmServlet extends HttpServlet {

       protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        AdministradorNegocio administradorNegocio = new AdministradorNegocio();
        Administrador adm = administradorNegocio.obterAdministrador(login);
        request.setAttribute("administrador", adm);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/administrador/alterarAdm.jsp");
        rd.forward(request, response);
    }


}
