<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jquery 1.3 and Above Index</title>
    <link href="css/Default.css" rel="stylesheet" type="text/css" />
    <link href="css/jush.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript" src="js/JQuery.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.jush.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            $('body').fadeIn(3000);
            $("pre").bind("click", function () {
                $(this).jush();
            });
    
        });
    </script>
</head>
<body>

    <pre id="boilerplate" class="jush" style="display: none">
&lt;!DOCTYPE html&gt;<br />
&lt;html&gt;<br />
&lt;head&gt;<br />
&lt;script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"&gt;&lt;/script&gt;<br />
&lt;meta charset=utf-8 /&gt;<br />
&lt;title&gt;JS Bin&lt;/title&gt;<br />
&lt;/head&gt;<br />
&lt;body&gt;<br />
&nbsp;&nbsp;<br />
&lt;/body&gt;<br />
&nbsp; &lt;script&gt;<br />
&nbsp; &nbsp; &nbsp; $('body').html('JQuery Rocks');<br />
&nbsp; &lt;/script&gt;<br />
&lt;/html&gt;
    </pre>
    <form id="form1" runat="server">
        <div>
            <h1>&nbsp;&nbsp;INDEX</h1>
            <hr />
            <ul>
                <li>
                    <h3>Getting Started</h3>
                    <ul>
                        <li><a href="http://www.jQuery.com" target="_blank">Getting JQuery</a></li>
                        <li>JQuery CDN 
                            <ul>
                                <li>Google <a href="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" target="_blank">Click</a></li>
                                <li>Microsoft <a href="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js" target="_blank">Click</a></li>
                                <li>Media Temple <a href="http://code.jquery.com/jquery-1.8.2.min.js" target="_blank">Click</a></li>

                            </ul>
                        </li>
                        <li>Creating your first page <a href="#" onclick="javascript:$('#boilerplate').toggle().jush();">Show/Hide</a></li>
                    </ul>
                </li>
                <li>
                    <h3>JavaScript fundamentals</h3>
                    <ul>
                        <li><a href="JSFundas/Scripting.aspx">JavaScript as a Scripting language</a></li>
                                  <li><a href="JSFundas/Functional.aspx">JavaScript as a functional programming language</a></li>
                        <li><a href="JSFundas/Dynamic.aspx">JavaScript as a dynamic programming language</a></li>
              
                    </ul>
                </li>
                <li>
                    <h3>Selectors</h3>
                    <ul>
                        <li><a href="Selectors/Default.aspx">CSS Selectors</a></li>
                        <li><a href="Selectors/AttribSelectors.aspx">Attribute Selectors</a></li>
                        <li><a href="Selectors/CustomSelectors.aspx">Custom Selectors</a></li>
                        <li><a href="Selectors/FormSelectors.aspx">Form Selectors</a></li>
                    </ul>
                </li>
                <li>
                    <h3>Events</h3>
                    <ul>
                        <li><a href="Events/EventDefault.aspx">Page Load/Ready Events</a></li>
                        <li><a href="Events/EventBind.aspx">Binding Events</a></li>
                        <li><a href="Events/EventCompound.aspx">Compund Events</a></li>
                        <li><a href="Events/EventOtherFundas.aspx">Tricks and other fundas</a></li>

                    </ul>
                </li>
                <li>
                    <h3>Effects</h3>
                    <ul>
                        <li><a href="Effects/InlineCss.aspx">Inline css Modifications</a></li>
                        <li><a href="Effects/EffectsAll.aspx">Hide/Show SlideUp/Down fadeIn/Out </a></li>
                        <li><a href="Effects/EffectsAll.aspx">Compound Effects (Toggle)</a></li>
                        <li><a href="Effects/Animation.aspx">Custom Animations</a></li>

                    </ul>
                </li>

                <li>
                    <h3>DOM Manipulation</h3>
                    <ul>
                        <li><a href="DOM/Attribute.aspx">Manipulating Attributes</a></li>
                        <li><a href="DOM/NewElem.aspx">Inserting new elements </a></li>
                        <li><a href="DOM/MoveElem.aspx">Moving elements</a></li>
                        <li><a href="DOM/CopyElem.aspx">Copying elements</a></li>

                    </ul>
                </li>

                <li>
                    <h3>AJAX With jQuery</h3>
                    <ul>
                        <li><a href="AJAX/LoadDemo.aspx">Load HTML with AJAX</a></li>
                        <li><a href="AJAX/GetDemo.aspx">http Get demo </a></li>
                        <li><a href="AJAX/PostDemo.aspx">http Post demo</a></li>
                        <li><a href="AJAX/AJAXDemo.aspx">Ajax Method Demo</a></li>

                    </ul>
                </li>
                <li>
                    <h3>Customization And plug-ins with jQuery  </h3>
                    <ul>
                        <li><a href="Custom/Selectors.aspx"> Writing your own selectors</a></li>
                        <li><a href="Custom/UsingPlugins.aspx">Using plugins</a> </li>
                        <li><a href="Custom/WritingPlugins.aspx">Writing your own plugins demo</a></li>
                   
                    </ul>
                </li>
  
                                <li>
                    <h3>jQuery 1.4 and Above  </h3>
                    <ul>
                        <li><a href="jQuery/1.4.aspx">jQuery 1.4</a></li>
                        <li><a href="jQuery/1.5.aspx">jQuery 1.5</a> </li>
                        <li><a href="jQuery/1.6.aspx">jQuery 1.6</a></li>
                   <li><a href="jQuery/1.7.aspx">jQuery 1.7</a></li>
                   <li><a href="jQuery/1.8.aspx">jQuery 1.8</a></li>
                   <li><a href="jQuery/1.9.aspx">jQuery 1.9</a></li>
                   <li><a href="jQuery/2.0.aspx">jQuery 2.0</a></li>
                   <li><a href="jQuery/2.1.aspx">jQuery 2.1</a></li>
                   <li><a href="jQuery/2.2.aspx">jQuery 2.2</a></li>
                   <li><a href="jQuery/2.3.aspx">jQuery 2.3</a></li>
                   <li><a href="jQuery/2.4.aspx">jQuery 2.4</a></li>
                   <li><a href="jQuery/2.5.aspx">jQuery 2.5</a></li>
                   
                    </ul>
                </li>

                          </ul>

        </div>
    </form>


</body>
</html>
