<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AttribSelectors.aspx.cs"
    Inherits="Selectors_AttribSelectors" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Demos - Manipulating CSS with jQuery (Attribute selectors)</title>
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">

        function pageLoad() {
            $('body').fadeIn(3000);
            $("pre").jush();
            $('#Next').click(function() {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = 'CustomSelectors.aspx';", 1000);
            });
        }

        function applyclass() {
            $("a[href^='mailto:']").addClass('mailto');
            $("a[href$='.pdf']").addClass('pdflink');
            $("a[href^='http'][href*='google']").addClass('henrylink');
            $("a[href*='yahoo']").addClass('yahoo');
        }
        
    </script>

    <style type="text/css">
        a
        {
            color: #00c;
        }
        a.mailto
        {
            background: url(images/mail.jpg) no-repeat right bottom;
            padding-right: 20px;
        }
        a.pdflink
        {
            background: url(images/pdf.jpg) no-repeat right bottom;
            padding-right: 20px;
        }
        a.henrylink
        {
            background: url(images/google.jpg) no-repeat right bottom;
            padding-right: 20px;
        }
        a.yahoo
        {
            background-color:green;
            font-weight:bold;	
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <h1>
                Manipulating CSS with jQuery</h1>
            <h3>
                Attribute Selectors</h3>
            <hr />
            <input type="button" value="Back" onclick="window.location = '../Index.aspx';" style="float: left" />
            <input type="button" value="Next" id="Next" style="float: right" />
            <br />
            <br />
            <div id="Container">
                <ul id="selected-plays">
                    <li>JQuery
                        <ul>
                            <li><a href="http://acko.net/files/jQuery%20-%2023%20March%202007.pdf">The Book</a></li>
                            <li><a href="http://mail.google.com/">Gmail </a></li>
                            <li><a href="mailto:darshanmarathe@gmail.com">Mail Me </a></li>
                            <li>Twelfth Night</li>
                        </ul>
                    </li>
                    <li>Other Libs
                        <ul>
                            <li><a href="http://www.javapassion.com/ajax/Prototype.pdf">Prototype book</a></li>
                            <li><a href="http://www.google.co.in/search?rlz=1C1GGLS_enIN326IN326&sourceid=chrome&ie=UTF-8&q=Prototype+pdf">
                                Search google for prototype</a></li>
                            <li><a href="mailto:protptype@javascriptit.com">Romeo and Juliet</a></li>
                        </ul>
                    </li>
                    <li>Histories
                        <ul>
                            <li>Henry IV (<a href="mailto:henryiv@king.co.uk">email</a>)
                                <ul>
                                    <li>Part I</li>
                                    <li>Part II</li>
                                </ul>
                                <li><a href="http://www.google.com/Reader">Google Reader</a></li>
                                <li><a href="http://www.Richard.com">Richard II</a></li>
                        </ul>
                    </li>
                    <li>Yahoo Links
                   
                        <ul>
                            <li><a href="http://www.yahoo.com/">Yahoo</a></li>
                        </ul>
                    </>
                </ul>
                <p>
                    <input id="Button1" type="button" value="Apply Stlye" onclick="javascript:applyclass();" /></p>
            </div>
      
      <b style="text-decoration: underline">Css</b>
            <pre class="jush" data-lang="css">
&lt;style type="text/css"&gt;
    a {
    color: #00c;
    }
    a.mailto {
    background: url(images/mail.jpg) no-repeat right bottom;
    padding-right: 20px;
    }
    a.pdflink {
    background: url(images/pdf.jpg) no-repeat right bottom;
    padding-right: 20px;
    }
    a.henrylink {
    background: url(images/google.jpg) no-repeat right bottom;
    padding-right: 20px;
    
    }
       
&lt;/style&gt;
</pre>
<br />
<br />
<b style="text-decoration: underline">Script</b>
<pre class="jush" data-lang="javascript">
&lt;input id="Button2" type="button" value="Apply Stlye" onclick="javascript:applyclass();" /&gt;


&lt;script type="text/javascript" language="javascript"&gt;

function applyclass() {
            $("a[href^='mailto:']").addClass('mailto');
            $("a[href$='.pdf']").addClass('pdflink');
            $("a[href^='http'][href*='google']").addClass('henrylink');
            $("a[href*='yahoo']").addClass('yahoo');
        }
&lt;/script&gt;
</pre>
        </div>
    </form>
</body>
</html>
