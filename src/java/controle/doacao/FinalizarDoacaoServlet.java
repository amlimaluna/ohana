/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.doacao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.carrinhodoacoes.carrinhodoacoes;
import modelo.carrinhodoacoes.carrinhodoacoesNegocio;
import modelo.doacao.DoacaoNegocio;

/**
 *
 * @author amaaa
 */
public class FinalizarDoacaoServlet extends HttpServlet {

protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        String usuarioEmail = (String) session.getAttribute("email");
        String data = request.getParameter("data");
        System.out.println("#### " + data);
        
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
        
        DoacaoNegocio doacaoNegocio = new DoacaoNegocio ();
        boolean sucesso = false;
        try {
            int doacaoId = doacaoNegocio.obterId();
            sucesso = doacaoNegocio.inserir(doacaoId, usuarioEmail,data);
            for (int i = 0; i < carrinhoDoacoes.size(); i++) {
                carrinhodoacoes c = carrinhoDoacoes.get(i);
                doacaoNegocio.inserirDoacaoItem(doacaoId, c.getItem().getId(), c.getQuantidade());
            }
        } catch (Exception ex) {
            sucesso = false;
        }
        
        if (sucesso) {
            request.setAttribute("mensagem", "Doacão marcada com sucesso! Aproveite e volte sempre.");
            cookie.setValue("");
            response.addCookie(cookie);
            request.getRequestDispatcher("VerDoacaoUsuarioServlet").forward(request, response);
         } else {
            request.setAttribute("mensagem", "Não foi possível marcar essa docao.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }


}
