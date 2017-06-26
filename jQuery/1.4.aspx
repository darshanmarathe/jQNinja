<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learning jQuery 1.4</title>

    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script src="http://code.jquery.com/jquery-1.4.4.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '1.5.aspx';", 1000);
            });
            $('pre').jush();

        });
    </script>
    <style>
        #box {
            border: 1px solid black;
            width: 98%;
            float: left;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>jQuery Updates </h1>
            <h3>Version 1.4</h3>
            <hr />
            <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button" id="Next" value="Next" style="float: right" /><br />
            <br />
            <h2>.focusin Event</h2>


            <div class="box" id="focusindemo">
                <p>
                    <input type="text" />
                    <span>focusin fire</span>
                </p>
                <p>
                    <input type="password" />
                    <span>focusin fire</span>
                </p>

            </div>
            <script>
                $('#focusindemo span').hide();
                $("#focusindemo p").focusin(function () {
                    $(this).find("span").css('display', 'inline').fadeOut(1000);
                });
            </script>

            <pre class="jush" data-lang="html">
&lt;div class="box" id="focusindemo"&gt;
&lt;p&gt;&lt;input type="text" /&gt; &lt;span&gt;focusin fire&lt;/span&gt;&lt;/p&gt;
&lt;p&gt;&lt;input type="password" /&gt; &lt;span&gt;focusin fire&lt;/span&gt;&lt;/p&gt;

&lt;/div&gt;
&lt;script&gt;
	$('#focusindemo span').hide();
	$("#focusindemo p").focusin(function () {
		$(this).find("span").css('display', 'inline').fadeOut(1000);
	});
&lt;/script&gt; 
        </pre>

            <h2>$.now()</h2>
            <button onclick="alert($.now());return false;">Click me $.now()</button>
            <pre class="jush" data-lang="html">
                &lt;button onclick="alert($.now());return false;"&gt;Click me $.now()&lt;/button&gt; </pre>
        </div>
    </form>
    <h2>.nextUntil() .prevUntil</h2>

    <dl>
        <dt id="term-1">term 1</dt>
        <dd>definition 1-a</dd>
        <dd>definition 1-b</dd>
        <dd>definition 1-c</dd>
        <dd>definition 1-d</dd>

        <dt id="term-2">term 2</dt>
        <dd>definition 2-a</dd>
        <dd>definition 2-b</dd>
        <dd>definition 2-c</dd>

        <dt id="term-3">term 3</dt>
        <dd>definition 3-a</dd>
        <dd>definition 3-b</dd>
    </dl>
    <script>
        $("#term-1").nextUntil("dt")
          .css("background-color", "red");

        $('#term-3').prevUntil('dt').css('background-color', 'green');


    </script>
    <pre class="jush" data-lang="html">
          &lt;dl&gt;
  &lt;dt id="term-1"&gt;term 1&lt;/dt&gt;
  &lt;dd&gt;definition 1-a&lt;/dd&gt;
  &lt;dd&gt;definition 1-b&lt;/dd&gt;
  &lt;dd&gt;definition 1-c&lt;/dd&gt;
  &lt;dd&gt;definition 1-d&lt;/dd&gt;
 
  &lt;dt id="term-2"&gt;term 2&lt;/dt&gt;
  &lt;dd&gt;definition 2-a&lt;/dd&gt;
  &lt;dd&gt;definition 2-b&lt;/dd&gt;
  &lt;dd&gt;definition 2-c&lt;/dd&gt;
 
  &lt;dt id="term-3"&gt;term 3&lt;/dt&gt;
  &lt;dd&gt;definition 3-a&lt;/dd&gt;
  &lt;dd&gt;definition 3-b&lt;/dd&gt;
&lt;/dl&gt;
&lt;script&gt;
$("#term-1").nextUntil("dt")
  .css("background-color", "red");
 
 $('#term-3').prevUntil('dt')
            .css('background-color', 'green');
&lt;/script&gt;
    </pre>
    <h2>.has()</h2>
    <ul id="hasdemo">
        <li>list item 1</li>
        <li>list item 2
    <ul>
        <li>list item 2-a</li>
        <li>list item 2-b</li>
    </ul>
        </li>
        <li>list item 3</li>
        <li>list item 4</li>
    </ul>
    <script>
        $('#hasdemo li').has('ul').css('border', '1px solid red');
    </script>

    <pre class="jush" data-lang="html">
&lt;ul id="hasdemo"&gt;
&lt;li&gt;list item 1&lt;/li&gt;
&lt;li&gt;list item 2
&lt;ul&gt;
&lt;li&gt;list item 2-a&lt;/li&gt;
&lt;li&gt;list item 2-b&lt;/li&gt;
&lt;/ul&gt;
&lt;/li&gt;
&lt;li&gt;list item 3&lt;/li&gt;
&lt;li&gt;list item 4&lt;/li&gt;
&lt;/ul&gt;
&lt;script&gt;
$('#hasdemo li').has('ul').css('border', '1px solid red');
&lt;/script&gt;</pre>

    <h2>.delay()</h2>
    <style>
        #delayDemo {
            position: absolute;
            margin-left: 20px;
            float:left;
            
            height:200px;
            width:100px;
        }

            #delayDemo div {
                position: absolute;
                width: 60px;
                height: 60px;
                float: left;
            }

            #delayDemo .first {
                background-color: #3f3;
                left: 0;
            }

            #delayDemo .second {
                background-color: #33f;
                left: 80px;
            }
    </style>
    <div id="delayDemo">


        <p>
            <button>Run</button>
        </p>
        <div class="first"></div>
        <div class="second"></div>
        <script>
            $("#delayDemo button").click(function () {
                $("#delayDemo div.first").slideUp(300).delay(800).fadeIn(400);
                $("#delayDemo div.second").slideUp(300).fadeIn(400);
            });

        </script>

       
    </div>
    <br />
    <br />
    <br /><br />
    <br />
    <br />
    <pre  class="jush" data-lang="html">
        &lt;style&gt;
	#delayDemo {
		position: absolute;
		margin-left: 20px;
		float:left;
		
		height:200px;
		width:100px;
	}

		#delayDemo div {
			position: absolute;
			width: 60px;
			height: 60px;
			float: left;
		}

		#delayDemo .first {
			background-color: #3f3;
			left: 0;
		}

		#delayDemo .second {
			background-color: #33f;
			left: 80px;
		}
&lt;/style&gt;
&lt;div id="delayDemo"&gt;


	&lt;p&gt;
		&lt;button&gt;Run&lt;/button&gt;
	&lt;/p&gt;
	&lt;div class="first"&gt;&lt;/div&gt;
	&lt;div class="second"&gt;&lt;/div&gt;
	&lt;script&gt;
		$("#delayDemo button").click(function () {
			$("#delayDemo div.first").slideUp(300).delay(800).fadeIn(400);
			$("#delayDemo div.second").slideUp(300).fadeIn(400);
		});

	&lt;/script&gt;

    </pre>
    
</body>
</html>
