<!--#include file="replace.asp"-->
<!--#include file="gazidosya/db.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Üye Ol - Gazitiraf.net</title>
<META http-equiv=content-type content=text/html;charset=windows-1254>
<META http-equiv=content-type content=text/html;charset=x-mac-turkish>
<meta http-equiv="Content-Type" content="text/html; charset=utf-4" />
	<meta name="description" content="gazi üniversitesi itiraf sayfası">
	<meta name="keywords" content="gazi üniversite itiraf sozluk sayfa eğlence yorum tiraf itiraf et eğlence gazi edu tr öğrenci gazi">
	<meta name="author" content="Gazi ÜNİVERSİTESİ İşletme Öğrencisi">

	<meta name="content-language" content="tr">
	<meta name="robots" content="index, follow, all">
	<meta http-equiv="window-target" content="_top">
	<link href="gazidosya/style.css" rel="stylesheet" type="text/css">
    
    
     <link href="gazidosya/uni-form.css" media="screen" rel="stylesheet"/>
    <link href="gazidosya/demo.css" media="screen" rel="stylesheet"/>
    <link href="gazidosya/default.uni-form.css" id="formStyle" title="Default Style" media="screen" rel="stylesheet"/>

   
    
    <script type="text/javascript" src="gazidosya/jquery.min.js"></script>
    <script type="text/javascript" src="gazidosya/uni-form.jquery.js"></script>
    <script type="text/javascript">
      $(function(){
        
        // init Uni-Form
        $('form.uniForm').uniform();
        
        // specific for this page
        $(".browse a").click(function(e) {
          e.preventDefault();
          $("#formStyle").attr("href",$(this).attr('rel'));
          return false;
        });
      });
    </script>

    <script type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
    <style type="text/css">
<!--
.style16 {font-size: 13px}
.style18 {
	font-size: 14px;
	color: #FF0000;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.style21 {
font-size:13px;
font-family: Arial, Helvetica, sans-serif;

}
.yanmenu table tr td .yazi strong {
	font-size: 14px;
}
-->
    </style>
</head><body onLoad="MM_preloadImages('gaziresim/menu1-.gif','gaziresim/menu2-.gif','gaziresim/menu3-.gif','gaziresim/menu4-.gif','gaziresim/menu5-.gif','gaziresim/menu7-.gif')">
	<table width="100%" height="714" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#F4F4F0" background="gaziresim/gazilogo.gif">
  <tr>
    <td width="%100" height="40" colspan="3" valign="top">
<div class="menu">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="gaziresim/ustmenuarkaplan.gif">
  <tr>
    <td>
    <a href="index.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Anasayfa','','gaziresim/menu1-.gif',1)">
    <img src="gaziresim/menu1.gif" alt="Anasayfa" name="Anasayfa" height="40" border="0" align="middle"></a></td>
    <td>
    <a href="bugun.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Bugun','','gaziresim/menu2-.gif',1)">
    <img src="gaziresim/MENU2.gif" alt="Bugün Gönderilenler" name="Bugun" height="40" border="0" align="middle"></a></td>
    <td>
    <a href="buhafta.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Buhafta','','gaziresim/menu3-.gif',1)">
    <img src="gaziresim/menu3.gif" alt="Bu Hafta Gönderilenler" name="Buhafta"  height="40" border="0" align="middle"></a></td>
    <td>
    <a href="buay.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('buay','','gaziresim/menu4-.gif',1)">
    <img src="gaziresim/menu4.gif" alt="Bu Ay Gönderilenler" name="buay" height="40" border="0" align="middle"></a></td>
    <td>
    <a href="buyil.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('buyil','','gaziresim/menu5-.gif',1)">
    <img src="gaziresim/menu5.gif" alt="Bu Yıl Gönderilenler" name="buyil" height="40" border="0" align="middle"></a></td>
    <td>
    <center>
    <img src="gaziresim/menu6.gif" height="40" border="0" align="middle" usemap="#Map">
    </center>
    </td>
    <td>
    <a href="tirafet.asp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('itirafet','','gaziresim/menu7-.gif',1)">
    <img src="gaziresim/menu7.gif" alt="İtiraf Et!" name="itirafet" height="40" border="0" align="right">
    </a>
    </td>
    </tr>
</table>
</div>

</td>
  </tr>
  <tr>

    <td height="630" colspan="3" align="center" valign="top">
    <table width="750" height="1148" border="0" cellpadding="0" cellspacing="0" bgcolor="#efefef">
      <tr>
        <td width="7" height="574" rowspan="3" background="gaziresim/cizgi.gif">&nbsp;		  </td>
        <td width="505" valign="top">
		
		  <table width="512" height="19" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td><span class="yazi style3"><strong>D&uuml;zenleme Ekranı</strong></span></td>
            </tr>
          </table>
		<table width="495" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="2" colspan="6"><img src="gaziresim/yatay.gif" /></td>
            </tr>
			<%
		gelenid=session("id")
		set tiraf=server.createobject("adodb.recordset")
		sql="select * from kullanici where id="&gelenid&""
		tiraf.open sql,baglanti,1,3
			%>
			
			
			
          <tr>
            <td height="126" colspan="6">
           
                  <form action="ayarkaydet.asp" class="uniForm" method="post">
              <div id="errorMsg">
                <h3>G&ouml;ndermeden &Ouml;nce;</h3>
          <ol>
            <li>Kullanıcı adı, Fakulte, Cinsiyet gibi bilgileri değiştirebilmen i&ccedil;in binfikir@yandex.com adresine mail atmalısın, sana gerekli d&ouml;n&uuml;ş&uuml; yapacağız.</li>
          </ol>
    </div>
      
      
            
      <fieldset>
      <div class="ctrlHolder">
        <label for=""><em>*</em> Şifren</label>
          <input name="sifre" type="password" id="baslik" size="66" value="<%=tiraf("sifre")%>"/>
  </div>
    <div class="ctrlHolder">
          <label for=""><em>*</em> E-Mail</label>
          <input name="email" size="66" value="<%=tiraf("email")%>"/>
    </div>
    <div id="okMsg">
      <p>
          Kontrol Ettim, Onaylıyorum.</p>

    </div>

                      <div class="buttonHolder">
        <button type="submit" class="primaryAction">Düzenle</button>
      </div>



    </form>
           <%
		   tiraf.close : set tiraf = nothing
		   baglanti.close : set baglanti = nothing
		   %> 
            
            </td>
          </tr>
          <tr>
            <td colspan="6" align="left" class="yazi"><div align="right"></div>              <div align="left"></div>              <div align="left" class="yazi"></div>
              <div align="right" class="style6"></div></td>
          </tr>
          <tr>
            <td height="18" colspan="6">&nbsp;</td>
          </tr>
        </table></td>
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
                  <option value="İİBF">IIBF</option>
                  <option value="EĞİTİM">EĞİTİM</option>
                  <option value="İLETİŞİM">ILETİŞİM</option>
                  <option value="HUKUK">HUKUK</option>
                  <option value="FEN">FEN</option>
                  <option value="EDEBİYAT">EDEBİYAT</option>
                  <option value="DİŞ HEKİMLİĞİ">DİŞ HEKİMLİĞİ</option>
                  <option value="ECZACILIK">ECZACILIK</option>
                  <option value="MÜHENDİSLİK">MÜHENDİSLİK</option>
                  <option value="MİMARLIK">MİMARLIK</option>
                  <option value="ENDÜSTRİYEL SANATLAR">ENDÜSTRİYEL SANATLAR</option>
                  <option value="GAZİ EĞİTİM">GAZİ EĞİTİM</option>
                  <option value="GÜZEL SANATLAR">GÜZEL SANATLAR</option>
                  <option value="SAĞLIK BİLİMLER">SAĞLIK BİLİMLER</option>
                  <option value="TIP">TIP</option>
                  <option value="SANAT ve TASARIM">SANAT ve TASARIM</option>
                  <option value="MESLEKİ EĞİTİM">MESLEKİ EĞİTİM</option>
                  <option value="TEKNİK EĞİTİM">TEKNİK EĞİTİM</option>
                  <option value="TEKNOLOJİ">TEKNOLOJİ</option>
                  <option value="TİCARET ve TURİZM">TİCARET ve TURİZM</option>
                  <option value="TURİZM FAKÜLTESİ">TURİZM FAKÜLTESİ</option>
                  <option value="KONSERVATUVAR">KONSERVATUVAR</option>
                  <option value="BESYÖ">BESYÖ</option>
                  <option value="YDMYO">YDMYO</option>
                  <option value="DİĞER">DİĞER</option>                 
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
              <td valign="top">
			  <% IF Not session("giris")="tamam" Then %>
			  
			  <form action="kulgiris.asp" method="post" name="kulgiris">
                <table border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="215" class="style4"><div align="center"><img src="gaziresim/giris.gif" /></div></td>
                    </tr>
                  <tr>
                    <td height="16"><div align="center" class="style4">Kullanıcı Adı: </div></td>
                    </tr>
                  <tr>
                    <td class="style4"><div align="center">
                      <input name="kuladi" type="text" id="kuladi" size="20" maxlength="10" />
                    </div></td>
                    </tr>
                  <tr>
                    <td class="style4"><div align="center">Şifre : </div></td>
                    </tr>
                  <tr>
                    <td>
                     
                        <div align="center">
                          <input name="sifre" type="password" id="sifre" size="20" maxlength="10" />
                        </div></td>
                    </tr>
                  <tr>
                    <td><div align="center">
                      <input name="giris" type="submit" id="giris" value="Giriş YAP!" />
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
                    <td height="10" colspan="2"><div align="center"><strong><span class="style21">Hoşgeldin</span>,</strong> <span class="style18"><%=session("kuladi")%></span></div></td>
                  </tr>

                  <tr>
                    <td colspan="2"><img src="gaziresim/ok.gif" width="13" height="9" /><a href="tiraflarim.asp" class="style6 style16">Tiraflarım</a></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="gaziresim/ok.gif" width="13" height="9" /><a href="ozel.asp" class="style6 style16">Özelden Gelenler </a></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="gaziresim/ok.gif" width="13" height="9" /><a href="ayar.asp" class="style6 style16">Ayarlar</a></td>
                  </tr>
                  <tr>
                    <td colspan="2"><img src="gaziresim/ok.gif" width="13" height="9" /><a href="cik.asp" class="style6 style16">Çıkış</a></td>
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
    <td colspan="3" align="left" valign="top" bgcolor="#EFEFEF"><div align="center" class="style6">Bir Gazi İşletme Öğrencisi Projesidir :)<br />e-mail:binfikir@yandex.com<br />
    GaziTİRAF © 2013
</div></td>
  </tr>
</table>
<map name="Map"><area shape="rect" coords="34,21,105,43" href="uyeol.asp" target="_self"><area shape="rect" coords="115,21,194,57" href="uyegiris.asp" target="_self">
</map>