package Online_Voting_System;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;


public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        DatabaseManager db = new DatabaseManager();
		java.sql.Connection  con = db.getConnection();
		
		 String name = request.getParameter("name");
         String voter_card_number = request.getParameter("voternumber");
         String address = request.getParameter("address");
         String dob = request.getParameter("dob");
         String contact = request.getParameter("number");
         String email = request.getParameter("email");
         
         try {
        	 PreparedStatement preparedStatement = con.prepareStatement("insert into voters (name,pnumber,email,voter_card_number,address,dob)values('"+name+"','"+contact+"','"+email+"','"+voter_card_number+"','"+address+"','"+dob+"')");
   		  preparedStatement.executeUpdate();
//   		  out.println("registration success");
   		  response.sendRedirect("adminWelcome.jsp");
         }catch(Exception e) {
        	 System.out.println(e.getMessage());
         }
	}

}
