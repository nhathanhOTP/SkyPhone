package com.nhathanh.model;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "HOADON")
@Table(name = "HOADON")
public class HoaDon {
	@Id
    private String id_hd;
    private String nguoi_thanh_toan;
    private int so_luong_don;
    private double tong_gia;
    private String dia_chi_gui;
    private String ten_nguoi_nhan;
    private String sdt_nguoi_nhan;
    private String dia_chi_nhan;
    private Date ngay_tao_don;
    private int tinh_trang;
    @OneToMany(mappedBy = "hoaDon")
    private List<HDChiTiet> hDChiTiet;
}
