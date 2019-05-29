/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.item;

import static config.ConfiguracaoBD.JDBC_SENHA;
import static config.ConfiguracaoBD.JDBC_URL;
import static config.ConfiguracaoBD.JDBC_USUARIO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author amaaa
 */
public class ItemDAO {
    
    public List<Item> obterTodos() {
        List<Item> resultado = new ArrayList<Item>();
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT id, descricao, categoria_id FROM item");
            while (resultSet.next()) {
                Item item = new Item();
                item.setId(resultSet.getInt("id"));
                item.setDescricao(resultSet.getString("descricao"));
                item.setCategoriaId(resultSet.getInt("categoria_id"));
                resultado.add(item);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            return new ArrayList<Item>();
        }
        return resultado;
    }

    public Item obterItem(int id) {

        Item item = null;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareCall("SELECT id, descricao, categoria_id FROM item WHERE id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                item = new Item();
                item.setId(resultSet.getInt("id"));
                item.setDescricao(resultSet.getString("descricao"));
                item.setCategoriaId(resultSet.getInt("categoria_id"));

            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return null;
        }
        return item;
    }

    public boolean inserir(String descricao, int categoria_id) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO item (descricao,categoria_id) VALUES (?, ?)");
            preparedStatement.setString(1, descricao);
            preparedStatement.setInt(2, categoria_id);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {

            return false;
        }
        return resultado;
    }

    public boolean alterar(int id, String descricao, int categoria_id) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE item SET descricao = ?, categoria_id = ? WHERE id = ?");
            preparedStatement.setString(1, descricao);
            preparedStatement.setInt(2, categoria_id);
            preparedStatement.setInt(3, id);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }

    public boolean excluir(int id) {
        System.out.println("achou");
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM item WHERE id = ?");
            preparedStatement.setInt(1, id);
            int r = preparedStatement.executeUpdate();
            System.out.println(r);
            resultado = (r > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return false;
        }
        return resultado;
    }
    
}
