<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Medicine</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Caveat:wght@400;700&family=Lobster&family=Monoton&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Playfair+Display+SC:ital,wght@0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,700&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&family=Source+Sans+Pro:ital,wght@0,400;0,700;1,700&family=Work+Sans:ital,wght@0,400;0,700;1,700&display=swap');

        .food-munch-logo {
            width: 81px;
            height: 71px;
            border-radius: 20px;
        }

        #navItem1 {
            color: #323f4b;
            font-family: "Roboto";
        }

        #navItem2 {
            color: #323f4b;
            font-family: "Roboto";
        }

        #navItem3 {
            color: #323f4b;
            font-family: "Roboto";
        }

        #navItem4 {
            color: #323f4b;
            font-family: "Roboto";
        }

        body {
            color: #404E67;
            background: #F5F7FA;
            font-family: 'Open Sans', sans-serif;
        }

        .table-wrapper {
            width: 100%;
            background-size: cover;
            margin: 30px 5px 5px 0px;
            background: #fff;
            padding: 20px;
            box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
        }

        .table-title {
            padding-bottom: 10px;
            margin: 0 0 10px 0px;
        }

        .table-title h2 {
            margin: 6px 0 0;
            font-size: 22px;
        }

        .table-title .add-new {
            float: right;
            height: 30px;
            font-weight: bold;
            font-size: 12px;
            text-shadow: none;
            min-width: 100px;
            border-radius: 50px;
            line-height: 13px;
        }

        .table-title .add-new i {
            margin-right: 4px;
        }

        table.table {
            table-layout: fixed;
        }

        table.table tr th,
        table.table tr td {
            border-color: #e9e9e9;
        }

        table.table th i {
            font-size: 13px;
            margin: 0 5px;
            cursor: pointer;
        }

        table.table .first {
            width: 100px;
        }

        table.table .second {
            width: 100px;
        }

        table.table .third {
            width: 100px;
        }

        table.table .fourth {
            width: 200px;
        }

        table.table .fifth {
            width: 200px;
        }

        table.table .sixth {
            width: 200px;
        }

        table.table td a {
            cursor: pointer;
            display: inline-block;
            margin: 0 5px;
            min-width: 24px;
        }

        table.table td a.add {
            color: #27C46B;
        }

        table.table td a.edit {
            color: #FFC107;
        }

        table.table td a.delete {
            color: #E34724;
        }

        table.table td i {
            font-size: 19px;
        }

        table.table td a.add i {
            font-size: 24px;
            margin-right: -1px;
            position: relative;
            top: 3px;
        }

        table.table .form-control {
            height: 32px;
            line-height: 32px;
            box-shadow: none;
            border-radius: 2px;
        }

        table.table .form-control.error {
            border-color: #f50000;
        }

        table.table td .add {
            display: none;
        }
    </style>
  
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="https://i.pinimg.com/474x/bc/68/f2/bc68f2257d9fa3b31c72a9ed9227f984--logo-design-medicine.jpg" class="food-munch-logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link active" id="navItem1" href="#homeSection">
                        Home
                        <span class="sr-only">(current)</span>
                    </a>
                    
                </div>
            </div>
        </div>
    </nav>
    <div class="container-lg">
        <div class="table-responsive">
            <div class="table-wrapper">
                <div class="table-title col-12">
                    <div class="row">
                        <div class="col-sm-8">
                            <h2>Stock <b>Details</b></h2>
                        </div>
                         
                        <div class="col-sm-4">
                 <a href="newStock"><button type="button" class="btn btn-info add-new"><i class="fa fa-plus" ></i> Add New</button></a>
                        </div>
                   
                     </div>
                </div>
                
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="first">Stock Id</th>
                            <th class="fourth">Medicine Name</th>
                            <th class="second">Supplier id</th>
                            
                            <th class="third">Quantity</th>
                            <th class="fourth">Medicine Id</th>
                            
                            
                     
                            <th class="first">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                     <c:forEach var="stock" items="${listStock}"  varStatus="status"> 
                        <tr>
                            <td name="med_id">${stock.stock_id}</td>
                            <td name="med_name">${stock.stock_name}</td>
                            <td name="med_price">${stock.sup_id}</td>
                            <td name="med_dose">${stock.quantity}</td>
                            <td name="med_description">${stock.med_id}</td>
                          
                            <td>
                                <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
                                <a class="edit" title="Edit" data-toggle="tooltip" href="editStock?id=${stock.stock_id}"><i class="material-icons">&#xE254;</i></a>
                                <a class="delete" title="Delete" data-toggle="tooltip" href="deleteStock?id=${stock.stock_id}"><i class="material-icons">&#xE872;</i></a>
                            </td>
                        </tr>
</c:forEach>

                    </tbody>
                </table>
          
            </div>
        </div>
    </div>
    
</body>

</html>