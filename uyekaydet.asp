<META http-equiv=Content-Type content="text/html; charset=iso-8859-9">
<!--#include file="gazidosya/db.asp"-->
<!--#include file="replace.asp"-->
<%
kuladi=temizle(Request.form("kuladi"))
sifre=temizle(Request.form("sifre"))
email=temizle(Request.form("email"))
ek=temizle(Request.form("ek"))
fakulte=temizle(Request.form("fakulte"))
if kuladi= "" or sifre="" or email="" or ek="" or fakulte="" then
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
Set mesaj = Server.CreateObject("ADODB.Recordset")
sql = "Select * from kullanici"
mesaj.Open sql,baglanti,1,3
mesaj.addnew
mesaj("kuladi") = kuladi
mesaj("sifre") = sifre
mesaj("email") = email
mesaj("ek") = ek
mesaj("fakulte") = fakulte
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