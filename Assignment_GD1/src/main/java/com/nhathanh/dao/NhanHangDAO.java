package com.nhathanh.dao;

import com.nhathanh.model.NhanHang;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NhanHangDAO extends JpaRepository<NhanHang, Integer> {
}
