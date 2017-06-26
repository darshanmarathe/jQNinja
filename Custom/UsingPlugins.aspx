<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UsingPlugins.aspx.cs" Inherits="Custom_UsingPlugins" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Customization And plug-ins with jQuery  > Using Plug-ins </title>

    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script src="jQuery.burn.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'WritingPlugins.aspx';", 1000);
            });
          
            $('div').burn();
            $('pre').jush();

        });
    </script>
    <style>
        .prettyprint {
            background-color:azure;
            color:black;
            text-align:left;
            padding-top:10px;
            padding-left:10px;
            border:1px solid black;
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <h1>Customization = Plug-ins with jQuery </h1>
        <h3>Using plug-ins</h3>
        <hr />
        <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
        <input type="button" id="Next" value="Next" style="float: right" /><br />
        <br />
        <br />
        <div style="width: 98%; text-align: center; font-size: xx-large">
            Download from
        <a style="" href="http://plugins.jquery.com/">http://plugins.jquery.com/</a>
            <p style="font-size: medium">Choose from thousands of plug ins and rich ecosystem of jQuery plugins</p>

        </div>
        <span style="width: 98%; text-align: center;">
            <br />
            <br />
            <p>This is the burn plug-in which we are using <a href="http://plugins.jquery.com/burn/">http://plugins.jquery.com/burn/</a></p>
      
              <pre class="prettyprint lang-html"><span class="tag">&lt;script</span><span class="pln"> </span><span class="atn">src</span><span class="pun">=</span><span class="atv">"//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"</span><span class="tag">&gt;&lt;/script&gt;</span><span class="pln">
</span><span class="tag">&lt;script</span><span class="pln"> </span><span class="atn">src</span><span class="pun">=</span><span class="atv">"js/jquery.burn.js"</span><span class="tag">&gt;&lt;/script&gt;</span>
<br />
$(document).ready(function() {
    $('.burning').burn();
});

        </pre>
              </span>
      
    </form>
</body>
</html>
