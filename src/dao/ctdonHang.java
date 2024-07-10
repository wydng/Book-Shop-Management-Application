/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JTable;
import pojo.ctdonHangpojo;

/**
 *
 * @author ASUS
 */
public class ctdonHang {
    public static ArrayList<ctdonHangpojo> layDSCT(){
        ArrayList<ctdonHangpojo> ds_ct = new ArrayList<ctdonHangpojo>();
        try {
            String sql = "select *from ct_DonHang";
            sqlServer cn_ct= new sqlServer();
            cn_ct.open();
            ResultSet re = cn_ct.executeQuery(sql);
            while(re.next()){
                ctdonHangpojo ct=new ctdonHangpojo();
                ct.setMaCT(re.getString(1));
                ct.setMaKH(re.getString(2));
                ct.setNgayMua(re.getString(3));
                ct.setTongTT(re.getInt(4));
                
                ds_ct.add(ct);
            }
            cn_ct.close();
        } catch (Exception e) {
            
        }
        return ds_ct;
    }
    public static int ThemXoaSua_CT(String sql_){
        int i=0;
        try {
            sqlServer cn_nv= new sqlServer();
            cn_nv.open();
             i = cn_nv.executeUpdate(sql_);
            cn_nv.close();
            
            
        } catch (Exception e) {
          
           
        } 
        return i;
    }
}
