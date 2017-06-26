<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["FirstParam"] != null)
        {
            Response.Flush();
            Response.Write("Hello  "  + Request["FirstParam"].ToString() + " "  + DateTime.Now.ToString());
            Response.End();
        }
    }

   
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>JQuery Demos - AJAX Demos > Post method demos </title>
      
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
                setTimeout("window.location = 'AjaxDemo.aspx';", 1000);
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
            <asp:ScriptManager ID="ScriptManager1" runat="server" 
             EnablePageMethods="true" AsyncPostBackTimeout="5000">
          </asp:ScriptManager>
    <div>
        
        <h1>AJAX with jQuery</h1>
            <h3>$.Post Method</h3>
            <hr />
        
         <input type="button" id="Button1"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
    
        <div id="log" class="box">

        </div>
   <br />
        <input type="text" id="txtname" value="" />
        <button onclick="javascript:return PostAjaxDemo();" >Post value Ajax</button>
    </div>
    </form>
    <h2>        Server Side:=>
</h2>
    <pre data-lang="csharp">

protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["FirstParam"] != null)
        {
            Response.Flush();
            Response.Write("Hello  "  + Request["FirstParam"].ToString() + " "  + DateTime.Now.ToString());
            Response.End();
        }
    }

        </pre>
    <h2>Client Side:=>
</h2>

<pre>        
function PostAjaxDemo() {
  
    try {

        LogMessage('Loading data via post')
        var name = $("#txtname").val();

        $.post("PostDemo.aspx", { FirstParam: name }, function (result) {

            LogMessage(result);

        });

    } catch (e) {
        LogMessage(e.message);
    }
    return false;

}



    </pre>
</body>
</html>
