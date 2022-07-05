/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import br.com.DTO.PortoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Denise
 */
public class PortoDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<PortoDTO> lista = new ArrayList<>();
    ArrayList<PortoDTO> listai = new ArrayList<>();
    ArrayList<PortoDTO> listae = new ArrayList<>();
    public void CadastrarPorto(PortoDTO objPortoDTO) throws ClassNotFoundException
            {
                String sql = "insert into porto (nome_cliente,n_container,tipo,"
                        + "sta_tus,categoria,movimentacao) values (?,?,?,?,?,?)";
                con = new ConexaoDAO().conexaoBD();
                
                try {
                    pstm=con.prepareStatement(sql);
                    pstm.setString(1,objPortoDTO.getNome_cliente());
                    pstm.setString(2, objPortoDTO.getN_container());
                    pstm.setString(3, objPortoDTO.getTipo());
                    pstm.setString(4, objPortoDTO.getSta_tus());
                    pstm.setString(5, objPortoDTO.getCategoria());
                    pstm.setString(6, objPortoDTO.getMovimentacao());
                    
                    pstm.execute();
                    pstm.close();
                       
                } catch (SQLException e) {
                }
          
                
            }
              
            public ArrayList<PortoDTO> PesquisarPorto() throws ClassNotFoundException
     {
         String sql = "select * from porto";
         con = new ConexaoDAO().conexaoBD();
         
         try {
             pstm=con.prepareStatement(sql);
             rs=pstm.executeQuery(sql);
             
             while(rs.next()){
                 PortoDTO objPortoDTO = new PortoDTO();
                 
                 objPortoDTO.setId_cliente(rs.getInt("id_cliente"));
                 objPortoDTO.setNome_cliente(rs.getString("nome_cliente"));
                 objPortoDTO.setN_container(rs.getString("n_container"));
                 objPortoDTO.setTipo(rs.getString("tipo"));
                 objPortoDTO.setSta_tus(rs.getString("sta_tus"));
                 objPortoDTO.setCategoria(rs.getString("categoria"));
                 objPortoDTO.setMovimentacao(rs.getString("movimentacao"));
                  
                 lista.add(objPortoDTO);
                                             
                                      
                 
             }
             
         } catch (SQLException e) {
         }
         return lista;
     }
             public ArrayList<PortoDTO> PesquisarPortoImportacao() throws ClassNotFoundException
     {
         String sql = "select * from porto where categoria = 'importacao' || 'importação' ";
         con = new ConexaoDAO().conexaoBD();
         
         try {
             pstm=con.prepareStatement(sql);
             rs=pstm.executeQuery(sql);
             
             while(rs.next()){
                 PortoDTO objPortoDTO = new PortoDTO();
                 
                 objPortoDTO.setId_cliente(rs.getInt("id_cliente"));
                 objPortoDTO.setNome_cliente(rs.getString("nome_cliente"));
                 objPortoDTO.setN_container(rs.getString("n_container"));
                 objPortoDTO.setTipo(rs.getString("tipo"));
                 objPortoDTO.setSta_tus(rs.getString("sta_tus"));
                 objPortoDTO.setCategoria(rs.getString("categoria"));
                 objPortoDTO.setMovimentacao(rs.getString("movimentacao"));
                  
                 listai.add(objPortoDTO);
                                             
                                      
                 
             }
             
         } catch (SQLException e) {
         }
         return listai;
     }

   public ArrayList<PortoDTO> PesquisarPortoExportacao() throws ClassNotFoundException
     {
         String sql = "select * from porto where categoria = 'exportacao' || 'exportação' ";
         con = new ConexaoDAO().conexaoBD();
         
         try {
             pstm=con.prepareStatement(sql);
             rs=pstm.executeQuery(sql);
             
             while(rs.next()){
                 PortoDTO objPortoDTO = new PortoDTO();
                 
                 objPortoDTO.setId_cliente(rs.getInt("id_cliente"));
                 objPortoDTO.setNome_cliente(rs.getString("nome_cliente"));
                 objPortoDTO.setN_container(rs.getString("n_container"));
                 objPortoDTO.setTipo(rs.getString("tipo"));
                 objPortoDTO.setSta_tus(rs.getString("sta_tus"));
                 objPortoDTO.setCategoria(rs.getString("categoria"));
                 objPortoDTO.setMovimentacao(rs.getString("movimentacao"));
                  
                 listae.add(objPortoDTO);
                                             
                                      
                 
             }
             
         } catch (SQLException e) {
         }
         return listae;
     }
            
             public void ExcluirPorto(PortoDTO objPortoDTO) throws ClassNotFoundException    {
                String sql = "DELETE FROM porto WHERE id_cliente= ?";
                con = new ConexaoDAO().conexaoBD();
                
                try {
                    pstm=con.prepareStatement(sql);
                    pstm.setInt(1, objPortoDTO.getId_cliente());
                    
                    
                    pstm.execute();
                    pstm.close();
                       
                } catch (SQLException e) {
                    System.out.print("Deu erro aqui");
                }
          
                
            }
              public void AlterarPorto(PortoDTO objPortoDTO) throws ClassNotFoundException
            {
                String sql = "update  porto set nome_cliente=?,n_container=?,tipo=?,"
                        + "sta_tus=?,categoria=?,movimentacao=? where id_cliente=?";
                con = new ConexaoDAO().conexaoBD();
                
                try {
                    pstm=con.prepareStatement(sql);
                    pstm.setString(1,objPortoDTO.getNome_cliente());
                    pstm.setString(2, objPortoDTO.getN_container());
                    pstm.setString(3, objPortoDTO.getTipo());
                    pstm.setString(4, objPortoDTO.getSta_tus());
                    pstm.setString(5, objPortoDTO.getCategoria());
                    pstm.setString(6, objPortoDTO.getMovimentacao());
                    pstm.setInt(7, objPortoDTO.getId_cliente());
                    
                    pstm.execute();
                    pstm.close();
                       
                } catch (SQLException e) {
                }
          
                
            }
              
              
}
