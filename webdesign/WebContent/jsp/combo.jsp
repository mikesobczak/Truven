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
    
    <!-- CSS/JavaScript resources -->
    <%@ include file="/jsp/include/javascriptLibraries.jsp" %>
    
    <script type="text/javascript" src="${context}/js/combo.js"></script>    
	
	<script>
	$(document).ready( function() {
		$("select:visible:first").focus();
	});
	
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
                   <span class="heading1">Combo/Dropdown</span>
                   <p>
                   <p>
                   <form:form method="POST" commandName="comboForm" action="${context}/getComboForm.do">

					<ul class="formFields">

					<li class="formFields"><label class="fieldLabel">Combo/Dropdown:</label><span class="notReqField">&nbsp;</span>
					
					<form:select path="comboOption" required="required" tabindex="1"><span class="reqField">*</span>
                        <form:option value="option1" label="Option 1"/>
                        <form:option value="option2" label="Option 2"/>
                        <form:option value="option3" label="Option 3"/>
                        <form:option value="option4" label="Option 4"/>
                    </form:select>
                   </li>
                   
					<li class="formFields"><label class="fieldLabel">Disabled Combo/Dropdown:</label><span class="notReqField">&nbsp;</span>
					
					<form:select path="comboOption" required="required" tabindex="2" disabled="true">
                        <form:option value="option1" label="Option 1"/>
                        <form:option value="option2" label="Option 2"/>
                        <form:option value="option3" label="Option 3"/>
                        <form:option value="option4" label="Option 4"/>
                    </form:select>
                    </li>
                    
                    </ul>
                   <p>
                   <p>
                   
                   <span class="heading2">Combo/Dropdown with "please select" option (no page reload)</span>
                   <p>
                   
                   <ul class="formFields">
                   
                   <li class="formFields"><label class="fieldLabel">Country:</label><span class="reqField">*</span>
                   <form:select path="country" title="Select a Country" required="required" tabindex="3"><span class="reqField">*</span>
                   		<form:option value="" label="Select Country"/>
                        <form:option value="usa" label="USA"/>
                        <form:option value="canada" label="Canada"/>
                        <form:option value="mexico" label="Mexico"/>
                    </form:select>
                   	</li>
                   	
                    <li class="formFields"><label class="fieldLabel">State:</label><span class="reqField">*</span>
					<form:select path="state" title="Select a State" required="required" tabindex="4"><span class="reqField">*</span>
                        <form:option value="" label="Select State"/>
                        <form:options items="${stateList}" />
                    </form:select>
                    </li>
                    
                    </ul>
                    
                    <br>Note: there is a limitation within IE8 with SELECT controls.  
                   	<br>IE8 does not automatically resize the control when the options within the SELECT are changed 
                   	<br>without a page reload.
                    
                   	<br>
                   	<br>
                   	<div class="buttonHolder">
					<button type="submit" tabindex="5">Submit</button> 
					<button type="button" tabindex="6" onClick="window.location.reload()">Reset</button>
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
$("#comboForm").validate();
</script>
</body>
</html>