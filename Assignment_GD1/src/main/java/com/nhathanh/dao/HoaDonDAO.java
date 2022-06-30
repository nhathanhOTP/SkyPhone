package com.nhathanh.dao;

import com.nhathanh.model.HoaDon;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface HoaDonDAO extends JpaRepository<HoaDon, String> {
	@Query(value = "SELECT * FROM HoaDon hd where hd.sdt_nguoi_nhan like ?1", nativeQuery = true)
	public List<HoaDon> getHoaDonBySDT(String sdt_nguoi_nhan);

	@Query(value = "Select COUNT(*) From HoaDon hd where (hd.nguoi_thanh_toan like '' or hd.nguoi_thanh_toan like ?1) and hd.tinh_trang = 0", nativeQuery = true)
	public List<Integer> findWaitingCount(String name);

	@Query(value = "Select * From HoaDon hd where (hd.nguoi_thanh_toan like ?1 or hd.nguoi_thanh_toan like '') and (hd.tinh_trang = 2) order by hd.ngay_tao_don desc", nativeQuery = true)
	public Page<HoaDon> findAllByNameAndDoneStatus(String name, Pageable page);

	@Query(value = "Select * From HoaDon hd where (hd.nguoi_thanh_toan like ?1 or hd.nguoi_thanh_toan like '') and (hd.tinh_trang = 1 or hd.tinh_trang = 0) order by hd.tinh_trang, hd.ngay_tao_don desc", nativeQuery = true)
	public Page<HoaDon> findAllByNameAndNotDoneStatus(String name, Pageable page);
}
