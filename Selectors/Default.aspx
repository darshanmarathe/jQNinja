<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Manipulating CSS with jQuery</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script> 
    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    
    <script type="text/javascript">

        function pageLoad() {
            $('body').fadeIn(1500);
            $("pre").jush();
            $('#Next').click(function() {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'AttribSelectors.aspx'", 1000);
            });
        }
 </script>
 <style type="text/css">
        .style1
        {
            font-weight: bold;
            text-decoration: underline;
        }
    </style>
     
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <h1>Manipulating CSS with jQuery</h1>
        <h3>Css Selectors</h3>
        <hr />
        <input type="button"  value="Back" onclick="window.location = '../Index.aspx';" />
        <input type="button" id="Next"  value="Next" style="float:right" />
        
        <br />
       
        <br />
        So are you impressed ?<br />
        Then lets get started........Downlod it from <a href="http://www.jquery.com">http://www.jquery.com</a> <br />
        Include the javascript
        <br />
    </div>       
<pre class="jush" >
&lt;script type="text/javascript" language="javascript" src="js/JQuery.js"&gt;&lt;/script&gt; 
</pre>
       
       <span class="style1">Using css selectors<br />
    </span>&nbsp;<br />
        By Tag
       <br />
<pre class="jush">
&lt;script type="text/javascript" language="javascript"&gt;
    $('select').toggle();
&lt;/script&gt;
</pre>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>India</asp:ListItem>
        <asp:ListItem>China</asp:ListItem>
        <asp:ListItem>Japan</asp:ListItem>
        <asp:ListItem>US</asp:ListItem>
    </asp:DropDownList>
    <input id="btnHideTag" type="button" value="Hide" onclick="javascript:$('select').toggle(1500);" /><br /><br />
    By Id &nbsp;
       
<pre class="jush" id="Code">
&lt;script type="text/javascript" language="javascript"&gt;
    $('#Code').toggle();    
&lt;/script&gt;
</pre>
      <input id="Button1" type="button" value="Hide" onclick="javascript:$('#Code').toggle(1500);" /><br />
  
    <br />
   
    By Class &nbsp:     
<pre class="jush" >
&lt;script type="text/javascript" language="javascript"&gt;
    $('.jush').toggle();    
&lt;/script&gt;</pre>
      <input id="Button2" type="button" value="Hide" onclick="javascript:$('.jush').toggle(1500);" /><br />

       </form>

</body>
</html>