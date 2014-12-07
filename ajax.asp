<!--#include file="gazidosya/db.asp"-->
<%
Session.CodePage=1254
response.charset="windows-1254"
Strislemzaman="30"
gonderen=Degistir(request.form("adsoyad"))
yorum=Degistir(request.form("yorum"))
s=Request.QueryString("sid")
sid=session.sessionID


if not s = (sid) then
response.Write("hata3")
elseif adsoyad="" or yorum="" then
response.Write("hata1")
else
	ETarih = Session("SonGon" ) 
	If DateDiff("S" ,ETarih,Now()) > Int(Strislemzaman) Then 
	Session("SonGon" ) = Now() 
		Set kayitseti= Server.CreateObject("ADODB.Recordset")
		kayitseti.open "Select * From yorum",baglanti,1,3
		kayitseti.addnew
		kayitseti("gonderen")=gonderen
		kayitseti("yorum")=yorum
		kayitseti.Update
		sonid=kayitseti("id")
			Set sonkayit= Server.CreateObject("ADODB.Recordset")
			sonkayit.open "Select * From yorum where id="&sonid&"",baglanti,1,3
			%>
			<div class="yorumlist">
			<div class="yazan"><b><%=sonkayit("yazan")%></b> demiþki;</div>
			<div class="yorum"><%=sonkayit("yorum")%></div>
			</div>
			<%
			sonkayit.close
			set sonkayit=nothing
	else
	response.Write("hata4")
	end if
end if
%>