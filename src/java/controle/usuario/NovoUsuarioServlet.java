/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle.usuario;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.usuario.UsuarioNegocio;

/**
 *
 * @author amaaa
 */
public class NovoUsuarioServlet extends HttpServlet {

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
        // entrada
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        // processamento
        UsuarioNegocio usuarioNegocio = new UsuarioNegocio();
        boolean sucessoInserir = usuarioNegocio.inserir(nome, email, senha);
        // saída
        if (sucessoInserir) {
            request.setAttribute("mensagem", "Cadastro efetuado com sucesso!");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        } else {
            request.setAttribute("mensagem", "Não foi possível efetuar esse cadastro!");
            RequestDispatcher rd = request.getRequestDispatcher("novoUsuario.jsp");
            rd.forward(request, response);
        }
    }


}
