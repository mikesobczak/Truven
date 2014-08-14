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

$(document).ready(function(){
	
	// The Select All option for the first checkbox group
	$('#selectAll1').change(function () {
	    //alert('changed');
	    
	    var isChecked = false;
	    
	    $('#selectAll1:checked').each(function() {
	      isChecked = true;
	    });
	 
	    if ( isChecked )
	    	$('input[name="checkboxList1"]').prop('checked', true);
	    else
	    	$('input[name="checkboxList1"]').prop('checked', false);
	 });
	 
	
	$('input[name="checkboxList1"]').change(function () {
    
    	$('#selectAll1').prop('checked', false);
    	
	});
	
	// The Select All option for the second checkbox group
	$('#selectAll2').change(function () {
	    //alert('changed');
	    
	    var isChecked = false;
	    
	    $('#selectAll2:checked').each(function() {
	      isChecked = true;
	    });
	 
	    if ( isChecked )
	    	$('input[name="checkboxList2"]').prop('checked', true);
	    else
	    	$('input[name="checkboxList2"]').prop('checked', false);
	 });
	 
	
	$('input[name="checkboxList2"]').change(function () {
    
    	$('#selectAll2').prop('checked', false);
    	
	});
 
});
	
function selectAll3()
{
	$('input[name="checkboxList3"]').prop('checked', true);
}

function clearAll3()
{
	$('input[name="checkboxList3"]').prop('checked', false);
}

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
                   <span class="heading1">Checkbox Select All Examples</span><p>
                   
                   <form:form method="POST" commandName="checkboxSelectAllForm" action="${context}/getCheckboxSelectAllForm.do">
						
					<ul class="formFields">					
					
                	<li class="formFields">
                		<label class="fieldLabel">Checkbox <br>(all pre-selected):</label>
                		<span class="reqField">*</span>

					 	<div id="checkboxGroup1" class="checkboxListElement">
					 	
					 		<table id="checkboxTable1">
					 			<tr>
					 				<td>
					 					<input type="checkbox" id="selectAll1" name="selectAll1" value="All" checked="checked">
					 					<label>Select All</label>
					 				</td>
					 			</tr>
					 			<c:forEach items="${checkboxList}" var="item" varStatus="loop">
					 			<tr>
					 				<td>
										<form:checkbox path="checkboxList1" value="${item}" tabindex="1" required="required" checked="checked" />
										<form:label path="checkboxList1" class="checkboxLabel" >${item}</form:label>
									</td>
								</tr>
								</c:forEach>
							</table>
							<br>
					 	</div>
					 	
					</li>
					
					<li class="formFields">
                		<label class="fieldLabel">Checkbox <br>(none pre-selected):</label>
                		<span class="reqField">*</span>

					 	<div id="checkboxGroup2" class="checkboxListElement">
					 	
					 	<table id="checkboxTable2">
					 			<tr>
					 				<td>
					 					<input type="checkbox" id="selectAll2" name="selectAll2" value="All">
					 					<label>Select All</label>
					 				</td>
					 			</tr>
					 			<c:forEach items="${checkboxList}" var="item" varStatus="loop">
					 			<tr>
					 				<td>
									<form:checkbox path="checkboxList2" value="${item}" tabindex="2" required="required" />
									<form:label path="checkboxList2" class="checkboxLabel" >${item}</form:label>
									</td>
								</tr>
								</c:forEach>
						</table>
						<br>
					 	</div>
					 	
					</li>
					 
					<li class="formFields">
                		<label class="fieldLabel">Checkbox <br>(select all link):</label>
                		<span class="reqField">*</span>

					 	<div id="checkboxGroup3" class="checkboxListElement">
					 	
					 	<table id="checkboxTable3">
					 			<c:forEach items="${checkboxList}" var="item" varStatus="loop">
					 			<tr>
					 				<td>
									<form:checkbox path="checkboxList3" value="${item}" tabindex="3" required="required" />
									<form:label path="checkboxList3" class="checkboxLabel" >${item}</form:label>
									</td>
								</tr>
								</c:forEach>
								<tr>
								<td>
									<a href="#" onclick="selectAll3();">select all</a>
									&nbsp;&nbsp;
									<a href="#" onclick="clearAll3();">clear all</a>
								</td>
								</tr>
						</table>
					 	</div>
					 	
					</li> 
					 
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

$("#checkboxSelectAllForm").validate(
		{
			messages: {
				checkboxList1: "Please select one",
				checkboxList2: "Please select one",
				checkboxList3: "Please select one"
				},
		 errorPlacement: function ($error, $element) {
		        
			 	//alert("element name: " + $element.attr("name"));
			 
		        if ($element.attr("name") === "checkboxList1") {
		            $error.insertAfter("#checkboxTable1");
		        }
		        else if ($element.attr("name") === "checkboxList2") {
		            $error.insertAfter("#checkboxTable2");
		        } 
		        else if ($element.attr("name") === "checkboxList3") {
		            $error.insertAfter("#checkboxTable3");
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