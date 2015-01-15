package rent.webservice.com;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class MemberInformation {

	public ArrayList<String> Print_Information(String UserID) {
		ArrayList<String> MemberInfortion = new ArrayList<String>();

		String username = "hsnl";
		String pwd = "hsnl1130";
		String Dbclass="jdbc:mysql://140.118.109.39:3306/webservice";
		String searchsql1="SELECT * FROM webservice.usr_list where usr_id='"+UserID+"'";		
		  
		Connection con = null;

		Statement stmt = null; 

		ResultSet rs = null;


		try {

			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			con = DriverManager.getConnection(
					Dbclass,username,pwd);
					//, username, pwd);

			stmt = con.createStatement();

			rs = stmt.executeQuery(searchsql1);
			
			 while (rs.next())
		      {
				 MemberInfortion.add(rs.getObject(1).toString());//usr_id
				 MemberInfortion.add(rs.getObject(2).toString());//usr_account
				 MemberInfortion.add(rs.getObject(3).toString());//usr_name
				 MemberInfortion.add(rs.getObject(4).toString());//usr_email
				 MemberInfortion.add(rs.getObject(5).toString());//usr_phone
				 MemberInfortion.add(rs.getObject(7).toString());//usr_address
				 
		      }


			rs.close();

			con.close();

		}  catch (Exception e) {
			System.err.println(e.getMessage());
			//System.err.println(e.printStackTrace());
			 MemberInfortion.add(e.getMessage());
			
			//bookList.add("No book in the database");
		}

		return  MemberInfortion;

	}
	
	public ArrayList<String> Print_LessorRecords(String UserID) {
		ArrayList<String> LessorRecordList = new ArrayList<String>();

		String username = "hsnl";
		String pwd = "hsnl1130";
		String Dbclass="jdbc:mysql://140.118.109.39:3306/webservice";
		String searchsql1="SELECT Deal_DateTime,goods.name,usr_name,Deal_State,Deal_Tenant,Deal_ID,goods.id  FROM webservice.goods,webservice.records INNER JOIN webservice.usr_list on records.Deal_Tenant=usr_list.usr_id where records.Deal_Lessor='"+UserID+"' and records.Deal_GoodsID=goods.id";	

		  
		Connection con = null;

		Statement stmt = null;

		ResultSet rs = null;


		try {

			Class.forName("com.mysql.jdbc.Driver");
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			con = DriverManager.getConnection(
					Dbclass,username,pwd);
					//, username, pwd);

			stmt = con.createStatement();

			rs = stmt.executeQuery(searchsql1);
			
			 while (rs.next())
		      {
				 LessorRecordList.add(rs.getObject(1).toString());//Deal_DateTime
				 LessorRecordList.add(rs.getObject(2).toString());//goods.name
				 LessorRecordList.add(rs.getObject(3).toString());//usr_list.usr_name
				 LessorRecordList.add(rs.getObject(4).toString());//Deal_State
				 LessorRecordList.add(rs.getObject(5).toString());//Deal_Tenant
				 LessorRecordList.add(rs.getObject(6).toString());//Deal_ID
				 LessorRecordList.add(rs.getObject(7).toString());//goods.id
				 
		      }

			 if( LessorRecordList.isEmpty()){
				 LessorRecordList.add("No Found");
				}
			rs.close();

			con.close();

		}  catch (Exception e) {
			System.err.println(e.getMessage());
			//System.err.println(e.printStackTrace());
			LessorRecordList.add(e.getMessage());
			
			//bookList.add("No book in the database");
		}

		return LessorRecordList;

	}


public ArrayList<String> Print_TenantRecords(String UserID) {
	ArrayList<String> TenantRecordList = new ArrayList<String>();

	String username = "hsnl";
	String pwd = "hsnl1130";
	String Dbclass="jdbc:mysql://140.118.109.39:3306/webservice";
	String searchsql1="SELECT Deal_DateTime,goods.name,usr_name,Deal_State,Deal_Lessor,Deal_ID,goods.id  FROM webservice.goods,webservice.records INNER JOIN webservice.usr_list on records.Deal_Lessor=usr_list.usr_id where records.Deal_Tenant='"+UserID+"' and records.Deal_GoodsID=goods.id";	
	Connection con = null;

	Statement stmt = null;

	ResultSet rs = null;


	try {

		Class.forName("com.mysql.jdbc.Driver");
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con = DriverManager.getConnection(
				Dbclass,username,pwd);

		stmt = con.createStatement();

		rs = stmt.executeQuery(searchsql1);
		
		 while (rs.next())
	      {
			 TenantRecordList.add(rs.getObject(1).toString());//Deal_DateTime
			 TenantRecordList.add(rs.getObject(2).toString());//goods.name
			 TenantRecordList.add(rs.getObject(3).toString());//usr_list.usr_name
			 TenantRecordList.add(rs.getObject(4).toString());//Deal_State
			 TenantRecordList.add(rs.getObject(5).toString());//Deal_Tenant
			 TenantRecordList.add(rs.getObject(6).toString());//Deal_ID
			 TenantRecordList.add(rs.getObject(7).toString());//goods.id
			 
			 
	      }

if( TenantRecordList.isEmpty()){
	TenantRecordList.add("No Found");
}
		rs.close();

		con.close();

	}  catch (Exception e) {
		System.err.println(e.getMessage());
		//System.err.println(e.printStackTrace());
		TenantRecordList.add(e.getMessage());
		
		//bookList.add("No book in the database");
	}

	return TenantRecordList;

}

public int Insert_appraisal(String UserID,String DealID ,String Rent,String Content,String Score) {
	ArrayList<String> appraisalList = new ArrayList<String>();
	Timestamp stamp = new Timestamp(System.currentTimeMillis());
	
	SimpleDateFormat dfDate = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm:ss");

	String dateNow = dfDate.format(stamp);
	int neumber=0;
	String username = "hsnl";
	String pwd = "hsnl1130";
	String Dbclass="jdbc:mysql://140.118.109.39:3306/webservice";
	String Insertsql1="INSERT INTO webservice.appraisal (Deal_ID,DateTime,Content,Account,Rent,Score) VALUES ('"+DealID+"','"+dateNow+"','"+Content+"','"+UserID+"','"+Rent+"','"+Score+"')";	
	String selectsql="select * From webservice.appraisal where Deal_ID='"+DealID+"' and Account='"+UserID+"'";  
	
	Connection con = null;

	Statement stmt = null;

	ResultSet rs = null;


	try {

		Class.forName("com.mysql.jdbc.Driver");
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con = DriverManager.getConnection(
				Dbclass,username,pwd);
				//, username, pwd);

		stmt = con.createStatement();
		stmt.executeUpdate(Insertsql1);
		

		con.close();

	}  catch (Exception e) {
		//return "1234:  "+e.getMessage();
	//	System.err.println(e.getMessage());
		//System.err.print(e.printStackTrace());
		//bookList.add(e.getMessage());
		
		//bookList.add("No book in the database");
	}

	try {

		Class.forName("com.mysql.jdbc.Driver");
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con = DriverManager.getConnection(
				Dbclass,username,pwd);
				//, username, pwd);

		stmt = con.createStatement();
		rs = stmt.executeQuery(selectsql);
		
		 while (rs.next())
	      {
			 appraisalList.add(rs.getObject(1).toString());
			 appraisalList.add(rs.getObject(2).toString());
			 appraisalList.add(rs.getObject(3).toString());
			 appraisalList.add(rs.getObject(4).toString());
			 appraisalList.add(rs.getObject(5).toString());
			 appraisalList.add(rs.getObject(6).toString());
			 
	      }
		 neumber=appraisalList.size();

		rs.close();

		con.close();

	}  catch (Exception e) {
		System.err.println(e.getMessage());
		//System.err.println(e.printStackTrace());
		//bookList.add(e.getMessage());
		
		//bookList.add("No book in the database");
	}
	//return  neumber;
	
	return  neumber;

}

}
