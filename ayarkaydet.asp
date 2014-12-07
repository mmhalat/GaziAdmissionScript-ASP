<META http-equiv=Content-Type content="text/html; charset=iso-8859-9">
<!--#include file="gazidosya/db.asp"-->
<!--#include file="replace.asp"-->
<%
sifre=temizle(Request.form("sifre"))
email=temizle(Request.form("email"))
if sifre="" or email="" then
%>
<meta http-equiv="refresh" content="3;URL=uyeol.asp">
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
<body link="#990000" vlink="#CCCCCC"><center><font size="-1"><strong><br />
<br />
<br />
Bazı Bilgileri Eksik Doldurdun.<br />
</strong></font>
</center>
<% 
else
id=session("id")
Set mesaj = Server.CreateObject("ADODB.Recordset")
sql = "Select * from kullanici where id="&id&""
mesaj.Open sql,baglanti,1,3
mesaj.update
mesaj("sifre") = sifre
mesaj("email") = email
mesaj.update
baglanti.close

%>
<meta http-equiv="refresh" content="3;URL=index.asp">
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
<body link="#990000" vlink="#CCCCCC"><center><font size="-1"><strong><br />
<br />
<br />
Kaydın Tamamlandı Anasayfadan Giriş Yapabilirsin.<br />
  <a href="index.asp">BEKLEMEDEN ANASAYFAYA D&Ouml;N</a>
</strong></font>
</center>
<%end if%>