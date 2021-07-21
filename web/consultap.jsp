<%-- 
    Document   : conusultap
    Created on : 21/07/2021, 08:35:24 AM
    Author     : Godfist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Librerias y componentes de JS u CSS3-->
        <!-----------------------------BOOTSTRAP----------------------------->
<!--Icono-->
<link rel="Icon" type="img/png" href="img/logoicono.png">
<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css"/>
<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css"/>
<!--Ventanas emergentes-->
<link rel="stylesheet" type="text/css" href="css/ventanas.css">
<link rel="stylesheet" href="style.css">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link ref="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/navbar.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/geolocation.css">
<link type="text/css" rel="stylesheet" href="demobar_files/bootstrap.css">
<script type="text/javascript" src="demobar_files/jquery-latest.min.js"></script>
<script type="text/javascript" src="demobar_files/jquery.min.js"></script>
<script type="text/javascript" src="demobar_files/bootstrap.js"></script>
<script src="js/ie-emulation-modes-warning.js"> </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-----------------------------/BOOTSTRAP----------------------------->
        <title>JSP Page Consulta Pacientes</title>
    </head>
    <body>
        <marquee><h1>Consulta Pacientes JSP HERNÁNDEZ LPZ</h1></marquee>
    <center><h1>Sistema Control JSP-WRB</h1>
        <hr>
        <!--Librerias de conexion a BD-->
        <%@page import = "java.sql.*"%>
        <%@page import = "conexionbd3.Conexion" %>
         <!--LLamada a la conexion de BD-->
        <%
        Conexion conexion=new Conexion("jdbc:mysql://localhost/bddhernandezlpzp","root","");  
           String consultaAlumnos="SELECT * FROM tpaciente";//consulta que llama los campos y registros de tabla
           ResultSet rs=conexion.ejecutaSelect(consultaAlumnos);//ejecuta query  dml
           ResultSetMetaData rsmd =rs.getMetaData();//obtiene columnas
           int col=rsmd.getColumnCount(); //cuenta numero de columnas
        %>    
        <!--/LLamada a la conexion de BD-->
        <!--Imprime los Datos de la BD-->
        <div class="container">
           <div class="jumbotron">
               <center><h2>Consulta de Pacientes Sistema</h2></center>
               <hr>
               <div class="thumbnail">
                   <center>
                       <img src="img/doctorconsulta_1.jpg"
                       <!--Tabla bootstrap -->
                       <table class="table table-hover alert-danger" border="0" >
                           <thead> <!--cabecera de Tabla bootstrap -->
                           <tr>
                               <%
                              for(int k=1;k<=col;k++){//inicia for 
                               %>
                        
                           <th scope="col"><h3><strong><%=  rsmd.getColumnName(k)%></strong></h3></th>
                       
                               <%
                              }//termina for
                               %>
                           </tr>
                           </thead>
                           <tbody><!--Cuerpo de Tabla bootstrap -->
                            <tr>
                               <%
                                while(rs.next()){//inicia while
                               %>
                               <td><h4><%=  rs.getString(1)%></h4></td>
                               <td><h4><%=  rs.getString(2)%></h4></td>
                               <td><h4><%=  rs.getString(3)%></h4></td>
                               <td><h4><%=  rs.getString(4)%></h4></td>
                               <td><h4><%=  rs.getString(5)%></h4></td>
                               <td><h4><%=  rs.getString(6)%></h4></td>
                               <td><h4><%=  rs.getString(7)%></h4></td>
                               
                           </tr>
                           <%
                                }//termina while
                           %>
                           </tbody><!--/Termina Cuerpo de Tabla bootstrap -->
                       </table>
                       <hr>
                       
                       <hr>
                       <h3>Fecha y hora del sistema: <%= new java.util.Date()%> </h3>
                       <a href="index.html"><h4>Regresar a Menu Principal</h4></a>
                   </center>    
               </div>
           </div>
       </div>
<!--/Imprime los Datos de la BD-->
        
        
        
        
    </body>
</html>
