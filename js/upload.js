       
//
var firstName = document.getElementById("firstName");
    var lastName = document.getElementById("lastName"); 
     var password = document.getElementById("Password");   
    var conPassword = document.getElementById("confirm_password");
    var phone = document.getElementById("Telephone"); 
   
    var mobile= /^\d{11}$/;
    var bio= document.getElementById("bio");
    var token= { key: localStorage.getItem("auth_key")};


        $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
             
                        success: function (data) {
                            
                          if(token.key != ""){
                                
                                var header_name=
                            '<ul class="navbar-nav ml-auto"><a href="profile.html"><li class="nav-item last_name">'+data.info.last_name+'</li></a></ul> <button onclick="localstorage_remove()" type="button" class="btn btn-danger logout">Log out</button>';
                            $('.header_nav .collapse').append(header_name);
                          
                              
                          }
                            
                            else{
                               var header_name=
    '<ul class="navbar-nav ml-auto"><li class="nav-item active"><a class="nav-link" href="login.html">Login<span class="sr-only">(current)</span></a></li><li class="nav-item"><a class="nav-link" href="register.html">Register</a></li></ul>';
                            $('.header_nav .collapse').append(header_name);
//                                console.log(data.info.first_name);
                            }
                        
                        },
                        error : function (data){
                            alert(data.status)
                        }
                     });


$("#loginformm").submit(function(e){
e.preventDefault();
    
      
//    localStorage.getItem("auth_key");

    
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
    
    
    else if (password.value.length <4 || password.value == "")                        
    { 
        document.getElementById("divtwo").innerHTML= "";
        document.getElementById("divthree").innerHTML="Please enter your password"; 
        document.getElementById("divthree").style.color="red";
        password.focus(); 
        
    } 
   
    else if (password.value != conPassword.value || conPassword.value == "")                        
    { 
        document.getElementById("divthree").innerHTML= "";
        document.getElementById("divfour").innerHTML="password not matching"; 
        document.getElementById("divfour").style.color="red";
        conPassword.focus(); 
        
    } 
    
    else if (!phone.value.match(mobile))                           
    
    {


         document.getElementById("divfour").innerHTML=""; 
         document.getElementById("divfive").innerHTML="you must enter 11 digit";
         document.getElementById("divfive").style.color="red";
         phone.focus();
        
          
        }
    
    else{
        
        $.ajax({
          type: "POST",
            url: "http://localhost/book_shop/backend/update.php",
                
               // dataType: 'json',
                
                headers: {'Authorization': token.key},
                data: {
                        first_name: firstName.value,
                        last_name: lastName.value,
                        password: password.value,
                        mobile : phone.value,
                        bio : bio.value
                    },
                success: function (data) {
                    console.log(data);
                //alert("nice");
                    
                var alert ='<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>Success!</strong> Profile successfully updated</div>';
                    $('.alert-message').append(alert);
                    
                    setTimeout(function(){
                                window.open("profile.html","_self"); }, 3000);

                },
                error : function (data){
               // alert("bad");
                }
             });
        
        
           
        
    }
   });
    



function localstorage_remove(){
//   localStorage.removeItem("auth_key");
//    token.key="";
    localStorage.setItem("auth_key", "");
    window.open("index.html","_self")
}








