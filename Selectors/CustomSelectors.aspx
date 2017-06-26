<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomSelectors.aspx.cs"
    Inherits="Selectors_CustomSelectors" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Custom Selectors</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <style type="text/css">
        tr
        {
            background-color: #fff;
        }
        .alt
        {
            background-color: #ccc;
        }
        .head
        {
            background-color: red;
        }
        .highlight
        {
            font-weight: bold;
            font-style: italic;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <h1>
            Manipulating CSS with jQuery</h1>
        <h3>
            Custom Selectors</h3>
        <hr />
        <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
        <input type="button" id="Next" value="Next" style="float: right" /><br />
        <br />
        <div id="Container">
        Search : 
        <input id="txtSearch" type="text" onkeypress="SearchString(this);" /> 
                    <table>
                <tr>
                    <td>
                        As You Like It
                    </td>
                    <td>
                        Comedy
                    </td>
                    <td>
                        Year
                    </td>
                </tr>
                <tr>
                    <td>
                        All's Well that Ends Well
                    </td>
                    <td>
                        Comedy
                    </td>
                    <td>
                        1601
                    </td>
                </tr>
                <tr>
                    <td>
                        Hamlet
                    </td>
                    <td>
                        Tragedy
                    </td>
                    <td>
                        1604
                    </td>
                </tr>
                <tr>
                    <td>
                        Macbeth
                    </td>
                    <td>
                        Tragedy
                    </td>
                    <td>
                        1606
                    </td>
                </tr>
                <tr>
                    <td>
                        Romeo and Juliet
                    </td>
                    <td>
                        Tragedy
                    </td>
                    <td>
                        1595
                    </td>
                </tr>
                <tr>
                    <td>
                        Henry IV, Part I
                    </td>
                    <td>
                        History
                    </td>
                    <td>
                        1596
                    </td>
                </tr>
                <tr>
                    <td>
                        Henry V
                    </td>
                    <td>
                        History
                    </td>
                    <td>
                        1599
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <p>
        <input id="Button1" type="button" value="Change Odds" onclick="InsertOdds();" />
        <input id="Button4" type="button" value="Change Evens" onclick="InsertEven();" />
        <input id="Button2" type="button" value="Change nth Even" onclick="InsertNthEvens();" />
        <input id="Button3" type="button" value="Change Head nth" onclick="InsertNth();" />
        <input id="Button6" type="button" value="Change Head eq" onclick="InsertEq();" />
        <input id="Button5" type="button" value="Contains" onclick="Contains();" />
        <input id="Button7" type="button" value="Next to Contains" onclick="ContainsToNext();" />
        <input id="Button8" type="button" value="Greater than" onclick="GreaterThan();" />
        <input id="Button9" type="button" value="Less than" onclick="LessThan();" />
        <input id="Button10" type="button" value="Last" onclick="Last();" />
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <pre class="Jush">
&lt;script type="text/javascript" language="javascript"&gt;
        <div id="code">
        </div>
&lt;/script&gt;
        </pre>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script type="text/javascript">

        function pageLoad() {
            $('body').fadeIn(3000);
            $("pre").jush();
            $('#Next').click(function() {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'FormSelectors.aspx';", 1000);
            });
        }

        var timeout = 20000;

        //Button Functions to go here
        function InsertOdds() {
            $("#code").html('');
            $('tr:odd').addClass('alt');
            setTimeout("$('tr:odd').removeClass('alt');refreshCode();", timeout);
            $("#code").html("$('tr:odd').addClass('alt');");
            $('pre').jush();

        }

        function InsertEven() {
            $("#code").html('');
            $('tr:even').addClass('alt');
            setTimeout("$('tr:even').removeClass('alt');refreshCode();", timeout);
            $("#code").html("$('tr:even').addClass('alt');");
            $('pre').jush();
        }


        function InsertNthEvens() {
            $("#code").html('');
            $('tr:nth-child(even)').addClass('alt');
            setTimeout("$('tr:nth-child(even)').removeClass('alt');refreshCode();", timeout);
            $("#code").html("$('tr:nth-child(even)').addClass('alt');");
            $('pre').jush();
        }

        function InsertEq() {
            $("#code").html('');
            $('tr:eq(0)').addClass('head');
            setTimeout("$('tr:eq(0)').removeClass('head');;refreshCode();", timeout);
            $("#code").html("$('tr:eq(0)').addClass('head');");
            $('pre').jush();
        }


        function InsertNth() {
            $("#code").html('');
            $('tr:nth-child(1)').addClass('head');
            setTimeout("$('tr:nth-child(1)').removeClass('head');refreshCode();", timeout);
            $("#code").html("$('tr:nth-child(1)').addClass('head');");
            $('pre').jush();
        }

        function Contains() {
            $("#code").html('');
            $('td:contains(Henry)').addClass('highlight');
            setTimeout("$('td:contains(Henry)').removeClass('highlight');refreshCode();", timeout);
            $("#code").html("$('td:contains(Henry)').addClass('highlight');");
            $('pre').jush();
        }

        function ContainsToNext() {
            $("#code").html('');
            $('td:contains(Henry)').next().addClass('highlight');
            setTimeout("$('td:contains(Henry)').next().removeClass('highlight');refreshCode();", timeout);
            $("#code").html("$('td:contains(Henry)').next().addClass('highlight');");
            $('pre').jush();
        }

        function GreaterThan() {
            $("#code").html('');
            $('tr:gt(4)').addClass('highlight').addClass('alt');
            setTimeout("$('tr:gt(4)').removeClass('highlight').removeClass('alt');refreshCode();", timeout);
            $("#code").html("$('tr:gt(4)').addClass('highlight').addClass('alt');");
            $('pre').jush();
        }

        function LessThan() {
            $("#code").html('');
            $('tr:lt(4)').addClass('highlight').addClass('alt');
            setTimeout("$('tr:lt(4)').removeClass('highlight').removeClass('alt');refreshCode();", timeout);
            $("#code").html("$('tr:lt(4)').addClass('highlight').addClass('alt');");
            $('pre').jush();
        }

        function Last() {
            $("#code").html('');
            $('tr:last').fadeOut('fast').fadeIn('3000').addClass('alt');
            setTimeout("$('tr:last').removeClass('alt');", timeout);
            $("#code").html("$('tr:last').fadeOut('slow').fadeIn('slow').addClass('alt');");
            $('pre').jush();
        }

        function SearchString(ctrol) {

            var searchString = ctrol.value; //$(ctrol).val();
                $('td').removeClass('highlight')  
            $('td:contains(' + searchString + ')').addClass('highlight');
            
        
         }

        function refreshCode() {

            __doPostBack('<%= UpdatePanel1.ClientID  %>', 'xFerPage');
        }
        
    </script>

    </form>
</body>
</html>
