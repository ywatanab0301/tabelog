$(function(){
  $(".maincontent_shoprank20").on('mouseover', function(){
    $('.rankcontent_right').html(
      $('.mainrankshop').sort(function(a, b){
        return $(b).find(".rankright_star-point span.num").html() - $(a).find(".rankright_star-point span.num").html();
      })
    );
  });
});
