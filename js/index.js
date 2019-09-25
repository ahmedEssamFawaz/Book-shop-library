
                    $.ajax({
                        type: "GET",
                        
                        url: "http://localhost/book_shop/backend/books.php" ,
                        dataType: 'json',
                        
                      
                        success: function (data) {
//                           console.log(data.books);
//                            console.log(localStorage.getItem("person_token"));
                            for(var i=0 ;i< data.books.length; i++){
//                                data.books[i]
                                var card= 
                     
         '<div class="card" style="width: 18rem;"><img src="'+data.books[i].image_path+'"class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">'+data.books[i].title+'</h5><p class="card-text"><span class="names">Author name: </span>'+data.books[i].author_name+'</p><p class="card-text"><span class="names">Published at:</span> '+data.books[i].published_at+'</p><button onclick="redirect('+data.books[i].id+')" id="card-button" class="info btn btn-primary">More Info</button></div></div>';
                                $('.items .lo .row').append(card);
                            }
                            
                    
                        },
                        error : function (data){
                            alert("error")
                        }
                     });




    
    var token= { key: localStorage.getItem("auth_key")};
//            console.log(token);

                $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
                            if(token.key != ""){
//                                console.log(data);
//                                console.log(data);
                                
                                
                                var header_name=
                            '<ul class="navbar-nav ml-auto"><a href="profile.html"><li class="nav-item last_name">'+data.info.last_name+'</li></a></ul> <button onclick="localstorage_remove()" type="button" class="btn btn-danger logout">Log out</button>';
                            $('.header_nav .collapse').append(header_name);}
                            
                            else{
                                
                                
                                
                               var header_name=
    '<ul class="navbar-nav ml-auto"><li class="nav-item active"><a class="nav-link" href="login.html">Login<span class="sr-only">(current)</span></a></li><li class="nav-item"><a class="nav-link" href="register.html">Register</a></li></ul>';
                            $('.header_nav .collapse').append(header_name);}
//                                console.log(data.info.first_name);
//                                console.log(data);
                            
                            
                            
                            
                            },
                            
//                        else{
//                            
////                            
//                        
//                        },
                        error : function (data){
                            alert('data.status')
                        }
                     });



//
//$('#card-button').on('click', function(){
////       localStorage.setItem(id, value);
//      window.open("details.html","_self");
        



function redirect(id){
    localStorage.setItem("book_id", id);
    window.open("details.html","_self")
}


function localstorage_remove(){
//   localStorage.removeItem("auth_key");
//    token.key="";
    localStorage.setItem("auth_key", "");
    window.open("index.html","_self")
}

//console.log(localStorage.getItem("auth_key"));
//
//console.log(localStorage.getItem("auth_key"));

//console.log(token.key);
//token.key="";
//console.log(token.key);

