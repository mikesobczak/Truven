            	<div id="thirtyThreeSubMenu">
            	<p>
					<div id="subAccordion">
							
						<h3>Form Fields</h3>
						<!-- <div style="padding: 5px 5px !important;"> -->
						<div>
							<ul class="menu" id="menu1">
								<li id="getComboForm"><a href="${context}/getComboForm.do">Combo/Dropdown Examples</a></li>
								<li id="getListForm"><a href="${context}/getListForm.do">List Control Examples</a></li>
								<li id="getTextBoxForm"><a href="${context}/getTextBoxForm.do">Text Box Examples</a></li>
								<li id="getRadioForm"><a href="${context}/getRadioForm.do">Radio Button Examples</a></li>
								<li id="getCheckboxForm"><a href="${context}/getCheckboxForm.do">Check Box Examples</a></li>
								<li id="getCheckboxSelectAllForm"><a href="${context}/getCheckboxSelectAllForm.do">Check Box Select All Examples</a></li>
								<li id="getCommandButtonForm"><a href="${context}/getCommandButtonForm.do">Command Button Examples</a></li>
            					<li id="links"><a href="${context}/links.do">Mouse-over Link Examples</a></li>
            					<li id="stylingDetails"><a href="${context}/stylingDetails.do">Styling Detail Examples</a></li>
        					</ul>
						</div>
						
    					<h3>Other Form Design Options</h3>
						<div>
							<ul class="menu" id="menu2">
								<li id="getWatermarkForm"><a href="${context}/getWatermarkForm.do">Watermark Example</a></li>
            					<li id="getDatePickerForm"><a href="${context}/getDatePickerForm.do">Datepicker Example</a></li>
            					<li id="getValidationForm"><a href="${context}/getValidationForm.do">Validation Example</a></li>
            					<li id="getConfirmationMessageForm"><a href="${context}/getConfirmationMessageForm.do">Confirmation Message Example</a></li>
        					</ul>
						</div>
						
						<h3>subNavItem ui-accordion-header</h3>
						<div>
							<ul id="menu3">
								<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
        					</ul>
						</div>
						
						<h3>subNavItem ui-accordion-header</h3>
						<div>
							<ul id="menu4">
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
       						</ul>
						</div>
						
						<h3>subNavItem ui-accordion-header</h3>
						<div>
							<ul id="menu5">
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
        					</ul>
						</div>
						
					</div>
					
                    <script type="text/javascript">
                    	// Open the accordian to the correct index, based on the JSP currently open
                    	var str = $(location).attr('href');
                    	var activeIndex = 0;
                    	
                    	if (str.toLowerCase().indexOf("getwatermarkform".toLowerCase()) >= 0)
                    		activeIndex = 1;
                    	
                    	if (str.toLowerCase().indexOf("getdatepickerform".toLowerCase()) >= 0)
                    		activeIndex = 1;
                    	
                    	if (str.toLowerCase().indexOf("getvalidationform".toLowerCase()) >= 0)
                    		activeIndex = 1;
                    	
                    	if (str.toLowerCase().indexOf("getconfirmationmessageform".toLowerCase()) >= 0)
                    		activeIndex = 1;
                    	
                    	$("#subAccordion").accordion({ active: activeIndex, heightStyle: "content", icons: false });
                    	
                    	$( "#menu1" ).menu();
                    	$( "#menu2" ).menu();
                    	$( "#menu3" ).menu();
                    	$( "#menu4" ).menu();
                    	$( "#menu5" ).menu();
                    	
                    	var currentUrl = window.location.href;

                    	// Will only work if string in href matches with location
                    	$('.menu a[href="'+ currentUrl +'"]').addClass('menu-item-focus');

                    	// Will also work for relative and absolute hrefs
                    	$('.menu a').filter(function() {
                    	    return this.href == currentUrl;
                    	}).addClass('menu-item-focus');
                    </script>
                </div>
            	
