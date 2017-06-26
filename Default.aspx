<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Boot Camp - Welcome page</title>
    <link href="css/Default.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" language="javascript" src="js/JQuery.js"></script> 
   
</head>
<body style="display:none">
    <form id="form1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server" />
      <div>
     <h1>JQuery Boot Camp</h1>
        <hr />
   <input type="button" id="Next" value="Next" style="float:right" />
  
        </div>
        <div id="Sample1" >
            <span>
            <span style="font-weight: bold;" zid="59">
            <span style="font-size: 10pt">&lt;div id='Sample'&gt;</span>
                <br />
                <span style="text-decoration: underline">
                Basic Of JQuery</span></span><br
                style="font-family: verdana" zid="1" />
            </span>
            <span zid="119"></span><br style="font-family: verdana"
                zid="2" />
            <span zid="120">*&nbsp; Introduction to jQuery</span><br
                style="font-family: verdana" zid="3" />
            <span zid="121">&nbsp; &nbsp; &nbsp; &nbsp; o jQuery philosophies</span><br
                style="font-family: verdana" zid="4" />
            <span zid="122">&nbsp; &nbsp; &nbsp; &nbsp; o Fundamentals
                of jQuery</span><br style="font-family: verdana" zid="5" />
            <span zid="123">&nbsp; &nbsp; &nbsp; &nbsp; o Reasons to
                use (and not use) jQuery</span><br style="font-family: verdana" zid="6" />
            <span zid="124">&nbsp; &nbsp; &nbsp; &nbsp; o Downloading
                &amp; Installing jQuery</span><br style="font-family: verdana" zid="7" />
            <span zid="125">&nbsp; &nbsp; &nbsp; &nbsp; o Understanding
                the jQuery wrapper &amp; its uses</span><br style="font-family: verdana" zid="8" />
            <span zid="126">&nbsp; &nbsp; &nbsp; &nbsp; o DOM &amp;
                CSS manipulation with jQuery</span>
            <br />
            <br />
        <span style="font-size: 10pt;font-weight: bold;">&lt;/div&gt;</span><br />
        </div>
        <br />
        <table style="width:98%;border:inset 1px gray">
        
            <tr>
                <td style="width: 20%">
                    <strong>Task</strong></td>
                <td style="width: 70%">
                    <strong>Code</strong></td>
                <td style="width: 10%">
                    <strong>Run</strong></td>
            </tr>
            
            <tr>
                <td >
                    <span style="font-size: 10pt">
                    Show/Hide</span></td>
                <td>
                    <span class="codeblock" > &nbsp;onclick="$('#Sample1').hide(1000).show(1000);"&nbsp;</span></td>
                <td >
         <input  onclick="$('#Sample1').hide(1000).show(1000);" value="Run code" type="button" /></td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: 10pt">
                    Fading</span></td>
                <td>
                    <span class="codeblock" >
                        &nbsp;   
        onclick="$('#Sample1').fadeOut(2000).fadeIn(2000);"&nbsp;</span></td>
                <td>
         <input  onclick="$('#Sample1').fadeOut(2000).fadeIn(2000);" value="Run code" type="button" /></td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: 10pt">
                    Toggle</span></td>
                <td >
                    <span class="codeblock" >
                        &nbsp;   
        onclick="$('#Sample1').toggle('slow');"&nbsp;</span></td>
                <td >
         <input  onclick="$('#Sample1').toggle('slow');" value="Run code" type="button" /></td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: 10pt">
                    Sliding</span></td>
                <td >
                    <span class="codeblock" >
                        &nbsp;   
        onclick="$('#Sample1').slideToggle('slow');"&nbsp;</span></td>
                <td >
         <input  onclick="$('#Sample1').slideToggle('slow');" value="Run code" type="button" /></td>
            </tr>
            <tr>
                <td >
                    <span style="font-size: 10pt">
                    Animation</span></td>
                <td  >
                    <span class="codeblock" >
                        &nbsp;
         onclick="$('#Sample1').animate({fontSize: '10px', width: '97%',  borderWidth:'5px',padding: '10px'}, 1000);"&nbsp;</span></td>
                <td >
         <input  onclick="$('#Sample1').animate({fontSize: '10px', width: '97%',  borderWidth:'5px',padding: '10px'}, 1000);" value="Run code" type="button" /></td>
            </tr>
            
            <tr>
                <td>
                    <span style="font-size: 10pt">Alternate Rows</span></td>
                <td ><span class="codeblock" >
                        &nbsp;
         onclick="$('table tr:nth-child(even)').addClass('EvenRow');"&nbsp;</span>
                </td>
                <td >
                    <input id="Button1" type="button" onclick="$('table tr:nth-child(even)').addClass('EvenRow');" value="Run Code" /></td>
            </tr>
            <tr>
                <td><span style="font-size: 10pt">Head Rows</span>
                </td>
                <td >
               <span class="codeblock" >
                        &nbsp;
         onclick="$('table tr:nth-child(1)').addClass('HeadRow');"&nbsp;</span> 
                </td>
                <td >
               <input id="Button2" type="button" onclick="$('table tr:nth-child(1)').addClass('HeadRow');" value="Run Code" /> 
                </td>
            </tr>
            <tr>
                <td>
                <span style="font-size: 10pt">
                Add Cell Border</span>
                </td>
                <td >
               <span class="codeblock" >
                        &nbsp;  
               onclick="$('td').css('border' , 'inset 1px gray');" &nbsp;</span> 
                </td>
                <td >
               <input id="Button3" type="button" onclick="$('td').css('border' , 'inset 1px gray');" value="Run Code" />  
                </td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: 10pt">Clone Objects</span></td>
                <td >
                     <span class="codeblock" >
                        &nbsp;  
onclick="$('#Sample1').clone().insertAfter('#Sample1');"&nbsp;</span> 
                </td>
                <td ><input id="Button4" type="button" onclick="$('#Sample1').clone().insertAfter('#Sample1');" value="Run Code" /></td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: 10pt">Show Code</span></td>
                <td >
               <span class="codeblock">&nbsp;onclick="$('.codeblock').animate( { width: '98%' }, 3000 )" &nbsp;</span> 
                </td>
                <td ><input  onclick="$('.codeblock').animate( { width: '98%' }, 3000 )" value="Run Code" type="button" /></td>
            </tr>
        </table>
         
         
    </form>
</body>
<script type="text/javascript" language="javascript">

    $(function() {
    $('body').fadeIn(3000);
        $('#Next').click(function() {
            $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
            setTimeout("window.location = 'Index.aspx'", 3000);
        });
    });



</script>

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-17244067-4', 'darshanmarathe.com');
        ga('send', 'pageview');

</script>
</html>
