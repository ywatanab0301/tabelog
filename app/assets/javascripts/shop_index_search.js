$(function() {
  $(".content__side__top__area__main").hover(function(){
    $(this).next('.content__side__top__area__box', '').show();
  }, function(){
    $(".content__main").hover(function(){
      $('.content__side__top__area__box').hide();
    })
  });
});

$(function() {
  $(".content__side__top__genre__main").hover(function(){
    $(this).next('.content__side__top__genre__box').show();
  }, function(){
    $(".content__main").hover(function(){
      $('.content__side__top__genre__box').hide();
    })
  });
});

