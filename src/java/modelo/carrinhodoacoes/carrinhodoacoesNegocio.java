/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.carrinhodoacoes;

/**
 *
 * @author amaaa
 */
import java.util.ArrayList;
import java.util.List;
import modelo.item.ItemNegocio;
/**
 *
 * @author amaaa
 */
public final class carrinhodoacoesNegocio {
    
        private static final String SEPARADOR_REGISTRO = "SEPREGISTER";
    private static final String SEPARADOR_CAMPOS = "SEPFIELD";

    private carrinhodoacoesNegocio() {
        
    }
    
      public static String salvarItem(String cookieValor, int itemId, int quantidade) {
        if (cookieValor == null || cookieValor.trim().length() == 0) {
            return itemId + SEPARADOR_CAMPOS + quantidade;
        }
        if (existeItem(cookieValor, itemId)) {
            if (!cookieValor.contains(SEPARADOR_REGISTRO)) { // só existe um produto
                cookieValor = itemId + SEPARADOR_CAMPOS + quantidade;
            } else { // existe mais de um produto
                String[] itens = cookieValor.split(SEPARADOR_REGISTRO);
                cookieValor = "";
                for (String p : itens) {
                    String[] item = p.split(SEPARADOR_CAMPOS);
                    if (cookieValor.trim().length() > 0) {
                        cookieValor = cookieValor + SEPARADOR_REGISTRO;
                    }
                    if (Integer.parseInt(item[0]) == itemId) {
                        cookieValor = cookieValor + (itemId + SEPARADOR_CAMPOS + quantidade);
                    } else {
                        cookieValor = cookieValor + (Integer.parseInt(item[0]) + SEPARADOR_CAMPOS + Integer.parseInt(item[1]));
                    }
                }
            }
        } else {
            cookieValor = cookieValor + SEPARADOR_REGISTRO + (itemId + SEPARADOR_CAMPOS + quantidade);
        }
        return cookieValor;
    }

      
      
        public static boolean existeItem(String cookieValor, int itemId) {
        if (cookieValor == null || cookieValor.trim().length() == 0) {
            return false;
        }
        String[] itens = cookieValor.split(SEPARADOR_REGISTRO);
        if (itens == null || itens.length == 0) {
            itens = new String[]{cookieValor};
        }
        for (String p : itens) {
            String[] item = p.split(SEPARADOR_CAMPOS);
            if (Integer.parseInt(item[0]) == itemId) {
                return true;
            }
        }
        return false;
    }
        
          public static String removerItem(String cookieValor, int itemId) {
        if (cookieValor == null || cookieValor.trim().length() == 0) {
            return "";
        }
        if (existeItem(cookieValor, itemId)) {
            if (!cookieValor.contains(SEPARADOR_REGISTRO)) { // só existe um produto
                cookieValor = "";
            } else { // existe mais de um produto
                String[] itens = cookieValor.split(SEPARADOR_REGISTRO);
                cookieValor = "";
                for (String p : itens) {
                    String[] item = p.split(SEPARADOR_CAMPOS);
                    if (cookieValor.trim().length() > 0) {
                        cookieValor = cookieValor + SEPARADOR_REGISTRO;
                    }
                    if (Integer.parseInt(item[0]) !=itemId) {
                        cookieValor = cookieValor + (Integer.parseInt(item[0]) + SEPARADOR_CAMPOS + Integer.parseInt(item[1]));
                    }
                }
            }
        }
        return cookieValor;
    }
          
          
            public static List<carrinhodoacoes> obterCarrinhoDoacoes(String cookieValor) {
        if (cookieValor == null || cookieValor.trim().length() == 0) {
            return new ArrayList<carrinhodoacoes>();
        }
        List<carrinhodoacoes> resultado = new ArrayList<carrinhodoacoes>();
        String[] itens = cookieValor.split(SEPARADOR_REGISTRO);
        if (itens == null || itens.length == 0) {
            itens = new String[]{cookieValor};
        }
        ItemNegocio itemNegocio = new ItemNegocio();
        for (String p : itens) {
            String[] item = p.split(SEPARADOR_CAMPOS);
            carrinhodoacoes CarrinhoDoacoes = new carrinhodoacoes();
            CarrinhoDoacoes.setItem(itemNegocio.obterItem(Integer.parseInt(item[0])));
            CarrinhoDoacoes.setQuantidade(Integer.parseInt(item[1]));
            resultado.add(CarrinhoDoacoes);
        }
        return resultado;
    }
    
}
