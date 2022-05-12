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


.updatePassword-background {
    background-image: linear-gradient(to bottom, #ffa6b7, lightblue);
   
     padding-bottom: 200px;
     height:100vh;
     background-size:cover;
}

.password-heading {
    color: #ffffff;
    font-weight: 500;
}

.image {
    height: 20vh;
    background-size: cover;
    border-radius: 30px;
    text-align: center;
}

.form-size {

    padding-left: 350px;
    padding-right: 350px
}
	
	</style>

</head>

<body>
    <div class="updatePassword-background p-4">
        <h1 class="password-heading mb-4 text-center">Customer Login</h1>
        <div class="d-flex justify-content-center">
            <img src="https://clipground.com/images/login-logo-clipart-2.png" class=" image w-40" />
        </div>
         <form action="checkCustomer" method="post" modelAttribute="customer"  id="updatePasswordForm ">  
            
            <div class="mb-3 pt-3 form-size ">
                <label for="newPassword" class="password-heading">USERNAME</label>
                <input type="text" id="newPassword" class="form-control w-40" name="cust_username" />
                <p id="newPasswordErrMsg"></p>
            </div>
            <div class="mb-3 form-size">
                <label for="confirmPassword" class="password-heading">PASSWORD</label>
                <input type="password" id="confirmPassword" class="form-control w-40" name="cust_password" />
                <p id="confirmPasswordErrMsg"></p>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary" id="updateBtn">Submit</button>
            </div>
        </form>

    </div>
</body>

</html>