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
public class IncluirAdmServlet extends HttpServlet {

     protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        // entrada
        String nome = request.getParameter("nome");
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
      
        // processamento
        AdministradorNegocio administradorNegocio = new AdministradorNegocio();
        boolean sucessoInserir = administradorNegocio.inserir(nome, login, senha);
        
        // saída
        if (sucessoInserir) {
            request.setAttribute("tipo","success");
            request.setAttribute("mensagem", "Administrador inserido com sucesso");
            RequestDispatcher rd = request.getRequestDispatcher("ListarAdmServlet");
            rd.forward(request, response);
        } else {
            request.setAttribute("tipo","danger");
            request.setAttribute("mensagem", "Não foi possível inserir este administrador");
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/administrador/novoAdm.jsp");
            rd.forward(request, response);
        }
    }

}
