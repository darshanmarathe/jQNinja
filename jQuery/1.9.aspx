<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Learning jQuery 1.9</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.0.0.js"></script>
    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>
    <script type="text/javascript">
        $('document').ready(function () {
            $('body').css('display', 'block');

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '1.9.aspx';", 1000);
            });
            $('pre').jush();

        });
    </script>
    <style>
        .row .box {
            height:300px;
            width:90%;
            background-color:blueviolet;
            display:none;
        }
        .selected {
            background-color:red;
            color:azure;
            border:1px solid yellow;
        }

        #lidemo {
            width: 100%;
        }

            #lidemo div {
                float: left;
            }

        .row {
            float: left;
            width: 98%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>jQuery Updates
            </h1>
            <h3>Version 1.9</h3>
            <hr />
            <input type="button" id="Back" value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button" id="Next" value="Next" style="float: right" /><br />

            <br />
            <h2>jQuery Migrate Plugin</h2>
            <p>
                This version of jQuery developers decided to loose some weight, for the same it depreciated many methods and support for IE6 and other older browsers
            <pre data-lang="html">
&lt;script src="http://code.jquery.com/jquery-1.9.0.js"&gt;&lt;/script&gt;
&lt;script src="http://code.jquery.com/jquery-migrate-1.0.0.js"&gt;&lt;/script&gt;</pre>

            </p>
            <h2>Removed Features</h2>
            <p>This should not be considered a definitive list of removals, but they are the most likely to cause compatibility problems. As always, thorough testing is your best option…</p>
            <ul>
                <li><strong>jQuery.browser()</strong> — removed</li>
                <li><strong>.live()</strong> events — use <a href="http://api.jquery.com/on/">.on()</a> instead</li>
                <li><strong>.die()</strong> — use <a href="http://api.jquery.com/off/">.off()</a> instead</li>
                <li><strong>.andSelf()</strong> — use <a href="http://api.jquery.com/addBack/">.addBack()</a> instead</li>
                <li><strong>.add()</strong> — nodes are now returned in document order with disconnected nodes (those not in the document) at the end. All sets which contain disconnected nodes follow this behavior</li>
                <li><strong>.after(), .before(), .replaceWith()</strong> — now return an unmodified jQuery set</li>
                <li><strong>.appendTo, .insertBefore, .insertAfter, .replaceAll</strong> — if no elements can be selected by the target selector, e.g. <code>$(elements).appendTo("#not_found"))</code>, the resulting set is now empty</li>
                <li><strong>Ajax events must be attached to the document</strong> — not a DOM node, i.e. <code>$(document).ajaxStart(...);</code> rather than <code>$("#node").ajaxStart(...);</code></li>
                <li><strong>radio/checkbox click events</strong> — now returns the checked state rather than the state it would have been in if .preventDefault() were not called</li>
                <li><strong>Order of focus events</strong> — blur events on the previous element are now fired prior to focus events on the new element</li>
                <li><strong>jQuery(htmlString)</strong> — htmlString is only considered to be HTML (rather than a selector) if it starts with a ‘&lt;’ character</li>
                <li><strong>.attr()</strong> — you should normally use <a href="http://api.jquery.com/prop/">.prop()</a></li>
                <li><strong>“hover” pseudo-event</strong> — “hover” is no longer supported as a synonym for “mouseenter mouseleave”</li>
                <li><strong>jQuery.ajax returning an empty JSON result</strong> — this is now considered to be malformed JSON and throws an error</li>
            </ul>

            <h2>:last-of-type Selector :nth-of-type()</h2>
            <div id="lidemo">
                <div>
                    <ul>
                        <li>John</li>
                        <li>Karl</li>
                        <li>Adam</li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li>Dan</li>
                        <li>Lee</li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li>Dave</li>
                        <li>Rick</li>
                        <li>Timmy</li>
                        <li>Gibson</li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <li>Darshan</li>
                  
                    </ul>
                </div>
           
                 </div>
            <div class="row">
                <br />
                <button onclick="javascript:return Select_2nd_Last_elem();">Select 2nd Last Element</button>
                <button onclick="javascript:return Select_nth_of_type();">Select 2nd nth Of Type Element</button>
             <button onclick="javascript:return Select_last_of_type();">Select last Of Type Element</button>
           <button onclick="javascript:return Select_first_of_type();">Select first Of Type Element</button>
           <button onclick="javascript:return Select_nth_last_child();">Select nth Last Child</button>
            <button onclick="javascript:return Select_only_of_type();">Select Only of Type</button>
          
                  </div>
            <div class="row">
                <br />
                <script>
                    function RemoveClass() {
                        $('.selected').removeClass('selected');

                    }
                    function Select_2nd_Last_elem() {
                        RemoveClass();
                        $("ul li:nth-last-of-type(2)").addClass("selected");
                        
                        return false;
                    }

                    function Select_nth_of_type() {
                        RemoveClass();
                        $("ul li:nth-of-type(2)").addClass("selected");
                        return false;
                    }

                    function Select_last_of_type() {
                        RemoveClass();
                        $("ul li:last-of-type").addClass("selected");
                        return false;
                    }
                    function Select_first_of_type() {
                        RemoveClass();
                        $("ul li:first-of-type").addClass("selected");
                        return false;
                    }

                    function Select_nth_last_child() {
                        RemoveClass();
                        $("ul li:nth-last-child(2)").addClass("selected");
                        return false;

                    }
                    function Select_only_of_type() {
                        RemoveClass();
                        $("ul li:only-of-type").addClass("selected");


                        return false;
                    }
                </script>

                <pre>
function RemoveClass() {
    $('.selected').removeClass('selected');

}
function Select_2nd_Last_elem() {
    RemoveClass();
    $("ul li:nth-last-of-type(2)").addClass("selected");
                        
    return false;
}

function Select_nth_of_type() {
    RemoveClass();
    $("ul li:nth-of-type(2)").addClass("selected");
    return false;
}

function Select_last_of_type() {
    RemoveClass();
    $("ul li:last-of-type").addClass("selected");
    return false;
}
function Select_first_of_type() {
    RemoveClass();
    $("ul li:first-of-type").addClass("selected");
    return false;
}

function Select_nth_last_child() {
    RemoveClass();
    $("ul li:nth-last-child(2)").addClass("selected");
    return false;

}
function Select_only_of_type() {
    RemoveClass();
    $("ul li:only-of-type").addClass("selected");
    return false;
}
        </pre>
            </div>


        </div>
        <div class="row">
            <h2>:lang Selector</h2>

            <h3>USA</h3>
<div lang="en-us">red
  <div>white
    <div>and blue</div>
  </div>
</div>
<h3>España</h3>
<div lang="es-es">rojo
  <div>amarillo
    <div>y rojo</div>
  </div>
</div>

        </div>
        <script>
            $("div:lang(en-us)").append("usa");
            $("div:lang(es-es)").append("spain");
</script>
        <div class="row">
            <pre data-lang="html">
&lt;h3&gt;USA&lt;/h3&gt;
&lt;div lang="en-us"&gt;red
  &lt;div&gt;white
    &lt;div&gt;and blue&lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
&lt;h3&gt;España&lt;/h3&gt;
&lt;div lang="es-es"&gt;rojo
  &lt;div&gt;amarillo
    &lt;div&gt;y rojo&lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;
            </pre>
            <pre>
$("div:lang(en-us)").append("usa");
$("div:lang(es-es)").append("spain");
            </pre>
        </div>
        <div class="row">
          <button onclick="return Start_Animation();">Start Animation</button>
          <button onclick="return Finish_Animation();">Finish Animation</button>
      
              <div class="box"></div>
            <br />
            <pre>
function Start_Animation() {
$('.box').slideDown(10000);
return false;
}

function Finish_Animation() {
$('.box').finish();
return false;
}
            </pre>
        </div>
            <script>
                function Start_Animation() {
                    $('.box').slideDown(10000);
                    return false;
                }

                function Finish_Animation() {
                    $('.box').finish();
                    return false;
                }

</script>
 
    </form>
</body>
</html>
