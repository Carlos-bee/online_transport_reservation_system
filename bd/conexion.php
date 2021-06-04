<?php

function conectar(){

    $user = "root";
    $pass = "";
    $server = "localhost";
    $db = "transporte_municipal";
    $con = mysql_connect($server,$user,$pass) or die ("Error al conectar a la base de datos".mysql_error());
    mysql_select_db($db,$con);

    return $con;
}

?>