$(function(){
    var $registerForm = $("#registration");
    if($registerForm.length){
        $registerForm.validate({
         rules:{
             username:{
                 required: true
                  },
             fname:{
                 required: true
                  },
             lname:{
                 required: true
                  },
             gender:{
                 required: true
                  },
             age:{
                 required: true
                  },
             
             mobile:{
                 required: true,
                 minlength:10,
                 maxlength:10,
                 number: true
                  },
                  email:{
                 required: true,
                 email: true
                  },
             address:{
                 required: true
                  },
             
             password:{
                 required: true
                  },
             cpass:{
                 required: true,
                 equalTo:'#password'
                  },
              image:{
                 required: true
                  }
              },   
        
            //message for the form
            messages:{
            username:{
             required: 'Please enter user name'   
            },
             fname:{
             required: 'Please enter first name'   
            },
             lname:{
             required: 'Please enter last name'   
            },
             gender:{
             required: 'Please enter gender'   
            },
             age:{
             required: 'Please enter age'   
            },
             email:{
             required: 'Please enter Email Id',
             email:'Please enter valid email'
            },
             mobile:{
             required: 'Please enter Mobile No',
             minlength:'Enter 10 digit phone number ',
             maxlength:'Enter 10 digit phone number only '
            },
             address:{
             required: 'Please enter Address'   
            },
             password:{
             required: 'Please enter Password'   
            },
             cpass:{
             required: 'Please enter Confirm Password',  
             equalTo: 'Please enter the same Password'
            },
             image:{
             required: 'Please enter Image'   
            }
            
            
            
            
    }
        
    });
    
    
    
    }  
});
            