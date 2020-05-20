package com.javatpoin.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connections {
	 
	public static Connection getConnection(){
			Connection connection=null;
			try{
				Class.forName("org.postgresql.Driver");
				connection=DriverManager.getConnection("jdbc:postgresql://localhost:5432/test","postgres","magnus");
			}catch(Exception e){System.out.println(e);}
			System.out.println("connected");
			return connection;
			
			
		}

}


