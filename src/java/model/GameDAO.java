package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GameDAO {
        private static Connection conn;
        
        public GameDAO() throws ClassNotFoundException, SQLException {
            conn = MyConn.getConnection();
        }
        
        //Método para inserir dados
        public void insertGame(Game jogo) {
            //Query genérica para o método inserir
            String sql = "INSERT INTO games(nome, requisitos, descricao)"
                                + "VALUES(?, ?, ?)";
            
            //Objeto para preparar o envio da query ao banco de dados
            try {
                PreparedStatement prep = conn.prepareStatement(sql);
                prep.setString(1, jogo.getNome());
                prep.setString(2, jogo.getRequisitos());
                prep.setString(3,  jogo.getDescricao());
                
                prep.execute();
                prep.close();
                
            } catch (SQLException erro) {
                System.out.println("Erro ao inserir..." + erro);
            }
        }//Fim do método inserir
        
        
        //Método para listar todos os registros
        public ArrayList<Game> listGame() throws SQLException{
            ArrayList<Game> list = new ArrayList<>();
            
            String sql = "select * from games";
            
            PreparedStatement prep = conn.prepareStatement(sql);
            ResultSet result = prep.executeQuery();
            
            while(result.next()){
              Game t = new Game();
              
              t.setCodGame(result.getInt("cod"));
              t.setNome(result.getString("nome"));
              t.setRequisitos(result.getString("requisitos"));
              t.setDescricao(result.getString("descricao"));
              
              list.add(t);
            }
            
            return list;
        }
        
        
        //Método para excluir
        public void deleteGame(int id) throws SQLException {
            String query = "DELETE FROM games WHERE "
                    + "cod = " + id;
            
            PreparedStatement prep = conn.prepareStatement(query);
            
            prep.execute();
            prep.close();
        }
        
        
        //Método para listar pelo ID (um registro)
        public Game listOneGame(int id) throws SQLException {
            String query = "SELECT * FROM games WHERE "
                    + "cod = " + id;
            
            PreparedStatement prep = conn.prepareStatement(query);
            ResultSet result = prep.executeQuery();
            
            Game tr = new Game();
            
            if(result.next()){
                tr.setCodGame(result.getInt("cod"));
                tr.setNome(result.getString("nome"));
                tr.setRequisitos(result.getString("requisitos"));
                tr.setDescricao(result.getString("descricao"));
            }
            
            return tr;
        }
        
        
        //Método para atualizar um registro
        public void updateGame(Game t) throws SQLException {
            String sql = "UPDATE games SET nome = ?,"
                    + "requisitos = ?, descricao = ?"
                    + "WHERE cod = ?";
            
            PreparedStatement prep = conn.prepareStatement(sql);
            
            prep.setString(1, t.getNome());
            prep.setString(2, t.getRequisitos());
            prep.setString(3, t.getDescricao());
            prep.setInt(4, t.getCodGame());
            
            prep.execute();
            prep.close();
        }
        
}//Fim da classe
