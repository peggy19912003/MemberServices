<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage="" pageEncoding="UTF-8"%>
<%@ page import="rent.webservice.com.MemberInformationStub"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Member Center</title>
<script src="Scripts/modernizr.custom.36875.js" type="text/javascript"></script>
    <script type="text/javascript">
    function Toappraisal(no) {
    
    var goods=document.getElementById("goods"+no).value;
    var rent=document.getElementById("rent"+no).value;
    var personid=document.getElementById("personid"+no).value;
    var personname=document.getElementById("personname"+no).value;
    var dealid=document.getElementById("Dealid"+no).value;
    //alert(goods+rent+personid+personname+dealid);
    window.localStorage["goodsname"] = goods;
    window.localStorage["rent"] = rent;
    window.localStorage["personid"] = personid;
    window.localStorage["personname"] = personname;
    window.localStorage["dealid"] = dealid;
    document.location.href=" http://140.118.109.39:8080/jsp/Appraisal.jsp";
    
    }
    function Toappraisalt(no) {
        
        var goods=document.getElementById("tgoods"+no).value;
        var rent=document.getElementById("trent"+no).value;
        var personid=document.getElementById("tpersonid"+no).value;
        var personname=document.getElementById("tpersonname"+no).value;
        var dealid=document.getElementById("tDealid"+no).value;
        //alert(goods+rent+personid+personname+dealid);
        window.localStorage["goodsname"] = goods;
        window.localStorage["rent"] = rent;
        window.localStorage["personid"] = personid;
        window.localStorage["personname"] = personname;
        window.localStorage["dealid"] = dealid;
        document.location.href=" http://140.118.109.39:8080/jsp/Appraisal.jsp";
        
        }
    function TalkL(no) {
        
        var goods=document.getElementById("goods"+no).value;
        var rent=document.getElementById("rent"+no).value;
        var personid=document.getElementById("personid"+no).value;
        var personname=document.getElementById("personname"+no).value;
        var dealid=document.getElementById("Dealid"+no).value;
        var goodsid=document.getElementById("goodsid"+no).value;
        var userID=document.getElementById("userID").value;
       
        //alert(goods+rent+personid+personname+dealid);
      /*  window.localStorage["goodsname"] = goods;
        window.localStorage["rent"] = rent;
        window.localStorage["personid"] = personid;
        window.localStorage["personname"] = personname;
        window.localStorage["dealid"] = dealid;*/
        document.location.href="http://140.118.109.39:8080/jsp/Communication?transact_id="+dealid+"&TenantID="+personid+"&LessorID="+userID+"&GoodID="+goodsid;
        
        }
    
    function TalkT(no) {
        
        var goods=document.getElementById("tgoods"+no).value;
        var rent=document.getElementById("trent"+no).value;
        var personid=document.getElementById("tpersonid"+no).value;
        var personname=document.getElementById("tpersonname"+no).value;
        var dealid=document.getElementById("tDealid"+no).value;
        var goodsid=document.getElementById("tgoodsid"+no).value;
        var userID=document.getElementById("userID").value;
       
        //alert(goods+rent+personid+personname+dealid);
       /* window.localStorage["goodsname"] = goods;
        window.localStorage["rent"] = rent;
        window.localStorage["personid"] = personid;
        window.localStorage["personname"] = personname;
        window.localStorage["dealid"] = dealid;*/
        document.location.href="http://140.118.109.39:8080/jsp/Communication?transact_id="+dealid+"&TenantID="+userID+"&LessorID="+personid+"&GoodID="+goodsid;
        
        }
    function tprocess(no) {
    	var goodsid=document.getElementById("tgoodsid"+no).value;
    	// alert(goodsid);
    	 document.location.href="http://140.118.109.39:8080/jsp/TransactProcess?GoodID="+goodsid;
    	
    }
    function process(no) {
    	var goodsid=document.getElementById("goodsid"+no).value;
    	//alert(goodsid);
    	 document.location.href="http://140.118.109.39:8080/jsp/TransactProcess?GoodID="+goodsid;
    	 
    }
    </script>
    
<style type="text/css">
#apDiv1 {
	position: absolute;
	width: 760px;
	height: 441px;
	z-index: 1;
	left: 146px;
	top: 119px;
}

#apDiv2 {
	position: absolute;
	width: 239px;
	height: 30px;
	z-index: 2;
	left: 149px;
	top: 88px;
}

#apDiv3 {
	position: absolute;
	width: 257px;
	height: 35px;
	z-index: 3;
	left: 146px;
	top: 605px;
}

#apDiv4 {
	position: absolute;
	width: 861px;
	height: 571px;
	z-index: 4;
	left: 146px;
	top: 642px;
}

#apDiv5 {
	position: absolute;
	width: 258px;
	height: 38px;
	z-index: 5;
	left: 145px;
	top: 1307px;
}

#apDiv6 {
	position: absolute;
	width: 859px;
	height: 544px;
	z-index: 6;
	left: 145px;
	top: 1347px;
}

#apDiv7 {
	position: absolute;
	width: 50px;
	height: 22px;
	z-index: 8;
	top: 14px;
}

#apDiv8 {
	position: absolute;
	width: 111px;
	height: 22px;
	z-index: 8;
	left: 68px;
	top: 14px;
}

#apDiv9 {
	position: absolute;
	width: 140px;
	height: 22px;
	z-index: 8;
	left: 185px;
	top: 14px;
}

#apDiv10 {
	position: absolute;
	width: 99px;
	height: 22px;
	z-index: 8;
	left: 343px;
	top: 14px;
}

.theDiv {
	border: 1px solid black;
	width: 300px;
	height: 200px;
}
#apDiv11 {
	position:absolute;
	width:200px;
	height:31px;
	z-index:9;
	left: 1069px;
	top: 16px;
}
footer {
 position: relative;
 margin-top: -180px; 
 height: 180px;
 clear:both;
}
#apDiv12 {
	position:absolute;
	width:864px;
	height:115px;
	z-index:10;
	left: 143px;
	top: 1932px;
}
</style>
</head>

<body>
	<%
		//get session
		String userID = "";
		if (session.getAttribute("usr_id") == null) {
			out.print("<meta http-equiv=\"refresh\" content=\"5;url=http://140.118.109.39:8080/jsp/login.jsp\" />");
		} else {
			userID = (String) session.getAttribute("usr_id");
		
			MemberInformationStub stub = new MemberInformationStub();
			MemberInformationStub.Print_Information requestInformation = new MemberInformationStub.Print_Information();
			requestInformation.setUserID(userID);
			MemberInformationStub.Print_InformationResponse responsetInformation = stub.print_Information(requestInformation);
			String informatiom[] = responsetInformation.get_return();

			MemberInformationStub.Print_LessorRecords requestLessorRecords = new MemberInformationStub.Print_LessorRecords();
			requestLessorRecords.setUserID(userID);
			MemberInformationStub.Print_LessorRecordsResponse responsetLessorRecords = stub.print_LessorRecords(requestLessorRecords);
			String LessorRecords[] = responsetLessorRecords.get_return();

			MemberInformationStub.Print_TenantRecords requestTenantRecords = new MemberInformationStub.Print_TenantRecords();
			requestTenantRecords.setUserID(userID);
			MemberInformationStub.Print_TenantRecordsResponse responsetTenantRecords = stub.print_TenantRecords(requestTenantRecords);
			String TenantRecords[] = responsetTenantRecords.get_return();
			if (informatiom.length > 1){
		
	%>
	<div id="apDiv1" >
		<table width="758" height="347" border="2" cellpadding="2"
			cellspacing="2">
			<tr>
				<td width="105" style='text-align: center'>Account</td>
				<!-- <td width='362' style='text-align: center'>123</td> -->
				<%
				out.println("<td width='362' style='text-align: center'>"+	informatiom[1]+"</td>");
			%>

				<td width="90" style='text-align: center'>Name</td>
				<!--<td width='163' style='text-align: center'>456</td>-->
				<%
				out.println("<td width='163' style='text-align: center'>"+informatiom[2]+"</td>");
			%>
			</tr>
			<tr>
				<td style='text-align: center'>E-mail</td>
				<!--	<td style='text-align: center'>789</td>-->
				<%
				out.println("<td style='text-align: center'>"+informatiom[3]+"</td>");
			%>
				<td style='text-align: center'>Phone</td>
				<!--	<td style='text-align: center'>123</td>-->
				<%
				out.println("<td style='text-align: center'>"+informatiom[4]+"</td>");
			%>
			</tr>
			<tr>
				<td style='text-align: center'>Address</td>
				<!--<td colspan='3' style='text-align: center'>456</td>-->
				<%
					out.println("<td colspan='3' style='text-align: center'>"+informatiom[5]+"</td>");
			%>

		  </tr>
			<%
			
			%>
		</table>
	</div>
	<div id="apDiv2">Member Information</div>
<div id="apDiv7"><a href='http://140.118.109.39:8080/jsp/index.html'>HOME</a></div>
	<div id="apDiv3">Rent Records</div>
	<div id="apDiv4" class="theDiv">
	
	  <table border="2" cellpadding="2" cellspacing="2">
			<tr>
				<td width="105" height="75" style='text-align: center'>DATE</td>
				<td width="362" style='text-align: center'>Goods</td>
				<td width="90" style='text-align: center'>Tenantor</td>
				<td width="163" style='text-align: center'>State</td>
				<td width="163" style='text-align: center'>Appraisal</td>
				<td width="100" style='text-align: center'>Talk</td>
			</tr>

			<%if(LessorRecords.length>1){		
			for (int i = 0; i <= LessorRecords.length - 1; i++) {
						if ((i + 1) % 7 == 1) {
							out.println("<tr>");
						}
						if ((i + 1) % 7 == 1) {
							out.println("<td align='center' width='105'>"
									+  LessorRecords[i] + "</td>");
						} else if ((i + 1) % 7 == 2) {
							out.println("<td align='center' width='362'><a href='http://140.118.109.39:8080/jsp/MerchandiseInfo.html?id="+LessorRecords[i+5]+"'>"+  LessorRecords[i] + "</a></td>");
						} 
						 else if ((i + 1) % 7 == 3) {
										out.println("<td align='center' width='90'>"
									+ LessorRecords[i] + "</td>");
						}
						 else if ((i + 1) % 7 == 4) {
							 int state =Integer.valueOf(LessorRecords[i]) ;
							 String dealString="";
							 switch(state){
							 case 0:
								 dealString="交易開始";
								 out.println("<td align='center' width='163'><input type='button' value='"+ dealString+"' onclick='process("+i+")'></td>");
								 break; 
							 case 1:
								 dealString="貨品寄出";
								 out.println("<td align='center' width='163'>"+  dealString + "</td>");
								 break; 
							 case 2:
								 dealString="對方收到";
								 out.println("<td align='center' width='163'><input type='button' value='"+ dealString+"' onclick='process("+i+")'></td>");
								 break; 
							 case 3:
								 dealString="對方寄出";
								 out.println("<td align='center' width='163'><input type='button' value='"+ dealString+"' onclick='process("+i+")'></td>");
								 break; 
							 case 4:
								 dealString="交易完成";
								 out.println("<td align='center' width='163'>"+  dealString + "</td>");
								 break; 
								 default:
									 break; 
								  }
							
							out.println("<td align='center' width='163'><input type='hidden' id='goodsid"+i+"' name='goodsid' value='"+LessorRecords[i+3]+"'><input type='hidden' id='goods"+i+"' name='goods' value='"+LessorRecords[i-2]+"'><input type='hidden' id='Dealid"+i+"' name='Dealid' value='"+LessorRecords[i+2]+"'><input type='hidden' id='personname"+i+"'name='personname' value='"+LessorRecords[i-1]+"'><input type='hidden' id='personid"+i+"'name='personid' value='"+LessorRecords[i+1]+"'><input type='hidden' id='rent"+i+"' name='rent' value='0'><input type='button' value='評價' onclick='Toappraisal("+i+")'></td>");
							out.println("<td align='center' width='100'><input type='hidden' id='userID' name='userID' value='"+userID+"'><input type='button' value='悄悄話' onclick='TalkL("+i+")'></td>");
							out.println("</tr>");
						 } 					
						}
			}else{
				out.println("<tr><td colspan='6'>No Found!!</td></tr>");
			}
				
	
%>
		</table>
		
	</div>
	<div id="apDiv5">Tenant Records</div>
	<div id="apDiv6" class="theDiv">
  <form action="Appraisal.asp">
		<table border="2" cellpadding="2" cellspacing="2">
			<tr>
				<td width="105" height="75" style='text-align: center'>DATE</td>
				<td width="362" style='text-align: center'>Goods</td>
				<td width="90" style='text-align: center'>Renter</td>
				<td width="163" style='text-align: center'>State</td>
				<td width="163" style='text-align: center'>Appraisal</td>
				<td width="100" style='text-align: center'>Talk</td>
			</tr>
			<%
			if(TenantRecords.length>1){	
			for (int i = 0; i <= TenantRecords.length - 1; i++) {
						if ((i + 1) % 7 == 1) {
							out.println("<tr>");
						}
						if ((i + 1) % 7== 1) {
							out.println("<td align='center' width='105'>"
									+ TenantRecords[i] + "</td>");
						} else if ((i + 1) % 7 == 2) {
							out.println("<td align='center' width='362'><a href='http://140.118.109.39:8080/jsp/MerchandiseInfo.html?id="+TenantRecords[i+5]+"'>"+  TenantRecords[i] + "</a></td>");
						} 
						 else if ((i + 1) % 7 == 3) {
							
							out.println("<td align='center' width='90'>"
									+  TenantRecords[i] + "</td>");
						}
						 else if ((i + 1) % 7 == 4) {
							 int state =Integer.valueOf(TenantRecords[i]) ;
							 String dealString="";
							 switch(state){
							 case 0:
								 dealString="交易開始";
								 out.println("<td align='center' width='163'>"+ dealString+"</td>");
								 break; 
							 case 1:
								 dealString="對方寄出";
								 out.println("<td align='center' width='163'><input type='button' value='"+ dealString+"' onclick='tprocess("+i+")'></td>");
								 break; 
							 case 2:
								 dealString="收到貨品";
								 out.println("<td align='center' width='163'><input type='button' value='"+ dealString+"' onclick='tprocess("+i+")'></td>");
								 break; 
							 case 3:
								 dealString="寄出歸還";
								 out.println("<td align='center' width='163'><input type='button' value='"+ dealString+"' onclick='tprocess("+i+")'></td>");
								 break; 
							 case 4:
								 dealString="交易完成";
								 out.println("<td align='center' width='163'>"+ dealString+"</td>");
								 break; 
								 default:
									 break; 
								  }
						
							out.println("<td align='center' width='163'><input type='hidden' id='tgoodsid"+i+"' name='goodsid' value='"+TenantRecords[i+3]+"'><input type='hidden' id='tgoods"+i+"' name='goods' value='"+TenantRecords[i-2]+"'><input type='hidden' id='tDealid"+i+"' value='"+TenantRecords[i+2]+"'><input type='hidden' id='tpersonname"+i+"'name='personname' value='"+TenantRecords[i-1]+"'><input type='hidden' name='tpersonid"+i+"' value='"+TenantRecords[i+1]+"'><input type='hidden' name='trent"+i+"' value='1'><input type='button' value='評價' onclick='Toappraisalt("+i+")'></td>");
							out.println("<td align='center' width='100'><input type='hidden' id='userID' name='userID' value='"+userID+"'><input type='button' value='悄悄話' onclick='TalkT("+i+")'></td>");
							out.println("</tr>");
						 } 					
						}}
			else{
				out.println("<tr><td colspan='6'>No Found!!</td></tr>");
			}
								
			}}
						%>

		</table>
		</form>
	</div>
	<div id="apDiv8"><a href='http://140.118.109.39:8080/jsp/MemberCenter.jsp'>Member Center</a></div>
	<div id="apDiv9"><a href='http://140.118.109.39:8080/jsp/goods_management.jsp'>Goods Management</a></div>
	<div id="apDiv10"><a href='http://140.118.109.39:8080/jsp/submit_goods.jsp'>Upload Goods</a></div>
	<div id="apDiv11"><a href='http://140.118.109.39:8080/jsp/logout.jsp'>Log out</a></div>
<div id="apDiv12">
  <div align="center">Recycling let the earth  better</div>
</div>
</body>

</html>