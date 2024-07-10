/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import pojo.sachpojo;

/**
 *
 * @author ASUS
 */
public class sachdao {
    
    public static ArrayList<sachpojo> layDanhSachS(){
        ArrayList<sachpojo> dsS = new ArrayList<sachpojo>();
        try{
            String sql = "select maSach, tenSach,tenLoai,tacGia,nhaXuatBan,nhaCungCap,loaiBia,soLuong,namXB,Gia,hinhAnh from Sach, loaiSach where Sach.maLoai=loaiSach.maLoai";
            sqlServer sach = new sqlServer();
            sach.open();
            ResultSet re = sach.executeQuery(sql);  
            while(re.next()){
                sachpojo s = new sachpojo();
                s.setMaSach(re.getString(1));
                s.setTenSach(re.getString(2));
                s.setMaLoai(re.getString(3));
                s.setTacGia(re.getString(4));
                s.setNhaXuatBan(re.getString(5));
                s.setNhaCungCap(re.getString(6));
                s.setLoaiBia(re.getString(7));
                s.setHinhAnh(re.getString(11));
                s.setSoLuong(re.getInt(8));
                s.setNamXB(re.getString(9));
                s.setGia(re.getInt(10));
                dsS.add(s);
            }
            sach.close();
        }catch(Exception e){
            e.printStackTrace();
        }  
        return dsS;
    }
    public static ArrayList<sachpojo> timTenSach(String tenS){
        ArrayList<sachpojo> dsS = new ArrayList<sachpojo>();
        try {
            String sql = "select maSach, tenSach,soLuong from Sach where tenSach like N'%"+tenS+"%'";
            sqlServer sach = new sqlServer();
            sach.open();
            ResultSet re = sach.executeQuery(sql);
            while(re.next()){
                sachpojo s = new sachpojo();
                s.setMaSach(re.getString(1));
                s.setTenSach(re.getString(2));
                s.setMaLoai(re.getString(3));
                s.setTacGia(re.getString(4));
                s.setNhaXuatBan(re.getString(5));
                s.setNhaCungCap(re.getString(6));
                s.setLoaiBia(re.getString(7));
                s.setHinhAnh(re.getString(11));
                s.setSoLuong(re.getInt(8));
                s.setNamXB(re.getString(9));
                s.setGia(re.getInt(10));
                dsS.add(s);
            }
            sach.close();
        } catch (Exception e) {
            System.out.println("Lỗi không thể lấy dữ liệu");
        }
        return dsS;
    }
    public static int ThemXoaSua(String sql){
        int i=0;
        try {
            sqlServer sach = new sqlServer();
            sach.open();
             i = sach.executeUpdate(sql);
            sach.close();
            System.out.println("Thêm/xóa/sửa thành công");
            
        } catch (Exception e) {
            System.out.println("Thêm/xóa/sửa không thành công");
           
        }
        return i;
    }
    public static ArrayList<sachpojo> layDanhSachSach_donHang(){
        ArrayList<sachpojo> dsS = new ArrayList<sachpojo>();
        try{
            String sql = "select maSach, tenSach,soLuong,Gia,hinhAnh from Sach";
            sqlServer sach = new sqlServer();
            sach.open();
            ResultSet re = sach.executeQuery(sql);  
            while(re.next()){
                sachpojo s = new sachpojo();
                s.setMaSach(re.getString(1));
                s.setTenSach(re.getString(2));
                s.setSoLuong(re.getInt(3));               
                s.setGia(re.getInt(4));
                dsS.add(s);
            }
            sach.close();
        }catch(Exception e){
            e.printStackTrace();
        }  
        return dsS;
    }
}
