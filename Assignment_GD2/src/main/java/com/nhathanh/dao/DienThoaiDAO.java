package com.nhathanh.dao;

import com.nhathanh.model.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface DienThoaiDAO extends JpaRepository<DienThoai, String> {
    @Query(value = "Select * from DienThoai dt where dt.ten_dt like ?1", nativeQuery=true)
    public List<DienThoai> getDienThoaiByTen(String ten_dt);
}
