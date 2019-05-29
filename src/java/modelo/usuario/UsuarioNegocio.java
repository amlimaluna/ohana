/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.usuario;

import java.util.List;

/**
 *
 * @author amaaa
 */
public class UsuarioNegocio {
    
     public boolean efetuarLogin(String email, String senha) {
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usuario = dao.obterUsuario(email);
        return (usuario != null && usuario.getSenha().equals(senha));
    }

      public boolean inserir(String nome, String email, String senha) {
        UsuarioDAO dao = new UsuarioDAO();
        return dao.inserir(nome, email, senha);
    }

    public boolean alterar(String nome, String email, String senha) {
        UsuarioDAO dao = new UsuarioDAO();
        return dao.alterar(nome, email, senha);
    }

    public boolean excluir(String email) {
        UsuarioDAO dao = new UsuarioDAO();
        return dao.excluir(email);
    }
    
     public Usuario obterUsuario(String email) {
        UsuarioDAO dao = new UsuarioDAO();
        return dao.obterUsuario(email);
    }

    public List<Usuario> obterTodos() {
        UsuarioDAO dao = new UsuarioDAO();
        return dao.obterTodos();
    }
    
}
