var webservice = "http://localhost/book_shop/backend/login.php";   


 $("#loginform").submit(function(e){
              e.preventDefault();
              var email = document.getElementById("email");     
              var password = document.getElementById("password");   
              var validEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
             
    
    
    
    if ((!validEmail.test(email.value)) || email.value == "")                                   
    { 
        document.getElementById("divone").innerHTML="Please enter a valid e-mail address."; 
        document.getElementById("divone").style.color="red";
        email.focus(); 
        
    } 
   
    
     else if (password.value.length <4 || password.value == "")                        
    { 
        document.getElementById("divone").innerHTML= "";
        document.getElementById("divtwo").innerHTML="Please enter your password"; 
        document.getElementById("divtwo").style.color="red";
        password.focus(); 
        
    } 
     else {
                  //event handler for submit button
//                 $("#btnSubmit").click(function () {
                 //collect userName and password entered by users
                         var userName = email.value;
                         var password = password.value;
                         $.ajax
                    ({
                        type: "POST",
                        //the url where you want to sent the userName and password to
                        url: webservice ,
                        dataType: 'json',
                        async: false,
                        //json object to sent to the authentication url
                        //data: '{"username": "' + userName + '", "password" : "' + password + '"}',
                      data: {"email": userName, "password": password },
                        success: function (data) {
                            if(data.status == 1){
//                                console.log(data.token);
                            //do any process for successful authentication here
//                            alert('Login status: ' + data.status);
//                            console.log(data);
//                            console.log(data.token);
//                            console.log(data.message);
//                            document.getElementById("form-div").style.display="none";
                                $('#form-div').hide(1000);
                            document.getElementById("none-div").style.display= "block";
                            document.getElementById("none-div").innerHTML=data.message;
                            setTimeout(function(){
                                window.open("index.html","_self"); }, 2000);
                                //to get token and store it in localstorage
                              localStorage.setItem("auth_key", data.token);
//                              console.log(localStorage.getItem("auth_key"));
                                
                                
                            }
                            else{
//                                 console.log(data);
//                               alert('Login status: ' + data.status);  
                                document.getElementById("new-div").style.display="block";
                                 document.getElementById("new-div").innerHTML=data.errors["login"];
                            }
                        },
                        error : function (data){
                          alert('Login status: ' + data.status);   
                        }
                     })
//                 });

     }
              

                    
              
        });
                
     

        
        



