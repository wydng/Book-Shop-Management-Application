/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gui;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.List;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author ASUS
 */
public class chuyenmanhinh {
    private JPanel root;
    private String kindSelec="";
    private List<danhMuc> listItem=null;
    public chuyenmanhinh(JPanel jpnRoot){
        this.root=jpnRoot;
    }
    public void setView(JPanel jpnItem, JLabel jlbItem){
        kindSelec="Trang chủ";
        jpnItem.setBackground(new Color(255,153,153));
            jlbItem.setBackground(new Color(255,153,153));
        root.removeAll();
        root.setLayout(new BorderLayout());
        root.add(new trangChu());
        root.validate();
        root.repaint();
    }
    public void setEvent(List<danhMuc>listItem){
        this.listItem=listItem;
        for(danhMuc item : listItem){
            item.getJlb().addMouseListener(new LabelEvent(item.getKind(), item.getJpn(), item.getJlb()));
        }
        
    }
    class LabelEvent implements MouseListener{
        private JPanel node;
        private String kind;

        
        private JPanel jpnItem;
        private JLabel jlbItem;
        public LabelEvent(String kind, JPanel jpnItem, JLabel jlbItem) {
            this.kind = kind;
            this.jpnItem = jpnItem;
            this.jlbItem = jlbItem;
        }
        @Override
        public void mouseClicked(MouseEvent e) {
            switch(kind){
                case"Trang chu":
                    node=new trangChu();
                    break;
                case"Quản lí sản phẩm":
                    node=new quanLiSanPham();
                    break;
                case"Quản lí đơn hàng":
                    node=new quanLiDonHang();
                    break;
                case"Quản lí tài khoản":
                    node=new quanLiTaiKhoan();
                    break;
//                case"Giáo Khoa - Tham Khảo":
//                    node=new sachGiaoKhoa();
//                    break;
//                case"Sách Học Ngoại Ngữ":
//                    node=new sachNN();
//                    break;
                default:
                    node=new trangChu();
                    break;
            }root.removeAll();
            root.setLayout(new BorderLayout());
            root.add(node);
            root.validate();
            root.repaint();
            setChangeBackground(kind);
        }

        @Override
        public void mousePressed(MouseEvent e) {
            kindSelec=kind;
            jpnItem.setBackground(new Color(255,204,204));
            jlbItem.setBackground(new Color(255,204,204));
        }
        
        

        @Override
        public void mouseReleased(MouseEvent e) {
        }

        @Override
        public void mouseEntered(MouseEvent e) 
        {
            jpnItem.setBackground(new Color(255,153,153));
            jlbItem.setBackground(new Color(255,153,153));
        }

        @Override
        public void mouseExited(MouseEvent e) {
            if(!kindSelec.equalsIgnoreCase(kind)){
                jpnItem.setBackground(new Color(255,102,102));
                jlbItem.setBackground(new Color(255,102,102));
            }
        }
        private void setChangeBackground(String kind){
            for(danhMuc item:listItem){
                if(item.getKind().equalsIgnoreCase(kind)){
                    item.getJlb().setBackground(new Color(255,153,153));
                    item.getJpn().setBackground(new Color(255,153,153));
                }
                else{
                    item.getJlb().setBackground(new Color(255,102,102));
                    item.getJpn().setBackground(new Color(255,102,102));
                }
            }
            
        }
        
    }
}
