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
/**
 *
 * @author amaaa
 */
public class ExcluirAdmServlet extends HttpServlet {

        protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        AdministradorNegocio administradorNegocio = new AdministradorNegocio();
        boolean sucessoExcluir = administradorNegocio.excluir(login);
        if (sucessoExcluir) {
            request.setAttribute("mensagem", "Adm excluído com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível excluir este adm");
        }
        RequestDispatcher rd = request.getRequestDispatcher("ListarAdmServlet");
        rd.forward(request, response);
    }
}
