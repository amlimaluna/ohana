/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.item;

import java.util.List;
import modelo.doacao.DoacaoDAO;

/**
 *
 * @author amaaa
 */
public class ItemNegocio {
 
        public boolean inserir(String descricao, int categoria_id) {
        ItemDAO dao = new ItemDAO();
        return dao.inserir(descricao,categoria_id);
    }

    public boolean alterar(int id, String descricao, int categoria_id) {
        ItemDAO dao = new ItemDAO();
        return dao.alterar(id, descricao,categoria_id);
    }

    public boolean excluir(int id) {
        DoacaoDAO doacaoDAO = new DoacaoDAO();
        doacaoDAO.excluirItemDaDoacaoItem(id);
        ItemDAO dao = new ItemDAO();
        return dao.excluir(id);
    }
    
    public Item obterItem (int id) {
        ItemDAO dao = new ItemDAO();
        return dao.obterItem(id);
    }

    public List<Item> obterTodos() {
        ItemDAO dao = new ItemDAO();
        return dao.obterTodos();
    }
    
    
}
