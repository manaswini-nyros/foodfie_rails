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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require bootstrap
//= require underscore
//= require gmaps/google
//= require jquery-ui
//= require_tree .

function initMap() {
 var map = new google.maps.Map(document.getElementById('map'), {
   center: {lat: 16.9707, lng: 82.2361},
   zoom: 8,
 });
 var marker = new google.maps.Marker({
   position: {lat: 16.9707, lng: 82.2361},
   position: {lat:82.2351 ,lng:	16.9437},
   map: map,
   
   
 });  
}
