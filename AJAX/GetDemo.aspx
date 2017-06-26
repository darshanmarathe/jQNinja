<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {   

    }

     [System.Web.Services.WebMethod]
    public string GetDataFromServer()
    {
        return DateTime.Now.ToLongDateString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>JQuery Demos - AJAX Demos > Get Method Demos </title>
      
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
                setTimeout("window.location = 'PostDemo.aspx';", 1000);
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
    <div>
          <h1>AJAX with jQuery</h1>
            <h3>$.get Method</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />

        <div class="box">

        </div>
    
        <br />
                <button onclick="javascript:return GetAJAXDemo();" >Load Ajax</button>

        <div id="target">

        </div>
        <pre>
 function GetAJAXDemo() {
    try {
        LogMessage('Loading jQuery Get');
        $.get('DemotoLoad.html', function (result) {
            //This is a Call-back function without name 
            $('#target').html(result);
            LogMessage('AJAX Success');
        });

    } catch (e) {
        LogMessage(e.message)
    }
    return false;
}
        </pre>
    </div>
    </form>
</body>
</html>
