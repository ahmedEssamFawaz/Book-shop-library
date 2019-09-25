<?php 

include_once('classes\connection.php');

class Books
{

	function __construct($conn) {
	    $this->connection = $conn ;
    }

	public function getAll(){
		$query = "SELECT id , title , rate , author_name , image_path , published_at FROM books "; 
		$result = $this->connection->query($query);
		$books = $result->fetch_all(MYSQLI_ASSOC);
		return $books;
	}

	public function getBook($book_id){
		$query = "SELECT books.id , books.url , books.image_path , books.title , books.rate ,users.last_name as author_name, users.bio  as author_bio , books.description as book_description 
			FROM users , books , book_gallery
			WHERE  books.id = $book_id && users.id = books.author_id && books.id = book_gallery.book_id
			ORDER by books.id";

		$result = $this->connection->query($query);
		$books_authors_details = $result->fetch_all(MYSQLI_ASSOC);
		return $books_authors_details;
	}

	public function addBook($title , $last_name ,$author_id, $rate , $published_at , $book_description , $fileDestination_image , $fileDestination_book){
        $query = "INSERT INTO books (title,author_name, author_id ,rate, published_at, description , image_path , url ) 
             values('$title', '$last_name', '$author_id' ,'$rate', '$published_at', '$book_description' , '$fileDestination_image' , '$fileDestination_book')";
        return $this->connection->query($query);
	}

	public function myBook($user_id){
		$query = "SELECT books.id , books.url , books.image_path , books.title , books.rate , books.description as book_description 
			FROM users , books 
			WHERE  books.author_id = '$user_id' ";

		$result = $this->connection->query($query);
		$books = $result->fetch_all(MYSQLI_ASSOC);
		return $books;
	}



}

 ?>
