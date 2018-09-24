$(function(){
  function $initHighlight(block, cls) {
  var keyword = $("#search").val();
  $(".content__main__shop__each").highlight(keyword);
  }
});
