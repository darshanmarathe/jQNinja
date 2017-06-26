<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learning jQuery 1.8</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').css('display', 'block');

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '1.9.aspx';", 1000);
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
            font-size: 12px;
            overflow: auto;
        }

        p, div {
            margin: 5px;
            padding: 5px;
        }

        .border {
            border: 2px solid red;
        }

        .background {
            background: yellow;
        }

        .left, .right {
            width: 45%;
            float: left;
        }

        .right {
            margin-left: 3%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <h1>jQuery Updates
            </h1>
            <h3>Version 1.8</h3>
            <hr />
            <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button" id="Next" value="Next" style="float: right" /><br />
            <br />
            <h2>.addback()</h2>
        <table style="width:100%">
            <tr>
                <td>
            
        <div class="left">
                <p><strong>Before <code>addBack()</code></strong></p>
                <div class="before-addback">
                    <p>First Paragraph</p>
                    <p>Second Paragraph</p>
                </div>
            </div>
            <div class="right">
                <p><strong>After <code>addBack()</code></strong></p>
                <div class="after-addback">
                    <p>First Paragraph</p>
                    <p>Second Paragraph</p>
                </div>
            </div>
             </td>
            </tr>
            <tr>
                <td>
                    <pre data-lang="html" class="jush">
                 &lt;div class="left"&gt;
                &lt;p&gt;&lt;strong&gt;Before &lt;code&gt;addBack()&lt;/code&gt;&lt;/strong&gt;&lt;/p&gt;
                &lt;div class="before-addback"&gt;
                    &lt;p&gt;First Paragraph&lt;/p&gt;
                    &lt;p&gt;Second Paragraph&lt;/p&gt;
                &lt;/div&gt;
            &lt;/div&gt;
            &lt;div class="right"&gt;
                &lt;p&gt;&lt;strong&gt;After &lt;code&gt;addBack()&lt;/code&gt;&lt;/strong&gt;&lt;/p&gt;
                &lt;div class="after-addback"&gt;
                    &lt;p&gt;First Paragraph&lt;/p&gt;
                    &lt;p&gt;Second Paragraph&lt;/p&gt;
                &lt;/div&gt;
            &lt;/div&gt;
        </pre>
        <pre>
                  $("div.left, div.right").find("div, div > p").addClass("border");
                // First Example
                $("div.before-addback").find("p").addClass("background");
                // Second Example
                $("div.after-addback").find("p").addBack().addClass("background");
        </pre>
                </td>
            </tr>
        </table>
            <script>
                $("div.left, div.right").find("div, div > p").addClass("border");
                // First Example
                $("div.before-addback").find("p").addClass("background");
                // Second Example
                $("div.after-addback").find("p").addBack().addClass("background");
            </script>

      
        <h2>.parseHTML()</h2>

        <div id="log">
<h3>Content:</h3>
</div>
        
<script>
    var $log = $("#log"),
    str = "hello, <b>my name is</b> jQuery.",
    html = $.parseHTML(str),
    nodeNames = [];
    // Append the parsed HTML
    $log.append(html);
    // Gather the parsed HTML's node names
    $.each(html, function (i, el) {
        nodeNames[i] = "<li>" + el.nodeName + "</li>";
    });
    // Insert the node names
    $log.append("<h3>Node Names:</h3>");
    $("<ol></ol>")
    .append(nodeNames.join(""))
    .appendTo($log);
</script>

        <pre data-lang="html">&lt;div id="log"&gt;
&lt;h3&gt;Content:&lt;/h3&gt;
&lt;/div&gt;</pre>
        <pre>
              var $log = $("#log"),
    str = "hello, <b>my name is</b> jQuery.",
    html = $.parseHTML(str),
    nodeNames = [];
    // Append the parsed HTML
    $log.append(html);
    // Gather the parsed HTML's node names
    $.each(html, function (i, el) {
        nodeNames[i] = "<li>" + el.nodeName + "</li>";
    });
    // Insert the node names
    $log.append("<h3>Node Names:</h3>");
    $("<ol></ol>")
    .append(nodeNames.join(""))
    .appendTo($log);
        </pre>   

    </form>
</body>
</html>
