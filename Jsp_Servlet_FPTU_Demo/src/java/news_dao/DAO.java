/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package news_dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import news_context.DBContext;
import news_entity.Genre;
import news_entity.News;

/**
 *
 * @author DELL VOSTRO 5510
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<News> getAllNews() {
        List<News> list = new ArrayList<>();
        String query = "select * from news";
        try {
            conn = new DBContext().getConnection();             //Mo ket noi voi SQL sever
            ps = conn.prepareStatement(query);                  //Chuyen cau lenh o Query vao
            rs = ps.executeQuery();                             //Chay cau lenh Query
            //Lay du lieu o "rs" dua vao "list"
            while(rs.next()){
                list.add(new News(rs.getInt(1), 
                                  rs.getString(2), 
                                  rs.getString(3),
                                  rs.getString(4), 
                                  rs.getString(5), 
                                  rs.getString(6), 
                                  rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Genre> getAllGenre() {
        List<Genre> list = new ArrayList<>();
        String query = "select * from genre";
        try {
            conn = new DBContext().getConnection();             //Mo ket noi voi SQL sever
            ps = conn.prepareStatement(query);                  //Chuyen cau lenh o Query vao
            rs = ps.executeQuery();                             //Chay cau lenh Query
            //Lay du lieu o "rs" dua vao "list"
            while(rs.next()){
                list.add(new Genre(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<News> getAllNewsByGenre_Id(String id_genre) {
        List<News> list = new ArrayList<>();
        String query = "select * from news\n" +
                           "where id_genre = ?";
        try {
            conn = new DBContext().getConnection();             //Mo ket noi voi SQL sever
            ps = conn.prepareStatement(query);                  //Chuyen cau lenh o Query vao
            ps.setString(1, id_genre);
            rs = ps.executeQuery();                             //Chay cau lenh Query
            //Lay du lieu o "rs" dua vao "list"
            while(rs.next()){
                list.add(new News(rs.getInt(1), 
                                  rs.getString(2), 
                                  rs.getString(3),
                                  rs.getString(4), 
                                  rs.getString(5), 
                                  rs.getString(6), 
                                  rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }    
    
    public News getNewsById(String id) {
        String query = "select * from news\n" +
                           "where id = ?";
        try {
            conn = new DBContext().getConnection();             //Mo ket noi voi SQL sever
            ps = conn.prepareStatement(query);                  //Chuyen cau lenh o Query vao
            ps.setString(1, id);
            rs = ps.executeQuery();                             //Chay cau lenh Query
            //Lay du lieu o "rs" dua vao "list"
            while(rs.next()){
                return new News(rs.getInt(1), 
                                  rs.getString(2), 
                                  rs.getString(3),
                                  rs.getString(4), 
                                  rs.getString(5), 
                                  rs.getString(6), 
                                  rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<News> SearchNewsByName(String title) {
        List<News> list = new ArrayList<>();
        String query = "select * from news\n" +
                           "where [title] like = ?";
        try {
            conn = new DBContext().getConnection();             //Mo ket noi voi SQL sever
            ps = conn.prepareStatement(query);                  //Chuyen cau lenh o Query vao
            ps.setString(1,"%" + title + "%");
            rs = ps.executeQuery();                             //Chay cau lenh Query
            //Lay du lieu o "rs" dua vao "list"
            while(rs.next()){
                list.add(new News(rs.getInt(1), 
                                  rs.getString(2), 
                                  rs.getString(3),
                                  rs.getString(4), 
                                  rs.getString(5), 
                                  rs.getString(6), 
                                  rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<News> list = dao.getAllNews();
        List<Genre> listG = dao.getAllGenre();
        
        for (News o : list){
            System.out.println(o);
        }
//        for (Genre o : listG){
//            System.out.println(o);
//        }
    }
}
