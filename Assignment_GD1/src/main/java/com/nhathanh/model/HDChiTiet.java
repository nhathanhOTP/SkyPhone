package com.nhathanh.model;

import lombok.*;
import javax.persistence.*;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "HDCHITIET")
@Table(name = "HDCHITIET")
public class HDChiTiet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int stt;
    private int so_luong_don;
    private double tong_gia_dct;
    private String sdt_nguoi_nhan;
    @ManyToOne @JoinColumn(name="id_hd")
    private HoaDon hoaDon;
    @ManyToOne @JoinColumn(name="id_dt")
    private DienThoai dienThoai;
}
