<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>JQuery Demos - Inline CSS Demos</title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();
         
            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '../DOM/Attribute.aspx';", 1000);
            });
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

    </style>
    </head>
            <body>
    <form id="form1" runat="server">
     <div>
                 <h1>Effects with JQuery</h1>
            <h3>Animation demos</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
         <h3>Hover the small red icon</h3>
         <br />
         <div class="content" style="background-color:red;color:white;text-align:center;vertical-align:middle">
                
             &nbsp;
         </div>
   
         <pre>

              var heightWidth = 10;
            function AnimateEffect() {
            
                if (heightWidth < 500) {
                    heightWidth = heightWidth + 50;

                }
                else {
                    heightWidth = 10;
                }

                $('.content').animate({ width: heightWidth, height: heightWidth, left: heightWidth }, 'slow')
                .html(heightWidth + "px");
               
            }


              function AnimateEffect2() {

                if (heightWidth < 1000) {
                    heightWidth = heightWidth + 50;

                }
                else {
                    heightWidth = 10;
                }

                $('.content').animate({ width: heightWidth +25, height: heightWidth , color: "green" }, 'slow')
                .html(heightWidth + "px");

            }


     $('.content').click(AnimateEffect)
                .hover(AnimateEffect2)
                .animate({ height: heightWidth, width: heightWidth });

         </pre>
    </div>
        <script>
            var heightWidth = 10;
            function AnimateEffect() {
            
                if (heightWidth < 500) {
                    heightWidth = heightWidth + 50;

                }
                else {
                    heightWidth = 10;
                }

                $('.content').animate({ width: heightWidth, height: heightWidth, left: heightWidth }, 'slow')
                .html(heightWidth + "px");
               
            }

            function AnimateEffect2() {

                if (heightWidth < 1000) {
                    heightWidth = heightWidth + 50;

                }
                else {
                    heightWidth = 10;
                }

                $('.content').animate({ width: heightWidth +25, height: heightWidth , color: "green" }, 'slow')
                .html(heightWidth + "px");

            }

            $('.content').click(AnimateEffect)
                .hover(AnimateEffect2)
                .animate({ height: heightWidth, width: heightWidth });
            $('pre').jush();
        </script>
    </form>
</body>
</html>
