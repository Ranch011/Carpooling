
import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SQL")
public class SQL extends HttpServlet {
	
    
    public SQL() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{ 
		try {
		       Class.forName("oracle.jdbc.driver.OracleDriver");
			   Connection c = DriverManager.getConnection("jdbc:Oracle:thin:@localhost:1521:xe","System","Oracle");
			   Statement  st = c.createStatement();
			 
			   

			  
			}
	         catch(Exception e) 
	          {
		   
	          }
	}

}
