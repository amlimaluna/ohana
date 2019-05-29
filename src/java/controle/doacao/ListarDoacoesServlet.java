/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.doacao;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.doacao.Doacao;
import modelo.doacao.DoacaoNegocio;

/**
 *
 * @author amaaa
 */
public class ListarDoacoesServlet extends HttpServlet {

 
            protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DoacaoNegocio doacaoNegocio = new DoacaoNegocio();
        List<Doacao> resultado = doacaoNegocio.obterTodas();
        request.setAttribute("resultado", resultado);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/doacoes/listar.jsp");
        rd.forward(request, response);
    }

}
