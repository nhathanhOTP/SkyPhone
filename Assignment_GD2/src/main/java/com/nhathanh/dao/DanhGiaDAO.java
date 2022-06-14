package com.nhathanh.dao;

import com.nhathanh.model.DanhGia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DanhGiaDAO extends JpaRepository<DanhGia, String> {
    @Query(value="Select * from DanhGia dg where dg.id_dt like ?1 and dg.trang_thai = 1", nativeQuery = true)
    List<DanhGia> findAllDanhGiaWithDienThoai(String id);
}
