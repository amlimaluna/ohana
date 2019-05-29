/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.adm;

import java.util.List;

/**
 *
 * @author amaaa
 */
public class AdministradorNegocio {
    
        public boolean efetuarLogin(String login, String senha) {
            AdministradorDAO dao = new AdministradorDAO();
            Administrador adm = dao.obterAdministrador(login);
            return (adm != null && adm.getSenha().equals(senha));
    }
    
     public boolean inserir(String nome, String login, String senha) {
        AdministradorDAO dao = new AdministradorDAO();
        return dao.inserir(nome, login, senha);
    }

    public boolean alterar(String nome, String login, String senha) {
        AdministradorDAO dao = new AdministradorDAO();
        return dao.alterar(nome, login, senha);
    }

    public boolean excluir(String login) {
        AdministradorDAO dao = new AdministradorDAO();
        return dao.excluir(login);
    }
    
    public Administrador obterAdministrador (String login) {
        AdministradorDAO dao = new AdministradorDAO();
        return dao.obterAdministrador(login);
    }

    public List<Administrador> obterTodos() {
        AdministradorDAO dao = new AdministradorDAO();
        return dao.obterTodos();
    }
    
}
