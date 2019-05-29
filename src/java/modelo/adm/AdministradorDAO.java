/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.adm;

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
public class AdministradorDAO {
    
    public List<Administrador> obterTodos() {
        List<Administrador> resultado = new ArrayList<Administrador>();
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT nome, login, senha FROM administrador");
            while (resultSet.next()) {
                Administrador adm = new Administrador();
                adm.setNome(resultSet.getString("nome"));
                adm.setLogin(resultSet.getString("login"));
                adm.setSenha(resultSet.getString("senha"));
                resultado.add(adm);
            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            return new ArrayList<Administrador>();
        }
        return resultado;
    }
    
    
    public Administrador obterAdministrador(String login) {
        Administrador adm = null;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareCall("SELECT nome, login, senha FROM administrador WHERE login = ?");
            preparedStatement.setString(1, login);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                adm = new Administrador();
                adm.setNome(resultSet.getString("nome"));
                adm.setLogin(resultSet.getString("login"));
                adm.setSenha(resultSet.getString("senha"));
                
            }
            resultSet.close();
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return null;
        }
        return adm;
    }
    
     public boolean inserir(String nome, String login, String senha) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO administrador (login,nome,senha) VALUES (?,?,?)");
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, nome);
            preparedStatement.setString(3, senha);
           
            
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
    
      public boolean alterar(String nome, String login, String senha) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE administrador SET nome = ?, senha = ? WHERE login = ?");
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, senha);
            preparedStatement.setString(3, login);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
     
        public boolean excluir(String login) {
        boolean resultado = false;
        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USUARIO, JDBC_SENHA);
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM administrador WHERE login = ?");
            preparedStatement.setString(1, login);
            resultado = (preparedStatement.executeUpdate() > 0);
            preparedStatement.close();
            connection.close();
        } catch (Exception ex) {
            return false;
        }
        return resultado;
    }
      
}
