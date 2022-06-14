package com.nhathanh.dao;

import com.nhathanh.model.HoaDon;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface HoaDonDAO extends JpaRepository<HoaDon, String> {
}
