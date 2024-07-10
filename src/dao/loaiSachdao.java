/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import pojo.loaiSachpojo;

/**
 *
 * @author ASUS
 */
public class loaiSachdao {
    public static ArrayList<loaiSachpojo> layLoaiSach(){
        ArrayList<loaiSachpojo> dsS = new ArrayList<loaiSachpojo>();
        try{
            String sql = "select * from loaiSach";
            sqlServer sach = new sqlServer();
            sach.open();
            ResultSet re = sach.executeQuery(sql);  
            while(re.next()){
                loaiSachpojo s = new loaiSachpojo();
                s.setMaLoai(re.getString(1));
                s.setTenLoai(re.getString(2));
                dsS.add(s);
            }
            sach.close();
        }catch(Exception e){
            e.printStackTrace();
        }  
        return dsS;
    }
    public static ArrayList<loaiSachpojo> timLoaiSach(String tenls){
        ArrayList<loaiSachpojo> dsS = new ArrayList<loaiSachpojo>();
        try{
            String sql = "select * from loaiSach where tenLoai like N'%"+tenls+"%'";
            sqlServer sach = new sqlServer();
            sach.open();
            ResultSet rs = sach.executeQuery(sql);
            while(rs.next()){
                loaiSachpojo s = new loaiSachpojo();
                s.setMaLoai(rs.getString(1));
                s.setTenLoai(rs.getString(2));
                dsS.add(s);
            }
            sach.close();
        }catch(Exception e){
            e.printStackTrace();
        }  
        return dsS;
    }
    public static int ThemXoaSua(String sql){
        int i=0;
        try {
            sqlServer ls = new sqlServer();
            ls.open();
             i = ls.executeUpdate(sql);
            ls.close();
            System.out.println("Thêm/xóa/sửa thành công");
            
        } catch (Exception e) {
            System.out.println("Thêm/xóa/sửa không thành công");
           
        }
        return i;
    }
}
