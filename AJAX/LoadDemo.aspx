<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>JQuery Demos - AJAX Demos> Load Method demos </title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script src="AJAXDemos.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'GetDemo.aspx';", 1000);
            });
            $('pre').jush();

        });
        </script>
    <style>
        .box {
            background-color: black;
            height: 100px;
            border: 2px solid gray;
            width: 400px;
            color: white;
            font-weight: bold;
            font-size:12px;
            
            overflow:auto;
        }

        td
        {
            height:200px;
            width:100px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <h1>AJAX with jQuery</h1>
            <h3>Load html page</h3>
            <hr />
        
         <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
    
        <div id="log" class="box">

        </div>
   <br />

        <button onclick="javascript:return LoadAJAXDemo();" >Load Ajax</button>
 <button onclick="javascript:return LoadExtDemo();" >Other domain Ajax</button>

        <div id="target">


            Here the html page will be loaded from AJAX 
        </div>

    </div>


        <pre>

            
function LoadAJAXDemo() {
    debugger;
    $('#target').load('DemotoLoad.html')
    .ajaxStart(function () {
        LogMessage('ajax loding');
    }).ajaxComplete(function () {

        LogMessage('ajax done');
    });
    return false;
}

function LoadExtDemo() {
    $('#target').load('http://www.indiatimes.com/technology/gadgets/meet-sonys-smartwatch-2_-85305.html').ajaxError(
        function () {
            LogMessage('Ajax failed');
        }
        );
    return false;
}


        </pre>
    </form>
</body>
</html>
