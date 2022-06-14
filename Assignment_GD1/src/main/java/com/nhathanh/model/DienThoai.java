package com.nhathanh.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name="DIENTHOAI")
@Table(name="DIENTHOAI")
public class DienThoai {
    @Id
    private	String id_dt;
    private String ten_dt;
    private String dung_luong;
    private String mau;
    private String tra_gop;
    private String nha_sx;
    private Double gia;
    private String mo_ta;
    private String bao_hanh;
    private Boolean hoat_dong;
    private int so_luong;
    @ManyToOne @JoinColumn(name="id_nhan_hang")
    NhanHang nhanHang;
    @OneToMany(mappedBy="dienThoai")
    private List<HDChiTiet> hDChiTiet;
    @OneToMany(mappedBy="dienThoai")
    private List<DanhGia> danhGia;
}
