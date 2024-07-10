/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pojo;

/**
 *
 * @author ASUS
 */
public class ctdonHangpojo {
    private String maCT;
    private String maKH;
    private String ngayMua;
    private int tongTT;

    public ctdonHangpojo() {
    }

    public ctdonHangpojo(String maCT, String maKH, String ngayMua, int tongTT) {
        this.maCT = maCT;
        this.maKH = maKH;
        this.ngayMua = ngayMua;
        this.tongTT = tongTT;
    }

    public String getMaCT() {
        return maCT;
    }

    public void setMaCT(String maCT) {
        this.maCT = maCT;
    }

    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getNgayMua() {
        return ngayMua;
    }

    public void setNgayMua(String ngayMua) {
        this.ngayMua = ngayMua;
    }

    public int getTongTT() {
        return tongTT;
    }

    public void setTongTT(int tongTT) {
        this.tongTT = tongTT;
    }

    
    
}
