
jQuery( document ).ready(function()
{
    $("#user").validate(
      {
    	  errorElement: "div",
    	    errorPlacement: function(error, element) {
    	        element.after(error);
    	    },
    	  rules:
      {
    		  user_FirstName:{
    			  required : true,
    			  numbersonly:true
    			  
    		  },
    		  
    		  FirstName : {
				required: true,
				alphanumeric:true,
				maxlength:6

			},
			CustomerName:{
				required : true,
				lettersonly:true,
				minlength:3
			},
			password : {
				required : true,
				passwordonly:true,
				
				
			},
			user_cpwd:{
				required : true,
				equalTo:"#password",
			},
			DOB:{
				required : true,
			},
			EmailId:{
				required : true,
				
			},
			Address:{
				required : true,
				minlength: 15,
				maxlength:75
			},
			PhoneNumber:{
				required : true,
				phnocheck:true,
				minlength:10,
				
			},
			Occupation:{
				required : true,
					},
					occupation1:{
						required:true
					},
					
  			
    		
        },
       messages:
        {
        	user_FirstName:{
    			  required : "required",
    			  
    			  
    		  },
      		  1_Quantity:{
    			  required : "this field is mandatory",
    			  
    			  
    		  },
      		  
      		  UserId : {
      			required : "this field is mandatory",
  				maxlength:"it should contain 6 characters"

  			},
  			CustomerName:{
  				required : "this field is mandatory",
  				minlength:"length should be greater than 2"
  			},
  			password : {
  				required : "this field is mandatory",
  				minlength:"it should contain min 8 characters"
  				
  			},
  			password1:{
  				required : "this field is mandatory",
  				equalTo:"passwords not match"
  			},
  			DOB:{
  				required : "this field is mandatory",
  			},
  			EmailId:{
  				required : "this field is mandatory",
  				
  			},
  			Address:{
  				required : "this field is mandatory",
  				minlength:"minimum length should be 15",
				maxlength:"you exceeded the maximum length(75)"
  			},
  			PhoneNumber:{
  				required : "this field is mandatory",
  				minlength:"should contain ten digits"
  			},
  		
  			Occupation:{
  				required : "this field is mandatory",
  				
  			},
  			occupation1:{
  				required : "this field is mandatory",
			},
  			
  		
  			
      			
            
         
          }
    
      });
    
    $("#login").validate({
    	errorElement: "div",
	    errorPlacement: function(error, element) {
	        element.after(error);
	    },
    	rules:
    		{
    		
    		UserId : {
				required: true,
				maxlength:10

			},
			password : {
				required : true,
				
			},
    		},
    messages:
    {
    	UserId : {
    		required : "this field is mandatory",
				maxlength:"it should contain 6 characters"

			},
			password : {
				required : "this field is mandatory",
  				
  			},
    }	
    });
    $("#form2").validate(
    	      {
    	    	  errorElement: "div",
    	    	    errorPlacement: function(error, element) {
    	    	        element.after(error);
    	    	    },
    	    	    rules:
    	    	      {
    	    	    	user:{
	    	    			  required : true,
	    	    			  
	    	    		  },

	    	    		  DOB:{
	    	    			  required : true,
	    	    			
	    	    		  },

	    	    		  AnnualIncome:{
	    	    			  required : true,
	    	    			  numbersonly: true,
	    	    			  nozero:true,
	    	    			  minlength: 6,
	    	    			  maxlength: 9
	    	    		  },

	    	    		  EmailId:{
	    	    			  required : true,
	    	    			  
	    	    		  },

	    	    		  MobileNo:{
	    	    			  required : true,
	    	    			  
	    	    		  },

	    	    		  Country:{
	    	    			  required : true,
	    	    			  
	    	    		  },
	    	    		  State:{
	    	    			  required: true,
	    	    		  },

	    	    		  City:{
	    	    			  required : true,
	    	    			  lettersonly : true,
	    	    			  maxlength:15,
	    	    			  minlength:3
	    	    		  },

	    	    		  PinCode:{
	    	    			  required : true,
	    	    			  numbersonly:true,
	    	    			  nozero:true,
	    	    		  },

	    	    		

	    	    		  PlanId:{
	    	    			  required : true,
	    	    			  
	    	    		  },

	    	    		  PlanName:{
	    	    			  required : true,
	    	    			  
	    	    		  },

	    	    		  Duration:{
	    	    			  required : true,
	    	    			  
	    	    		  },
	    	    		  Term:{
	    	    			  required: true,
	    	    		  },
	    	    		  Insurance_amount:{
	    	    			  required : true,
	    	    			  numbersonly: true,
	    	    			  nozero:true,
	    	    			  minlength:6,
	    	    			  maxlength: 8
	    	    		  },
	    	    		  agree:{
	    	    			  required:true,
	    	    		  }
    	    	    		  
    	    	      }	,
    	    	      messages:
    	    	      {
    	    	    	user:{
    	    	    		required : "this field is mandatory",
	    	    			  
	    	    		  },

	    	    		  DOB:{
	    	    			  required : "this field is mandatory",
	    	    			
	    	    		  },

	    	    		  AnnualIncome:{
	    	    			  required : "this field is mandatory",
	    	    			  minlength:"Annual income should be more than a lakh",
	    	    			  maxlength:"Annual income exceeded the limit"
	    	    		  },

	    	    		  EmailId:{
	    	    			  required : "this field is mandatory",
	    	    			  
	    	    		  },

	    	    		  MobileNo:{
	    	    			  required : "this field is mandatory",
	    	    			  
	    	    		  },

	    	    		  Country:{
	    	    			  required : "this field is mandatory",
	    	    			  
	    	    		  },
	    	    		  State:{
	    	    			  required : "this field is mandatory",
	    	    		  },

	    	    		  City:{
	    	    			  required : "this field is mandatory",
	    	    			 maxlength:"enter a valid City name",
	    	    			 minlength: "enter a valid city name"
	    	    		  },

	    	    		  PinCode:{
	    	    			  required : "this field is mandatory",
	    	    			  
	    	    		  },


	    	    		  PolicyId:{
	    	    			  required : "this field is mandatory",
	    	    			  
	    	    		  },

	    	    		  PolicyName:{
	    	    			  required : "this field is mandatory",
	    	    			  
	    	    		  },

	    	    		  Duration:{
	    	    			  required : "this field is mandatory",
	    	    			  
	    	    		  },
	    	    		  Term:{
	    	    			  required : "this field is mandatory",
	    	    		  },
	    	    		  Insurance_amount:{
	    	    			  required : "this field is mandatory",
	    	    			  minlength:"Insurance amount should be more than 1 lakh",
	    	    			  maxlength:"Insurance amount exceeded the limit"
	    	    		  },
	    	    		  agree:{
	    	    			  required : "this field is mandatory",
	    	    		  }
    	    	    		  
    	    	      }
    
    	      });
   
    
    $("#bank").validate({
    	errorElement: "div",
	    errorPlacement: function(error, element) {
	        element.after(error);
	    },
    	rules:
    		{
    		
    		custid : {
				required: true,
				numbersonly : true,

			},
			pwd : {
				required : true,
				passwordonly:true,
			},
			otp : {
				required : true,
				numbersonly : true,
			}
    		},
    messages:
    {
    	custid : {
    		required : "this field is mandatory",
				

			},
			pwd : {
				required : "this field is mandatory",
  				
  			},
  			otp : {
				required : "this field is mandatory",
  				
  			},
    }	
    });
    
    $("#pc").validate({
    	errorElement: "div",
	    errorPlacement: function(error, element) {
	        element.after(error);
	    },
    	rules:
    		{
    		
    		PolicyId : {
				required: true,
				

			},
			amount : {
				required : true,
			}
    		},
			messages:
		    {
		    	PolicyId : {
		    		required : "this field is mandatory",
					
					},
					amount : {
						required : "this field is mandatory",
					},
		    }	
    	    });
});
/*
 * factor: { required: true, range:[0.08,0.09] }, dullness: { required: true,
 * range:[-9.5,11.1] }
 */