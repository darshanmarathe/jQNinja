<%@ Page Language="C#" %>
<%@ Import Namespace="System.Web.Services" %>
<!DOCTYPE html>

<script runat="server">
 
protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string CallMe()
    {

        return "You called me on " + DateTime.Now.ToString();
    }

    [WebMethod]
    public static string GetMeAGUID(string name, string surname, string age)
    {

        var intage = int.Parse(age);

        return string.Format(
            "Hey, {0} {1}. How is it going over there? u are {2} years old and here is a Guid for you : {3}",
            name, surname, intage.ToString(), Guid.NewGuid()
            );
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>JQuery Demos - AJAX Demos > AJAX Method </title>
      
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
                setTimeout("window.location = '../Custom/Selectors.aspx';", 1000);
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
          <h1>AJAX with JQuery</h1>
            <h3>AJAX Method demo</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
    <div class="box">

    </div>

         <button onclick="javascript:return AJAXMethodDemo();" > Ajax Demo 1 </button>
     <button onclick="javascript:return AJAXMethodDemo2();" >Ajax Demo 2</button>
    
    </div>
        <h2>Server side =></h2>
        <pre data-lang="csharp">using  System.Web.Services;

protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string CallMe()
    {

        return "You called me on " + DateTime.Now.ToString();
    }

    [WebMethod]
    public static string GetMeAGUID(string name, string surname, string age)
    {

        var intage = int.Parse(age);

        return string.Format(
            "Hey, {0} {1}. How is it going over there? u are {2} years old and here is a Guid for you : {3}",
            name, surname, intage.ToString(), Guid.NewGuid()
            );
    }

        </pre>
        <h2>Client Side =></h2>
        <pre>function AJAXMethodDemo() {
    LogMessage('loading');
    //Demo for jQuery AJAX method most popular jQuery Method 
    debugger;   
    $.ajax({
        type: "POST",
        url: "AJAXDemo.Aspx/CallMe",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            // Hide the fake progress indicator graphic.
            

            // Insert the returned HTML into the <div>.
            LogMessage(msg.d);
        }
    });

    return false;
}

function AJAXMethodDemo2() {
    LogMessage('loading');
    //Demo for jQuery AJAX method most popular jQuery Method 
    debugger;
    $.ajax({
        type: "POST",
        url: "AJAXDemo.Aspx/GetMeAGUID",
        data: "{'name' : 'darshan' , 'surname' : 'marathe' , 'age' : 20}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            // Hide the fake progress indicator graphic.


            // Insert the returned HTML into the <div>.
            LogMessage(msg.d);
        }
    });

    return false;
}

        </pre>
    </form>
</body>
</html>
