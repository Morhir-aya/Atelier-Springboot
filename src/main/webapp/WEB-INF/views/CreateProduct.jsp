<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/5.2.0/css/bootstrap.min.css" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Creation</title>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="text-center">
        <header>
            <h1>Product Creation</h1>
        </header>
        <main>
            <form action="saveProduct" method="post" style="width: 40rem;">
                <div class="form-outline mb-4">
                    <input class="form-control" type="text" id="nameProduct" name="nameProduct" placeholder="Product Name">
                </div>
                <div class="form-outline mb-4">
                    <input class="form-control" type="text" id="priceProduct" name="priceProduct" placeholder="Price">
                </div>
                <div class="form-outline mb-4">
                    <input class="form-control" type="date" id="dateCreate" name="dateJsp" value="${now}" placeholder="Creation Date">
                </div>
                <div>
                    <button type="submit" class="btn btn-primary btn-block mb-4">Save</button>
                </div>
            </form>
            ${messageJsp}
        </main>
        <footer>
            <a href="productsList">Products List</a>
        </footer>
    </div>
</div>
</body>
</html>
