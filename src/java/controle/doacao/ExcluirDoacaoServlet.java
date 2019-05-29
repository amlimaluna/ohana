/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.doacao;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.doacao.DoacaoNegocio;

/**
 *
 * @author amaaa
 */
public class ExcluirDoacaoServlet extends HttpServlet {

       protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        int id= Integer.parseInt(request.getParameter("id"));
        
        DoacaoNegocio doacaoNegocio = new DoacaoNegocio();
        doacaoNegocio.excluirDoacaoItem(id);
        boolean sucessoExcluir = doacaoNegocio.excluir(id);
        
        if (sucessoExcluir) {
            request.setAttribute("mensagem", "Doacao excluída com sucesso");
        } else {
            request.setAttribute("mensagem", "Não foi possível excluir esta doacao");
        }
        RequestDispatcher rd = request.getRequestDispatcher("VerDoacoesAdm");
        rd.forward(request, response);
    }

}
