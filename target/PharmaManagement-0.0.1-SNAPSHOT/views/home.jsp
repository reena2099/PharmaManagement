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

.food-munch-logo {
    width: 100px;
    height: 70px;
   margin-left:-70px;
  
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

.wcu-section {
    background-color: #f9fbfe;
}



.wcu-section-heading {
    color: #183b56;
    font-family: "Roboto";
    font-size: 30px;
    font-weight: 700;
}

.wcu-section-description {
    color: #5a7184;
    font-family: "Roboto";
    font-size: 16px;
}

.wcu-card {
    text-align: center;
    background-color: white;
    border-style: solid;
    border-width: 1px;
    border-color: #e5eaf4;
    border-radius: 16px;
}

.wcu-card-image {
    width: 87px;
    height: 90px;
    border-radius: 30px;
}
.wcu-card-image2 {
    width: 200px;
    height: 150px;
    border-radius: 30px;
}


.wcu-card-image1 {
    width: 120px;
    height: 170px;
    border-radius: 30px;
}

.wcu-card-title {
    color: #323f4b;
    font-family: "Roboto";
    font-size: 32px;
    font-weight: 500;
}

.wcu-card-description {
    color: #7b8794;
    font-family: "Roboto";
    font-size: 16px;
}

.banner-section-bg-container {
    background-image: url("resources/bg.jpg");
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

.footer-section {
    background-color: #0d2436;
   
}

.footer-section-mail-id {
    color: #959ead;
    font-family: "Roboto";
    font-weight: bold;
    font-size: 35px;
    margin-top: 20px;
}

.footer-section-address {
    color: #959ead;
    font-family: "Roboto";
    font-size: 30px;
}

.p-head{
			font-size: 20px;
			 font-family: "Lucida Handwriting", "Brush Script MT";
			color: black;
		}
		.h1-head{
		font-size: 30px;
	    font-family: "Lucida Handwriting", "Brush Script MT";
	    color: black;
	    margin-left: -385px;
		margin-bottom: 25px;
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
                    <a class="nav-link" href="#loginSection" id="navItem2">Login</a>
                    <a class="nav-link" href="#signUpSection" id="navItem3">SignUp</a>
                    <a class="nav-link" href="#addressSection" id="navItem4">Address</a>
                </div>
            </div>
        </div>
    </nav>

    <div class="banner-section-bg-container d-flex justify-content-center flex-column" id="homeSection">
        <div class="text-center">
            <h1 class="h1-head">Medicines at your door step</h1>
            <p class="p-head" >For every patient’s need </p>

        </div>
    </div>

    <div class="wcu-section pt-4 pb-5" id="loginSection">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="wcu-section-heading">Login Section</h1>

                </div>
                <div class="col-12 col-md-6 pt-3">
                    <div class="wcu-card p-3 mb-3">
                        <img src="https://media.gettyimages.com/photos/young-woman-using-laptop-at-a-cafe-picture-id1137393419?k=20&m=1137393419&s=612x612&w=0&h=mmxxIzJ1-v1G6ziVj5enS64bzJR88G0kVSStFaMEQTs=" class="wcu-card-image w-100 h-100" />
                        <h1 class="wcu-card-title mt-3 pt-4">Customer Login</h1>
                    <a href="checkcust">    <button class="custom-button w-25"> Login</button></a>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div class="wcu-card p-3 mb-3">
                        <img src="https://professionalpayroll.com/wp-content/uploads/2016/04/employee-login.jpg" class="wcu-card-image w-100 h-100" />
                        <h1 class="wcu-card-title mt-3">Employee Login</h1>
                   <a href="check"> <button class="custom-button w-25"> Login</button></a> 
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="wcu-section pt-4 pb-5 " id="signUpSection">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="wcu-section-heading">SignUp Section</h1>

                </div>
                <div class="col-12  pt-3">
                    <div class="wcu-card p-3 mb-3">
                        <img src="https://cdn.pixabay.com/photo/2019/01/16/19/14/membership-3936563_1280.jpg" class="wcu-card-image2" />
                        <h1 class="wcu-card-title mt-3">Customer Sign Up</h1>
                    <a href="newCustomer">    <button class="custom-button w-25"> Sign up</button></a>
                    
             
                    </div>
                </div>


            </div>
        </div>
    </div>
    <div class="footer-section pt-5 pb-5" id="addressSection">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <img src="https://i.pinimg.com/474x/bc/68/f2/bc68f2257d9fa3b31c72a9ed9227f984--logo-design-medicine.jpg" class="food-munch-logo " />
                    <h1 class="footer-section-mail-id">orderMedicine@medicines.com</h1>
                    <p class="footer-section-address">
                        Contact number:1234567890
                    </p>
                    <p class="footer-section-address">
                        123 Ayur Vigyan Nagar, New Delhi, India.
                    </p>

                </div>
            </div>
        </div>
    </div>


</body>

</html>