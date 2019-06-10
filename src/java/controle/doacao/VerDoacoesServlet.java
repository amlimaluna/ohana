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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.carrinhodoacoes.carrinhodoacoes;
import modelo.carrinhodoacoes.carrinhodoacoesNegocio;
import modelo.doacao.Doacao;
import modelo.doacao.DoacaoNegocio;
import modelo.item.Item;
import modelo.item.ItemNegocio;

/**
 *
 * @author amaaa
 */
public class VerDoacoesServlet extends HttpServlet {

 
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ItemNegocio itemNegocio = new ItemNegocio();
        List<Item> itens = itemNegocio.obterTodos();
        request.setAttribute("itens", itens);
        
                String cookieValor = "";
        Cookie cookie = null;
        Cookie[] cookies = request.getCookies();
        for (int i = 0; cookies != null && i < cookies.length; i++) {
            Cookie c = cookies[i];
            if (c.getName().equals("pw1.cc")) {
                cookie = c;
                cookieValor = c.getValue();
                break;
            }
        }
        
        List<carrinhodoacoes> carrinhoDoacoes = carrinhodoacoesNegocio.obterCarrinhoDoacoes(cookieValor);
        request.setAttribute("carrinhoDoacoes", carrinhoDoacoes);

        if (cookie == null) {
            cookie = new Cookie("pw1.cc", "");
            cookie.setMaxAge(Integer.MAX_VALUE);
            response.addCookie(cookie);
        }
        
  
        
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/doacoes/vamosdoar.jsp");
        rd.forward(request, response);
    }

}
