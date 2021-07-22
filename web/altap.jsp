<%-- 
    Document   : alta
    Created on : 21/07/2021, 07:52:51 AM
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
        <title>JSP Alta Paciente</title>
    </head>
    <body style="background-color: #9acfea"

       
        <!--Librerias-->
        <%@page import = "java.sql.*"%>
        <%@page import = "conexionbd3.Conexion"%>
        <!--Llamada a la conexión y variables-->
        <!--Instruccion SQL para insertar-->
        <% 
            Conexion conexion=new Conexion("jdbc:mysql://localhost/bddhernandezlpzp","root",""); 
            String curp = request.getParameter("CURP");
            String nombre=request.getParameter("nombre");
            String apePaterno=request.getParameter("appat");
            String apeMaterno=request.getParameter("apmat");
             int diasHosp= Integer.parseInt(request.getParameter("diash"));
            int cobroHosp = Integer.parseInt(request.getParameter("cobroh"));
            int descHosp = Integer.parseInt(request.getParameter("desch"));
            
            String altaQuery="INSERT INTO tpaciente VALUES ('"+curp+"', '"+nombre+"', '"+apePaterno+"', '"+apeMaterno+"','"+diasHosp+"','"+cobroHosp+"','"+descHosp+"')";
        
            int c = conexion.ejecutaSentencia(altaQuery);
            if(c==1){//inicia if
        %>  
        <center><h1><marquee> Sistema Java WEB HERNANDEZLPZ </marquee></h1></center>
        <hr>
        <div class="container">
            <div class="jumbotron">
                <center>
                    <h2>Confirma Alta de Registro Paciente</h2>
                    <img src="img/doctor.png" class="img img-responsive" alt="logo"/>
                    <hr>
                    <div class="thumbnail">
                        <h2>Se agrego de forma exitosa un nuevo Paciente</h2>
                        <hr>
                        <h3>Matricula: <%= curp%></h3>
                        <h3>Nombre: <%= nombre%></h3>
                        <h3>Apellido Paterno: <%= apePaterno%></h3>
                        <h3>Apellido Materno: <%= apeMaterno%></h3>
                        <h3>Dias Hospitalizacion:  <%= diasHosp%></h3>
                        <h3>Cobro por Hospitalizacion:  <%= cobroHosp%></h3>
                        <h3>Descuento por Hospitalizacion:  <%= descHosp%></h3>
                        <hr>
                        <h3>Total de Hospitalizacion: </h3>
                        <%
                         float totalHosp = cobroHosp * diasHosp;
                         %>
                         <h3>$<%=totalHosp%></h3>
                         <hr>
                         <h3>Descuento por Dias de Hospitalizacion(%10):</h3>
                         <%
                           float totalDesc = (totalHosp * descHosp) - totalHosp;
                         %>
                         <h3>$<%=totalDesc%></h3>
                        <!--diashhosp * cobrohosp = totalhosp -->
                         <!--totalhosp * .10 = x  -->
                         <!--totalhosp - x = deschosp  -->
                    </div>
                    
                    <h3>Fecha y hora del sistema: <%= new java.util.Date()%> </h3>
                       <a href="index.html"><h4>Regresar a Menu Principal</h4></a>
                </center>
                <%
                    }//Termina if
                %>
            </div>
        </div>
       
         
         
    
     
    </body> 
            
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<script type="js/jquery-1.8.0.min"></script>        
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>
