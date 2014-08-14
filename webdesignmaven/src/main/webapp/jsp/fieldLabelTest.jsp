<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" type="text/css" href="${context}/theme/outcomesPlus.css">

<script type="text/javascript" src="${context}/js/jquery-1.9.1.min.js"></script>
    
<script type="text/javascript" src="${context}/js/jquery-ui-1.10.3.custom.min.js"></script>

<script type="text/javascript" src="${context}/js/functions.js"></script>

<title>Insert title here</title>
</head>
<body>

			<div id="mainContent">
                   <div id="mainContentArea">
                   <span class="heading1">Text Box</span><p>
                   <form action="3" method="get">
                   
                   	<ul class="formFields">
                   		<li class="formFields"><label class="fieldLabel">Text Box:</label><span class="requiredField">*</span><input id="textbox1" name="textbox1" tabindex="1" type="text" value=""/></li> 
                   		<li class="formFields"><label class="fieldLabel">Text Box:</label><span class="requiredField">*</span><input id="textbox2" name="textbox2" tabindex="2" type="text" value="Default Value"/></li>
						<li class="formFields"><label class="fieldLabel">Text Box with mouse-over pop-up text:</label><input id="textbox3" name="textbox3" title="mouse-over pop-up text" tabindex="3" type="text" value=""/></li> 

					</ul>
                   <div id="buttonHolder" class="buttonHolder">
						<button type="submit" tabindex="5">Submit</button> 
						<button type="button" tabindex="6" onClick="window.location.reload()">Reset</button>
					</div>
					<P><span class="requiredField">*  indicates a required field.  Please make the necessary entry or selection to complete the desired action.</span>
					
					</form> 
					
					
                </div>   
            </div>

</body>
</html>