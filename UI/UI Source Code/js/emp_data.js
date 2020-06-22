$(document).ready(function(){

//var  formData = "name=ravi&age=31";  //Name value Pair


    $("#emp_id").click(function(event) {
		  event.preventDefault();
		$('.message').text('');
		$('.message').removeClass('show');
		$('.message').addClass('hide');
	  });
	  

  $("#submit_emp_data").click(function(event) {
 
	  var emp_id = $("#emp_id").val();     
	  var temperature = $("#temperature").val();     
	  var date = $("#date").val();     
	  var gate_id = $("#gate_id").val();     
	  
	   if(!emp_id.match(/^\d+/))
		{
		alert("Please enter valid employee id");
		return false;
		}
	  
	   if(!temperature.match(/^\d+/))
		{
		alert("Please enter valid temperature");
		return false;
		}
		
	 if (emp_id == "" || temperature == "") {
		alert("Enter the details before submit");
		return false;
		}else {
	  
			  var formData =  {
									"gate_id": gate_id, 
									"Empid": parseInt(emp_id), 
									"Temp": parseFloat(temperature),
									"date": date
							}
							 
				$('.message').text('');
				$('.message').removeClass('show');
				$('.message').addClass('hide');
				
					$("#emp_id").val('');   
					$("#temperature").val('');
					
					$.ajax({
						url : "https://nda4incr4d.execute-api.us-east-1.amazonaws.com/Dev/insert-temp",
						type: "POST",
						data :  ' {"insert" :' + JSON.stringify(formData) + '}',
						success: function(data, textStatus, jqXHR)
						{
		 
							//console.log(data);
							//console.log(textStatus);
							$('.message').text("Employee detail submitted successfully.");
							$('.message').addClass('show');
							$('.message').removeClass('hide');

						},
						error: function (jqXHR, textStatus, errorThrown)
						{
							console.log('Something went wrong!');
						}
					});
			 
		
		}
	});

});