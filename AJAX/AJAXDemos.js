/// <reference path="../js/JQuery.js" />




function LoadAJAXDemo() {

    $('#target').load('DemotoLoad.html')
    .ajaxStart(function () {
        LogMessage('ajax loading');
    }).ajaxComplete(function () {

        LogMessage('ajax done');
    });
    return false;
}

function LoadExtDemo() {
    $('#target').load('http://www.indiatimes.com/technology/gadgets/meet-sonys-smartwatch-2_-85305.html').ajaxError(
        function () {
            LogMessage('Ajax failed');
        }
        );
    return false;
}

function LogMessage(msg) {

    $('.box').append(':>' + msg + '<br>')
}

function GetAJAXDemo() {
    try {
        LogMessage('Loading jQuery Get');
        $.get('DemotoLoad.html', function (result) {
            //This is a Call-back function without name 
            $('#target').html(result);
            LogMessage('AJAX Success');
        });

    } catch (e) {
        LogMessage(e.message)
    }
    return false;
}


function PostAjaxDemo() {
  
    try {

        LogMessage('Loading data via post')
        var name = $("#txtname").val();

        $.post("PostDemo.aspx", { FirstParam: name }, function (result) {

            LogMessage(result);

        });

    } catch (e) {
        LogMessage(e.message);
    }
    return false;

}



function AJAXMethodDemo() {
    LogMessage('loading');
    //Demo for jQuery AJAX method most popular jQuery Method 
    debugger;   
    $.ajax({
        type: "POST",
        url: "AJAXDemo.Aspx/CallMe",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            // Hide the fake progress indicator graphic.
            

            // Insert the returned HTML into the <div>.
            LogMessage(msg.d);
        }
    });

    return false;
}

function AJAXMethodDemo2() {
    LogMessage('loading');
    //Demo for jQuery AJAX method most popular jQuery Method 
    debugger;
    $.ajax({
        type: "POST",
        url: "AJAXDemo.Aspx/GetMeAGUID",
        data: "{'name' : 'darshan' , 'surname' : 'marathe' , 'age' : 20}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            // Hide the fake progress indicator graphic.


            // Insert the returned HTML into the <div>.
            LogMessage(msg.d);
        }
    });

    return false;
}