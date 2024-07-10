/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import pojo.khachHangpojo;

/**
 *
 * @author ASUS
 */
public class khachHangdao {
    public static ArrayList<khachHangpojo> layDSkhachHang(){
        ArrayList<khachHangpojo> dsKH = new ArrayList<khachHangpojo>();
        try{
            String sql = "select *  from khachHang";
            sqlServer kh = new sqlServer();
            kh.open();
            ResultSet re = kh.executeQuery(sql);  
            while(re.next()){
                khachHangpojo KH = new khachHangpojo();
                KH.setMaKH(re.getInt(1));
                KH.setTenKH(re.getString(2));
                KH.setSDT_KH(re.getString(3));
                dsKH.add(KH);
            }
            kh.close();
        }catch(Exception e){
            e.printStackTrace();
        }  
        return dsKH;
    }
    public static int ThemXoaSuaKH(String sql){
        int i=0;
        try {
            sqlServer cn_nv= new sqlServer();
            cn_nv.open();
             i = cn_nv.executeUpdate(sql);
            cn_nv.close();
            System.out.println("Thêm/xóa/sửa thành công");
            
        } catch (Exception e) {
            System.out.println("Thêm/xóa/sửa không thành công");
           
        } 
        return i;
    }
    
}
