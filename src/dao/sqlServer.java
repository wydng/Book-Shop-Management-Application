/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ASUS
 */
public class sqlServer {
    Connection con = null;
    Statement sta = null;   
    ResultSet re = null;
    
    public void open(){
        String strServer = "THIS-SUPREME\\SQLTANLOOC";
        String strDatabase = "shopBook";
        String strUserName = "sa";
        String strPassWord = "123";
        try{       
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String connectionURL = "jdbc:sqlserver://"+strServer
                +":1433;databaseName="+strDatabase
                +";user="+strUserName
                +";password="+strPassWord;
        con=DriverManager.getConnection(connectionURL);
        }catch(Exception e){    
        }
    }
    public void close(){
        try{
            this.con.close();
        }catch(SQLException ex){
            Logger.getLogger(sqlServer.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    public ResultSet executeQuery(String sql)
    {
        try{
            sta =con.createStatement();
            re = sta.executeQuery(sql);
        }catch (SQLException ex){
            Logger.getLogger(sqlServer.class.getName()).log(Level.SEVERE,null,ex);
        }
        return re;
    }
    public int executeUpdate(String sql)
    {
        int n = -1;
        try{
            sta =con.createStatement();
            n = sta.executeUpdate(sql);
        }catch (SQLException ex){
            Logger.getLogger(sqlServer.class.getName()).log(Level.SEVERE,null,ex);
        }
        return n;
    }
}
