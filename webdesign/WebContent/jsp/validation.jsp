<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<!-- saved from url=(0055)http://truvenhealth.com/your_healthcare_focus/research/ -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title><fmt:message key="app.title" /></title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link rel="shortcut icon" href="http://truvenhealth.com/images/your-healthcare-focus-favicon.ico?4113508715">

<meta name="apple-touch-fullscreen" content="yes"><meta name="Description" content="Truven Health Analytics | Services and Solutions for the Improvement of Healthcare Cost and Quality">
<meta name="Abstract" content="Truven Health Analytics | Services and Solutions for the Improvement of Healthcare Cost and Quality">
<meta name="Content-Type" content="Truven Health Analytics | Services and Solutions for the Improvement of Healthcare Cost and Quality">

    <!-- JS -->
    <%@ include file="/jsp/include/javascriptLibraries.jsp" %>

	<script  type="text/javascript">
	$(document).ready(function () {
			$("#textfield1").focus();
	 });
	</script>
	
    </head>
    
    <body>
        <div id="page">
           <!-- Cloud -->
           <div class="topBorder"></div>
           <div class="middleBorder">
           
           <div class="position_content" id="page_position_content">
             
             <%@ include file="/jsp/include/header.jsp" %>
             
             <!-- Content place holder --->
             <div>

    <div class="clearfix colelem" id="middleContent">
        <div class="clearfix colelem" id="middleContentPadding"><!-- group -->
            <div id="middleContainer">
            
            <!-- vertical menu -->
            <!-- left column -->
			<div id="thirtyThreeSplit">
				<!-- vertical menu -->
			    <%@ include file="/jsp/include/formFieldsSubmenu.jsp" %>
			</div>
            
            </div>
                <div id="mainContent">
                   <div id="mainContentArea">
                   
                   <span class="heading1">Validation Example</span>
                   <p>
                 <form:form method="POST" commandName="validationForm" action="${context}/getValidationForm.do">
                   
                   	<ul class="formFields">
                   		<li class="formFields"><label class="fieldLabel">Default error message:</label><span class="reqField">*</span><form:input type="text" path="textfield1" tabindex="1" required="required"/></li> 
                   		<li class="formFields"><label class="fieldLabel">Custom error message:</label><span class="reqField">*</span><form:input type="text" path="textfield2" title="Please enter a value" tabindex="2" required="required"/></li>
                   		<li class="formFields"><label class="fieldLabel">Numeric input only:</label><span class="reqField">*</span><form:input type="text" path="numberfield" title="Please enter a number" tabindex="3"/></li>
					</ul>
					
					<br>
					<div class="buttonHolder">
					<button type="submit" tabindex="2">Submit</button> 
					</div>
				</form:form> 
					<P><span class="requiredField">*  indicates a required field.  Please make the necessary entry or selection to complete the desired action.</span>
					
                </div>   
            </div>
        </div>
	</div>
</div>
<!-- Content place holder end --->
<!-- Footer -->
<%@ include file="/jsp/include/footer.jsp" %>
</div>
<!-- Footer End -->
<div class="bottomBorder">
	<img src="${context}/images/bottomDropShadowBar.png" id="Img1">
</div>
</div>
</div>	

<script>
$("#validationForm").validate(
		{
			rules: {
				numberfield: {
					required:true,
					number:true
				}
			} 
		});
</script>
	
</body>
</html>