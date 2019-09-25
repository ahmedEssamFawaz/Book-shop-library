var webservice = "http://localhost/book_shop/backend/register.php";           

$("#loginform").submit(function(e){
              e.preventDefault();
    
     

    var firstName = document.getElementById("firstName");
    var lastName = document.getElementById("lastName"); 
    var email = document.getElementById("EMail");     
    var phone = document.getElementById("Telephone"); 
    var password = document.getElementById("Password");   
    var conPassword = document.getElementById("confirm_password");
    var validEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var mobile= /^\d{11}$/;
    var type= document.getElementById("type")
    
     
    //javascript validate
   
    if (firstName.value == "")                                  
    { 
        document.getElementById("divone").innerHTML="Enter your first name";
        document.getElementById("divone").style.color="red";
        firstName.focus(); 
        
    } 
    
     else if (lastName.value == "")                                  
    { 
        document.getElementById("divone").innerHTML="";
        document.getElementById("divtwo").innerHTML="Enter your last name";
        document.getElementById("divtwo").style.color="red";
        lastName.focus(); 
       
    } 
   
       
   else if ((!validEmail.test(email.value)))                                   
    { 
        document.getElementById("divtwo").innerHTML="";
        document.getElementById("divthree").innerHTML="Please enter a valid e-mail address."; 
        document.getElementById("divthree").style.color="red";
        email.focus(); 
       
    } 

    
     else if (password.value.length <4 || password.value == "")                        
    { 
        document.getElementById("divthree").innerHTML= "";
        document.getElementById("divfour").innerHTML="Please enter your password"; 
        document.getElementById("divfour").style.color="red";
        password.focus(); 
        
    } 
   
    else if (password.value != conPassword.value || conPassword.value == "")                        
    { 
        document.getElementById("divfour").innerHTML= "";
        document.getElementById("divfive").innerHTML="password not matching"; 
        document.getElementById("divfive").style.color="red";
        conPassword.focus(); 
        
    } 
    
    else if (!phone.value.match(mobile))                           
    
    {

//         document.getElementById("divfive").innerHTML="Correct";
//        document.getElementById("divfive").style.color="green";
         document.getElementById("divfive").innerHTML=""; 
         document.getElementById("divsix").innerHTML="you must enter 11 digit";
         document.getElementById("divsix").style.color="red";
         phone.focus();
        
          
        }
     
 
     
     
    
    else {
//                                  event handler for submit button
//                $("#btnSubmit").click(function () {
//                 collect userName and password entered by users
                   var object = {
                        first_name: firstName.value,
                        last_name: lastName.value,
                        email: email.value,
                        password: password.value,
                        mobile : phone.value,
                        type : type.value
                    };
                         $.ajax
                    ({
                        type: "POST",
                        //the url where you want to sent the userName and password to
                        url: webservice,
                        dataType: 'json',
                        async: false,
                        data: object,
                        success: function (data) {
                             if(data.status == 1){
                                 
                            //do any process for successful authentication here
//                            alert('Login status: ' + data.status);
//                            console.log(data);
                             $('#form-div2').hide(1000); 
                            document.getElementById("none-div2").style.display= "block";
                            document.getElementById("none-div2").innerHTML=data.message;
                            setTimeout(function(){
                            window.open("index.html","_self"); }, 2000);
                                 localStorage.setItem("auth_key", data.token);

                                 
                             }
                          
                            else {
                                 //do any process for successful authentication here
//                            alert('Login status: ' + data.status);
//                                console.log(data);
//                            console.log(data);
                                //php validate
                                if(data.errors["email"]){
                                    document.getElementById("divthree").style.color="red";
                                    document.getElementById("divthree").innerHTML= data.errors["email"];
                                
                                    
                                } 
                                else{
                                    document.getElementById("divthree").innerHTML= "";
                                }
                                
                                 if(data.errors["password"]){
                                 document.getElementById("divfour").style.color="red";
                                 document.getElementById("divfour").innerHTML= data.errors["password"];
                                }
                                else{
                                    document.getElementById("divfour").innerHTML= "";
                                }
                                
                                if (data.errors["mobile"]){
                                 document.getElementById("divsix").style.color="red";
                                 document.getElementById("divsix").innerHTML= data.errors["mobile"];
                                }
                                else{
                                    document.getElementById("divsix").innerHTML= "";
                                }
                               
                                
                            }
                           
                        },
                        error : function (data){
                          alert('Login status: ' + data.status);   
                        }
                     })
//                 });
    }
 });



   
// });
//   
   
    
   
    
   
    

     