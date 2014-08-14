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
                   <span class="heading1">Radio Examples</span><p>

                   <form:form method="POST" commandName="radioForm" action="${context}/getRadioForm.do">
                  
                  <ul class="formFields">
                  
					<li class="formFields"><label class="fieldLabel">Radio/Option (grouped):</label><span class="notReqField">&nbsp;</span>
						<div style="vertical-align: bottom; overflow: auto;">
						<form:radiobutton path="radioOption" value="radio1" tabindex="1" checked="checked"/>Radio 1<br>
					
						<form:radiobutton path="radioOption" value="radio2" tabindex="2"/>Radio 2<br>
					
						<form:radiobutton path="radioOption" value="radio3" tabindex="3"/>Radio 3<br>
						</div>
					</li>
						
					
					<li class="formFields"><label class="fieldLabel">Disabled Radio/Option (grouped):</label><span class="notReqField">&nbsp;</span>
					<div style="vertical-align: bottom; overflow: auto;">
						<form:radiobutton path="disabledRadioOption" value="radio1" tabindex="1" checked="checked" disabled="true"/>Radio 1<br>
					
						<form:radiobutton path="disabledRadioOption" value="radio2" tabindex="2" disabled="true"/>Radio 2<br>
					
						<form:radiobutton path="disabledRadioOption" value="radio3" tabindex="3" disabled="true"/>Radio 3<br>
					
					</div>
					</ul>
					
					<p>
					<div class="buttonHolder">
					<button type="submit" tabindex="4">Submit</button> 
					<button type="button" tabindex="5" onClick="window.location.reload()">Reset</button>
					</div>
					</form:form> 
					<P>Initial focus cannot be given to a radio button field 
					
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
$("#form1").validate();
</script>
</body>
</html>