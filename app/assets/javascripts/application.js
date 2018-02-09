// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(function() {
    if ($("#chats").length > 0) {
        setTimeout(updateChats, 1000);
    }
})

function updateChats() {
    var room_id = $("#room").attr("data-id");
    var after = $(".chat:last-child").attr("data-time");
    $.getScript("/chats.js?room_id=" + room_id + "&after=" + after)
    setTimeout(updateChats, 1000);
}
