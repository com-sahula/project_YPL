<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
		<table border="1" id="testTable">
			<tr>
				<th><input type='checkbox' id="All">All</th>
				<th>상품이미지</th>
				<th>상품이름</th>
				<th>상품수량</th>
				<th>상품가격</th>
			</tr>
				<tbody id="tbody">
			<c:forEach var="list" items="${list}">
					<tr>
						<input type="hidden" value="${list.cart_no }">
						<td><input type="checkbox" class="check"></td>
						<td>${list.product_img }</td>
						<td>${list.product_name }</td>
						<td>${list.cart_quantity }</td>
						<td>${list.product_price }</td>
					</tr>
			</c:forEach>
			<tr>
			<td colspan="6"><input type="button" id="sub" value="선택상품 일괄 등록"></td>
			</tr>
			</tbody>
		</table>
		<p>총 금액</p>
		<p id="totalPrice">0</p>
</body>
<script>
	$(document).on('click','.check',function () {
		let totalPrice = parseInt($("#totalPrice").text().split(",").join(""), 10);
		if ($(this).is(":checked")) {
			if ($(".check:checked").length == $(".check").length) {
				$("#All").prop("checked", true);
			} else {
				$("#All").prop("checked", false);
			}
			// console.log($(this).parentElement.nextElementSibling.nextElementSibling.nextElementSibling.innerText);
			// console.log($(this).parentElement.nextElementSibling.nextElementSibling.nextElementSibling.value);
			// console.log($(this).parent().next().next().next().text());
			// console.log($(this).parent().next().next().next().next().text());

			let price = parseInt($(this).parent().next().next().next().text(), 10);
			let count = parseInt($(this).parent().next().next().next().next().text(), 10);
			totalPrice += (price * count);
			// console.log("개별 체크(O) : " + totalPrice);
		} else {
			$("#All").prop("checked", false);
			let price = parseInt($(this).parent().next().next().next().text(), 10);
			let count = parseInt($(this).parent().next().next().next().next().text(), 10);
			totalPrice -= (price * count);
			// console.log("개별 체크(X) : " + totalPrice);
		}
		//console.log(totalPrice);
		$("#totalPrice").text(totalPrice.toLocaleString('ko-KR'));
	});

	$('#sub').on('click',(()=>{
		$(document).on('click','.check',function () {
			let no;
			let count;

			if ($(this).is(":checked")) {
				if ($(".check:checked").length == $(".check").length) {
					$("#All").prop("checked", true);
				} else {
					$("#All").prop("checked", false);
				}
				// console.log($(this).parentElement.nextElementSibling.nextElementSibling.nextElementSibling.innerText);
				// console.log($(this).parentElement.nextElementSibling.nextElementSibling.nextElementSibling.value);
				// console.log($(this).parent().next().next().next().text());
				// console.log($(this).parent().next().next().next().next().text());

				console.log($(this).parent().prev());

			} else {
				$("#All").prop("checked", false);
				let price = parseInt($(this).parent().next().next().next().text(), 10);
				let count = parseInt($(this).parent().next().next().next().next().text(), 10);
			}
		});
	}));
</script>
</html>