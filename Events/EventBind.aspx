<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EventBind.aspx.cs" Inherits="Events_EventBind" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Events using bind</title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function() {
            $('body').show();
            BindEvents();
            $('#Next').click(function() {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'EventCompound.aspx';", 1000);
            });  
            
        });

    function BindEvents() {
 //Click Completed 
        $('#ClickableDiv').bind('click', function() {
            $('#ClickableDiv pre').jush();
            alert('Hey click was bound with the jquery');

        });
 //Hover      

        $('#HoverAbleDiv').mouseover(function() {
            $('#HoverAbleDiv pre').jush();
            alert('hey onmouseover triggered');
        });

        //Double Click
        $('#dbClickableDiv').dblclick(function() {
            $('#dbClickableDiv pre').jush();
            alert('Hey i was double clicked');

        });

        //focus Some Watermark Idea
        $('#Focusable').focus(function() {
        if (this.value == 'Enter your name') {
            this.value = '';

        }
        $('#FocusableDiv pre').jush();
    });


    //Keypress Example
    $('#KeyEventsDiv').keypress(function(e) {
        alert(e.which);
        $('#KeyEventsDiv pre').jush();
    });
    }
    </script>
    
    <style type="text/css">
    
    .box
    {
    width:80%;
    margin:0 10 0 10;
    border:solid 1px red;
    	
    }
    
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
             <h1>Understanding Events with JQuery</h1>
            <h3>Bind Method and short hand events</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
            
 <h3>Bind Click</h3> <br />
<div class="box" id="ClickableDiv">
Hey! I am a clickable div try clicking me 
you will see the Magic 

<pre>

&lt;script type="text/javascript" language="javascript"&gt;

$('#ClickableDiv').bind('click', function() {
    $('#ClickableDiv pre').jush();
    alert('Hey click was bound with the jquery');

});
   
&lt;/script&gt;


</pre>

</div>
 <h3>Bind Hover</h3><br />
 <div class="box" id="HoverAbleDiv" >
 Short Hand
 Hey try to hover me
 <pre>
&lt;script type="text/javascript" language="javascript"&gt;
        $('#HoverAbleDiv').mouseover(function() {
            $('#HoverAbleDiv pre').jush();
            alert('hey onmouseover triggered');
        });       

&lt;/script&gt;
 </pre>
 </div>
 <h3>Bind Double Click</h3><br />
 <div class="box" id="dbClickableDiv">
 Try double clicking me 
 <pre>
&lt;script type="text/javascript" language="javascript"&gt;
        $('#dbClickableDiv').dblclick(function() {
            $('#dbClickableDiv pre').jush();
        alert('Hey i was double clicked
        
        }); 

 
&lt;/script&gt;
 </pre>
 
 </div>
 <h3>Bind Focus</h3><br />
<div id="FocusableDiv" class="box">
Watermark with focus event
<input type="text" id="Focusable" value="Enter your name" />

<br />
 <pre>
&lt;script type="text/javascript" language="javascript"&gt;
        $('#Focusable').focus(function() {
        if (this.value == 'Enter your name') {
                this.value = '';
            }
        });

 
&lt;/script&gt;
 </pre>

</div>
 <h3>Bind KeyEvents</h3><br />
<div class="box" id="KeyEventsDiv">

I am a div with KeyPressed event binded
 <pre>
&lt;script type="text/javascript" language="javascript"&gt;
 $('#KeyEventsDiv').keypress(function(e) {
        alert(e.which);
        $('#KeyEventsDiv pre').jush();
    });
    }
   
 
&lt;/script&gt;
 </pre>


</div>
<h3>List of short Hand events</h3><br />
<hr />
<ul>
    <li>blur</li>
    <li>change</li>
    <li>click</li>
    <li>dblclick</li>
    <li>error</li>
    <li>focus</li>
    <li>keydown</li>
    <li>keypress</li>
    <li>keyup</li>
    <li>load</li>
    <li>mousedown</li>
    <li>mousemove</li>
    <li>mouseout</li>
    <li>mouseover</li>
    <li>mouseup</li>
    <li>resize</li>
    <li>scroll</li>
    <li>select</li>
    <li>submit</li>
    <li>unload</li>
</ul>
    </form>
</body>
</html>
