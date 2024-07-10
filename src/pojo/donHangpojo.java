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
public class donHangpojo {
    private String maHD;
    private String maNV;
    private String maKH;
    private String maSach;
    private String tenKH;
    private String ngayMua;
    private int soLuong;
    private int thanhTien;

    public donHangpojo() {
    }

    public donHangpojo(String maHD, String maNV, String maKH, String maSach, String tenKH, String ngayMua, int soLuong, int thanhTien) {
        this.maHD = maHD;
        this.maNV = maNV;
        this.maKH = maKH;
        this.maSach = maSach;
        this.tenKH = tenKH;
        this.ngayMua = ngayMua;
        this.soLuong = soLuong;
        this.thanhTien = thanhTien;
    }

    public String getMaHD() {
        return maHD;
    }

    public void setMaHD(String maHD) {
        this.maHD = maHD;
    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getMaSach() {
        return maSach;
    }

    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getNgayMua() {
        return ngayMua;
    }

    public void setNgayMua(String ngayMua) {
        this.ngayMua = ngayMua;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public int getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(int thanhTien) {
        this.thanhTien = thanhTien;
    }

    

    
    
}
