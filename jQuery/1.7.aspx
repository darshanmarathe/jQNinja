<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learning jQuery 1.7</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.7.2.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').css('display' ,  'block');

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '1.8.aspx';", 1000);
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

        #OnOffDiv p {
            background-color: yellow;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>jQuery Updates
            </h1>
            <h3>Version 1.7</h3>
            <hr />
            <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button" id="Next" value="Next" style="float: right" /><br />
            <br />
            <h2>JQuery Callbacks</h2>
            <h3>Create Event</h3>
            <div id="message" class="box">
            </div>

            <input id="EventName" type="text" placeholder="Enter event name" />
            <input type="button" value="Create Event" onclick="javascript: CreateEvent();" />
            <h3>Fire Event</h3>
            <p>

                <input id="txtMessage" type="text" placeholder="Enter Some Message" />
                <input type="button" value="Fire Event" onclick="javascript: FireEvent();" />
                <h3>Play with Events</h3>
                <input type="button" value="Disable Event" onclick="javascript: DisableEvent();" />
                <input type="button" value="Check Event status" onclick="javascript: EventStatus();" />
                <br>
                <input type="button" value="callbacks Empty" onclick="javascript: EmptyEvents();" />
                <input type="button" value="Event is Fired ?" onclick="javascript: EnvetIsFired();" />
            </p>
            <em>When event fires it alerts , dose a console.log and shows message in box very good for a senario where you are loading multiple things based on output of some function</em>
        </div>
    </form>
    <script type="text/javascript">
        var topics = {};

        jQuery.Topic = function (id) {

            var callbacks,
        method,
        topic = id && topics[id];

            if (!topic) {
                callbacks = jQuery.Callbacks();
                topic = {
                    publish: callbacks.fire,
                    subscribe: function (func) {
                        DoShow('Event Added ' + func.toString());
                        callbacks.add(func);
                    },
                    unsubscribe: callbacks.remove,
                    disable: callbacks.disable,
                    disabled: callbacks.disabled,
                    empty: callbacks.empty,
                    fired: callbacks.fired

                };
                if (id) {
                    topics[id] = topic;
                }
            }
            return topic;
        };

        function DoAlert(txt) {
            alert(txt);

        }

        function DoLog(txt) {
            console.log(txt);
        }

        function DoShow(txt) {
            $('#message').append(txt + '<br>');
        }


        function CreateEvent() {

            var eventName = $('#EventName').val();
            $.Topic(eventName).subscribe(DoLog);
            $.Topic(eventName).subscribe(DoShow);
            $.Topic(eventName).subscribe(DoAlert);
            return false;
        }



        function FireEvent() {
            var eventName = $('#EventName').val();
            var message = $('#txtMessage').val();
            $.Topic(eventName).publish(message);
            return false;
        }

        function DisableEvent() {
            var eventName = $('#EventName').val();
            $.Topic(eventName).disable();
            return false;
        }

        function EventStatus() {
            var eventName = $('#EventName').val();
            alert("disabled " + $.Topic(eventName).disabled());
            return false;
        }


        function EmptyEvents() {
            var eventName = $('#EventName').val();
            $.Topic(eventName).empty();
            return false;
        }

        function EnvetIsFired() {
            var eventName = $('#EventName').val();
            alert("Envet fired = " + $.Topic(eventName).fired());
            return false;
        }

    </script>
    <pre class="jush">
       var topics = {};

        jQuery.Topic = function (id) {

            var callbacks,
        method,
        topic = id && topics[id];

            if (!topic) {
                callbacks = jQuery.Callbacks();
                topic = {
                    publish: callbacks.fire,
                    subscribe: function (func) {
                        DoShow('Event Added ' + func.toString());
                        callbacks.add(func);
                    },
                    unsubscribe: callbacks.remove,
                    disable: callbacks.disable,
                    disabled: callbacks.disabled,
                    empty: callbacks.empty,
                    fired: callbacks.fired

                };
                if (id) {
                    topics[id] = topic;
                }
            }
            return topic;
        };

        function DoAlert(txt) {
            alert(txt);

        }

        function DoLog(txt) {
            console.log(txt);
        }

        function DoShow(txt) {
            $('#message').append(txt + '<br>');
        }


        function CreateEvent() {

            var eventName = $('#EventName').val();
            $.Topic(eventName).subscribe(DoLog);
            $.Topic(eventName).subscribe(DoShow);
            $.Topic(eventName).subscribe(DoAlert);
            return false;
        }



        function FireEvent() {
            var eventName = $('#EventName').val();
            var message = $('#txtMessage').val();
            $.Topic(eventName).publish(message);
            return false;
        }

        function DisableEvent() {
            var eventName = $('#EventName').val();
            $.Topic(eventName).disable();
            return false;
        }

        function EventStatus() {
            var eventName = $('#EventName').val();
            alert("disabled " + $.Topic(eventName).disabled());
            return false;
        }


        function EmptyEvents() {
            var eventName = $('#EventName').val();
            $.Topic(eventName).empty();
            return false;
        }

        function EnvetIsFired() {
            var eventName = $('#EventName').val();
            alert("Envet fired = " + $.Topic(eventName).fired());
            return false;
        }

    </pre>
    <br />
    <br />
    <h2>Deffered Notify, Progress and then</h2>
    <div id="progress" style="border: 1px solid black; width: 100px">0</div>
    <progress id="progressBar" max="20"></progress>
    <button onclick="javascript:return DemoNotify();">Demo Nofify</button>


    <script>
        function doSomething() {
            var dfd = $.Deferred();
            var count = 0;
            var intervalId = setInterval(function () {
                dfd.notify(count++);
                if (count > 20) {
                    clearInterval(intervalId);
                    dfd.resolve();
                }
            }, 500);
            return dfd.promise();
        };

        function DemoNotify() {

            var promise = doSomething();

            promise.progress(function (i) {
                $("#progress").text(i);
                $("#progress").append(" " + promise.state());
                $('#progressBar').val(i);
            });

            promise.then(function () {
                $("#progress").append(" " + promise.state());
            });


            return false;
        }

    </script>

    <pre class="jush" data-lang="html">
 &lt;div id="Div1" style="border:1px solid black;width:100px"&lt;0&lt;/div&lt;
 &lt;progress id="progress1"  max="20"&lt;&lt;/progress&lt;
 &lt;button onclick="javascript:return DemoNotify();"&lt;Demo Nofify&lt;/button&lt;
</pre>
    <pre class="jush">
     function doSomething() {
         var dfd = $.Deferred();
         var count = 0;
         var intervalId = setInterval(function () {
             dfd.notify(count++);
             if (count > 20) {
                 clearInterval(intervalId);
                 dfd.resolve();
             }
         }, 500);
         return dfd.promise();
     };

     function DemoNotify() {

         var promise = doSomething();

         promise.progress(function (i) {
             $("#progress").text(i);
             $("#progress").append(" " + promise.state());
             $('#progressBar').val(i);
         });

         promise.then(function () {
             $("#progress").append(" " + promise.state());
         });

        
         return false;
     }
      
    </pre>

    <h2>event.delegateTarget</h2>

    <div style="background-color: yellow">
        <p>Click the button to change the background color of this div.</p>
        <button>Click me!</button>
    </div>

    <div style="background-color: yellow">
        <p>Click the button to change the background color of this div.</p>
        <button>Click me!</button>
    </div>
    <script>
        $(document).ready(function () {
            $("div").on("click", "button", function (event) {
                console.log(event.currentTarget);
                console.log(event.delegateTarget);
                $(event.delegateTarget).css("background-color", "pink");
            });
        });
    </script>
    <pre class="jush">
     $(document).ready(function () {
        $("div").on("click", "button", function (event) {
            console.log(event.currentTarget);
            console.log(event.delegateTarget);
            $(event.delegateTarget).css("background-color", "pink");
        });
    });
    </pre>
    <h2>jQuery.isNumeric</h2>

    <input type="text" name="txtIsNum" id="txtIsNum" placeholder="enter any value and click test" value=" " />
    <button id="btnIsNumTest">Test</button>
    <script>
        $(function () {
            $('#btnIsNumTest').click(function () {
                var value = $('#txtIsNum').val();
                alert($.isNumeric(value));
            });

        });

    </script>

    <pre>
        $(function () {
            $('#btnIsNumTest').click(function () {
                var value = $('#txtIsNum').val();
                alert($.isNumeric(value));
            });     
        });
    </pre>
    <h2>jQuery .On() and .Off() events</h2>

    <div id="OnOffDiv">
        <p>I am a p tag and click me.... <button id="OffButton">Shut the event off...</button></p>
        
    </div>

    <script>
        var count = 1;
        $("#OnOffDiv").on("click", "p", function() {
          $(this).after("<p>Another paragraph! With On" + (++count) + "</p>");
        });

        $('#OffButton').click(function() {
            $("#OnOffDiv").off("click", "p");
         });
        

        //click will not get attached to dynamicly created events
       // $('#OnOffDiv p').click(function () {
         //   $(this).after("<p>Another paragraph! with just click" + (++count) + "</p>");
        //});
    </script>
    <i>Node : .On and .Off events do work with newly created (dynamnic) element but short hand events like .click dose not get attached to dynamicly created events </i>
 
    <pre data-lang="html">
 &lt;div id="OnOffDiv"&gt;
        &lt;p&gt;I am a p tag and click me....&lt;/p&gt;
 &lt;/div&gt;
    </pre>
       <pre>
           var count = 1;
     $("#OnOffDiv").on("click", "p", function() {
          $(this).after("&lt;p&gt;Another paragraph! With On" + (++count) + "&lt;/p&gt;");
        });

        $('#OffButton').click(function() {
            $("#OnOffDiv").off("click", "p");
         });

        //click will not get attached to dynamicly created events
       // $('#OnOffDiv p').click(function () {
         //   $(this).after("&lt;p&gt;Another paragraph! With Just click" + (++count) + "&lt;/p&gt;");
        //});
    </pre>
</body>
</html>
