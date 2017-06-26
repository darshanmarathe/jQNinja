<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventCompound.aspx.cs" Inherits="Events_EventCompound" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Compound Events</title>
    
         <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function() {
            $('body').show();
            $('#Next').click(function() {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'EventOtherFundas.aspx';", 1000);
            });
            $('#Switcher').toggle(function() {
                $('body').addClass('BackColor');
                $('#ShowToggle').jush();
            }, function() {
                $('body').removeClass('BackColor');
            });

            $('#SwitcherClass').click(function() {
                $('body').toggleClass('BackColor');
                $('#ShowToggleClass').jush(); ;
            });


            $('#HoverButton').hover(function() {
                $('body').addClass('BackColor');
                $('#ShowHover').jush();
            }, function() {
                $('body').removeClass('BackColor');
            });
        });
               
    </script>
    <style type="text/css">
    
    
    .BackColor
    {
    background-color:Lime;
    color:Red;	
    }
    
    .LeftAligned
    {
    	text-align:left;
    	font-family:Times New Roman;
    	font-size:medium;
    	margin:0 25% 0 25%
    }
    </style>

</head>
<body >
    <form id="form1" runat="server">
   
   <h1>Understanding Events with JQuery</h1>
        <h3>Compound events</h3>
        <hr />
        <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
        <input type="button"  id="Next"  value="Next" style="float:right" /><br />
        <br />
   <div style="width:100%;text-align:center;">
        <b>.toggle();</b><br /><br /><br />
        <input type="button" id="Switcher" value="Switch Color" />
<br /><br /><br />
<pre id="ShowToggle" class="LeftAligned">
&lt;script type="text/javascript" language="javascript"&gt;

            $('#Switcher').toggle(function() {
                $('body').addClass('BackColor');
                $('ShowToggle').jush();
                }, function() {
                $('body').removeClass('BackColor');
            });                  
&lt;/script&gt;      

</pre>  
<hr />
<br />
<b>.toggleClass();</b><br /><br /><br />
 <input type="button" id="SwitcherClass" value="Switch Color" />
<br /><br /><br />
<pre id="ShowToggleClass" class="LeftAligned">
&lt;script type="text/javascript" language="javascript"&gt;

           $(document).ready(function() {
                $('#SwitcherClass').click(function() {
                $('body').toggleClass('BackColor');
               });           
           
           });          
&lt;/script&gt;      

</pre>  
<hr />
<br />
<b>.hover();</b><br /><br /><br />
 <input type="button" id="HoverButton" style="width:200px;height:50px" value="Switch Color" />
<br /><br /><br />
<pre id="ShowHover" class="LeftAligned">
&lt;script type="text/javascript" language="javascript"&gt;

           $(document).ready(function() {
             $('#HoverButton').hover(function() {
                $('body').addClass('BackColor');
            }, function() {
                $('body').removeClass('BackColor');
            });           
           });          
&lt;/script&gt;      

</pre>  


        </div>
   </form>
</body>
</html>
