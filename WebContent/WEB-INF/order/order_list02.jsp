<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>電子看板-生管部</title>
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
<link type="text/css" rel="stylesheet" media="all"
	href="../styles/global.css" />
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../js/order.js"></script>
</head>
<body>
	<jsp:include page="../main/head.jsp"/>
	<div class="main">
		<form class="form-data" action="findOrder.do" method="post">
			<p>
				篩選條件：<a href="#">全部</a>
			</p>
			<p>
				工單號碼：<input type="text" name="work_number" value=""/>&nbsp;&nbsp;
				產品料號：<input type="text" name="product_number" value=""/>&nbsp;&nbsp;
				日期範圍：<input type="text" name="start_date" value="" id="start"/> - 
				<input type="text" name="end_date" value="" id="end"/>&nbsp;&nbsp;
				 線別：<select id="line" name="production_line">
				        <option value="1">請選擇1</option>
				        <option value="2">請選擇2</option>
				        <option value="3">請選擇3</option>
				        </select>
				<input type="submit" value="篩選" id="submit" />
			</p>
		</form>
		<table border="1" class="order-data">
			<thead>
				<tr>
					<th>序號</th>
					<th>加工中心</th>
					<th>工單號碼</th>
					<th>產品料號</th>
					<th>開工日期</th>
					<th>完工日期</th>
					<th>總數量</th>
					<th>已生產</th>
					<th>組立</th>
					<th>測試</th>
					<th>包裝</th>
					<th>維修</th>
					<th>報工</th>
					<th>QM單據</th>
					<th>效率</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="order" varStatus="status">
					<tr class="<c:if test="${status.index%2!=0 }">feature</c:if>">
						<td>${status.index+1 }</td>
						<td>${order.lineId }</td>
						<td>${order.moId }</td>
						<td>${order.productId }</td>
						<td>${order.startDate }</td>
						<td>${order.endDate }</td>
						<td>${order.moQuantity }</td>
						<td>${order.pack }</td>
						<c:choose>
							<c:when test="${order.assy==order.moQuantity }">
								<td class="yes">${order.assy }/${order.moQuantity }&nbsp;&nbsp;</td>
							</c:when>
							<c:otherwise>
								<td class="no">${order.assy }/${order.moQuantity }&nbsp;&nbsp;</td>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${order.test==order.moQuantity }">
								<td class="yes">${order.test }/${order.moQuantity }&nbsp;&nbsp;</td>
							</c:when>
							<c:otherwise>
								<td class="no">${order.test }/${order.moQuantity }&nbsp;&nbsp;</td>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${order.pack==order.moQuantity }">
								<td class="yes">${order.pack }/${order.moQuantity }&nbsp;&nbsp;</td>
							</c:when>
							<c:otherwise>
								<td class="no">${order.pack }/${order.moQuantity }&nbsp;&nbsp;</td>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${order.alreadyRepair==order.repairTotal&&order.repairTotal>0 }">
								<td class="yes">${order.alreadyRepair }/${order.repairTotal }</td>
							</c:when>
							<c:when test="${order.repairTotal==0 }">
								<td>0</td>
							</c:when>
							<c:otherwise>
								<td>0/0</td>
							</c:otherwise>
						</c:choose>
						<td>${order.workHours }</td>
						<td>${order.qmReceipts }</td>
						<td>${order.efficiency }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>