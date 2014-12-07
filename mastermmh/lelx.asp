<!--#include file="sifre.asp"-->
<%
set baglanti = server.createobject("adodb.connection")
baglanti.open "provider=microsoft.ace.oledb.12.0;data source=" & server.mappath("../dbase/54456321873218731287231432211124312efd45v5xv54xcvxvx#$.mdb") %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
</head>
<body>
<%
		set tiraf=server.createobject("adodb.recordset")
		sql="select * from tiraf where onay=0 order by id desc"
		tiraf.open sql,baglanti,1,3	
				do while not tiraf.eof
%>
		<table width="851" border="1" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="5"><div align="left">TİRAFLAR</div></td>
            </tr>
			
			
			
			
          <tr>
            <td colspan="5"><img src="gaziresim/yatay.gif" width="495" height="1"></td>
          </tr>
          <tr>
            <td width="116" align="left" class="yazi"><strong><%=tiraf("gonderen")%></strong><strong> - <%=tiraf("ek")%> - <strong><font color="#CC0000"><%=tiraf("fakulte")%></font> </strong></strong></td>
            <td colspan="4" class="yazi"><div align="right"><%=tiraf("tarih")%></div></td>
          </tr>
          <tr>
            <td height="5" colspan="5" class="yazi">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="5"><div align="left"><span class="style4 style10"><%=tiraf("baslik")%></span></div></td>
          </tr>
          <tr>
            <td colspan="5"><div align="left" class="yazi"><%=tiraf("icerik")%></div></td>
          </tr>
          <tr>
            <td colspan="5">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" class="yazi style5">&nbsp;</td>
            <td width="87"><a href="tirafonay.asp?id=<%=tiraf("id")%>">Onayla</a></td>

            
            <td width="100"><a href="tirafdegistir.asp?id=<%=tiraf("id")%>">Değiştir</a></td>

            
            
            

            <td width="546"><a href="tirafsil.asp?id=<%=tiraf("id")%>">Sil</a></td>

            
          </tr>
       
          <tr>
            <td height="2" colspan="5"><img src="gaziresim/yatay.gif" width="495" height="1"></td>
            </tr>
        </table>
        <%
		tiraf.movenext
loop
		%>
        
        
        
        
        
        <%
		set yorum=server.createobject("adodb.recordset")
		sql="select * from ozelmesaj where onay=0 order by id desc"
		yorum.open sql,baglanti,1,3	
				do while not yorum.eof
%>
		<table border="1" width="823" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="5"><div align="left">&Ouml;zel Mesajlar</div></td>
            </tr>
			
			
			
			
          <tr>
            <td colspan="5"><img src="gaziresim/yatay.gif" width="495" height="1"></td>
          </tr>
          <tr>
            <td width="116" align="left" class="yazi">&nbsp;</td>
            <td colspan="4" class="yazi"><div align="right"></div></td>
          </tr>
          <tr>
            <td height="5" colspan="5" class="yazi">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="5"><div align="left"><span class="style4 style10"><%=yorum("mesaj")%></span></div></td>
          </tr>

          <tr>
            <td colspan="5"><%=yorum("tarih")%></td>
          </tr>
          <tr>
            <td colspan="2" class="yazi style5">&nbsp;</td>
            <td width="87"><a href="mesajonay.asp?id=<%=yorum("id")%>">Onayla</a></td>

            
            <td width="100"><a href="tirafdegistir.asp?id=<%=yorum("id")%>">Değiştir</a></td>

            
            
            

            <td width="518"><a href="mesajsil.asp?id=<%=yorum("id")%>">Sil</a></td>

            
          </tr>
       
          <tr>
            <td height="2" colspan="5"><img src="gaziresim/yatay.gif" width="495" height="1"></td>
            </tr>
        </table>
        <%
		yorum.movenext
loop
		%>
        
        
      
      
      
      
      
      
      
<%
		set kullanici=server.createobject("adodb.recordset")
		sql="select * from kullanici order by id desc"
		kullanici.open sql,baglanti,1,3	
				do while not kullanici.eof
%>
		<table border="1" width="875" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="5"><div align="left">KULLANİCİLAR</div></td>
            </tr>
			
			
			
			
          <tr>
            <td colspan="5"><img src="gaziresim/yatay.gif" width="495" height="1"></td>
          </tr>
          <tr>
            <td width="141" align="left" class="yazi"><strong><%=kullanici("kuladi")%></strong><strong> - <%=kullanici("ek")%> - <strong><font color="#CC0000"><%=kullanici("fakulte")%></font> </strong></strong></td>
            <td colspan="4" class="yazi"><div align="right"></div></td>
          </tr>
          <tr>
            <td height="5" colspan="5" class="yazi">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="5"><div align="left"><span class="style4 style10"><%=kullanici("email")%></span></div></td>
          </tr>
          <tr>
            <td colspan="2" class="yazi style5">&nbsp;</td>

            
            <td width="122">Değiştir</td>

            
            
            

            <td width="610">Sil</td>

            
          </tr>
       
          <tr>
            <td height="2" colspan="5"><img src="gaziresim/yatay.gif" width="495" height="1"></td>
            </tr>
        </table>
        <%
		kullanici.movenext
loop
		%>
        
        
        
  
</body>

</html>
