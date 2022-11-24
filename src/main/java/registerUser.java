

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class registerUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		try(PrintWriter out = response.getWriter()){
			
			String name = request.getParameter("name");
			String contact = request.getParameter("number");
			String email = request.getParameter("email");
			String voterID = request.getParameter("voterID");
			String address = request.getParameter("address");
			String dob = request.getParameter("dob");
			
			DatabaseManager db = new DatabaseManager();
			java.sql.Connection con = db.getConnection();
			
			PreparedStatement ps = null;
			try {
				ps = con.prepareStatement("insert into registered_voters(name,pnumber,email,voter_card_number,address,dob) values ('"+name+"','"+contact+"','"+email+"','"+voterID+"','"+address+"','"+dob+"')");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			response.sendRedirect("success.jsp");
			
		}
		
	}

}
