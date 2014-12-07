<!--#include file="gazidosya/db.asp"-->
<!--#include file="replace.asp"-->

<%
if session("giris")="tamam" then
yorum=temizle(request.form("yorum"))
tirafid=temizle(request.form("gonderilecekid"))
if yorum="" then
%> <style type="text/css">
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
<body link="#990000" vlink="#CCCCCC"><font size="-1"><strong><center><br />
<br />
<br />
Bazi Alanlari Bos Biraktiniz.
<meta http-equiv="refresh" content="2;URL=index.asp">
<%
else
Set kayitseti = Server.CreateObject("ADODB.Recordset")
sql = "Select * from yorum"
kayitseti.Open sql,baglanti,1,3
		kayitseti.addnew
		kayitseti("yorum")=yorum
		kayitseti("tirafid")=tirafid
		kayitseti("gonderen")=session("kuladi")
		kayitseti("onay")="1"
		kayitseti("begen")="0"
		kayitseti.Update
		kayitseti.close
		baglanti.close%>
        
        
 
<%
response.redirect Request.ServerVariables("HTTP_REFERER")
%>
</center></strong></font>      
<%       
end if 
else
%>
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
<body link="#990000" vlink="#CCCCCC"><font size="-1"><strong><center><br />
<br />
<br />
Bu Özelligi Kullanmak için Ilk Olarak Siteye Kullanici Girisi Yapmalisin, yoksa nasil kullanicaksin ki?<br />
  <a href="index.asp">ANASAYFAYA D&Ouml;N</a> Ya da <a href="uyeol.asp">KAYIT OL!</a>
</center></strong></font>
<%end if%>