<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventOtherFundas.aspx.cs" Inherits="Events_EventOtherFundas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>JQuery Demos - Events other fundas</title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        var clicks = 0;
        $('document').ready(function() {
            $('body').show();
            $('#Next').click(function() {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '../Effects/InlineCss.aspx';", 1000);
            });
            $('#btnClick').click(function() {
                clicks = clicks + 1;
                this.value = 'Click me ' + (5 - clicks).toString() + ' times !';
                if (clicks == 5) {
                    alert('you have clicked 5 times now this button will stop working');
                    $(this).unbind('click');
                    $('#preUnbind').jush();
                }
            });
        });

      
        </script>
</head>
<body>
    <form id="form1" runat="server">
      <h1>Understanding Events with JQuery</h1>
        <h3>JQuery Events Other fundas</h3>
        <hr />
        <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
        <input type="button"  id="Next"  value="Next" style="float:right" /><br />
        <br />
      <br />
      <h3>Unbinding events</h3>
      
      5 times click button<br />
        <br />
       <input id="btnClick" type="button" value="Click me 5 times!" />
    
    <pre id="preUnbind">
&lt;script type="text/javascript" language="javascript"&gt;
        var clicks = 0;
        $('document').ready(function() {
            $('#btnClick').click(function() {
                clicks = clicks + 1;
                this.value = 'Click me ' + (5 - clicks).toString() + ' times !';
                if (clicks == 5){
                    alert('you have clicked 5 times now this button will stop working');
                    $(this).unbind('click');
                 }
            });
        });
&lt;/script&gt;      
    </pre>
<hr />

    <div>
    
    </div>
    </form>
</body>
</html>
