package com.nhathanh.model;
import lombok.*;
import javax.persistence.*;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "NHANHANG")
@Table(name = "NHANHANG")
public class NhanHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String ten_nhan_hang;
    @OneToMany(mappedBy = "nhanHang")
    private List<DienThoai> dienThoai;
}
