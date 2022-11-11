<?php

$host="mysql.default.svc.cluster.local";
$user=$_ENV['MYSQL_USER'];
$pass=$_ENV['MYSQL_PASSWORD'];
$db=$_ENV['MYSQL_DATABASE'];

$con=mysqli_connect($host,$user,$pass,$db);

if(!$con)
{
        print("Not Connected<br>".mysql_error());

}
else
{
        //echo("Connected");
}

?>
