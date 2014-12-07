<META http-equiv=Content-Type content="text/html; charset=iso-8859-9">
<%
if Session("giris") ="tamam" then
%>
<!--#include file="gazidosya/db.asp"-->
<!--#include file="replace.asp"-->
<%
gonderilecekid=temizle(Request.form("gonderilecekid"))
gonderenid=session("id")
mesaj1=temizle(request.form("mesaj"))
if mesaj1="" then%>
<font color="#000000" size="+1"><strong><center>Bazı Bilgileri Doldurmadınız</center></strong></font>
<meta http-equiv="refresh" content="2;URL=tirafet.asp">
<%
else
Set mesaj = Server.CreateObject("ADODB.Recordset")
sql = "Select * from ozelmesaj"
mesaj.Open sql,baglanti,1,3
mesaj.addnew
mesaj("alanid") = gonderilecekid
mesaj("gonderenid") = gonderenid
mesaj("tarih") = now()
mesaj("mesaj") = mesaj1
mesaj("onay") = "0"
mesaj.update
baglanti.close
%>
<meta http-equiv="refresh" content="2;URL=index.asp">
<font color="#000000" size="+1" face="Verdana, Geneva, sans-serif"><strong><center><br>Mesaj Gönderildi</center></strong></font>

<%
end if
else%>
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
Bu Özelliği Kullanmak için İlk Olarak Siteye Kullanıcı Girişi Yapmalısın, yoksa nasıl kullanıcaksın ki?<br />
  <a href="index.asp">ANASAYFAYA D&Ouml;N</a> Ya da <a href="uyeol.asp">KAYIT OL!</a>
</center></strong></font>
<%end if%>

