<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
       <!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <style>
	@import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Caveat:wght@400;700&family=Lobster&family=Monoton&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Playfair+Display+SC:ital,wght@0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,700&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&family=Source+Sans+Pro:ital,wght@0,400;0,700;1,700&family=Work+Sans:ital,wght@0,400;0,700;1,700&display=swap');

.entire-background {
    background-color: #d5e5ff;

    padding-left: 250px;
    padding-right: 250px;
}

.form-container {
    background-color: #ffffff;
    border-bottom-left-radius: 5px;
    border-bottom-right-radius: 5px;
}

p {
    color: red;
}

.image {
    height: 40vh;
    background-size: cover;
}
	</style>

</head>

<body>
    <div class="entire-background  d-flex flex-column justify-content-center">
        <img src="https://cdn.pixabay.com/photo/2019/01/16/19/14/membership-3936563_1280.jpg" class="w-40 image " />
        <div class="form-container p-3">
         <form action="saveCustomer" method="post" modelAttribute="customer" id="subsribe-btn"> 
         
                <div class="mb-3">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="cust_name" placeholder="Enter Name"/>
                    <p id="nameErrMsg"></p>
                </div>
                <div class="mb-3">
                    <label for="age">Age</label>
                    <input type="text" class="form-control" id="age" name="cust_age" placeholder="Enter Age"/>
                    <p id="ageErrMsg"></p>
                </div>

                <div class="mb-3">
                    <label>Phone Number: </label>   
            <input type="text" class="form-control" placeholder="Enter Number" name="cust_phone" required> 
                </div>
                <div class="mb-3">
                    <label for="email">Email</label>
                    <input type="text" class="form-control" id="email" name="cust_email" placeholder="Enter Email"/>
                    <p id="emailErrMsg"></p>
                </div>
                <label for="gender">Gender</label>
                <input type="radio" name="cust_gender" value="Male"/>Male</input>
                <input type="radio" name="cust_gender" value="Female"/>Female</input>
                <input type="radio" name="cust_gender" value="Others"/>Others</input>
                  
                     
                
                <div class="mb-3">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" id="address" name="cust_address" placeholder="Enter Address"/>
                    <p id="addressErrMsg"></p>
                </div>
                <div class="mb-3">
                    <label for="username">UserName</label>
                    <input type="text" class="form-control" id="username" name="cust_username" placeholder="Enter UserName"/>
                    <p id="usernameErrMsg"></p>
                </div>
                <div class="mb-3">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="cust_password" placeholder="Enter Password"/>
                    <p id="passwordErrMsg"></p>
                </div>

                <div class="text-center">
                    <button class="btn btn-primary" type="submit">Submit</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>