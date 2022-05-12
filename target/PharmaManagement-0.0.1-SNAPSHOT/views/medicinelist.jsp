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
    <script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip();
            var actions = $("table td:last-child").html();
            // Append table with add row form on add new button click
            $(".add-new").click(function() {
                $(this).attr("disabled", "disabled");
                var index = $("table tbody tr:last-child").index();
                var row = '<tr>' +
                    '<td><input type="text" class="form-control" name="name" id="name"></td>' +
                    '<td><input type="text" class="form-control" name="department" id="price"></td>' +
                    '<td><input type="text" class="form-control" name="phone" id="dose"></td>' +
                    '<td><input type="text" class="form-control" name="phone" id="description"></td>' +
                    '<td><input type="text" class="form-control" name="phone" id="manufactureDate"></td>' +
                    '<td><input type="text" class="form-control" name="phone" id="expiryDate"></td>' +
                    '<td>' + actions + '</td>' +
                    '</tr>';
                $("table").append(row);
                $("table tbody tr").eq(index + 1).find(".add, .edit").toggle();
                $('[data-toggle="tooltip"]').tooltip();
            });
            // Add row on add button click
            $(document).on("click", ".add", function() {
                var empty = false;
                var input = $(this).parents("tr").find('input[type="text"]');
                input.each(function() {
                    if (!$(this).val()) {
                        $(this).addClass("error");
                        empty = true;
                    } else {
                        $(this).removeClass("error");
                    }
                });
                $(this).parents("tr").find(".error").first().focus();
                if (!empty) {
                    input.each(function() {
                        $(this).parent("td").html($(this).val());
                    });
                    $(this).parents("tr").find(".add, .edit").toggle();
                    $(".add-new").removeAttr("disabled");
                }
            });
            // Edit row on edit button click
            $(document).on("click", ".edit", function() {
                $(this).parents("tr").find("td:not(:last-child)").each(function() {
                    $(this).html('<input type="text" class="form-control" value="' + $(this).text() + '">');
                });
                $(this).parents("tr").find(".add, .edit").toggle();
                $(".add-new").attr("disabled", "disabled");
            });
            // Delete row on delete button click
            $(document).on("click", ".delete", function() {
                $(this).parents("tr").remove();
                $(".add-new").removeAttr("disabled");
            });
        });
    </script>
    
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
                            <h2>Medicines <b>Details</b></h2>
                        </div>
                         
                        <div class="col-sm-4">
               <a href="newMedicine"><button type="button" class="btn btn-info add-new"><i class="fa fa-plus" ></i> Add New</button></a>
                        </div>
                   
                     </div>
                </div>
                
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="first">Id</th>
                            <th class="first">Name</th>
                            <th class="second">Price</th>
                            <th class="third">Dose</th>
                            <th class="fourth">Description</th>
                            <th class="fifth">Manufacture Details</th>
                            <th class="sixth">Expiry Date</th>
                            <th class="first">Stock_id</th>
                            <th class="first">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                     <c:forEach var="med" items="${listMed}" varStatus="status"> 
                        <tr>
                            <td type="text" name="med_id">${med.med_id}</td>
                            <td type="text" name="med_name">${med.med_name}</td>
                            <td type="text" name="med_price">${med.med_price}</td>
                            <td type="text" name="med_dose">${med.med_dose}</td>
                            <td type="text" name="med_desc">${med.med_desc}</td>
                            <td type="text" name="med_mfg_date">${med.med_mfg_date}</td>
                            <td type="text" name="med_exp_date">${med.med_exp_date}</td>
                            <td type="text" name="stock_id">${med.stock_id}</td>
                            <td>
                               <a class="add" title="Add" data-toggle="tooltip" href="saveMedicine"><i class="material-icons">&#xE03B;</i></a>
                                <a class="edit" title="Edit" data-toggle="tooltip" href="/editMedicine?id=${med.med_id}"><i class="material-icons">&#xE254;</i></a>
                                <a class="delete" title="Delete" data-toggle="tooltip" href="deleteMedicine?id=${med.med_id}"><i class="material-icons">&#xE872;</i></a>
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