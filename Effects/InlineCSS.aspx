<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Inline CSS Demos</title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function() {
            $('body').show();

            $('#Next').click(function () {
                 $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'EffectsAll.aspx';", 1000);
            });  
            
        });

      </script>
    <style>

        #content {
        
            font-size:20px;
        
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                 <h1>Effects with JQuery</h1>
            <h3>Inline css demos</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
        <p><b>Font</b>
            <input type="button" id="btnPlus" value="+"  />
            <input type="button" id="btnLess" value="-" />


        </p>

        <p id="content" >Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum </p>
    </div>

<pre>
 &lt;script&gt;

         var $content = $('#content');

         $('#btnPlus').click(IncreaseFont);
         $('#btnLess').click(DecreaseFont);

         function IncreaseFont() {
             var num = parseFloat($content.css('fontSize'), 10);
             num *= 1.4;
             $content.css('fontSize', num + 'px');
             return false;
         }

         function DecreaseFont() {
             var num = parseFloat($content.css('fontSize'), 10);
             num /= 1.4;
             $content.css('fontSize', num + 'px');
             return false;


         }

    &lt;/script&gt;

</pre>


    </form>

    <script>    

        var $content = $('#content');

        $('#btnPlus').click(IncreaseFont);
        $('#btnLess').click(DecreaseFont);

        function IncreaseFont() {
            var num = parseFloat($content.css('fontSize'), 10);
            num *= 1.4;
            $content.css('fontSize', num + 'px');
            return false;
        }

        function DecreaseFont() {
            var num = parseFloat($content.css('fontSize'), 10);
            num /= 1.4;
            $content.css('fontSize', num + 'px');
            return false;


        }


        $('pre').jush();
    </script>
</body>
</html>
