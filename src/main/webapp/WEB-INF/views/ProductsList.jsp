<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css" />
        <meta charset="utf-8">
        <title>Products List</title>
    </head>
    <body>
        <header class="text-center">
            <h1>Products List</h1>
        </header>
        <main>
              <table  class="table table-hover">
                <tr>
                  <th scope="col">Product Id</th>
                  <th scope="col">Product Name</th>
                  <th scope="col">Product Price</th>
                  <th scope="col">Create Date</th>
                </tr>
                <c:forEach items="${productsJsp}" var="product">
                    <tr>
                        <td scope="row">${product.idProduct}</td>
                        <td>${product.nameProduct}</td>
                        <td>${product.priceProduct}</td>
                        <td><fmt:formatDate pattern="dd/MM/yyyy" value="${product.dateCreate}" /></td>
                        <td><a type="button" class="btn btn-success" href="showProduct?id=${product.idProduct}">
                             Edit
                            </a>
                        </td>
                        <td><a type="button" class="btn btn-danger"onClick="return confirm('Are you sure you want to delete this item?')"
                               href="deleteProduct?id=${product.idProduct}">
                             Delete
                             </a>
                        </td>
                    </tr>
                </c:forEach>
              </table>
        </main>
        <footer>
            <a href="createProduct">Product Creation</a>
        </footer>
    </body>
</html>



