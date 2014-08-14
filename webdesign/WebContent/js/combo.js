$(function(){
	
	$('#country').on('change', function (e) {
	    var valueSelected = this.value;
	    getStates(valueSelected);
	});


	
});

function getStates(option)
{	
	$.ajax({
		dataType: "json",
		url: 'getstates.json',
		data: { country : option },
		/*
		beforeSend:function(){
	        // show image here
	        ShowProgressAnimation();
	    },
	    complete:function(){
	        // hide image here
	        HideProgressAnimation();
	    }
		*/
		})
		.done(function(result){
			
			$('#state')
		    .find('option')
		    .remove()
		    .end()
		    .append('<option value="">Select State</option>')
		    .val('');
			
			var options = $("#state");
			/*
			$.each(result, function() {
			    options.append($("<option />").val(this.abbrv).text(this.name));
			});
			*/
			$.each( result, function( key, value ) {
				//alert( key + ": " + value );
				options.append($("<option />").val(key).text(value));
				});
			
		});
	
	
}