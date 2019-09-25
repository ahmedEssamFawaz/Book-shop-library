var token= { key: localStorage.getItem("auth_key")};
//            console.log(token);

                               
                                
                $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
                            if(token.key != "" && data.info.type == "user"){
                                
                                
                                
                               
                                
                                
                                var header_name=
                            '<ul class="navbar-nav ml-auto"></ul><button onclick="localstorage_remove()" type="button" class="btn btn-danger logout">Log out</button>';
                            $('.header_nav .collapse').append(header_name);
                            
                                     
                                   
                                 var retrieve=
                                     '<div class="photo-left"><img class="photo" src='+data.info.image+'></div><h4 class="name">'+data.info.first_name+' '+data.info.last_name+'</h4><p class="info">UI/UX Designer</p><p class="info">'+data.info.email+'</p><p class="info">'+data.info.mobile+'</p><p class="desc">'+data.info.bio+'</p><a href="update.html"><button id="editButt" class="btn btn-secondary edit-profileBut">Edit profile</button></a>';
                                $('.left').append(retrieve);
                            
                            
                                
                                var title= 
                     
                                    '<ul class="nav"><li>liked Books</li></ul>';
                                $('.liked_user').append(title);
                            
                                var nothing_message =
                                    'Nothing Liked Yet';
                                 $('.warning_user').append(nothing_message);
                            
             user_books_liked();
                                
                            
                            }
                            
                            else if(token.key != "" && data.info.type == "author"){
                                
                                    var header_name=
                            '<ul class="navbar-nav ml-auto"></ul> <button onclick="localstorage_remove()" type="button" class="btn btn-danger logout">Log out</button>';
                            $('.header_nav .collapse').append(header_name);
                            
                            
                               var retrieve=

                                   '<div class="photo-left"><img class="photo" src='+data.info.image+'></div><h4 class="name">'+data.info.first_name+' '+data.info.last_name+'</h4><p class="info">UI/UX Designer</p><p class="info">'+data.info.email+'</p><p class="info">'+data.info.mobile+'</p><div class="stats row"><div class="stat1 col-xs-4"><p class="number-stat">3,619</p><p class="desc-stat">Followers</p></div><div class="stat2 col-xs-4"><p class="number-stat">42</p><p class="desc-stat">Following</p></div><div class="stat3 col-xs-4"><p class="number-stat">38</p><p class="desc-stat">Uploads</p></div></div><p class="desc">'+data.info.bio+'</p><a href="upload.html"><button class="btn btn-success upload-profileBut">Upload book</button></a><a href="update.html"><button id="editButt" class="btn btn-secondary edit-profileBut-author">Edit profile</button></a>';
                                   $('.left').append(retrieve);
                            
                                
                                
                                
                                var title_1=
                                     '<ul class="nav"><li>My Books</li></ul>';
                                $('.published').append(title_1);
                                
                                
                                
                                var title_2=
                                    '<ul class="nav"><li>liked Books</li></ul>';
                                $('.liked_author').append(title_2);
                                
                                var follow_button=
                                    '<button class="follow">Follow</button>'
                                $('.follow_button').append(follow_button);
                                
                                
                                
                                var nothing_message =
                                    'Nothing Liked Yet';
                                 $('.warning_author').append(nothing_message);
                                
                                author_books_liked();
                                
                                var firstPublishMessagee=
                                    'Publish Your First Book';
                                $('.firstPublishMessage').append(firstPublishMessagee);
                                
                                
                                books_published();
                                
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




function user_books_liked(){
    
    $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/books_of_user.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
console.log(data);
                            
                            
//                            document.getElementById('nothing-displayed').style.display="none";
//                           console.log(data.books);
//                            console.log(localStorage.getItem("person_token"));
                            for(var i=0 ;i< data.books.length; i++){
//                                data.books[i]
                                
                                
                                var card= 
                     
                                    '<div class="card col-md-4 col-sm-6 col-12"><img src="'+data.books[i].image_path+'" class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">'+data.books[i].title+'</h5><p class="card-text"><span class="names">Author name: </span>'+data.books[i].author_name+'</p><p class="card-text"><span class="names">Published at: </span>'+data.books[i].published_at+'</p><a href="#" ><button class="infoo btn btn-primary button">More Info</button></a></div></div>';
                                $('.gallery').append(card);
    
                                document.querySelector('.warning_user').style.display="none";
                            }
                            
                    
                        },
                        error : function (data){
                            alert("error")
                        }
                    
                     });
    
    
}


function author_books_liked(){
    
    
    
    $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/books_of_user.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
console.log(data);
//                            document.getElementById('nothing-displayed').style.display="none";
//                           console.log(data.books);
//                            console.log(localStorage.getItem("person_token"));
                            for(var i=0 ;i< data.books.length; i++){
//                                data.books[i]
                                
                                
                                
                                var card= 
                     
                                    '<div class="card col-md-4 col-sm-6 col-12"><img src="'+data.books[i].image_path+'" class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">'+data.books[i].title+'</h5><p class="card-text"><span class="names">Author name: </span>'+data.books[i].author_name+'</p><p class="card-text"><span class="names">Published at: </span>'+data.books[i].published_at+'</p><a href="#" ><button class="infoo btn btn-primary button">More Info</button></a></div></div>';
                                $('.gallery_author').append(card);
    
                                document.querySelector('.warning_author').style.display="none";
                            }
                            
                    
                        },
                        error : function (data){
                            alert("error")
                        }
                    
                     });
    
}






function books_published(){
    
     $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/author.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
console.log(data);
//                            document.getElementById('nothing-displayed').style.display="none";
//                           console.log(data.books);
//                            console.log(localStorage.getItem("person_token"));
                            for(var i=0 ;i<1/**data.books.length**/; i++){
//                                data.books[i]
                                
                                
                                var card= 
                     
                                    '<div class="card col-md-4 col-sm-6 col-12"><img src="'+data.books[i].image_path+'" class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">'+data.books[i].title+'</h5><p class="card-text"><span class="names">Author name: </span>'+data.books[i].author_name+'</p><p class="card-text"><span class="names">Published at: </span>'+data.books[i].published_at+'</p><a href="#" ><button class="infoo btn btn-primary button">More Info</button></a></div></div>';
                                $('.gallery').append(card);
    
                                document.querySelector('.firstPublishMessage').style.display="none";
                            }
                            
                    
                        },
                        error : function (data){
                            alert("error")
                        }
                    
                     });

    
}
   

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