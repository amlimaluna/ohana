/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.doacao;

import static config.ConfiguracaoBD.JDBC_SENHA;
import static config.ConfiguracaoBD.JDBC_URL;
import static config.ConfiguracaoBD.JDBC_USUARIO;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import modelo.item.ItemDAO;
import modelo.doacao_item.DoacaoItem;

/**
 *
 * @author amaaa
 */
public class DoacaoDAO {

 public int obterId() // throws Exception
    {
        int id = 0;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            String sql = "SELECT nextval('doacao_id_seq') AS id";
            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                id = rs.getInt("id");
            }
            rs.close();
            stmt.close();
            connection.close();
        } catch (Exception ex) {
            return id;
        }
        return id;
    }
    
    public boolean inserir(int id, String usuarioEmail, String data) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO doacao (id, usuario_email, agendar) VALUES (?, ?,?)");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, usuarioEmail);
            preparedStatement.setString(3,data);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;

    }
 
      public boolean inserirDoacaoItem(int doacaoId, int itemId, int quantidade) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO doacao_item (doacao_id, item_id, quantidade) VALUES (?, ?, ?)");
            preparedStatement.setInt(1, doacaoId);
            preparedStatement.setInt(2, itemId);
            preparedStatement.setInt(3, quantidade);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
    
         public List<Doacao> obterTodas() {
        List<Doacao> resultado = new ArrayList<Doacao>();
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT id, usuario_email FROM doacao");
            while (resultSet.next()) {
                Doacao doacao = new Doacao();
                doacao.setId(resultSet.getInt("id"));
                doacao.setUsuarioEmail(resultSet.getString("usuario_email"));
                doacao.setItens(obterDoacoesItens(doacao.getId()));
                resultado.add(doacao);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            return new ArrayList<Doacao>();
        }
        return resultado;
    }

         
           public List<DoacaoItem> obterDoacoesItens(int doacaoId) {
        List<DoacaoItem> resultado = new ArrayList<DoacaoItem>();
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement statement = connection.prepareStatement("SELECT doacao_id, item_id, quantidade FROM doacao_item WHERE doacao_id = ?");
            statement.setInt(1, doacaoId);
            ResultSet resultSet = statement.executeQuery();
            ItemDAO itemDAO = new ItemDAO();
            while (resultSet.next()) {
                DoacaoItem doacaoItem = new DoacaoItem();
                doacaoItem.setDoacaoId(resultSet.getInt("doacao_id"));
                doacaoItem.setItemId(resultSet.getInt("item_id"));
                doacaoItem.setQuantidade(resultSet.getInt("quantidade"));
                doacaoItem.setItem(itemDAO.obterItem(doacaoItem.getItemId()));
                resultado.add(doacaoItem);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            return new ArrayList<DoacaoItem>();
        }
        return resultado;
    }
    
              public boolean excluir(int doacaoId) {
        boolean resultado = false;
        try {
            excluirDoacaoItem(doacaoId);
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM doacao WHERE id = ?");
            preparedStatement.setInt(1, doacaoId);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
           
    public boolean excluirDoacaoItem(int doacaoId) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM doacao_item WHERE doacao_id = ?");
            preparedStatement.setInt(1, doacaoId);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
        
    
     public boolean excluirItemDaDoacaoItem(int itemId) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM doacao_item WHERE item_id = ?");
            preparedStatement.setInt(1, itemId);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
        return resultado;
    }
     
       public List<Doacao> obterPorUsuario(String usuario_email) {
        List<Doacao> resultado = new ArrayList<Doacao>();
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT id, usuario_email FROM doacao WHERE usuario_email='" + usuario_email + "'");
            while (resultSet.next()) {
                Doacao doacao = new Doacao();
                doacao.setId(resultSet.getInt("id"));
                doacao.setUsuarioEmail(resultSet.getString("usuario_email"));
                doacao.setItens(obterDoacoesItens(doacao.getId()));
                resultado.add(doacao);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            return new ArrayList<Doacao>();
        }
        return resultado;
    }
     
}
