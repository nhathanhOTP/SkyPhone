package com.nhathanh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.nhathanh.model.DienThoai;
import com.nhathanh.model.NhanHang;

public interface DienThoaiDAO extends JpaRepository<DienThoai, String> {
	@Query(value = "SELECT * FORM DienThoai dt where dt.ten_dt like ?1", nativeQuery = true)
	public List<DienThoai> getDienThoaiByTen(String ten_dt);

	@Query(value = "INSERT INTO DienThoai (ten_dt,dung_luong,mau,tra_gop,nha_sx,gia,mo_ta,bao_hanh,id_nhan_hang,so_luong) values"
			+ "(1,2,3,4,5,6,7,8,9,10)", nativeQuery = true)
    public void saveDienThoai (String tenDt,String dungLuong,String mau,String traGop,String nhaSx,double gia,
    		String moTa,String baoHanh,NhanHang idNh,int soLuong) ;	
}
