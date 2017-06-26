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
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">
</script>
    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();
         
            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'Animation.aspx';", 1000);
            });

            $('pre').jush();

            $('button').click(function (e) {
                e.preventDefault();
                var action = $(this).attr('id') + "();";
                console.log(action);
                eval(action);

            });

        });

        var code;
        //function for the demos start here


        function PasteCode() {
            $('#code').val(code);
            $('#codePre').html(code);
            eval(code);
        }

        function ShowAction() {
            
            code = "$('p').show(1000)";
            PasteCode();

            return false;
        }



        function HideAction() {
            code = "$('p').hide('slow')";
            PasteCode();

            return false;

        }

        function ToggleShowHideAction() {
            code = "$('p').toggle('fast')";
            PasteCode();

            return false;

        }

        function slideUpAction() {

            code = "$('p').slideUp('fast')";
            PasteCode();

            return false;

        }

        function SlideDownAction() {
            code = "$('p').slideDown()";
            PasteCode();

        }

        function SlideToggleAction() {
            code = "$('p').slideToggle('fast')";
            PasteCode();


        }

        function fadeInAction() {
            code = "$('p').fadeIn('slow')";
            PasteCode();

        }

        function fadeOutAction() {
            code = "$('p').fadeOut(5000)";
            PasteCode();

        }

        function fadeToggleAction() {
            code = "$('p').fadeToggle(1000)";
            PasteCode();

        }
        function RunAction() {
            code = $('#code').val();
            PasteCode();
            return false;
        }

      </script>

</head>
<style type="text/css">

    button {
        width:100px;
    }
</style>
<body>
    <form id="form1" runat="server">
    <div>
                     <h1>Effects with jQuery</h1>
            <h3>Effects ...</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
        
        <br />
        <br />

        <table  style="border:1px solid black">
            <tr>
                <td>
                    Show / Hide /Toggle |
                    </td>
                <td>
                    Slide Up/Down/Toggle |
                </td>
                <td>

                    fade In/Out
                </td>
                <td rowspan="2" style="vertical-align:top;padding-left:20px">
                Code:<br />

                <textarea id="code" style="float:left" cols="30" rows="8"></textarea>

                    <button id="RunAction">Run</button>
                </td>
            </tr>

             <tr>
                <td>
                    <button id="ShowAction">Show</button><br />
                    <button id="HideAction">Hide</button><br />
                     <button id="ToggleShowHideAction">Toggle</button><br />

                </td>
                <td>
                     <button id="slideUpAction">Up</button><br />
                    <button id="SlideDownAction">Down</button><br />
                     <button id="SlideToggleAction">Toggle</button><br />


                </td>
                <td>
                     <button id="fadeInAction">In</button><br />
                    <button id="fadeOutAction">Out</button><br />
                     <button id="fadeToggleAction">Toggle</button><br />


                </td>
            </tr>
        </table>
        <pre id="codePre"></pre>
                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum </p>

    </div>
    </form>

</body>
</html>
