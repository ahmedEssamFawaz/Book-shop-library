<?php 

class DbConnect{

	function __construct($servername , $username , $password , $database ) {
	    $this->sn = $servername ;
	    $this->un = $username ;
	    $this->pa = $password ;
	    $this->db = $database ;
    }

	public function connect(){
		$conn = new mysqli($this->sn , $this->un , $this->pa , $this->db );
		return $conn;
	}

}


 ?>