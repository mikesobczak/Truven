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

<script type="text/javascript">
/*
$("#checkboxForm").validate({
rules: {
	singleCheckbox: "required",
	checkboxList: "required"
},
messages: {
	singleCheckbox: "This field is required",
	checkboxList: "Please enter your lastname"
}
});*/ 
</script>

    </head>
    
    <body >
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
                   <span class="heading1">Checkbox Examples</span><p>
                   
                   <form:form method="POST" commandName="checkboxForm" action="${context}/getCheckboxForm.do">
						
					<ul class="formFields">
					
					<li class="formFields">
						<div class="checkboxListElement">
							<label class="fieldLabel">Single Checkbox:</label>
							<span class="reqField">*</span>
							<form:checkbox path="singleCheckbox" value="single" tabindex="1" required="required" />
							<form:label path="singleCheckbox" class="checkboxLabel">Single Checkbox</form:label>
						</div>
					</li>
					
					<li class="formFields">
						<div class="checkboxListElement">
							<label class="fieldLabel">Disabled Checkbox:</label>
							<span class="notReqField">&nbsp;</span>
							<form:checkbox path="disabledCheckbox" value="single" tabindex="2" disabled="true" />
							<form:label path="disabledCheckbox" class="checkboxLabel" >Disabled Checkbox</form:label>
						</div>
					</li>
					
					
                	<li class="formFields">
                		<label class="fieldLabel">Checkbox (grouped):</label>
                		<span class="reqField">*</span>

						<!-- 2013-12-02 (msobczak): please do not delete the following commented code -->                	
                		<!--  
                		<div id="checkboxGroup" style="vertical-align: bottom; overflow: auto; float: left;">
							<form:checkboxes items="${checkboxList}" path="checkboxList2" tabindex="3" delimiter="<br>" required="required" />
						</div>
					 	 -->
					 	
					 	<div id="checkboxGroup" class="checkboxListElement">
					 		<c:forEach items="${checkboxList}" var="item" varStatus="loop">
								<form:checkbox path="checkboxList" value="${item}" tabindex="3" required="required" />
								<form:label path="checkboxList" class="checkboxLabel" >${item}</form:label>
								<br>
							</c:forEach>
					 	</div>
					 	
					</li>
					
					<!-- 2013-12-02 (msobczak): please do not delete the following commented code --> 
					<!-- 
					<li class="formFields">
                		<label class="fieldLabel">Checkbox (grouped):</label>
                		<span class="reqField">*</span>
					
						<table style="float: left;">
					
							<c:forEach items="${checkboxList}" var="item" varStatus="loop">
								<tr>
								<td>							
									<form:checkbox path="checkboxList2" value="${item}" tabindex="3" required="required" />
									<form:label path="checkboxList2" class="checkboxLabel" >${item}</form:label>
								</td>
								</tr>
							</c:forEach>
					
						</table>
					 
					</li>
					 -->
					 
					</ul>
					
					<p>	
					
					<div class="buttonHolder">
						<button type="submit" tabindex="4">Submit</button> 
						<button type="button" tabindex="5" onClick="window.location.reload()">Reset</button>
						
					</div>
					
					</form:form> 
					
					<P><span class="requiredField">*  indicates a required field.  Please make the necessary entry or selection to complete the desired action.</span>
                	<P>Initial focus cannot be given to a checkbox
                	
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

$("#checkboxForm").validate(
		{
			messages: {
				singleCheckbox: "This field is required",
				checkboxList: "Please select one"
				},
		 errorPlacement: function ($error, $element) {
		        if ($element.attr("name") === "singleCheckbox") {
		            $error.insertAfter("label[for=singleCheckbox]");
		        }
		        else if ($element.attr("name") === "checkboxList") {
		            $error.insertAfter("div#checkboxGroup");
		        } 
		        else {
		            $error.insertAfter($element);
		        }
		 }
		}
		);
		
</script>
</body>
</html>