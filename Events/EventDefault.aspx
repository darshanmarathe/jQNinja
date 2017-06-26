<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventDefault.aspx.cs" Inherits="Events_EventDefault" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Events with JQuery</title>
    
         <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function() {
        $('body').show();
        $('#Events')[0].innerHTML = $('#Events')[0].innerHTML + '<b> DOM Loaded </b> <br>';
        $('#Next').click(function() {
            $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
            setTimeout("window.location = 'EventBind.aspx';", 1000);
        });
        });
        
        
        function RightWindowLoaded() {
            $('body').show();
            $('#Events')[0].innerHTML = $('#Events')[0].innerHTML + 'Document Loaded <br> <hr>';
            $('pre').jush();
         }

         window.onload = RightWindowLoaded;
           
    </script>

    
</head>
<body > 
    <form id="form1" runat="server">
     <h1>Understanding Events with JQuery</h1>
        <h3>Page Load (DOM, Document)</h3>
        <hr />
        <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
        <input type="button" id="Next"  value="Next" style="float:right" /><br />
        <br />
<div id="Events">


</div>

    Why Not wait for the document to load
    <br />
    <br />
    <br />
    Simple cause the first thing what a browser downloads from your browser is PURE 
    HTML
    <br />
    <br />
    Then CSS
    <br />
    Then the JS
    <br />
    At this point we can say the DOM is loaded
    <br />
    <br />
    Now here this starts to to parse the css and html present you the first page
    <br />
    Now it sends the Requests to parsed extra payloads to download for example 
    images Audio Flash and silverlight objects<br />
    <br />
    <br />
    But wait if the image is too big and u want to stop right clicking on the page 
    then on a slow connection it can breack this rule
    <br />
    <br />
    Images to go here
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <h1>My Images</h1><br />
    May take preety long time to load
    <hr />
 <table style="width:auto;"><tr><td><a href="http://picasaweb.google.co.in/lh/photo/ooz8-VEAbN3UHtWkrpCquw?feat=embedwebsite"><img src="http://lh3.ggpht.com/_-d-IgHDKRNY/Rsk0f87y4dI/AAAAAAAAATE/Pl8z-ChNqlE/s800/IMG_0444cr.jpg" /></a></td></tr><tr><td style="font-family:arial,sans-serif; font-size:11px; text-align:right">From <a href="http://picasaweb.google.co.in/darshanmarathe/August15?feat=embedwebsite">August 15</a></td></tr></table>
    <table style="width:auto;"><tr><td><a href="http://picasaweb.google.co.in/lh/photo/HfWmeUgE8yXBpldH3_6Prg?feat=embedwebsite"><img src="http://lh5.ggpht.com/_-d-IgHDKRNY/Rsk0fc7y4cI/AAAAAAAAAS8/t7G3DI6lSyM/s800/IMG_0443cr.jpg" /></a></td></tr><tr><td style="font-family:arial,sans-serif; font-size:11px; text-align:right">From <a href="http://picasaweb.google.co.in/darshanmarathe/August15?feat=embedwebsite">August 15</a></td></tr></table>
    
    </form>
      <pre>
        $('document').ready(function() {
        
            //jQuery document ready
        });

        $(function(){
            //jQuery document ready short hand
            //DOM  = HTML + Javascript + css
        });

        
        window.onload = function(){
            //Document load == DOM + Image + Flash + Silverligh + etc;
        
        };
           

    </pre>
</body>
  
</html>
