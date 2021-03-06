﻿<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>JQuery Demos - Manupulating DOM Attributes</title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '../DOM/Attributes.aspx';", 1000);
            });
        });
        </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<h1 id="f-title">Flatland: A Romance of Many Dimensions</h1>
<div id="f-author">by Edwin A. Abbott</div>
<h2>Part 1, Section 3</h2>
<h3 id="f-subtitle">
Concerning the Inhabitants of Flatland
</h3>
<div id="excerpt">an excerpt</div>
<div class="chapter">
<p class="square">Our Professional Men and Gentlemen are
Squares (to which class I myself belong) and Five-Sided
Figures or <a
href="http://en.wikipedia.org/wiki/Pentagon">Pentagons
</a>.
</p>
<p class="nobility hexagon">Next above these come the
Nobility, of whom there are several degrees, beginning at
Six-Sided Figures, or <a
href="http://en.wikipedia.org/wiki/Hexagon">Hexagons</a>,
and from thence rising in the number of their sides till
they receive the honourable title of <a
href="http://en.wikipedia.org/wiki/Polygon">Polygonal</a>,
or many-Sided. Finally when the number of the sides
becomes so numerous, and the sides themselves so small,
that the figure cannot be distinguished from a <a
href="http://en.wikipedia.org/wiki/Circle">circle</a>, he
is included in the Circular or Priestly order; and this is
the highest class of all.
</p>
<p><span class="pull-quote">It is a <span class="drop">Law
of Nature</span> with us that a male child shall have
<strong>one more side</strong> than his father</span>, so
that each generation shall rise (as a rule) one step in
the scale of development and nobility. Thus the son of a
Square is a Pentagon; the son of a Pentagon, a Hexagon;
and so on.
</p>
<!-- . .
    </div>
    </form>
</body>
</html>
