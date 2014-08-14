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

	<script>
	$(document).ready( function() {
		$("select:visible:first").focus();
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
                   <span class="heading1">List Control</span><p>
					<p>
                  
                   <form:form method="POST" commandName="listForm" action="${context}/getListForm.do">
                   	<%--
                   	<ul class="formFields">
                   		<li class="formFields">
                   			<label class="fieldLabel">List Control: (select one)</label>
                   			<span class="reqField">*</span>
							<form:select path="itemList1" items="${itemList}" multiple="false" tabindex="1" required="required" />
						</li>
						
						<li class="formFields">
                   			<label class="fieldLabel">List Control: (select multiple)</label>
                   			<span class="reqField">*</span>
							<form:select path="itemList2" items="${itemList}" tabindex="2" required="required"/>
						</li>
					
						<li class="formFields">
							<label class="fieldLabel">Disabled List Control:</label>
							<span class="notReqField">&nbsp;</span>
							<form:select path="itemList3" items="${itemList}" tabindex="3" disabled="true"/>
						</li>
					
					</ul>
					 --%>
					 
					<table>
					
					<tr>
						<td>
							<label class="fieldLabel">List Control: <br>(select one)</label>
							<span class="reqField">*</span>
						</td>
						<td>
							<form:select path="itemList1" items="${itemList}" multiple="false" tabindex="1" required="required" />
						</td>
					</tr>
					
					<tr>
						<td>
							<label class="fieldLabel">List Control: <br>(select multiple)</label>
                   			<span class="reqField">*</span>
						</td>
						<td>
							<form:select path="itemList2" items="${itemList}" tabindex="2" required="required"/>
						</td>
					</tr>
					
					<tr>
						<td>
							<label class="fieldLabel">Disabled List Control:</label>
							<span class="notReqField">&nbsp;</span>
						</td>
						<td>
							<form:select path="itemList3" items="${itemList}" tabindex="3" disabled="true"/>
						</td>
					</tr>
					
					</table>
					
					<p>
					<p>
					<div class="buttonHolder">
					<button type="submit" tabindex="2">Submit</button> 
					<button type="button" tabindex="3" onClick="window.location.reload()">Reset</button>
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
$("#listForm").validate();
</script>
</body>
</html>