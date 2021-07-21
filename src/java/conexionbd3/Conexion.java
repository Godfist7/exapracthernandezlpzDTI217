/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexionbd3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Godfist
 */
public class Conexion {
     //atributos globales o variabes de conexion
    public Connection con;//conexion a BD
    public Statement stmt;//Ejecuta instrucciones SQL (DML, DDL,DCL)
    public ResultSet rs;//Salida y tratamiento de datos

    //constructor => Metodo especial llamado igual que la clase (inicializar y pasar parametros de conexion a JSP)
     public Conexion( String urlBD, String usuarioBD, String passwordBD) throws Exception {
		Class.forName ("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection (urlBD, usuarioBD, passwordBD );
		stmt = con.createStatement();//sentencias SQL
                
	}//termina constructor
//Metodo para consultar los objetos de BD}
     public ResultSet ejecutaSelect(String query) throws SQLException {
		rs = stmt.executeQuery(query);
		return rs;
	}//termina metodo consultar

        //Metodo para modificar los objetos de BD
	public int ejecutaSentencia(String sql) throws SQLException {
		int cambios = stmt.executeUpdate(sql);
		return cambios;
	}//termina metodo modificar

}//Termina clase 

