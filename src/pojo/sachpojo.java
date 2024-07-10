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
public class sachpojo {
    private String maSach;
    private String tenSach;
    private String maLoai;
    private String tacGia;
    private String nhaXuatBan;
    private String nhaCungCap;
    private String loaiBia;
    private String hinhAnh;
    private int soLuong;
    private String namXB;
    private int Gia;

    public sachpojo() {
    }

    public sachpojo(String maSach, String tenSach, String maLoai, String tacGia, String nhaXuatBan, String nhaCungCap, String loaiBia, String hinhAnh, int soLuong, String namXB, int Gia) {
        this.maSach = maSach;
        this.tenSach = tenSach;
        this.maLoai = maLoai;
        this.tacGia = tacGia;
        this.nhaXuatBan = nhaXuatBan;
        this.nhaCungCap = nhaCungCap;
        this.loaiBia = loaiBia;
        this.hinhAnh = hinhAnh;
        this.soLuong = soLuong;
        this.namXB = namXB;
        this.Gia = Gia;
    }

    public String getMaSach() {
        return maSach;
    }

    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }

    public String getTenSach() {
        return tenSach;
    }

    public void setTenSach(String tenSach) {
        this.tenSach = tenSach;
    }

    public String getMaLoai() {
        return maLoai;
    }

    public void setMaLoai(String maLoai) {
        this.maLoai = maLoai;
    }

    public String getTacGia() {
        return tacGia;
    }

    public void setTacGia(String tacGia) {
        this.tacGia = tacGia;
    }

    public String getNhaXuatBan() {
        return nhaXuatBan;
    }

    public void setNhaXuatBan(String nhaXuatBan) {
        this.nhaXuatBan = nhaXuatBan;
    }

    public String getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(String nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }

    public String getLoaiBia() {
        return loaiBia;
    }

    public void setLoaiBia(String loaiBia) {
        this.loaiBia = loaiBia;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getNamXB() {
        return namXB;
    }

    public void setNamXB(String namXB) {
        this.namXB = namXB;
    }

    public int getGia() {
        return Gia;
    }

    public void setGia(int Gia) {
        this.Gia = Gia;
    }
}
