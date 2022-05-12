<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
                    <a class="nav-link active" id="navItem1" href="displaymedicine">
                        Medicines
                        <span class="sr-only">(current)</span>
                    </a>
                    <a class="nav-link" href="profile" id="navItem2">Profile</a>
                    <a class="nav-link" href="orders" id="navItem2">Orders</a>
                    <a class="nav-link" href="#historySection" id="navItem3">Address</a>

                </div>
            </div>
        </div>
    </nav>
    <div class="explore-menu-section pt-5 pb-5" id="medicinesSection">
        <div class="container">
            <div class="row">
                <div class="col-12">
                   
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="shadow menu-item-card p-3 mb-3">
                        
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