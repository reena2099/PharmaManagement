<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Profile</title>

    <meta name="author" content="Codeconvey" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

    
   
    
	    <link rel="stylesheet" href="resources/style1.css">
</head>
<body>
		




<section>
<c:forEach var="cus" items="${listCustomer}" varStatus="status">

    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
              
<!-- Student Profile -->
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img" src="https://source.unsplash.com/600x300/?student" alt="student dp">
            <h3>${cus.cust_name}</h3>
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">User ID:</strong>${cus.cust_id }</p>
            <p class="mb-0"><strong class="pr-1">Age:</strong>${cus.cust_age }</p>
            <p class="mb-0"><strong class="pr-1">Gender:</strong>${cus.cust_gender}</p>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Your Information</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered">
              <tr>
                <th width="30%">Phone</th>
                <td width="2%">:</td>
                <td>${cus.cust_phone}</td>
              </tr>
              <tr>
                <th width="30%">Email</th>
                <td width="2%">:</td>
                <td>${cus.cust_email}</td>
              </tr>
              <tr>
                <th width="30%">Address</th>
                <td width="2%">:</td>
                <td>${cus.cust_address}</td>
              </tr>
              <tr>
                <th width="30%">Username</th>
                <td width="2%">:</td>
                <td>${cus.cust_username}</td>
              </tr>
              <tr>
                <th width="30%">Password</th>
                <td width="2%">:</td>
                <td>${cus.cust_password}</td>
              </tr>
            </table>
   <center>    <a href="editCustomer?id=${cus.cust_id}"><button class="button">Edit</button></a></center>
          </div>
        </div>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Other Information</h3>
          </div>
          <div class="card-body pt-0">
              <p>Our products are manufactured at one of the best state of art manufacturing facilities, which are WHO and GMP certified units.Pranic Pharma is one of the most trusted Pharma franchise company which is producing the wide range of the specialty range of products with quality control and quality assurance measures.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- partial -->
           
    		</div>
		</div>
    </div>
</c:forEach>
</section>
     


    <!-- Analytics -->

	</body>
</html>