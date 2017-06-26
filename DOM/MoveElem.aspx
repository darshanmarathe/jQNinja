<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>JQuery Demos - DOM Manipulation > Attributes </title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'CopyElem.aspx';", 1000);
            });
            $('pre').jush();

        });
        </script>
    <style>
        .box {
            background-color:gray;
            height:100px;
            width:100px;
            left:10px;
            top:10px
        }

        td
        {
            height:200px;
            width:100px;
            border:1px solid black;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                  <h1>DOM Manipulation</h1>
            <h3>Moving elements</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />

<div class="box"></div><br />    
        <table>
            <tr>
                <td>

                </td>

                                <td>

                </td>

                                <td>

                </td>
                <td>

                </td>
                <td>

                </td>

                                <td>

                </td>

                                <td>

                </td>
                <td>

                </td>
            </tr>

        </table>

    </div>

        <pre>

            var $box = $('.box');
            $(function () {
                $('td').click(function () {
                    
                    $box.appendTo(this);

                });


            });


        </pre>

        <script>

            var $box = $('.box');
            $(function () {
                $('td').click(function () {
                    
                    $box.appendTo(this);

                });


            });

        </script>
    </form>
</body>
</html>
