<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="rent.webservice.com.MemberInformationStub"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="java.text.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Appraisal</title>
<script src="Scripts/modernizr.custom.36875.js" type="text/javascript"></script>
     <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
    var goods;
    var rent;
    var personid;
    var personname;
    var dealid;
    

    $(document).ready(function(){
      	
      	goods=localStorage["goodsname"];
    	rent=localStorage["rent"];
    	personid=localStorage["personid"];
    	personname=localStorage["personname"];
    	dealid=localStorage["dealid"];
      	//alert(goods+rent+personid+personname+dealid);
      	$("#goodsname").text(goods);
      	$("#personname").text(personname);
      	 $("#Dealid").attr("value", dealid);
      	$("#rent").attr("value",rent);
      	});
   
    </script>

<style type="text/css">
#apDiv1 {
	position:absolute;
	width:760px;
	height:441px;
	z-index:1;
	left: 146px;
	top: 119px;
}
#apDiv5 {
	position:absolute;
	width:125px;
	height:38px;
	z-index:5;
	left: 145px;
	top: 1307px;
}
#apDiv7 {
	position:absolute;
	width:50px;
	height:22px;
	z-index:8;
	top: 14px;
}
#apDiv8 {
	position:absolute;
	width:111px;
	height:22px;
	z-index:8;
	left: 68px;
	top: 14px;
}
#apDiv9 {
	position:absolute;
	width:159px;
	height:22px;
	z-index:8;
	left: 185px;
	top: 14px;
}
#apDiv10 {
	position:absolute;
	width:99px;
	height:22px;
	z-index:8;
	left: 354px;
	top: 14px;
}
#apDiv2 {
	position:absolute;
	width:121px;
	height:65px;
	z-index:20;
	left: 315px;
	top: 430px;
}
#apDiv3 {
	position:absolute;
	width:250px;
	height:27px;
	z-index:9;
	left: 308px;
	top: 160px;
}
#apDiv4 {
	position:absolute;
	width:251px;
	height:31px;
	z-index:10;
	left: 307px;
	top: 178px;
}
#apDiv6 {
	position:absolute;
	width:420px;
	height:30px;
	z-index:11;
	top: 23px;
	left: 621px;
}
#apDiv11 {
	position:absolute;
	width:96px;
	height:32px;
	z-index:9;
	left: 1222px;
	top: 12px;
}
#apDiv12 {
	position:absolute;
	width:1056px;
	height:115px;
	z-index:10;
	left: 142px;
	top: 671px;
}
</style>
</head>

<body>
<div id="apDiv12">
  <div align="center">少購物，多環保</div>
</div>
<div id="apDiv7"><a href='http://140.118.109.39:8080/jsp/index.html'>HOME</a></div>
<!-- <div id="apDiv5">Tenant Records</div>-->
<div id="apDiv8"><a href='http://140.118.109.39:8080/jsp/MemberCenter.jsp'>Member Center</a></div>
<div id="apDiv9"><a href='http://140.118.109.39:8080/jsp/goods_management.jsp'>Goods Management</a></div>
<div id="apDiv10"><a href='http://140.118.109.39:8080/jsp/submit_goods.jsp'>Upload Goods</a></div>
<div id="apDiv1">
<form id="form1" name="form1" method="get" >
	<%
	//get session
			String userID = "";
			if (session.getAttribute("usr_id") == null) {
				out.print("<meta http-equiv=\"refresh\" content=\"5;url=http://140.118.109.39:8080/jsp/login.jsp\" />");
			} else {	
				userID = (String) session.getAttribute("usr_id");
				
				//out.print("<script>alert('Error 1')</script>");
			if (request.getParameter("Dealid") != null &&  request.getParameter("rent") != null ) {
				String dealID=request.getParameter("Dealid");
				String rent=request.getParameter("rent");
				//out.print("<script>alert('Error 2')</script>");
				
				if(session.getAttribute("DealID") == null){
				session.setAttribute("DealID", dealID);
				session.setAttribute("rent", rent);
				}
				
				if(request.getParameter("score") != null && request.getParameter("content")!= null){
					//out.print("<script>alert('Error 3')</script>");
					String score=request.getParameter("score");
					String content =request.getParameter("content");
				//	out.print("<script>alert('Error 4')</script>");
					MemberInformationStub stub = new MemberInformationStub();
					MemberInformationStub.Insert_appraisal requestInsert_appraisal = new MemberInformationStub.Insert_appraisal();
					//out.print("<script>alert('Error 5')</script>");
					String sessiondealID=(String)session.getAttribute("DealID");
					String sessionrent=(String)session.getAttribute("rent");
					requestInsert_appraisal.setUserID(userID);				
					requestInsert_appraisal.setDealID(dealID);
					requestInsert_appraisal.setRent(rent);
					requestInsert_appraisal.setContent(content);
					requestInsert_appraisal.setScore(score);
					//out.print("<script>alert('Error 6')</script>");
					MemberInformationStub.Insert_appraisalResponse ResponseInsert_appraisal=stub.insert_appraisal(requestInsert_appraisal);
					int appraisal=ResponseInsert_appraisal.get_return();
					//out.print("<script>alert('Error 7"+appraisal+userID+dealID+rent+content+score+"')</script>");
					
					
				}
					}
				}
				
				
	%>
<table width="758" height="352" border="2" cellpadding="2" cellspacing="2">
  <tr>
    <td width="105" style="text-align:center">Date</td>
    <td width="194" style="text-align:center">
    <%
    DateFormat df = new SimpleDateFormat("yyyy-MM-dd' 'hh:mm:ss");    
    String formattedDate = df.format(new java.util.Date());
    out.println(formattedDate); %>
    </td>
    <td width="123" style='text-align:center'>Appraisal</td>
    <td width="298" style='text-align:center'><p id='personname'></p>
  </tr>
  <tr>
    <td style='text-align:center'>Goods</td>
    <td style='text-align:center'><p id='goodsname'></p></td>
    <td style='text-align:center'>Score</td>
    <td style='text-align:center'>
      <input type="radio" name="score" id="score" value="1" />Bad
      <input type="radio" name="score" id="score" value="2" />General
      <input type="radio" name="score" id="score" value="3" />Good
      <label for="score"></label>
 </td>
  </tr>
  <tr>
     <td height="68" colspan="4">Content</td>
  </tr>
    <tr>
     <td colspan="4" height="200">

       <textarea id="inputArea" name="content" id="content" height="190" width="750" style="margin: 0px; width: 732px; height: 193px;"></textarea>
   </td>
  </tr>
</table>
<div id="apDiv2"><input type="hidden" id="Dealid" name="Dealid"><input type="hidden" id="rent" name="rent"><input type="submit" name="BTN_Appraisal" id="BTN_Appraisal" style="width:120px;height:60px;font-size:20px;" value="Send" /></div>
</form>
</div>
<div id="apDiv11"><a href='http://140.118.109.39:8080/jsp/logout.jsp'>Log out</a></div>
</body>
</html>