<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="card-title">
		<div style="color: black;">
			<b style="font-size: 22px;">Đơn hàng đã mua gần đây</b> <br> <small><i
				class="fa fa-info-circle text-primary mr-1" aria-hidden="true"></i>
				Đây là danh sách đơn hàng bạn đã mua từ ngày 05/06/2021 đến
				05/06/2022</small>
		</div>
	</div>
	<table>
		<thead class="text-secondary">
			<tr>
				<th>Mã đơn hàng</th>
				<th>Sản phẩm</th>
				<th>Giá</th>
				<th>Ngày đặt mua</th>
				<th>Trạng thái</th>
			</tr>
		</thead>
		<c:forEach var="itemhd" items="${HD}">

			<tbody>
				<tr>
					<td class="py-1 text-primary">#${itemhd.id_hd}</td>

					<td class=""><c:forEach var="itemhdct" items="${HDCT}">
							<div class="sanPhamDt row">
								<div class="col-3">
									<a href=""> <img src="/images/iphone-13-pro-max-2.jpg"
										class="img-fluid" width="70px" alt=""></a>
								</div>
								<div class="col-9">
									<p class="text-danger">${itemhdct.ten_dt}</p>
								</div>
							</div>
							<div>
								<a href="" class="text-primary">Xem chi tiết</a>
							</div>
						</c:forEach></td>
					<td>
						<p class="text-danger">${itemhd.tong_gia}</p>
					</td>
					<td>
						<p>${itemhd.ngay_tao_don}</p>
					</td>
					<td><c:choose>
							<%-- Thanh cong --%>
							<c:when test="${itemhd.tinh_trang==1}">
								<label class="text-success"">Đã giao thành công!</label>
							</c:when>

							<%-- Chua giao --%>
							<c:when test="${itemhd.tinh_trang==0}">
								<label class="text-danger"">Chưa giao!</label>
							</c:when>

							<%-- Các trường hợp khác --%>
							<c:otherwise>
								<label class="text-warning"">Đang sử lí!</label>
							</c:otherwise>
						</c:choose></td>
					</td>
				</tr>
			</tbody>

		</c:forEach>
	</table>
</body>
</html>