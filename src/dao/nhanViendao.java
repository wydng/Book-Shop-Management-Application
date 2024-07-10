/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao; 

import java.sql.ResultSet;
import java.util.ArrayList;
import pojo.nhanVienpojo;

/**
 *
 * @author ASUS
 */
public class nhanViendao {
    public static ArrayList<nhanVienpojo> layDSNV(){
        ArrayList<nhanVienpojo> dsnv = new ArrayList<nhanVienpojo>();
        try {
            String sql = "select maNV, tenNV, SDT_NV,ngaySinh,diaChi, gioiTinh, chucVu from nhanVien";
            sqlServer cn_nv= new sqlServer();
            cn_nv.open();
            ResultSet re = cn_nv.executeQuery(sql);
            while(re.next()){
                nhanVienpojo nv = new nhanVienpojo();
                nv.setMaNV(re.getString(1));
                nv.setTenNV(re.getString(2));
                nv.setSDT_NV(re.getString(3));
                nv.setNgaySinh(re.getString(4));
                nv.setDiaChi(re.getString(5));
                nv.setGioiTinh(re.getString(6));
                nv.setChucVu(re.getString(7));
                dsnv.add(nv);
            }
            cn_nv.close();
        } catch (Exception e) {
            
        }
        return dsnv;
    }
    
    public static int ThemXoaSua(String sql){
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

    public static String XacNhanTK(String tk, String mk, String chucVu){
        String kq="";
        try {
            String sql = "select taiKhoan from nhanVien Where taiKhoan = '"+tk+"' and matKhau = '"+mk+"' and chucVu = N'"+chucVu+"'";
            sqlServer cn_nv= new sqlServer();
            cn_nv.open();
            ResultSet rs = cn_nv.executeQuery(sql);
            while(rs.next()){
            kq=rs.getString(1);}
            cn_nv.close();
        } catch (Exception e) {    
        }
        return kq;
    }

}
