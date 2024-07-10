/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JTable;
import pojo.donHangpojo;

/**
 *
 * @author ASUS
 */
public class donHangdao {
    public static ArrayList<donHangpojo> layDSDONHANG(){
        ArrayList<donHangpojo> ds_DONHANG = new ArrayList<donHangpojo>();
        try {
            String sql = "select *from donHang";
            sqlServer cn_nv= new sqlServer();
            cn_nv.open();
            ResultSet re = cn_nv.executeQuery(sql);
            while(re.next()){
                donHangpojo dh=new donHangpojo();
                dh.setMaHD(re.getString(1));
                dh.setMaNV(re.getString(2));
                dh.setMaKH(re.getString(3));
                dh.setMaSach(re.getString(4));
                dh.setTenKH(re.getString(5));
                dh.setNgayMua(re.getString(6));
                dh.setSoLuong(re.getInt(7));
                dh.setThanhTien(re.getInt(8));
                ds_DONHANG.add(dh);
            }
            cn_nv.close();
        } catch (Exception e) {
            
        }
        return ds_DONHANG;
    }
    public static int ThemXoaSua_DH(String sql_DH){
        int i=0;
        try {
            sqlServer cn_nv= new sqlServer();
            cn_nv.open();
             i = cn_nv.executeUpdate(sql_DH);
            cn_nv.close();
            System.out.println("Thêm/xóa/sửa thành công");
            
        } catch (Exception e) {
            System.out.println("Thêm/xóa/sửa không thành công");
           
        } 
        return i;
    }
//    public  static String tinhTongTien(JTable tbl){
//        double tongTien=0;
//        for(int i=0; i<=tbl.getRowCount();i++){
//            tongTien+=Double.parseDouble(tbl.getValueAt(i, 7).toString());
//        }
//        return String.valueOf(tongTien);
//    }
}

