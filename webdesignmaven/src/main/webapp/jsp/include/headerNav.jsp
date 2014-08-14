<div class="headerNav">
<nav>
<div id="navigation">
<div class="dropdown">
	<ul>
		<li>
    		<a id="buttonHome" class="navTab" href="${context}/home.do">
				<span class="navLink">Home</span>
			</a>
    	</li>
		<li onMouseOver="" >
    		<a id="formExamples" class="navTab" href="${context}/formHome.do">
				<span class="navLink">Form Examples</span>
			</a>
		</li>

		<li onMouseOver="">
            <a id="sample" class="navTab" href="${context}/sample.do">
	    		<span class="navLink">Sample</span>
			</a>
		</li>
		<li onMouseOver="">
            <a id="sample2" class="navTab" href="#">
                <span class="navLink">Task Menus</span>
            </a>
            
            <ul class="dropdownul">

            	<li class="dropdownli"><a href="${context}/taskMenu.do">Tasks</a></li>
                <li class="dropdownli"><a href="${context}/taskMenuGroups.do">Task Groups</a></li>
                <li class="dropdownli"><a href="${context}/taskMenuGroupIcons.do">Task Group Icons</a></li>
                <li class="dropdownli"><a href="${context}/taskMenuDisabled.do">Task Group Disabled</a></li>
           </ul>

    	</li>
		<li onMouseOver="">
            <a id="scrollingData" class="navTab" href="${context}/scrollingHome.do">
				<span class="navLink">Scrolling Data Examples</span>
            </a>
    	</li>
        <li onMouseOver="">
    		<a id="pageLayout" class="navTab" href="${context}/pageLayout.do">
    		<span class="navLink">Page Layout</span>
    		</a>
    	</li>
    	<li onMouseOver="">
    		<a id="secure" class="navTab" href="${context}/secure.do">
    		<span class="navLink">Secured Area</span>
    		</a>
    	</li>
    	<li onMouseOver="">
    		<a id="buttonAbout" class="navTab" href="${context}/getAbout.do" >
                <span class="navLink">About</span>
            </a>
    	</li>
	</ul>
</div>
</div>
</nav>
</div>

<!-- The following script will change the above tabs to selected or not, based on the current URL -->
<script type="text/javascript">
	var str = $(location).attr('href');  //alert("str: " + str);
	
	$( ".navTab" ).each(function( index ) {
		$( this ).removeClass("navTabSelected");
		});
	
	//other pages
	if (str.toLowerCase().indexOf("about") >= 0)
		$( '#buttonAbout' ).addClass("navTabSelected");
	
	// page layout
	if (str.toLowerCase().indexOf("pageLayout".toLowerCase()) >= 0)
		$( '#pageLayout' ).addClass("navTabSelected");
	
	// Form examples
	if (str.toLowerCase().indexOf("getcomboform") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("getcheckboxform") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("getcommandbuttonform") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("links") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("getlistform") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("getradioform") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("gettextboxform") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("stylingdetails") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	
	// Other Form examples
	if (str.toLowerCase().indexOf("watermark") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("datepicker") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("validation") >= 0)
		$( '#formExamples' ).addClass("navTabSelected");
	
	// Sample pages
	if (str.toLowerCase().indexOf("sample.jsp") >= 0)
		$( '#sample' ).addClass("navTabSelected");
	
	if (str.toLowerCase().indexOf("sample2.jsp") >= 0)
		$( '#sample2' ).addClass("navTabSelected");

	if (str.toLowerCase().indexOf("getloguserevent") >= 0)
	{
		$( '#scrollingData' ).addClass("navTabSelected");
	}
	
	if (str.toLowerCase().indexOf("getcamalignment") >= 0)
	{
		$( '#scrollingData' ).addClass("navTabSelected");
	}
	
	if (str.toLowerCase().indexOf("secure") >= 0)
	{
		$( '#secure' ).addClass("navTabSelected");
	}
	
	
//home pages
	
	if (str.toLowerCase().indexOf("scrollinghome") >= 0)
		{$( '#scrollingData' ).addClass("navTabSelected");}
	else if (str.toLowerCase().indexOf("formhome") >= 0)
		{$( '#formExamples' ).addClass("navTabSelected");}
	else if (str.toLowerCase().indexOf("home") >= 0)
		{$( '#buttonHome' ).addClass("navTabSelected");}
	
	
</script>