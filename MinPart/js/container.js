$.noConflict();
jQuery(document).ready(function ($) {
    var computedLeft = ($(document).width() - $("#formWrapper").width() - 40) / 2;
    $("body").prepend('<div id="shader"></div>');
    $("#shader").height($(document).height());
    $("#shader").width($(document).width());
    $("#formWrapper").css('left', computedLeft + 'px');
    $("#formWrapper").height($(document).height() - 200);
});