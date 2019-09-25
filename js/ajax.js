           
          $("#loginform").submit(function(e){
              e.preventDefault();
        $(document).ready(function() {
                                  //event handler for submit button
                 $("#btnSubmit").click(function () {
                 //collect userName and password entered by users
                         var userName = $("#email").val();
                         var password = $("#password").val();
                         authenticate(userName,password);
                 });


                function authenticate(userName, password1) {

                    $.ajax
                    ({
                        type: "POST",
                        //the url where you want to sent the userName and password to
                        url: "http://6.6.7.51/task/login.php",
                        dataType: 'json',
                        async: false,
                        //json object to sent to the authentication url
                        //data: '{"username": "' + userName + '", "password" : "' + password + '"}',
                      data: {"email": userName, "password": password1 },
                        success: function (data) {
                            //do any process for successful authentication here
                            alert('Login status: ' + data.status);
                        }
                     })
              
        };
                
        });
          });
        
        