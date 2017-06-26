/// <reference path="../js/JQuery.js" />



(function ($) {
    $.fn.extend(
    {
        //plugin name here
        HilightGird: function (options) {
            //Settings list and the default values
            var defaults =
            {
                defaultcss: "default",
                hilightcss: "hilight"
            };
            var options = $.extend(defaults, options);

            return this.each(function () {
                var o = options;
                var obj = $(this);

                
                    obj.focus(function () {
                        console.log('focused');
                        $(this).removeClass(o.defaultcss);
                        $(this).addClass(o.hilightcss);
                    })
                    .blur(function () {
                        console.log('blured');
                        $(this).removeClass(o.hilightcss);
                        $(this).addClass(o.defaultcss);


                    });

                
            });
        }
    });
})(jQuery);
