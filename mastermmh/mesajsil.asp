<META http-equiv=Content-Type content="text/html; charset=iso-8859-9">
<!--#include file="sifre.asp"-->
<%

set baglanti = server.createobject("adodb.connection")
baglanti.open "provider=microsoft.ace.oledb.12.0;data source=" & server.mappath("../dbase/54456321873218731287231432211124312efd45v5xv54xcvxvx#$.mdb") 


id=request.QueryString("id")

%>
<%

Set mesaj = Server.CreateObject("ADODB.Recordset")
sql = "delete * from ozelmesaj where id="&id&""
mesaj.Open sql,baglanti,1,3
baglanti.close
%>
veri silindi
<meta http-equiv="refresh" content="1;URL=lelx.asp">

