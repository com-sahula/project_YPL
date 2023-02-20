<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="cartinsert.do" method="get">
<table border="1">
	<tr><th>유저이름</th><td><input type="text" name="cart_user"></td></tr>
	<tr><th>상품이미지</th><td><input type="text" name="cart_img"></td></tr>
	<tr><th>상품번호</th><td><input type="text" name="cart_no"></td></tr>
	<tr><th>상품이름</th><td><input type="text" name="cart_name"></td></tr>
	<tr><th>상품가격</th><td><input type="text" name="cart_price"></td></tr>
	<tr><th>상품수량</th><td><input type="text" name="cart_quantity"></td></tr>
	<tr><th>상품대분류번호</th><td><input type="text" name="cart_tagval"></td></tr>
</table>
<input type="submit" value="장바구니등록">
</form>
</body>
</html>