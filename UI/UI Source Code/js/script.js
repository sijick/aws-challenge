$(document).ready(function(){

    $("#parameter").click(function(event) {
		  event.preventDefault();
		$('.message').text('');
		$('.message').removeClass('show');
		$('.message').addClass('hide');
	  });
	  
    $("#submit_data").click(function(event) {
		
	
        event.preventDefault();
		
        var parameter = $("#parameter").val();     

		$('.message').text('');
		$('.message').removeClass('show');
		$('.message').addClass('hide');
        $.ajax({			
            type: "POST",
            url: "https://cnerrwhncc.execute-api.us-east-1.amazonaws.com/Demo",
			data:  ' {"data" :' + JSON.stringify(parameter) + '}',
			datatype: 'application/json',
			crossDomain: true,
            success: function(response){ 
				$('.message').text('');
				$('.message').addClass('show');
				$('.message').removeClass('hide');
				//$('.message').css('padding','10px');
				//$('.message').css("display", "block");
				//$('.message').text('Prediction for the input is ' + response).delay(3200).fadeOut(300);
				$('.message').text('Prediction for the input is ' + response);
			},
            failure: function(){
				//console.log(response);
				$('.message').text('');
			}
			
        });
		$('.message').removeClass('show');
		$('.message').addClass('hide');
    });
	 
});