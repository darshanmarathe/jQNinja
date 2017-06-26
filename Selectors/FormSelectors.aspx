<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormSelectors.aspx.cs" Inherits="Selectors_FormSelectors" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Query Demos - Manipulating CSS with jQuery (Form selectors)</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        var selector;
        function pageLoad() {
            $('html').next().text('');
            $('body').fadeIn(3000);
            $("pre").jush();
            $('#Next').click(function() {
                $('body').html('<h1>Thanks for watching this demo</h1><br />Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '../Events/EventDefault.aspx';", 1000);
            });

            $('.selector').click(
            function() {
                
                selector = $(this).html();
                $(selector).addClass("redoutline").hide(2500);
                $('.redoutline').show(2500).removeClass('redoutline');
                var code;
                code = '&lt;script type="text/javascript" language="javascript"&gt;<br />\n';
                code += "$('" + selector + "').addClass('redoutline').hide(2500);<br />\n";
                code += '&lt;/script&gt;<br />';
                $('#Code')[0].innerHTML = code;
                $('#Code').jush();
            });
        }



    </script>

    <style type="text/css">
        .style1
        {
            border: solid 1px black;
            width: 100%;
        }
        .style td
        {
            border: solid 1px black;
            width: 25%;
        }
        .redoutline
        {
            border: solid 2px Red;
        }
    </style>
</head>
<body>
    <form id="fosrm1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <h1>
            Manipulating CSS with jQuery</h1>
        <h3>
            Form Selectors</h3>
        <hr />
        <input type="button" value="Back" onclick="window.location = '../Index.aspx';"
            style="float: left" />
        <input type="button" value="Next" id="Next" style="float: right" />
        <br / />
        <br / />
        <!-- controls go here-->
        <table class="style1">
            <tr>
                <td>
                    <input id="Text1" type="text" />
                </td>
                <td>
                    <input id="Password1" type="password" />
                </td>
                <td>
                    <input id="Text5" disabled="disabled" type="text" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <input id="Text2" type="text" />
                </td>
                <td>
                    <input id="Password2" type="password" />
                </td>
                <td>
                    <input id="Text6" disabled="disabled" type="text" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <input id="Text3" type="text" />
                </td>
                <td>
                    <input id="Checkbox1" type="checkbox" />
                </td>
                <td>
                    <input id="Submit1" type="submit" value="submit" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <input id="Text4" type="text" />
                </td>
                <td>
                    <input id="Checkbox2" type="checkbox" />
                </td>
                <td>
                    <input id="Reset1" type="reset" value="reset" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea>
                </td>
                <td>
                    <input id="Checkbox3" type="checkbox" />
                </td>
                <td>
                    <input id="File1" type="file" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <textarea id="TextArea2" cols="20" name="S2" rows="2"></textarea>
                </td>
                <td>
                    <input id="Checkbox4" type="checkbox" />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    
                    <input type="image" src="../Images/JQ.jpeg" />
                    <td>
                        <input id="Radio1" type="radio" checked="checked" />
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
            </tr>
            <tr>
                <td>
                    <select id="Select1" name="D1">
                        <option>India</option>
                        <option>Japan</option>
                        <option>Russia</option>
                    </select>
                </td>
                <td>
                    <input id="Radio2" type="radio" />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <select id="Select2" name="D2">
                        <option>.Net</option>
                        <option>PHP</option>
                        <option>Ruby</option>
                    </select>
                </td>
                <td>
                    <input id="Radio3" type="radio" checked="checked" disabled="disabled" />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <input id="Button1" type="button" value="button" />
                </td>
                <td>
                    <input id="Radio4" type="radio" />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
        Lets give a shot
    </div>
    </form>
    <!-- Code Selectors go here -->
    <table style="width: 100%">
        <tr>
            <td>
                <span class="selector">:text</span><br />
                <span class="selector">:checkbox</span><br />
                <span class="selector">:radio</span><br />
                <span class="selector">:image</span><br />
                <span class="selector">:submit</span><br />
                <span class="selector">:reset</span><br />
                <span class="selector">:password</span><br />
                <span class="selector">:file</span><br />
                <span class="selector">:input</span><br />
                <span class="selector">:button</span><br />
                <span class="selector">:enabled</span><br />
                <span class="selector">:disabled</span><br />
                <span class="selector">:checked</span><br />
                <span class="selector">:selected</span><br />
                <span class="selector"></span>
                <br />
            
                <span class="selector"></span>
                <br />
            </td>
            <td>
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
                <span class="selector"></span>
                <br />
            </td>
        </tr>
    </table>
    </p>
    <pre id="Code">
        
        
        
        </pre>
</body>
</html>
