/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.carrinhodoacoes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.carrinhodoacoes.carrinhodoacoesNegocio;

/**
 *
 * @author amaaa
 */
public class AdicionarCarrinhoDoacoesServlet extends HttpServlet {
  protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        int itemId = Integer.parseInt(request.getParameter("itemId"));
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));
        //Date agendar = Date.parseDate(request.getParameter("agendar"));
        
        Cookie cookie = null;
        Cookie[] cookies = request.getCookies();
        for (int i = 0; cookies != null && i < cookies.length; i++) {
            Cookie c = cookies[i];
            if (c.getName().equals("pw1.cc")){
                cookie = c;
                break;
            }
        }

        String cookieValor = "";
        if (cookie == null) {
            cookie = new Cookie("pw1.cc", cookieValor);
        } else {
            cookieValor = cookie.getValue();
        }
        
        cookieValor = carrinhodoacoesNegocio.salvarItem(cookieValor, itemId, quantidade);
        
        cookie.setValue(cookieValor);
        cookie.setMaxAge(Integer.MAX_VALUE);
        
        response.addCookie(cookie);
        
        request.setAttribute("mensagem", "Item adicionado no carrinho de doacão");
        request.getRequestDispatcher("VerDoacoesServlet").forward(request, response);
        //pra onde vai após adicionar item no "carrinho"
    }
    
}
