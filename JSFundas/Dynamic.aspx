<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>JQuery Demos - JavaScript Fundamentals </title>
      
    <link href="../css/Default.css" rel="stylesheet" type="text/css" />
    <link href="../css/jush.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" language="javascript" src="../js/JQuery.js"></script>

    <script type="text/javascript" language="javascript" src="../js/jquery.jush.js"></script>

    <script type="text/javascript">
        $('document').ready(function () {
            $('body').show();

            $('#Next').click(function () {
                $('body').html('<h1>Thanks for watching this demo</h1><br>Moving to next page...').css('text-align', 'center');
                setTimeout("window.location = '../Selectors/Default.aspx';", 1000);
            });

            $('pre').jush();
        });
        </script>
    <style>
        .box {
            background-color:gray;
            height:100px;
            width:100px;
            left:10px;
            top:10px
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h1>JavaScript fundamentals</h1>
            <h3>A Dynamic language</h3>
            <hr />
            <input type="button" id="Back"  value="Back" onclick="window.location = '../Index.aspx';" />
            <input type="button"  id="Next"  value="Next" style="float:right" /><br />
            <br />
            <h4>A Staticly type language dose not allow you to add remove properties or methods beyond object definition(class)</h4>
    <pre data-lang="csharp">
class Person{
	FisrtName:string;	
	LastName:string;
	Age:number;
	Get  = () => {
console.log('getting person');		
	}
	
	Save =() =>{
		console.log('saving person');
	}

constructor(fname:string , lname:string , age:number){
	this.FisrtName = fname;
	this.LastName = lname;
	this.Age = age;
}

}

var me  =  new Person('darshan' ,'marathe' , 20);

alert(me.FisrtName + ' ' + me.LastName);

//You cannot do this in a Statically typed language
me.FullName =  function(){
	return me.FisrtName + ' ' + me.LastName;
};

alert(me.FullName());


    </pre>

            <h4>But with a Dynamic language like javaScript you can do that...</h4>
            <pre>
 var Person = (function () {
    function Person(fname, lname, age) {
        this.Get = function () {
            console.log('getting person');
        };
        this.Save = function () {
            console.log('saving person');
        };
        this.FisrtName = fname;
        this.LastName = lname;
        this.Age = age;
    }
    return Person;
})();

var me = new Person('darshan', 'marathe', 20);

alert(me.FisrtName + ' ' + me.LastName);

//You can do this in a Dynamically typed language
me.FullName = function () {
    return me.FisrtName + ' ' + me.LastName;
};

alert(me.FullName());

            </pre>
    </div>
    </form>
</body>
</html>
