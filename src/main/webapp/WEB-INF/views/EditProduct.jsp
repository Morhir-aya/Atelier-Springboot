<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Edition</title>
</head>
<body class="d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="container">
        <header class="text-center">
            <h1>Product Edition</h1>
        </header>
        <main>
            <form action="updateProduct" method="post" style="width: 40rem; margin: auto;">
                <div class="form-outline mb-4">
                    <label hidden for="idProduct">Product Id : </label>
                    <input hidden class="form-control" type="text" id="idProduct" name="idProduct" value="${productJsp.idProduct}" >
                </div>
                <div class="form-outline mb-4">
                    <label for="nameProduct">Product Name : </label>
                    <input class="form-control" type="text" id="nameProduct" name="nameProduct" value="${productJsp.nameProduct}">
                </div>
                <div class="form-outline mb-4">
                     <label for="priceProduct">Price : </label>
                    <input class="form-control" type="text" id="priceProduct" name="priceProduct" value="${productJsp.priceProduct}" >
                </div>
                <div class="form-outline mb-4">
                    <label for="dateCreate">Creation Date : </label>
                    <fmt:formatDate pattern="yyyy-MM-dd" value="${productJsp.dateCreate}" var="formatDate" />
                    <input class="form-control" type="date" id="dateCreate" name="dateJsp" value="${formatDate}" >
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block mb-4">Update</button>
                </div>
            </form>
        </main>
        <footer class="text-center">
            <a href="productsList">Products List</a>
        </footer>
    </div>
</body>
</html>
