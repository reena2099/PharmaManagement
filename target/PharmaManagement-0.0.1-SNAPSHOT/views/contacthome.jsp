<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
		
	

		.content{
			background: linear-gradient(45deg, #757f9a, #d7dde8);
			width: 25%;
			padding:10px 20px;
		    margin-left: 5%;
             margin-top: 5%;
			font-family: calibri;
			border-radius: 10px;
		   }
		   
		.button{
          display: inline-block;
		  background: linear-gradient(45deg, #95918c, #ecbcb4);
		  border-radius: 6px;
		  padding:10px 20px;
		  box-sizing:border-box;
		  text-decoration:none;
		  color: #fff;
		  box-shadow:3px 8px 22px rgba(94,28,68,0.15);
           }
		.pic{
		    margin-bottom: -25px;
		    }

		p{
			font-size: 20px;
			 font-family: "Lucida Handwriting", "Brush Script MT", cursive;
			color: black;
		}
		h1{
		font-size: 25px;
	    font-family: "Lucida Handwriting", "Brush Script MT", cursive;
	    color: white;
		margin-bottom: -36px;
			}
		

	</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Manager Home</title>
    </head>
    <body>
    	<div align="center">
	        <h1>Contact List</h1>
	        <h3><a href="newContact">New Contact</a></h3>
	        <table border="1">
	        	<th>No</th>
	        	<th>Name</th>
	        	<th>Email</th>
	        	<th>Address</th>
	        	<th>Telephone</th>
	        	<th>Action</th>
	        	
				<c:forEach var="contact" items="${listContact}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
					<td>${contact.name}</td>
					<td>${contact.email}</td>
					<td>${contact.address}</td>
					<td>${contact.telephone}</td>
					<td>
						<a href="editContact?id=${contact.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="deleteContact?id=${contact.id}">Delete</a>
					</td>
							
	        	</tr>
				</c:forEach>	        	
			</table>
    	</div>
    	<c:forEach var="contact" items="${listContact}" varStatus="status">
    	<div class="content" onclick="goto();">
   <button class="button">Contact</button>
    	
   	
	        	
	        		<p>ID:${status.index + 1}</p>
					<p>${contact.name}</p>
					<p>${contact.email}</p>
					<p>${contact.address}</p>
					<p>${contact.telephone}</p>
					<a href="editContact?id=${contact.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="deleteContact?id=${contact.id}">Delete</a>
					<button class="button">Add to Cart</button>
					
						
   </div>
   </c:forEach>	
    </body>
</html>
