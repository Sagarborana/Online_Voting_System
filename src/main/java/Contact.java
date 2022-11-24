

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String pnumber = request.getParameter("pnumber");
		String email = request.getParameter("email");
		String comment = request.getParameter("comment");
		
		DatabaseManager db = new DatabaseManager();
		Connection con = db.getConnection();
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement("insert into contact(name,pnumber,email,cmnt) values ('"+name+"','"+pnumber+"','"+email+"','"+comment+"')");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("index.jsp");
	}

}
