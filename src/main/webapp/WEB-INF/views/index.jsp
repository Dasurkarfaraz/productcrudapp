<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="./base.jsp" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<body>
<h1 class="text-center mb-3">Welcome to Product App</h1>
<div class="container">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">SR.No</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Description</th>
      <th scope="col">Product Price</th>
      <th scope="col">Actions</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${products }" var="p">
    <tr >
      <th >${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
       <td>&#8377; ${p.price }</td>
       <td> <a href="delete/${p.id }"><i class="fa-solid fa-trash"></i></a>
       
        <a href="update/${p.id }"><i class="fa-regular fa-user-pen"></i></a>
       </td>
       
    </tr>
    </c:forEach>
  </tbody>
</table>
<div class="container text-center">

<a href="add-product" type="button" class="btn btn-success"> Add product</a>
</div>
</div>
</body>
</html>