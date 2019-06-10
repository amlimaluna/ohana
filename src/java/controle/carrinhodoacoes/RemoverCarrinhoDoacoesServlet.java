/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.carrinhodoacoes;

import java.io.IOException;
import java.io.PrintWriter;
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
public class RemoverCarrinhoDoacoesServlet extends HttpServlet {

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
        int itemId = Integer.parseInt(request.getParameter("itemId"));

        Cookie cookie = null;
        Cookie[] cookies = request.getCookies();
        for (int i = 0; cookies != null && i < cookies.length; i++) {
            Cookie c = cookies[i];
            if (c.getName().equals("pw1.cc")) {
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

        cookieValor = carrinhodoacoesNegocio.removerItem(cookieValor, itemId);

        cookie.setValue(cookieValor);
        cookie.setMaxAge(Integer.MAX_VALUE);

        response.addCookie(cookie);

        request.setAttribute("mensagem", "Item removido da sua lista!");
        request.getRequestDispatcher("VerDoacoesServlet").forward(request, response);
        response.sendRedirect("VerDoacoesServlet");
    }


}
