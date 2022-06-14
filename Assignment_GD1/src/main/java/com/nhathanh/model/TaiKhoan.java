package com.nhathanh.model;
import lombok.*;
import javax.persistence.*;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name="TAIKHOAN")
@Table(name = "TAIKHOAN")
public class TaiKhoan {
    @Id
    private String email;
    private String ho_ten;
    @Column(unique = true)
    private String sdt;
    @Column(unique = true)
    private String cmnd;
    private int vai_tro;
    private String hinh;
}
