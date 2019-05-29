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
import javax.servlet.http.HttpSession;
import modelo.doacao.DoacaoNegocio;
import modelo.doacao.Doacao;

/**
 *
 * @author amaaa
 */
public class VerDoacaoUsuarioServlet extends HttpServlet {

       protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
        HttpSession session = request.getSession();
        DoacaoNegocio doacaoNegocio = new DoacaoNegocio();
        List<Doacao> resultado = doacaoNegocio.obterPorUsuario(session.getAttribute("email").toString());
        
        request.setAttribute("resultado", resultado);
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/minhasdoacoes.jsp");
        rd.forward(request, response);
    }
}
