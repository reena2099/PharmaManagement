<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  
<body>  
 
<form action="saveMedicine" method="post" modelAttribute="medicine" >  
  <div class="container">  
  
  <center>  <h1> Medicine Details</h1> </center>  
  <hr>  
  <label> MedicineID </label>   
<input type="text" name="med_id" placeholder= "MedicineID" size="15" required value=${med.med_id}>  
                        </input>
<label> Medicine Name: </label>   
<input type="text" name="med_name" placeholder="Middlename" size="15" required /> 
<label> Medicine Price: </label>    
<input type="text" name="med_price" placeholder="Lastname" size="15"required />  
<label> Medicine Dose: </label>    
<input type="text" name="med_dose" placeholder="Lastname" size="15"required />   
<div>  



   
Description :  
<textarea cols="80" rows="5" placeholder="Current Address" name="med_desc" required>  
</textarea>  
<label> Medicine Mfg date: </label>    
<input type="date" name="med_mfg_date" placeholder="Lastname" size="15"required />  
<label> Medicine Exp date: </label>    
<input type="date" name="med_exp_date" placeholder="Lastname" size="15"required />  
<label> Stock id: </label>    
<input type="text" name="stock_id" placeholder="Lastname" size="15"required />  

    <button type="submit" class="registerbtn">Submit</button> 
      
</form>  
</body>  
</html> 