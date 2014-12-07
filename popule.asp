<META http-equiv=Content-Type content="text/html; charset=iso-8859-9">
<%
if Session("giris") ="tamam" then
%>
<!--#include file="gazidosya/db.asp"-->
<!--#include file="replace.asp"-->
<%
id=temizle(Request.QueryString("id"))
Set populekayit = Server.CreateObject("ADODB.Recordset")
sql = "Select * from tiraf where id="&id&""
populekayit.Open sql,baglanti,1,3
populekayit.update
populekayit("populasyon") = populekayit("populasyon")+1
populekayit.update

%>

<%
Set ipkayit = Server.CreateObject("ADODB.Recordset")
sor = "Select * from populeip"
ipkayit.Open sor,baglanti,1,3
%>
<%
ip = Request.ServerVariables("REMOTE_ADDR" )
ipkayit.addnew
ipkayit("ip") = ip
ipkayit("tirafipid") = id
ipkayit.update

baglanti.close
response.redirect Request.ServerVariables("HTTP_REFERER")
%>
<%else%>
<style type="text/css">
body,td,th {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 16px;
	color: #000;
	font-weight: bold;
}
body {
	background-color: #CCC;
}
</style>
<body link="#990000"><font size="-1"><strong><center><br />
<br />
<br />
Bu Özelliği Kullanmak için İlk Olarak Siteye Kullanıcı Girişi Yapmalısın, yoksa nasıl kullanıcaksın ki?<br />
  <a href="index.asp">ANASAYFAYA D&Ouml;N</a> Ya da <a href="uyeol.asp">KAYIT OL!</a>
</center></strong></font>
<%end if%>

