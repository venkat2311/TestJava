<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("username");    
    String fname = request.getParameter("firstname");
    String lname = request.getParameter("lastname");
    String email = request.getParameter("email");
    Class.forName("org.postgresql.Driver");
    Connection con = DriverManager.getConnection("jdbc:postgresql://ec2-23-23-210-37.compute-1.amazonaws.com:5432/d65c6ed25bphue?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory",
		    	            "knvniobbwtmdtl", "PmxU9wcPJpFzqB4t68A8NgctEj");
    Statement st = con.createStatement();
    int i=0;
    try
    {
    i = st.executeUpdate("INSERT INTO salesforce.PATIENTREG__c(Name,FirstName__c,LastName__c,Email__c) values ('" + user + "','" + fname + "','" + lname + "','" + email + "')");
    if (i > 0)
    {        
        out.print("Patient Details are registered successfully! "+"<a href='index.jsp'>Go to Register Page</a>");
    }
    else
    {       
         out.print("Patient Details are not registered successfully! "+"<a href='index.jsp'>Go to Register Page</a>");
    }    
    }
    catch(Exception e)
    {
        out.print("Patient Details are not registered successfully! "+"<a href='index.jsp'>Go to Register Page</a>");
    }
    st.close();
    con.close();
    %>
