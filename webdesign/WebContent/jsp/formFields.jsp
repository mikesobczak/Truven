<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
	function FocusOnInput()
	{
	     document.getElementById("textbox1").focus();
	}
	</script>
    
    
    </head>
    
    <body onload="FocusOnInput()">
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
                   <span class="heading1">Form Fields</span><p>
                   <span class="subheadPurple">Text Box</span>
                   <form id="form1" method="get" action="" >
                   
                   	<ul class="formFields">
                   		<li class="formFields"><label>Text Box:</label><span class="requiredField">*</span><input type="text" name="textbox1" id="textbox1" tabindex=1  value="" required></li> 
                   		<li class="formFields"><label>Text Box:</label><input type="text" name="textbox2" id="textbox2" tabindex=2  value="Default Value"></li>
						<li class="formFields"><label>Text Box with mouseover popup text:</label><input type="text" name="textbox3" id="textbox3" tabindex=3 title="mouseover popup text"></li> 
						
					</ul>

                   <p><span class="subheadPurple">List Control</span><p>
                   <label>List Control:</label>
					<select name="drop1" id="Select1" size="4" multiple="multiple" tabindex=4 >
						<option value="All">All</option>
    					<option value="1">List Item 1</option>
    					<option value="2">List Item 2</option>
    					<option value="3">List Item 3</option>
    					<option value="4">List Item 4</option>
					</select>
					
					<p><span class="subheadPurple">Combo/Dropdown</span><p>
					<label>Combo/Dropdown:</label>
					<select tabindex=5 id="combo" name="combo">
  						<option value="option1">Option 1</option>
  						<option value="option2">Option 2</option>
  						<option value="option3">Option 3</option>
 						<option value="option4">Option 4</option>
					</select> 
                   
                   <p><span class="subheadPurple">Radio/Option (grouped)</span><p>
                   <label>Radio/Option (grouped):</label><br>
						<input tabindex=6 type="radio" id="radio1" value="radio1"  checked="checked" >Radio 1<br>
						<input tabindex=7 type="radio" id="radio2" value="radio2" >Radio 2<br>
						<input tabindex=8 type="radio" id="radio3" value="radio3" >Radio 3
					
					<p><span class="subheadPurple">Checkbox (single)</span><p>
						<input type="checkbox" id="checkbox0" value="checkbox0" tabindex=9 >Single Checkbox<br>

                	<p><span class="subheadPurple">Checkbox (grouped)</span><p>
                	<label>Checkbox (grouped):</label><br>
						<input type="checkbox" id="checkbox1" value="checkbox1" tabindex=10><label for="checkbox1" >Checkbox 1</label><br>
						<input type="checkbox" id="checkbox2" value="checkbox2" tabindex=11><label for="checkbox2" >Checkbox 2</label><br>
						<input type="checkbox" id="checkbox3" value="checkbox3" tabindex=12><label for="checkbox3" >Checkbox 3</label><br>
						<input type="checkbox" id="checkbox4" value="checkbox4" tabindex=13><label for="checkbox4" >Checkbox 4</label><br>
						
					
					<button type="submit" tabindex=14>Submit</button> 
					<button type="button" tabindex="15" onClick="window.location.reload()">Reset</button>
					
					<P><span class="requiredField">*  indicates a required field.  Please make the necessary entry or selction to complete the desired action.</span>
					
					</form> 
					
					
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