 var url_string = window.location.href
 var url = new URL(url_string);
 var dish_name = url.searchParams.get("search");


$(document).ready(function() {
   var slider = $("#the_slider").slider({
       range: true,
       min: 0,
       max: 500,
       values: [50, 450],
       slide: function(event, ui) {
           $("#dish_data1").val(ui.values[0]);
           $("#dish_data2").val(ui.values[1]);
       }
   });
   $("#dish_data1").val(slider.slider("values")[0]);
   $("#dish_data2").val(slider.slider("values")[1]);
});
$(document).ready(function(){
$("#filter").change(function(){
  $.ajax({
   url: '/search',
   type: 'GET',
   dataType: 'script',
   data: {filter: this.value, search: dish_name },
     success: function(repsonse){
     },
  });
 });
}); 
$(document).ready(function(){
$("#rating").change(function(){
  $.ajax({
   url: '/search',
   type: 'GET',
   dataType: 'script',
   data: {rating: this.value, search: dish_name },
     success: function(repsonse){
     },
  });
 });
}); 
$(document).ready(function(){
$("#tags").change(function(){
  $.ajax({
   url: '/search',
   type: 'GET',
   dataType: 'script',
  data: {tags: this.value, search: dish_name },
     success: function(repsonse){
     },
  });
 });
}); 
$(document).ready(function(){
var slider = $("#slider").slider({
   range: true,
   min: 10,
   max: 400,
   values: [20, 350],
   slide: function(event, ui) {
     $("#range_min").val(ui.values[0]);
     $("#range_max").val(ui.values[1]);
     var dishes_range_min = ui.values[0];
     var dishes_range_max = ui.values[1];
     console.log(dishes_range_min, dishes_range_max)
     $('#range_min').text(ui.values[0])
     $('#range_max').text(ui.values[1])
     $.ajax({
       url: '/search',
       type: 'GET',
       dataType: 'script',
       data: {min_rangefilter: dishes_range_min, max_rangefilter: dishes_range_max ,search: dish_name },
         success: function(repsonse){}
      });
   }
 });
});
 