package jbdcdemo;
import java.sql.*;
public class DemoClass
{
	public static void main(String[] args)  throws Exception
	{	
		String url="jdbc:mysql://localhost:3306/class623";
		String uname="root";
		String pass="123456@@";
		Class.forName("com.mysql.cj.jdbc.Driver");
			submittedPapers(url,uname,pass);
			getReviews(url,uname,pass);
			SumOfReviews(url,uname,pass);
			deleteAuthor(url,uname,pass);
	}
	
	private static void deleteAuthor(String url, String uname, String pass) throws SQLException  {
		Connection con=DriverManager.getConnection(url, uname, pass);
		Statement st=con.createStatement();
		System.out.println("Delete section");
		String query="DELETE FROM author WHERE authorid=1;"; 
			try {
					st.executeUpdate(query);
					}catch(SQLException se){
					se.printStackTrace();
				}
			catch(Exception e){
				e.printStackTrace();
				}
			finally{   
				st.close();
				con.close();
				}
			st.close();
			con.close();
	}
	
	private static void getReviews(String url, String uname, String pass) throws SQLException   {
		Connection con=DriverManager.getConnection(url, uname, pass);
		Statement st=con.createStatement();
		System.out.println("recommendation    reviewid meritScore PaperId Readscore  reviewerid  originscore relscore");
		String query="select * from review where paperid=3"; 
		ResultSet rs=st.executeQuery(query);
			while(rs.next()) {
			System.out.println(rs.getString(1)+"           "+rs.getString(2)+"         "+rs.getString(3)+"        "+rs.getString(4)+"       "+rs.getString(5)+"       "+rs.getString(6) +"         "+rs.getString(7)+"           "+rs.getString(8));
			System.out.println();
			}
			st.close();
			con.close();
		
	}
	
	private static void submittedPapers(String url, String uname, String pass) throws SQLException {
		Connection con=DriverManager.getConnection(url, uname, pass);
		Statement st=con.createStatement();
		System.out.println("paperid    title,             abstract,                            emailaddr,               firstname,    lastname");
		String query="select paperid, title, abstract, emailaddr, firstname, lastname from paper, author where authorid=3 and Author_id=3"; //#1
		ResultSet rs=st.executeQuery(query);
			while(rs.next()) {
			System.out.println(rs.getString(1)+"     "+rs.getString(2)+"       "+rs.getString(3)+"        "+rs.getString(4)+"       "+rs.getString(5)+"       "+rs.getString(6));
			System.out.println();
			}
			st.close();
			con.close();
	}
	
	private static void SumOfReviews(String url, String uname, String pass) throws SQLException {
		Connection con=DriverManager.getConnection(url, uname, pass);
		Statement st=con.createStatement();
		System.out.println("Rows Counted");
		String query="SELECT COUNT(*)  FROM review";
		ResultSet rs=st.executeQuery(query);
		while(rs.next()) {
			System.out.println(rs.getString(1));
		}
		st.close();
		con.close();
	}		
	
}



