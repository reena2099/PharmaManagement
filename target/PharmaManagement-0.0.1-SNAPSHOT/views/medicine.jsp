<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/20c5629a29.js" crossorigin="anonymous"></script>
    <style>
	@import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Caveat:wght@400;700&family=Lobster&family=Monoton&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Playfair+Display+SC:ital,wght@0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,700&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&family=Source+Sans+Pro:ital,wght@0,400;0,700;1,700&family=Work+Sans:ital,wght@0,400;0,700;1,700&display=swap');

.medicine-outerlayer {
    border-radius: 20px;
}

.food-munch-logo {
    width: 80px;
    height: 70px;
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

.banner-section-bg-container {
    background-image: url("https://d1tgh8fmlzexmh.cloudfront.net/ccbp-responsive-website/foodmunch-banner-bg.png");
    height: 100vh;
    background-size: cover;
}

.banner-heading {
    color: white;
    font-family: "Roboto";
    font-size: 45px;
    font-weight: 300;
}

.banner-caption {
    color: #f5f7fa;
    font-family: "Roboto";
    font-size: 24px;
    font-weight: 300;
}

.custom-button {
    color: white;
    background-color: #d0b200;
    width: 130px;
    height: 45px;
    border-width: 0;
    border-radius: 8px;
    margin-right: 10px;
}

.custom-outline-button {
    color: #d0b200;
    background-color: transparent;
    width: 130px;
    height: 45px;
    border-style: solid;
    border-width: 1px;
    border-color: #d0b200;
    border-radius: 8px;
}

.explore-menu-section {
    background-color: white;
}

.menu-section-heading {
    color: #183b56;
    font-family: "Roboto";
    font-size: 28px;
    font-weight: 700;
}

.menu-item-image {
    border-radius: 16px;

}

.details {
    padding: 0px;
}

.menu-card-title {
    color: #323f4b;
    font-family: "Roboto";
    font-size: 18px;
    font-weight: 500;
    margin-top: 24px;
}

.menu-item-link {
    color: #d0b200;
    font-family: "Roboto";
    font-size: 14px;
    font-weight: 500;
}

.menu-item-card {
    border-radius: 16px;
}

.healthy-food-section {
    background-color: #f9fbfe;
}

.footer-section {
    background-color: #0d2436;
}

.footer-section-mail-id {
    color: #959ead;
    font-family: "Roboto";
    font-weight: bold;
    font-size: 16px;
    margin-top: 20px;
}

.footer-section-address {
    color: #959ead;
    font-family: "Roboto";
    font-size: 14px;
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
                    <a class="nav-link active" id="navItem1" href="">
                        Home
                        <span class="sr-only">(current)</span>
                    </a>
                    
                </div>
            </div>
        </div>
    </nav>
     <div class="col-12">
                    <h1 class="menu-section-heading">Explore Medicines</h1>
                </div>
    
    <div class="explore-menu-section pt-5 pb-5" id="medicinesSection">
        <div class="container">
            <div class="row">
              <c:forEach var="med" items="${listMedicine}" varStatus="status"> 
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="shadow menu-item-card p-3 mb-3">
                        <img src="${med.med_image}" class="menu-item-image w-100" />
                        <h1 class="menu-card-title">Name: <span name="med_name">${med.med_name}</span></h1>
                        <p class="details">Price:Rs.<span name="med_price">${med.med_price} </span></p>
                                <p class="details" name="med_exp_date">Expiry date:<span name="med_exp_date">${med.med_exp_date}</span> </p>
                                
                                <br>
                               <div class="container">
            <div class="container">
<p class="details">Description:<span name="med_desc">${med.med_desc} </span></p>




<!-- .Launch Modal Button-->






<!-- .modal -->
<div class="row">
<div class="col-12">
<div class="modal fade" id="Mysmallmodal">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">





<h4 class="modal-title">
Description
</h4>
</div>
<div class="mb-1">
 

<textarea type="text" class="ml-3" rows=5 cols=50 >${med.med_desc}</textarea>

</div>






<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">
Close
</button>
<button type="button" class="btn btn-primary">
Ok
</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

            




<!-- .Launch Modal Button-->





<button class="custom-button" type="button" data-toggle="modal" data-target="#smallmodal">Buy Now</button>
<!-- .modal -->
<div class="row">
<div class="col-12">
<div class="modal fade" id="smallmodal">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">





<h4 class="modal-title">
Add to Cart
</h4>
</div>
<div class="mb-1">
 <form  action="saveCart" modelAttribute="cart" method="post">
 <label for="age" class="ml-3 mt-3">Medicine Name</label>
<input name="med_name" class="form-control mb-3 ml-3 mr-3 w-50" value=${med.med_name}></input>

<label for="age" class="ml-3 mt-3">Medicine Price</label>

<input type="text" class="form-control mb-3 ml-3 mr-3 w-50" name="med_price" value=${med.med_price} id=price></input>

<label for="age" class="ml-3 mt-3" name="quantity" id=quantity>Quantity</label>


<select id="petSelect" class="form-control mb-3 ml-3 mr-3 w-50" name="quantity" >



<option value="1" selected>1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>

<script>
function mul()
{
int p,q,total;
p=parseInt(document.getElementById("price").value);
q=parseInt(document.getElementById("quantity").value);
total =p*q;
document.getElementById("total").value=total;
}
</script>





<label for="age" class="ml-3 mt-3">Total</label>
<input name="total" class="form-control mb-3 ml-3 mr-3 w-50" id=total></input>


</div>







<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">
Close
</button>




<button type="submit" class="btn btn-primary">
Ok
</button>

</form>
</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
                    </div>
                </div>
  </c:forEach>

            </div>
        </div>
    </div>
  

</body>

</html>