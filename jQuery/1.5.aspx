<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learning jQuery 1.5</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script src="http://code.jquery.com/jquery-1.5.1.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '1.6.aspx';", 1000);
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>jQuery Updates </h1>
        <h3>Version 1.5</h3>
        <hr />
        <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
        <input type="button" id="Next" value="Next" style="float: right" /><br />
        <br />
        <h2>JQuery .Deferred() .resolve() .reject() .done() .fail() </h2>

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
                OneBigFunction().done(function () {
                    alert('Function 1 Done');
                }).fail(function () {
                    alert('Function 1 failed');
                });

                TwoBigFunction().done(function () {
                    alert('Function 2 Done');
                }).fail(function () {
                    alert('Function 2 failed');
                });

                ThreeBigFunction().done(function () {
                    alert('Function 3 Done');
                }).fail(function () {
                    alert('Function 3 failed');
                });

            }


        </script>
        
        <pre class="jush">
       function OneBigFunction() {
                var dfd = $.Deferred();
                for (var i = 0; i < 1000; i++) {
                    $('#container1').append(i.toString() + "Func1 &lt;br&gt;");
                }
                //Simulating Success
                dfd.resolve();
                return dfd.promise();

            }

            function TwoBigFunction() {
                var dfd = $.Deferred();

                for (var j = 0; j < 1000; j++) {
                    $('#container1').append(j.toString() + "Func2 &lt;br&gt;");
                }
                //Simulating Success
                dfd.resolve();
                return dfd.promise();

            }

            function ThreeBigFunction() {
                var dfd = $.Deferred();

                for (var j = 0; j < 1000; j++) {
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
                OneBigFunction().done(function () {
                    alert('Function 1 Done');
                }).fail(function () {
                    alert('Function 1 failed');
                });

                TwoBigFunction().done(function () {
                    alert('Function 2 Done');
                }).fail(function () {
                    alert('Function 2 failed');
                });

                ThreeBigFunction().done(function () {
                    alert('Function 3 Done');
                }).fail(function () {
                    alert('Function 3 failed');
                });

            }

        </pre>
        <br />
        <h2>jQuery.parseXML()</h2>

        <p id="XMLBox" class="box">
        </p>
        <button onclick="ParseXML();return false;">Parse XMLL</button>

        <script>
            function ParseXML() {
                var PXLog = new Logger("#XMLBox");
                PXLog.Log("Parsing xml Now");
                var xml = "<rss version='2.0'><channel><title>RSS Title</title></channel></rss>",
                xmlDoc = $.parseXML(xml),
                $xml = $(xmlDoc),
                $title = $xml.find("title");

                /* append "RSS Title" to #someElement */
                PXLog.Log($title.text());

                /* change the title to "XML Title" */
                PXLog.Log("change the title to XML Title");
                $title.text("XML Title");

                /* append "XML Title" to #anotherElement */
                PXLog.Log($title.text());
            }


        </script>
        <pre>
function ParseXML() {
    var PXLog = new Logger("#XMLBox");
    PXLog.Log("Parsing xml Now");
    var xml = "<rss version='2.0'><channel><title>RSS Title</title></channel></rss>",
    xmlDoc = $.parseXML(xml),
    $xml = $(xmlDoc),
    $title = $xml.find("title");

    /* append "RSS Title" to #someElement */
    PXLog.Log($title.text());

    /* change the title to "XML Title" */
    PXLog.Log("change the title to XML Title");
    $title.text("XML Title");

    /* append "XML Title" to #anotherElement */
    PXLog.Log($title.text());
}

function Logger(name) {
    this.ID = name;
    var that = this;
    this.Log = function (str) {
        $(that.ID).append(str + "<br>");
    }
}

        </pre>
        <h2>.when() and .then()</h2>
        <div id="Div2" class="box">
        </div>
        <button onclick="DoWhenThen();return false;">Do Long task</button>
       
        <script>

            function FourBigFunction() {
                var dfd = $.Deferred();
                for (var i = 0; i < 5000; i++) {
                    $('#Div2').append(i.toString() + "Func1 <br>");
                }
                //Simulating Success
                dfd.resolve();
                return dfd.promise();

            }

            function FiveBigFunction() {
                var dfd = $.Deferred();
                for (var i = 0; i < 5000; i++) {
                    $('#Div2').append(i.toString() + "Func1 <br>");
                }
                //Simulating Success
                dfd.resolve();
                return dfd.promise();

            }

            function DoWhenThen() {
                $.when(FourBigFunction() , FiveBigFunction()).then(
                            function () {
                                alert('Demo of when and then');
                            }

                            );

            }


        </script>
        <pre class="jush">
                function FourBigFunction() {
                var dfd = $.Deferred();
                for (var i = 0; i < 5000; i++) {
                    $('#Div2').append(i.toString() + "Func1 &lt;br&gt;");
                }
                //Simulating Success
                dfd.resolve();
                return dfd.promise();

            }

            function FiveBigFunction() {
                var dfd = $.Deferred();
                for (var i = 0; i < 5000; i++) {
                    $('#Div2').append(i.toString() + "Func1 &lt;br&gt;");
                }
                //Simulating Success
                dfd.resolve();
                return dfd.promise();

            }

            function DoWhenThen() {
                $.when(FourBigFunction() , FiveBigFunction()).then(
                            function () {
                                alert('Demo of when and then');
                            }

                            );
            }    </pre>
    </form>
    <script src="Logger.js"></script>
</body>

</html>
