/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.doacao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import modelo.doacao_item.DoacaoItem;

/**
 *
 * @author amaaa
 */
public class Doacao {
 
    private int id;
    private String usuario_email;
    private List<DoacaoItem> itens;
    private Date agendar;

    public Date getAgendar() {
        return agendar;
    }

    public void setAgendar(Date agendar) {
        this.agendar = agendar;
    }

    public Doacao() {
        itens = new ArrayList<DoacaoItem>();
    }
    

    public List<DoacaoItem> getItens() {
        return itens;
    }

    public void setItens(List<DoacaoItem> itens) {
        this.itens = itens;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id=id;
    }
    
    public String getUsuarioEmail() {
        return usuario_email;
    }

    public void setUsuarioEmail(String usuario_email) {
        this.usuario_email=usuario_email;
    }
    
}
