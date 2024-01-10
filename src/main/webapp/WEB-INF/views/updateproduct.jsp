<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="./base.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">

   
    <style>
        /* Center the form on the screen */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="text-center">Change product Details</h1>
    <form  action="${pageContext.request.contextPath}/handleformadd" method="post" >
    <label >Product Id :</label>
    <input type="text" name="id" class="form-control" id="productName" placeholder="Product name" value="${product.id} " required>
        <div class="form-group">
            <label for="productName">Product Name</label>
            <input type="text" name="name" class="form-control" id="productName" placeholder="Product name" value="${product.name} " required>
        </div>
        <div class="form-group mb-6	">
            <label for="productDescription">Product Description</label>
           <textarea class="form-control" name="description" id="exampleFormControlTextarea1"  rows="3" placeholder="Product Description">${product.description}</textarea>
        </div>
        <div class="form-group">
            <label for="productPrice">Product Price</label>
            <input type="text" name="Price" class="form-control" id="productPrice" value="${product.price} " placeholder="Product price" required>
        </div>
        <div class="form-group text-center">
         <a href="${pageContext.request.contextPath }/" class="btn btn-success"> Back</a>
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>
