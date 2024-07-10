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
public class khachHangpojo {
    private int maKH;
    private String tenKH;
    private String SDT_KH;

    public khachHangpojo() {
    }

    public khachHangpojo(int maKH, String tenKH, String SDT_KH) {
        this.maKH = maKH;
        this.tenKH = tenKH;
        this.SDT_KH = SDT_KH;
    }

    public int getMaKH() {
        return maKH;
    }

    public void setMaKH(int maKH) {
        this.maKH = maKH;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getSDT_KH() {
        return SDT_KH;
    }

    public void setSDT_KH(String SDT_KH) {
        this.SDT_KH = SDT_KH;
    }
}
