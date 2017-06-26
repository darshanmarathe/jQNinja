<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>JQuery Demos - JavaScript Fundamentals </title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'Functional.aspx';", 1000);
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                 <h1>JavaScript fundamentals</h1>
            <h3>A Scripting language</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
            <h4>Demo 1 => Scripting language executes if it had code errors also.</h4>
            <pre data-lang="html">

&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta charset=utf-8 /&gt;
&lt;title&gt;Javascript is Scripting language&lt;/title&gt;
 &lt;script&gt;
  alert('hi');

  Some_Junk_function_call_to_prove_my_point();

   alert('hi again');
  &lt;/script&gt;
  &lt;/head&gt;
&lt;body&gt;
&lt;/body&gt;
  &lt;script&gt;
    One_More_Script_Block();
    function One_More_Script_Block(){
       alert('Again a hello'); 
    }
  &lt;/script&gt;
&lt;/html&gt;
            </pre>

            <h4>Demo 2 => It executes line by line and as its rendered. </h4>
            <pre data-lang="html">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta charset=utf-8 /&gt;
&lt;title&gt;Javascript is Scripting language&lt;/title&gt;
 &lt;script&gt;
   
   //this throws error
   try{
  var textbox1 = document.getElementById('txt1').value;
   alert(textbox1);
   }
   catch(e){
    alert(e.message); 
   }
  &lt;/script&gt;
  &lt;/head&gt;
&lt;body&gt;
  &lt;input type="text" id="txt1" value="Some Code"/&gt;
&lt;/body&gt;
  &lt;script&gt;
    //This Code works
  var textbox2 = document.getElementById('txt1').value;
   alert(textbox2);
    
  &lt;/script&gt;
&lt;/html&gt;


            </pre>
    </div>
    </form>
</body>
</html>
