package com.nhathanh.dao;

import com.nhathanh.model.HDChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface HDChiTietDAO extends JpaRepository<HDChiTiet, String> {
    @Query(value="Select * from HDChiTiet hdct where hdct.id_hd like ?1", nativeQuery = true)
    List<HDChiTiet> findByIdHoaDon(String id_hd);

    @Modifying
    @Transactional
    @Query(value="Delete from HDChiTiet where id_hd = ?1", nativeQuery = true)
    public void deleteAllWithHoaDon(String id);
}