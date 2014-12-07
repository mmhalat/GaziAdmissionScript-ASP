<!--#include file="gazidosya/db.asp"-->
<!--#include file="replace.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Tiraf G&ouml;steriliyor - Gazitiraf.net</title>

    <link href="gazidosya/uni-form.css" media="screen" rel="stylesheet"/>
    <link href="gazidosya/demo.css" media="screen" rel="stylesheet"/>
    <link href="gazidosya/default.uni-form.css" id="formStyle" title="Default Style" media="screen" rel="stylesheet"/>

       <!--#include file="gazidosya/header.asp"-->
  <tr>

    <td height="630" colspan="3" align="center" valign="top">
    <table width="750" height="1148" border="0" cellpadding="0" cellspacing="0" bgcolor="#efefef">
      <tr>
        <td width="7" height="574" rowspan="3" background="gaziresim/cizgi.gif">&nbsp;		  </td>
        <td width="505" valign="top">
		
		  <table width="512" height="19" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><span class="yazi style3"><strong>T&uuml;m Zamanlar</strong></span> <img src="gaziresim/ok.gif" width="13" height="9" /><span class="yazi"> Tüm Fakülteler Gösteriliyor. </span></td>
            </tr>
          </table>
		  <%
		id=temizle(request.QueryString("id"))
		set tiraf=server.createobject("adodb.recordset")
		sql="select * from tiraf where onay=1 and id="&id&""
		tiraf.open sql,baglanti,1,3	
		


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
              <div align="right" class="style6"></div></td>
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
            <td colspan="6" class="yazi style5"><img src="gaziresim/yatay.gif" width="495" height="1" /></td>
            </tr>
       
          <tr>
            <td height="51" colspan="6">
         <%
		set yorum=server.createobject("adodb.recordset")
		sql="select * from yorum where onay=1 and tirafid="&id&" order by id desc"
		yorum.open sql,baglanti,1,3	
		do while not yorum.eof
		%>
            
            <form action="" class="uniForm">

            <div id="okMsg">
            <table border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="24"><strong><%=yorum("gonderen")%> Diyorki;</strong></td>
              <td height="24" colspan="2"><%=yorum("begen")%> Kiþi Beðendi.</td>
              </tr>
                <tr>
                  <td height="12" colspan="3"><img src="gaziresim/yatay2.gif" /></td>
                </tr>
                <tr>
                  <td height="3" colspan="3">&nbsp;&nbsp;&nbsp;<%=yorum("yorum")%></td>
                </tr>
                <tr>
                  <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                  <td width="347" height="7" class="style6">&nbsp;</td>
             <%ip = Request.ServerVariables("REMOTE_ADDR" )
			Set rsip = Server.CreateObject("ADODB.Recordset") 
			sql = "Select * from yorumip Where ip = '" & ip & "' and yorumipid = " & yorum("id") & ""
			rsip.Open sql, baglanti, 1, 3 
            if not rsip.eof then%>

                 
               <td width="89" align="right" class="style18">Beðendin</td> 
               <%else%>
                  <td width="90" align="right"><a href="yorumbegen.asp?id=<%=yorum("id")%>" class="style6">Beðendim Bunu</a></td>
                  <%end if

				  %>
                  
                  
                </tr>
            </table>
          
                  </div>  
            </form>
<%
yorum.movenext
loop
baglanti.close%>

      
<%if session("giris")="tamam" then%>
            <form action="yorumkaydet.asp" class="uniForm" method="post">
            <input type="hidden" name="gonderilecekid" value="<%=id%>" />
      <fieldset>
        <div class="ctrlHolder">
          <label for=""><em>*</em> Mesajýn:</label>
          <textarea name="yorum" cols="10" rows="10"></textarea>
      </div>
      </fieldset>
      
      <fieldset class="inlineLabels">
      </fieldset>
      <div id="errorMsg">
        <h3>Göndermeden Önce;</h3>
          <ol>
            <li>Kullanýcýlar ile karþýlýklý anlýk yorumlaþabilmeniz i&ccedil;in þimdilik yorum kýsmýna onay koymadýk, k&ouml;t&uuml;ye kullaným olduðu takdirde onay sistemine ge&ccedil;ebiliriz, belli olmaz.</li>
          </ol>
      </div>

      <div class="buttonHolder">
        <button type="submit" class="primaryAction">Gönder Bakalým</button>
      </div>

  </form>
  <%else
  end if%>




          
            </td>
            </tr>
        </table>
		
		</td>
        <td width="217" rowspan="2" valign="top">
		
		
		
		
		<div class="yanmenu">
		  <table width="190" height="464" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
              <td width="8" rowspan="23"><img src="gaziresim/iccizgi.gif"></td>
              <td valign="top"><img src="gaziresim/filtre.gif" width="217" height="25"></td>
            </tr>
            <tr>
              <td valign="top"><div align="center" class="yazi"><strong>Fakülte Seç :</strong>
              
                <FORM action="tumfakultesec.asp" method="post">
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
              <td valign="top"><div align="center" class="yazi">
                <div align="left"><img src="gaziresim/ok.gif" width="13" height="9"><a href="tumenpopuler.asp">En Popülerler </a></div>
              </div></td>
            </tr>
            <tr>
              <td valign="top"><div align="center" class="yazi">
                <div align="left"><img src="gaziresim/ok.gif" width="13" height="9"><a href="tumeneski.asp">En Eskiler </a></div>
              </div></td>
            </tr>
            <tr>
              <td height="15" valign="top"><div align="center" class="yazi">
                <div align="left"><img src="gaziresim/ok.gif" width="13" height="9"><a href="tumenpopusuz.asp">En Popüsüzler </a></div>
              </div></td>
            </tr>
            <tr>
              <td height="15" valign="top"><div align="center" class="yazi">
                <div align="left"><img src="gaziresim/ok.gif" width="13" height="9"><a href="tumencokyorum.asp">En Çok Yorumlananlar </a></div>
              </div></td>
            </tr>
            <tr>
              <td valign="top"><% IF Not session("giris")="tamam" Then %>
			  
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
              <td height="2" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="3" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="5" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" valign="top">&nbsp;</td>
            </tr>
            <tr>
              <td height="10" valign="top">&nbsp;</td>
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
    <td colspan="3" align="left" valign="top" bgcolor="#EFEFEF"><div align="center" class="style6">Bir Gazi Ýþletme Öðrencisi Projesidir :)<br />e-mail:binfikir@yandex.com<br />
    GaziTÝRAF © 2013
</div></td>
  </tr>
</table>
<map name="Map"><area shape="rect" coords="34,21,105,43" href="uyeol.asp" target="_self"><area shape="rect" coords="115,21,194,57" href="uyegiris.asp" target="_self">
</map>