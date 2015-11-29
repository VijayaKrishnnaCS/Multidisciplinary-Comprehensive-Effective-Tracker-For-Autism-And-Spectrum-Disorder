<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="server/include/css/bootstrap/bootstrap.min.css"  media="all" rel="stylesheet"/>
<link href="server/include/css/bootstrap/bootstrap-theme.min.css"  media="all" rel="stylesheet"/>
<link href="server/include/css/main.css"  media="all" rel="stylesheet"/>
</head>
<body class="landing_body">
<form class="form-horizontal home_form" action="request_a_call" method="post">
<div class="container-fluid">
<div class="row">
<div class="col-md-8">
<p style="font-style:italic;font-size:45px">"There needs to be a lot more emphasis on what a child can do instead of what he cannot do."</p>
<p class="pull-right" style="font-size:16px">-Dr.Temple Grandin</p><br/><br/><br/><br/><br/><br/>
<p style="font-style:italic;font-size:33px">Swabhimaan trust is an organisation which works with the children and young adults with autism.<br/>We cater to the health, therapy and educational

needs of the children with Autism.</p>
</div>
<div class="col-md-4">
<br/>
<fieldset>

<!-- Form Name -->
<legend ><h3><b>Request a Call</b></h3></legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Name">Name</label>  
  <div class="col-md-8">
  <input id="Name" name="callRequest.name" type="text" placeholder="Enter your name" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="passwordinput">Phone</label>
  <div class="col-md-8">
    <input id="passwordinput" name="callRequest.phone" type="text" placeholder="Enter your phone number" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Email</label>  
  <div class="col-md-8">
  <input id="textinput" name="callRequest.email" type="text" placeholder="Enter your email address" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="textarea">Message</label>
  <div class="col-md-8">                     
    <textarea class="form-control" name="callRequest.message" id="textarea" name="textarea">Enter any information you wish to share with us.</textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-8">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary pull-right">Send</button>
  </div>
</div>

</fieldset>
<s:if test="%{msg=='success'}">
<div class="alert alert-success" role="alert">Thank you for you information, we will get back to you as soon as possible.</div>
</s:if>
</div>
</div></div>
</form>
</body>
</html>