/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.item;

/**
 *
 * @author amaaa
 */
public class Item {
    
    private int id;
    private String descricao;
    private int categoria_id;
    
        public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id=id;
    }
    
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

        public int getCategoriaId() {
        return categoria_id;
    }

    public void setCategoriaId(int categoria_id) {
        this.categoria_id=categoria_id;
    }
    
}
