/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.doacao;

import java.sql.Date;
import java.util.List;
import modelo.doacao_item.DoacaoItem;



/**
 *
 * @author amaaa
 */
public class DoacaoNegocio {
    
        public List<Doacao> obterTodas() {
        DoacaoDAO dao = new DoacaoDAO();
        return dao.obterTodas();
    }
        
                public List<Doacao> obterPorUsuario(String usuario_email) {
        DoacaoDAO dao = new DoacaoDAO();
        return dao.obterPorUsuario(usuario_email);
    }
    
    public boolean inserir(int id, String usuario_email, String data) {
        DoacaoDAO dao = new DoacaoDAO();
        return dao.inserir(id, usuario_email, data);
    }
    
    public int obterId() {
    DoacaoDAO dao = new DoacaoDAO();
    return dao.obterId();
    }
    
    public boolean inserirDoacaoItem(int doacaoId, int itemId, int quantidade) {
        DoacaoDAO dao = new DoacaoDAO();
        return dao.inserirDoacaoItem(doacaoId, itemId, quantidade);
    }
    public List<DoacaoItem> obterDoacoesItens(int doacaoId) {
        DoacaoDAO dao = new DoacaoDAO();
        return dao.obterDoacoesItens(doacaoId);
    }
    
    public boolean excluir(int doacaoId) {
        DoacaoDAO dao = new DoacaoDAO();
        return dao.excluir(doacaoId);
    }
    
    public boolean excluirDoacaoItem(int doacaoId) {
        DoacaoDAO dao = new DoacaoDAO();
        return dao.excluirDoacaoItem(doacaoId);
    }
        
}
