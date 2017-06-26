<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learning jQuery 1.6</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script src="http://code.jquery.com/jquery-1.6.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').css('display', 'block');

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '1.7.aspx';", 1000);
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


        .focused {
            background: #abcdef;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <h1>jQuery Updates </h1>
            <h3>Version 1.6</h3>
            <hr />
            <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button" id="Next" value="Next" style="float: right" /><br />
            <br />
            <h2>:focus Selector</h2>
            <div id="content">
                <input tabindex="1">
                <input tabindex="2">
                <select tabindex="3">
                    <option>select menu</option>
                </select>
                <div tabindex="4">
                    a div
                </div>
            </div>

            <script>
                $("#content").delegate("*", "focus blur", function (event) {
                    var elem = $(this);
                    setTimeout(function () {
                        elem.toggleClass("focused", elem.is(":focus"));
                    }, 0);
                });
            </script>

        </div>
        <pre class="jush" data-lang="html">
&lt;!-- CSS Style--&gt;
&lt;style&gt;
.focused {
    background: #abcdef;
}
&lt;/style&gt;
&lt;!--Markup --&gt;
&lt;div id="content"&gt;
	&lt;input tabindex="1"&gt;
	&lt;input tabindex="2"&gt;
	&lt;select tabindex="3"&gt;
		&lt;option&gt;select menu&lt;/option&gt;
	&lt;/select&gt;
	&lt;div tabindex="4"&gt;
		a div
	&lt;/div&gt;
&lt;/div&gt;
&lt;!-- Script--&gt;
&lt;script&gt;
	$("#content").delegate("*", "focus blur", function (event) {
		var elem = $(this);
		setTimeout(function () {
			elem.toggleClass("focused", elem.is(":focus"));
		}, 0);
	});
&lt;/script&gt;
</pre>

<h2>.prop() and .removeprop()</h2>
<div id="propDiv">
    <input id="check1" type="checkbox" checked="checked">
    <label for="check1">Check me</label>
    <button onclick="javascript:RemoveProp();return false;">Remove Prop</button>

    <p></p>
</div>
<p></p>
<script>
    $("#propDiv input").change(function () {
        var $input = $(this);
        $("#propDiv p").html(".attr('checked'): <b>" + $input.attr('checked') + "</b><br>"
                    + ".prop('checked'): <b>" + $input.prop('checked') + "</b><br>"
                    + ".is(':checked'): <b>" + $input.is(':checked')) + "</b>";
    }).change();

    function RemoveProp() {
        $('#propDiv input').removeProp('checked');
        var $input = $('#propDiv input').first();
        $("#propDiv p").html(".attr('checked'): <b>" + $input.attr('checked') + "</b><br>"
                    + ".prop('checked'): <b>" + $input.prop('checked') + "</b><br>"
                    + ".is(':checked'): <b>" + $input.is(':checked')) + "</b>";

    }
</script>
        <pre data-lang="html">
&lt;h2&gt;.prop() and .removeprop()&lt;/h2&gt;
&lt;div id="propDiv"&gt;
    &lt;input id="check1" type="checkbox" checked="checked"&gt;
    &lt;label for="check1"&gt;Check me&lt;/label&gt;
    &lt;button onclick="javascript:RemoveProp();return false;"&gt;Remove Prop&lt;/button&gt;

    &lt;p&gt;&lt;/p&gt;
&lt;/div&gt;
&lt;p&gt;&lt;/p&gt;
&lt;script&gt;
    $("#propDiv input").change(function () {
        var $input = $(this);
        $("#propDiv p").html(".attr('checked'): &lt;b&gt;" + $input.attr('checked') + "&lt;/b&gt;&lt;br&gt;"
                    + ".prop('checked'): &lt;b&gt;" + $input.prop('checked') + "&lt;/b&gt;&lt;br&gt;"
                    + ".is(':checked'): &lt;b&gt;" + $input.is(':checked')) + "&lt;/b&gt;";
    }).change();

    function RemoveProp() {
        $('#propDiv input').removeProp('checked');
        var $input = $('#propDiv input').first();
        $("#propDiv p").html(".attr('checked'): &lt;b&gt;" + $input.attr('checked') + "&lt;/b&gt;&lt;br&gt;"
                    + ".prop('checked'): &lt;b&gt;" + $input.prop('checked') + "&lt;/b&gt;&lt;br&gt;"
                    + ".is(':checked'): &lt;b&gt;" + $input.is(':checked')) + "&lt;/b&gt;";

    }
&lt;/script&gt;
        </pre>

        <h2>deferred.always()</h2>
 <div id="container1" class="box">
        </div>
        <button onclick="DoDoneFail();return false;">Do Long task</button>
        <script>
            function OneBigFunction() {
                var dfd = $.Deferred();
                for (var i = 0; i < 1000; i++) {
                    $('#container1').append(i.toString() + "Func1 <br>");
                }
                //Simulating Success
                dfd.resolve();
                return dfd.promise();

            }

            function TwoBigFunction() {
                var dfd = $.Deferred();

                for (var j = 0; j < 1000; j++) {
                    $('#container1').append(j.toString() + "Func2 <br>");
                }
                //Simulating Success
                dfd.resolve();
                return dfd.promise();

            }

            function ThreeBigFunction() {
                var dfd = $.Deferred();

                for (var j = 0; j < 1000; j++) {
                    $('#container1').append(j.toString() + "Func3 <br>");
                    if (j === 500) {
                        //Simulating failure  
                        dfd.reject();
                    }
                }
                dfd.resolve();
                return dfd.promise();

            }
            function DoDoneFail() {
                $.when(OneBigFunction(), TwoBigFunction(), ThreeBigFunction())
                .done(function () { alert('Done is done'); })
                .fail(function () { alert('One or more tasks failed'); })
                .always(function () { alert('always fired'); })

            }


        </script>

<pre data-lang="html">
&lt;div id="container1" class="box"&gt;
&lt;/div&gt;
&lt;button onclick="DoDoneFail();return false;"&gt;Do Long task&lt;/button&gt;
&lt;script&gt;
function OneBigFunction() {
	var dfd = $.Deferred();
	for (var i = 0; i &lt; 1000; i++) {
		$('#container1').append(i.toString() + "Func1 &lt;br&gt;");
	}
	//Simulating Success
	dfd.resolve();
	return dfd.promise();
}

function TwoBigFunction() {
	var dfd = $.Deferred();

	for (var j = 0; j &lt; 1000; j++) {
		$('#container1').append(j.toString() + "Func2 &lt;br&gt;");
	}
	//Simulating Success
	dfd.resolve();
	return dfd.promise();
}

function ThreeBigFunction() {
	var dfd = $.Deferred();

	for (var j = 0; j &lt; 1000; j++) {
		$('#container1').append(j.toString() + "Func3 &lt;br&gt;");
		if (j === 500) {
			//Simulating failure  
			dfd.reject();
		}
	}
	dfd.resolve();
	return dfd.promise();

}
function DoDoneFail() {
	$.when(OneBigFunction(), TwoBigFunction(), ThreeBigFunction())
	.done(function () { alert('Done is done'); })
	.fail(function () { alert('One or more tasks failed'); })
	.always(function () { alert('always fired'); })

}n
&lt;/script&gt;
        </pre>

        <h2>jQuery.holdReady()</h2>

 <button onclick="javascript:window.location = '1.6.aspx?loadhold=true';return false">Demo Holdready</button>
        <% if(Request.QueryString["loadhold"] != null)
	{
    
    %>
		 <script>
            $(function(){
                alert('Dom Ready fired');
            });
            alert('DOM Ready Locked');
            $.holdReady(true);
            $.getScript('Logger.js', function () {
                alert('DOM Ready unlocked');
                $.holdReady(false);
            });
        </script>
<%
	} %>
      

 <pre>
//DOM Ready Event
$(function(){
    alert('Dom Ready fired');
});
alert('DOM Ready Locked');
$.holdReady(true);
$.getScript("Logger.js", function () {
    alert('DOM Ready unlotcked');
    $.holdReady(false);
});
</pre>

    </form>
</body>
</html>
