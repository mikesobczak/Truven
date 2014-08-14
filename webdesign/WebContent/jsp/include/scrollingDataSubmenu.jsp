            <div id="thirtyThreeSplit">
            	<div id="thirtyThreeSubMenu">
            	<p>
					<div id="subAccordion">
							
						<h3>Scrolling Data Examples</h3>
						<div>
							<ul class="menu" id="menu1">
								<li id="getLogUserEvent"><a href="${context}/getLogUserEvent.do">Log User Event</a></li>
								<li id="getCamAlignment"><a href="${context}/getCamAlignment.do">Cam Alignment</a></li>
								<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					
        					</ul>
						</div>
						
    					<h3>subNavItem ui-accordion-header</h3>
						<div>
							<ul class="menu" id="menu2">
								<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
        					</ul>
						</div>
						
						<h3>subNavItem ui-accordion-header</h3>
						<div>
							<ul class="menu" id="menu3">
								<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
        					</ul>
						</div>
						
						<h3>subNavItem ui-accordion-header</h3>
						<div>
							<ul class="menu" id="menu4">
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
            					<li><a href="#">li in ul in ui-accordion-content DIV</a></li>
       						</ul>
						</div>
						
						<h3>subNavItem ui-accordion-header</h3>
						<div>
							<ul class="menu" id="menu5">
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
</div>            	
