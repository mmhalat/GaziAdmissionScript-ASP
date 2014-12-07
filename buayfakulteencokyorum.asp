<!--#include file="gazidosya/db.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bu Ay Fak&uuml;lteye &Ouml;zel En &Ccedil;ok Yorumlananlar - Gazitiraf.net</title>
   <!--#include file="gazidosya/header.asp"-->
  <tr>

    <td height="630" colspan="3" align="center" valign="top"><table width="750" height="1148" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#efefef">
      <tr>
        <td width="7" height="574" rowspan="3" background="gaziresim/cizgi.gif">&nbsp;		  </td>
        <td width="505" valign="top">
		
		  <table width="512" height="19" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><span class="yazi style3"><strong>Bu Ay En &Ccedil;ok Yorumlananlar</strong></span> <img src="gaziresim/ok.gif" width="13" height="9" /><span class="yazi"> <font color="#CC0000">
			  <%=request.form("fakulte")%> Fak&uuml;ltesi Gösteriliyor.</font></span>
              
              </td>
            </tr>
          </table>
		  <%
		fakulte = request.form("fakulte")
		set tiraf=server.createobject("adodb.recordset")
		sql="SELECT t.id, t.gonderen, t.ek, t.fakulte, t.tarih, t.baslik, t.icerik, t.populasyon, t.girenid, IIF(ISNULL(ty.yorumsayisi), 0, ty.yorumsayisi) FROM tiraf AS t LEFT JOIN (SELECT tirafid , COUNT(id) AS yorumsayisi FROM Yorum GROUP BY tirafid) AS ty ON t.id=ty.tirafid where tarih >= DateSerial(Year(Date()), Month(Date()), 1) and tarih <= DateSerial(Year(Date()), Month(Date()) + 1, 0) and fakulte like '%"&fakulte&"%' ORDER BY ty.yorumsayisi DESC"
		tiraf.open sql,baglanti,1,3

		Toplam = tiraf.RecordCount
		If Toplam = 0 Then
		intSayfaSayisi = 0
		Response.Write "Tabloda Kayýt Yok"
		Else
		intGecerliSayfa = Request.Querystring("sayfa")
		If intGecerliSayfa = "" OR IsNumeric(intGecerliSayfa) = False Then intGecerliSayfa = 1
		tiraf.PageSize =15
		intSayfaSayisi= tiraf.PageCount
		tiraf.AbsolutePage =intGecerliSayfa
		For m = 1 to 15
		If tiraf.Eof Then Exit For
				id=tiraf("id")
		set say = server.createobject("adodb.recordset")
		sql="Select * from yorum where onay=1 and tirafid=" & tiraf("id") & ""
		say.open sql,baglanti,1,3
		%>
		<table width="495" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="6"><div align="left"></div></td>
            </tr>
			
			
			
			
          <tr>
            <td colspan="6"><img src="gaziresim/yatay.gif" width="495" height="1"></td>
          </tr>
          <tr>
            <td colspan="2" align="left" class="yazi"><strong><%=tiraf("gonderen")%></strong><strong> - <%=tiraf("ek")%> - <strong><font color="#CC0000"><%=tiraf("fakulte")%></font> </strong></strong></td>
            <td colspan="4" class="yazi"><div align="right"><%=tiraf("tarih")%></div></td>
          </tr>
          <tr>
            <td height="5" colspan="6" class="yazi">&nbsp;</td>
            </tr>
          <tr>
            <td colspan="6"><div align="left"><span class="style4 style10"><%=tiraf("baslik")%></span></div></td>
          </tr>
          <tr>
            <td colspan="6"><div align="left" class="yazi"><%=tiraf("icerik")%></div></td>
          </tr>
          <tr>
            <td colspan="6">&nbsp;</td>
          </tr>
      <tr>
            <td width="64" class="yazi style5">Popülasyon: </td>
            <td width="143" align="left"><span class="yazi style5"><font size="2"><%=tiraf("populasyon")%></font></span></td>
            <td width="101">
              <div align="right" class="style6"><img src="gaziresim/yorum.gif" align="bottom" /><a href="tirafgoster.asp?id=<%=tiraf("id")%>"><font size="2">
			  <%
			  =say.recordcount
			  %></font> Yorum</a></div></td>
            <%
			ip = Request.ServerVariables("REMOTE_ADDR" )
			Set rsip = Server.CreateObject("ADODB.Recordset") 
			sql = "Select * from populeip Where ip = '" & ip & "' and tirafipid = " & tiraf("id") & ""
			rsip.Open sql, baglanti, 1, 3 
            if rsip.eof then
			%>
            <td width="41">
            <a href="popule.asp?id=<%=tiraf("id")%>">
            <img src="gaziresim/popule.gif" width="83" height="23" border="0">
            </a>
            </td>
            <%else%>
            
            <td width="42">
            <img src="gaziresim/populer.gif" width="83" height="23" />
            </td>
            <%end if
			rsip.close:set rsip=nothing%>
            
            
            
            <%if not tiraf("gonderen") = "Anonim" then%>
            <td width="104">
            <a href="itirafciyayaz.asp?id=<%=tiraf("girenid")%>">
            <img src="gaziresim/itirafci.gif" border="0">
            </a>
            </td>
            <%else%>
            <%end if%>
            
          </tr>
       
          <tr>
            <td height="2" colspan="6"><img src="gaziresim/yatay.gif" width="495" height="1"></td>
            </tr>
        </table>
		
		<div class="sayfalama">
		  <% 
		
tiraf.Movenext
Next
End If
tiraf.Close
Set tiraf = Nothing
baglanti.Close
Set baglanti = Nothing	
Aralik = 2
intSayfaAltSiniri = intGecerliSayfa - Aralik
intSayfaUstSiniri = intGecerliSayfa + Aralik
intSolGrupSayisi = 1 + Aralik
intSagAltSinir = intSayfaSayisi - Aralik
If (intSayfaUstSiniri >intSayfaSayisi) Then
intSayfaAltSiniri = intSayfaSayisi - (2 * Aralik)
intSayfaUstSiniri = intSayfaSayisi
End If
If (intSayfaAltSiniri <= 0) Then
intSayfaAltSiniri = 1
intSayfaUstSiniri = intSayfaAltSiniri + (2 * Aralik)
If intSayfaUstSiniri >= intSayfaSayisi Then intSayfaUstSiniri = intSayfaSayisi
End If
If intSolGrupSayisi >= intSayfaAltSiniri Then intSolGrupSayisi = intSayfaAltSiniri - 1
If intSagAltSinir <= intSayfaUstSiniri Then intSagAltSinir = intSayfaUstSiniri + 1 
%>
<%
If intGecerliSayfa >1 Then %>
<a href="?sayfa=1" title="Ýlk Sayfa">[««]</a>
<a href="?sayfa=<%=intGecerliSayfa-1%>" title="Önceki Sayfa">[«]</a><%
End If
%>
<%
For i = 1 to intSolGrupSayisi
If CInt(i) = (intGecerliSayfa) Then
Response.Write " <b>"
Else %>
<a href="?sayfa=<%=i%>" title="<%=i%>. Sayfa">
<%
End If
Response.Write i &".</a></b>"
Next
%>
<%
If (intSayfaAltSiniri - intSolGrupSayisi >1 ) Then Response.Write "<b>. . .</b>"
%>
<%
For i = intSayfaAltSiniri to intSayfaUstSiniri
If CInt(i) = CInt(intGecerliSayfa) Then
Response.Write " <b>"
Else %>
<a href="?sayfa=<%=i%>" title="<%=i%>. Sayfa"><%
End If
Response.Write i &".</a></b>"
Next
%>
<%
If (intSagAltSinir - intSayfaUstSiniri >1) Then Response.Write "<b>. . .</b>"
%>
<%
For i = intSagAltSinir to intSayfaSayisi
If CInt(i) = CInt(intGecerliSayfa) Then
Response.Write " <b>"
Else %>
<a href="?sayfa=<%=i%>" title="<%=i%>. Sayfa"><%
End If
Response.Write i &".</a></b>"
Next
%>
<%
If CInt(intGecerliSayfa) <>CInt(intSayfaSayisi) Then %>
<a href="?sayfa=<%=intGecerliSayfa+1%>" title="Sonraki Sayfa">[»]</a>
<a href="?sayfa=<%=intSayfaSayisi%>" title="Son Sayfa">[»»]</a><%
End If
%>

		  
		  </td>
        <td width="217" rowspan="2" valign="top">
		
		
		
		
		<div class="yanmenu">
		  <table width="190" height="464" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
              <td width="1" rowspan="23"><img src="gaziresim/iccizgi.gif"></td>
              <td colspan="2" valign="top"><img src="gaziresim/filtre.gif" width="217" height="25"></td>
            </tr>
            <tr>
              <td colspan="2" valign="top"><div align="center" class="yazi"><strong>Fakülte Seç :</strong>
                 <FORM action="buayfakultesec.asp" method="post">
                <select name="fakulte" onchange="this.form.submit();">
                <option selected="selected">Fakülteni Seç Gazili!!</option>
                  <option value="ÝÝBF">IIBF</option>
                  <option value="EÐÝTÝM">EÐÝTÝM</option>
                  <option value="ÝLETÝÞÝM">ILETÝÞÝM</option>
                  <option value="HUKUK">HUKUK</option>
                  <option value="FEN">FEN</option>
                  <option value="EDEBÝYAT">EDEBÝYAT</option>
                  <option value="DÝÞ HEKÝMLÝÐÝ">DÝÞ HEKÝMLÝÐÝ</option>
                  <option value="ECZACILIK">ECZACILIK</option>
                  <option value="MÜHENDÝSLÝK">MÜHENDÝSLÝK</option>
                  <option value="MÝMARLIK">MÝMARLIK</option>
                  <option value="ENDÜSTRÝYEL SANATLAR">ENDÜSTRÝYEL SANATLAR</option>
                  <option value="GAZÝ EÐÝTÝM">GAZÝ EÐÝTÝM</option>
                  <option value="GÜZEL SANATLAR">GÜZEL SANATLAR</option>
                  <option value="SAÐLIK BÝLÝMLER">SAÐLIK BÝLÝMLER</option>
                  <option value="TIP">TIP</option>
                  <option value="SANAT ve TASARIM">SANAT ve TASARIM</option>
                  <option value="MESLEKÝ EÐÝTÝM">MESLEKÝ EÐÝTÝM</option>
                  <option value="TEKNÝK EÐÝTÝM">TEKNÝK EÐÝTÝM</option>
                  <option value="TEKNOLOJÝ">TEKNOLOJÝ</option>
                  <option value="TÝCARET ve TURÝZM">TÝCARET ve TURÝZM</option>
                  <option value="TURÝZM FAKÜLTESÝ">TURÝZM FAKÜLTESÝ</option>
                  <option value="KONSERVATUVAR">KONSERVATUVAR</option>
                  <option value="BESYÖ">BESYÖ</option>
                  <option value="YDMYO">YDMYO</option>
                  <option value="DÝÐER">DÝÐER</option>                 
                </select>
                </FORM>
              </div>                  </td>
            </tr>
            <tr>
              <td width="15" valign="top"><img src="gaziresim/ok.gif" width="13" height="9"></td>
              <td width="202" valign="top"><div align="center" class="yazi">
                <div align="left">               
<form id="fakulte" method="post" action="buayfakulteenpopuler.asp" name="fakulte">
<input type="hidden" name="fakulte" value="<%=request.form("fakulte")%>" />
<a href="javascript:document.fakulte.submit()">
En Populerler</a>  
</form>            
                </div>
              </div></td>
            </tr>
            <tr>
              <td valign="top"><img src="gaziresim/ok.gif" width="13" height="9"></td>
              <td valign="top"><div align="center" class="yazi">
                <div align="left">
                
                <form id="fakulte" method="post" action="buayfakulteeneskiler.asp" name="eneski">
                <input type="hidden" name="fakulte" value="<%=request.form("fakulte")%>" />
                <a href="javascript:document.eneski.submit()">
                En Eskiler</a>  
                </form>

 </div>
              </div></td>
            </tr>
            <tr>
              <td height="15" valign="top"><img src="gaziresim/ok.gif" width="13" height="9"></td>
              <td height="15" valign="top"><div align="center" class="yazi">
                <div align="left">
                
                <form id="fakulte" method="post" action="buayfakulteenpopusuz.asp" name="enpopusuz">
                <input type="hidden" name="fakulte" value="<%=request.form("fakulte")%>" />
                <a href="javascript:document.enpopusuz.submit()">
                En Popusuzler</a>  
                </form>

</div>
              </div></td>
            </tr>
            <tr>
              <td height="15" valign="top"><img src="gaziresim/ok.gif" width="13" height="9"></td>
              <td height="15" valign="top"><div align="center" class="yazi">
                <div align="left">
                
                <form id="fakulte" method="post" action="buayfakulteencokyorum.asp" name="encokyorum">
                <input type="hidden" name="fakulte" value="<%=request.form("fakulte")%>" />
                <a href="javascript:document.encokyorum.submit()">
                En Çok Yorumlananlar</a>  
                </form>

 </div>
              </div></td>
            </tr>
            <tr>
              <td colspan="2" valign="top"><% IF Not session("giris")="tamam" Then %>
			  
			  <form action="kulgiris.asp" method="post" name="kulgiris">
                <table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="215" class="style4"><div align="center"><img src="gaziresim/giris.gif" /></div></td>
                    </tr>
                  <tr>
                    <td height="16"><div align="center" class="style4">Kullanýcý Adý: </div></td>
                    </tr>
                  <tr>
                    <td class="style4"><div align="center">
                      <input name="kuladi" type="text" id="kuladi" size="20" maxlength="10" />
                    </div></td>
                    </tr>
                  <tr>
                    <td class="style4"><div align="center">Þifre : </div></td>
                    </tr>
                  <tr>
                    <td>
                     
                        <div align="center">
                          <input name="sifre" type="password" id="sifre" size="20" maxlength="10" />
                        </div></td>
                    </tr>
                  <tr>
                    <td><div align="center">
                      <input name="giris" type="submit" id="giris" value="Giriþ YAP!" />
                    </div></td>
                  </tr>
                </table>
				</form>
<%else%>
				
				             <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="216" height="9" colspan="2"><img src="gaziresim/panel.gif" width="211" height="25" /></td>
                    </tr>
                  <tr>
                    <td height="10" colspan="2"><div align="center"><strong><span class="style21">Hoþgeldin</span>,</strong> <span class="style18"><%=session("kuladi")%></span></div></td>
                  </tr>
                  
                  <tr>
                    <td colspan="2"><img src="gaziresim/ok.gif" width="13" height="9" /><a href="tiraflarim.asp" class="style6 style16">Tiraflarým</a></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="gaziresim/ok.gif" width="13" height="9" /><a href="ozel.asp" class="style6 style16">Özelden Gelenler </a></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="gaziresim/ok.gif" width="13" height="9" /><a href="ayar.asp" class="style6 style16">Ayarlar</a></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="gaziresim/ok.gif" width="13" height="9" /><a href="cik.asp" class="style6 style16">Çýkýþ</a></td>
                  </tr>
                </table>
				<%end if%>				</td>
            </tr>
            
            <tr>
              <td height="2" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="3" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" colspan="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" colspan="2" valign="top">&nbsp;</td>
            </tr>
          </table>
			</div>		</td>
        <td width="7" rowspan="3" background="gaziresim/cizgi.gif">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td width="505" valign="top">&nbsp;</td>
        <td valign="top">&nbsp;</td>
      </tr>
      
      

    </table></td>
  </tr>
  <tr>
    <td colspan="3" align="left" valign="top" bgcolor="#EFEFEF"><div align="center" class="style6">Bir Gazi Ýþletme Öðrencisi Projesidir :) 
    <br />
    GaziTÝRAF © 2013</div></td>
  </tr>
</table>
<map name="Map"><area shape="rect" coords="34,21,105,43" href="uyeol.asp" target="_self"><area shape="rect" coords="115,21,194,57" href="uyegiris.asp" target="_self">
</map>