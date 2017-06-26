<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Customization And plug-ins with jQuery  > Custom Selectors </title>

    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'UsingPlugins.aspx';", 1000);
            });
            $('pre').jush();

        });
    </script>

    <script>
        //Custom Selector demos 
        $.extend($.expr[":"],{  
            mailToLink: function (lnk) {
                return lnk.href.match(/^mailto\:/);
            }
            });


        function CustomIsReallyVisibleSelector() {
            $('a:mailToLink')
            .css('color', 'red');
        }
    </script>

    <style>
        .box {
            background-color: azure;
            height: 100px;
            border: 2px solid gray;
            width: 400px;
            padding:25px;
            color: white;
            font-weight: bold;
            font-size: 12px;
            overflow: auto;
            text-align:center;
            vertical-align:middle;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
       
        <h1>Customization And plug-ins with jQuery </h1>
            <h3>Custom Selectors</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
 <div class="box">
           
     <a href="http://google.com">Google</a>
     <a href="mailto:admin@darshanmarathe.com">Report bugs</a>

     <a href="http://Yahoo.com">Yahoo</a>
     <a href="mailto:gmail@darshanmarathe.com">Mail me</a>
     
                   </div>


<p>
            <input type="button" name="name" value="Try Custom Selector" onclick="javascript: CustomIsReallyVisibleSelector(); return false;"  />
        </p>
<pre>
            //Custom Selector demos 
        $.extend($.expr[":"],{  
            mailToLink: function (lnk) {
                return lnk.href.match(/^mailto\:/);
            }
            });


        function CustomIsReallyVisibleSelector() {
            $('a:mailToLink')
            .css('color', 'red');
        }



</pre>
    </form>
</body>
</html>
