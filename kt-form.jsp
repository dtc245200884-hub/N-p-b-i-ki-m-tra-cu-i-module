<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Biểu mẫu sản phẩm</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; }
        form { width: 400px; display: flex; flex-direction: column; gap: 15px; }
        input { padding: 8px; font-size: 14px; }
        button { padding: 10px; background: #28a745; color: white; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <h2>
        <c:if test="${product != null}">Cập nhật sản phẩm</c:if>
        <c:if test="${product == null}">Thêm mới sản phẩm</c:if>
    </h2>

    <form action="products" method="post">
        <c:if test="${product != null}">
            <input type="hidden" name="action" value="update" />
            <input type="hidden" name="id" value="<c:out value='${product.id}' />" />
        </c:if>
        <c:if test="${product == null}">
            <input type="hidden" name="action" value="insert" />
        </c:if>

        <label>Tên sản phẩm:</label>
        <input type="text" name="name" value="<c:out value='${product.name}' />" required="required" />

        <label>Giá:</label>
        <input type="number" step="0.01" name="price" value="<c:out value='${product.price}' />" required="required" />

        <label>Số lượng:</label>
        <input type="number" name="quantity" value="<c:out value='${product.quantity}' />" required="required" />

        <button type="submit">Lưu thông tin</button>
    </form>
    <br>
    <a href="products">Quay lại danh sách</a>
</body>
</html>