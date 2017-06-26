<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Customization And plug-ins with jQuery  > Using Plug-ins </title>

    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script src="jQuery.HilightGrid.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '../jQuery/1.4.aspx';", 1000);
            });
            $('pre').jush();

            $('table :text').HilightGird();

        });
    </script>
    <style>
        .default {
            background-color: white;
            color: black;
        }

        .hilight {
            background-color: black;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Customization And plug-ins with jQuery </h1>
        <h3>Creating your first plug-in</h3>
        <hr />
        <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
        <input type="button" id="Next" value="Next" style="float: right" /><br />
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>

            </tr>
            <tr>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>

            </tr>
            <tr>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>

            </tr>
            <tr>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>

            </tr>
            <tr>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>
                <td>
                    <input type="text" value=" " /></td>

            </tr>
        </table>

        <h1>Plug-in Template</h1>
        <pre>(function($){
$.fn.extend(
{
    //plugin name here
    Hilight: function(options) 
    {
	//Settings list and the default values
        var defaults = 
        {
           defaultvar1: "value",
           defaultvar2: "value"
        };
        var options = $.extend(defaults, options);

        return this.each(function() 
        {
            var o =options;
            var obj = $(this); 
		//do stuff here
        });
    }
   });
})(jQuery);
</pre>

        <h1>Plug-in Final</h1>
        <pre>
(function ($) {
    $.fn.extend(
    {
        //plugin name here
        HilightGird: function (options) {
            //Settings list and the default values
            var defaults =
            {
                defaultcss: "default",
                hilightcss: "hilight"
            };
            var options = $.extend(defaults, options);

            return this.each(function () {
                var o = options;
                var obj = $(this);
    
                    obj.focus(function () {
                        console.log('focused');
                        $(this).removeClass(o.defaultcss);
                        $(this).addClass(o.hilightcss);
                    })
                    .blur(function () {
                        console.log('blured');
                        $(this).removeClass(o.hilightcss);
                        $(this).addClass(o.defaultcss);
                });
        });
        }
    });
})(jQuery);        </pre>
        <h1>Css</h1>
        <pre data-lang="css">
        .default {
            background-color:white;
            color:black;
        }
        .hilight {
           background-color:black;
            color:white;
        }
 </pre>
    </form>
</body>
</html>
