<?php
// define("DB_HOST","localhost");
// define("DB_USER","root");
// define("DB_PASS","");
// define("DB_NAME","cms");

//$connection=mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
$connection=mysqli_connect("localhost:3307","root","","cms");
if(!$connection)
{
    die("doesnt work" . mysqli_connect_error($connection));
}

?>