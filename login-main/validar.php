<?php
include('db.php');
$usuario=$_POST['usuario'];
$contraseña=$_POST['contraseña'];
session_start();
$_SESSION['usuario']=$usuario;


$con=mysql_connect();

$consulta="SELECT*FROM usuarios where usuario='$usuario' and contraseña='$contraseña'";
$resultado=mysql_query($conexion,$consulta);

$filas=mysql_num_rows($resultado);

if($filas){
  
    header("location:usuario.html");

}else{
    ?>
    <?php
    include("index_login.html");

  ?>
  <h1 class="bad">ERROR DE AUTENTIFICACION</h1>
  <?php
}
mysql_free_result($resultado);
mysql_close($conexion);
