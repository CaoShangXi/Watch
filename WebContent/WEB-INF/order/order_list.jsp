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
				工單號碼：<input type="text" name="work_number" value="${wo.work_number }"/>&nbsp;&nbsp;
				產品料號：<input type="text" name="product_number" value="${wo.product_number }"/>&nbsp;&nbsp;
				日期範圍：<input type="text" name="start_date" value="${wo.start_date }" id="start"/> - 
				<input type="text" name="end_date" value="${wo.end_date }" id="end"/>&nbsp;&nbsp;
				 線別：<select id="line" name="production_line">
				        <option value="1">請選擇1</option>
				        <option value="2">請選擇2</option>
				        </select>
				<input type="submit" value="篩選" id="submit" />
			</p>
		</form>
		<table border="1" class="order-data">
			<thead>
				<tr>
					<th>工單ID</th>
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
						<td>${order.id }</td>
						<td>${order.machining_center }</td>
						<td>${order.work_number }</td>
						<td>${order.product_number }</td>
						<td>${order.start_date }</td>
						<td>${order.end_date }</td>
						<td>${order.total }</td>
						<td>${order.produced }</td>
						<c:choose>
							<c:when test="${order.assemblage==order.total }">
								<td class="yes">${order.maintain }/${order.assemblage }&nbsp;&nbsp;${order.yield }</td>
							</c:when>
							<c:otherwise>
								<td class="no">${order.maintain }/${order.assemblage }&nbsp;&nbsp;${order.yield }</td>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${order.test==order.total }">
								<td class="yes">${order.maintain }/${order.test }&nbsp;&nbsp;${order.yield }</td>
							</c:when>
							<c:otherwise>
								<td class="no">${order.maintain }/${order.test }&nbsp;&nbsp;${order.yield }</td>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${order.packaging==order.total }">
								<td class="yes">${order.maintain }/${order.packaging }&nbsp;&nbsp;${order.yield }</td>
							</c:when>
							<c:otherwise>
								<td class="no">${order.maintain }/${order.packaging }&nbsp;&nbsp;${order.yield }</td>
							</c:otherwise>
						</c:choose>
						
						<c:choose>
							<c:when test="${order.maintain==order.maintain_total&&order.maintain_total>0 }">
								<td class="yes">${order.maintain }/${order.maintain_total }</td>
							</c:when>
							<c:when test="${order.maintain_total==0 }">
								<td>${order.maintain }/${order.maintain_total }</td>
							</c:when>
							<c:otherwise>
								<td class="red">${order.maintain }/${order.maintain_total }</td>
							</c:otherwise>
						</c:choose>
						<td>${order.work_hours }</td>
						<td>${order.QM_receipts }</td>
						<td>${order.efficiency }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<jsp:include page="../main/footer.jsp"/>
</body>
</html>