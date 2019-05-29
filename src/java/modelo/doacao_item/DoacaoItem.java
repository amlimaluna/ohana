/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.doacao_item;

import modelo.item.Item;
/**
 *
 * @author amaaa
 */
public class DoacaoItem {
    
    private int doacaoId;
    private int itemId;
    private Item item;
    private int quantidade;
    
    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }
    
    public int getDoacaoId() {
        return doacaoId;
    }

    public void setDoacaoId(int doacaoId) {
        this.doacaoId = doacaoId;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    
}
