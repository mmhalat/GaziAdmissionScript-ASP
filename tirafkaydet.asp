<!--#include file="gazidosya/db.asp"-->
<!--#include file="replace.asp"-->

<%
if session("ek")="e" or session("ek")="Bay" then
session("ek")="Bay"
else
session("ek")="Bayan"
end if
					baslik=temizle(request.form("baslik"))
					icerik=temizle(request.form("icerik"))
					fakulte=request.form("fakulte")
					anonimgonder=temizle(request.form("anonimgonder"))
					ek=temizle(request.Form("ek"))
if baslik="" or icerik="" then%>
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
Bazi Alanlari Bos Biraktin.
<meta http-equiv="refresh" content="2;URL=index.asp">
</center></strong></font>
<%
else
if session("giris")="tamam" then
if not anonimgonder = "on" then

							Set kayitseti = Server.CreateObject("ADODB.Recordset")
							sql = "Select * from tiraf"
							kayitseti.Open sql,baglanti,1,3
							kayitseti.addnew
							kayitseti("baslik")=baslik
							kayitseti("icerik")=icerik
							kayitseti("fakulte")=session("fakulte")
							kayitseti("gonderen")=session("kuladi")
							kayitseti("ek")=session("ek")
							kayitseti("tarih")=date()
							kayitseti("girenid")=session("id")
							kayitseti("onay")="0"
							kayitseti("populasyon")="0"
							kayitseti.Update
							kayitseti.close
							baglanti.close%>
							
							
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
Tirafini Aldik!,Editörlerimiz Tarafindan Onaylandiktan Sonra Anasayfada Görebilirsin.
<meta http-equiv="refresh" content="3;URL=index.asp">
</center></strong></font>
							<%
else

							Set kayitseti = Server.CreateObject("ADODB.Recordset")
							sql = "Select * from tiraf"
							kayitseti.Open sql,baglanti,1,3
							kayitseti.addnew
							kayitseti("baslik")=baslik
							kayitseti("icerik")=icerik
							kayitseti("fakulte")=session("fakulte")
							kayitseti("gonderen")="Anonim"
							kayitseti("ek")=session("ek")
							kayitseti("tarih")=date()
							kayitseti("girenid")=session("id")
							kayitseti("onay")="0"
							kayitseti("populasyon")="0"
							kayitseti.Update
							kayitseti.close
							baglanti.close%>
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
Tirafin "Anonim" Olarak Kayit Edildi!,Editörlerimiz Tarafindan Onaylandiktan Sonra Anasayfada Görebilirsin.
<meta http-equiv="refresh" content="3;URL=index.asp">
</center></strong></font>
                            

<%
end if
else
								Set kayitseti = Server.CreateObject("ADODB.Recordset")
								sql = "Select * from tiraf"
								kayitseti.Open sql,baglanti,1,3
										kayitseti.addnew
										kayitseti("baslik")=baslik
										kayitseti("icerik")=icerik
										kayitseti("fakulte")=fakulte
										kayitseti("tarih")=date()
										kayitseti("ek")=ek
										kayitseti("girenid")="1"
										kayitseti("gonderen")="Anonim"
										kayitseti("onay")="0"
										kayitseti("populasyon")="0"
										kayitseti.Update
										kayitseti.close
										baglanti.close
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
Tirafin "Anonim" Ismi ile Kayit Edildi!,Editörlerimiz Tarafindan Onaylandiktan Sonra Anasayfada Görebilirsin.
<meta http-equiv="refresh" content="3;URL=index.asp">
</center></strong></font>
<%end if
end if%>