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
                setTimeout("window.location = 'MoveElem.aspx';", 1000);
            });

            $('pre').jush();
        });


        </script>
    <style>
        .box {
          float:left;
            height:300px;
            width:49%;
          border:1px solid black;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                  <h1>DOM Manipulation</h1>
            <h3>Inserting New elements</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
        
        <div class="box">
            Tag Name: <input type="text" name="txtTag" id="txtTag" value=" " />
            Inner Text: <input type="text" name="txtInner" id="txtInner" value=" " />
            <br />
            <input type="button" value="Insert" id="Add" />
        </div>
        <div class="box" >
        
        <pre >

            &lt;div class="box"&gt;
            Tag Name: &lt;input type="text" name="txtTag" id="Text1" value=" " /&gt;
            Inner Text: &lt;input type="text" name="txtInner" id="Text2" value=" " /&gt;
            &lt;br /&gt;
            &lt;input type="button" value="Insert" id="Button1" /&gt;
        &lt;/div&gt;
        

            $('#Add').click(function () {
                var openingtag = '<' + $('#txtTag').val() + '>';
                var inner =  $('#txtInner').val();
                var closingtag = '<' + $('#txtTag').val() + '/>';
                $(openingtag + inner + closingtag).appendTo('.box:last');


            });
        </pre>
            </div>
       <div class="box" >
     </div>
    </div>


        <script>

            $('#Add').click(function () {
                var openingtag = '<' + $('#txtTag').val() + '>';
                var inner =  $('#txtInner').val();
                var closingtag = '<' + $('#txtTag').val()+ '/>';
                $(openingtag + inner + closingtag).appendTo('.box:last');


            });
        </script>
    </form>
</body>
</html>
