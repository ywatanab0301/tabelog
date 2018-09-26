$(function() {
  $(".content__side__top__area__main").hover(function(){
    $(this).next('.content__side__top__area__box').show();
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

$(function() {
  $("li.nav-item.rank").on('mouseover', function(){
    $('li.nav-item.rank').css('borderTopColor', '#fcb720');
    $('a.nav-link.rank').css('color', '#fcb720');
  });
  $("li.nav-item.rank").on('mouseout', function(){
    $('li.nav-item.rank').css('borderTopColor', '');
    $('a.nav-link.rank').css('color', '');
  });
});

$(function() {
  $("li.nav-item.review").on('mouseover', function(){
    $('li.nav-item.review').css('borderTopColor', '#88bd2a');
    $('a.nav-link.review').css('color', '#88bd2a');
  });
  $("li.nav-item.review").on('mouseout', function(){
    $('li.nav-item.review').css('borderTopColor', '');
    $('a.nav-link.review').css('color', '');
  });
});

$(function(){
 $('ul.photolist img').hover(function(){
  var $thisImg = $(this).attr('src');
  var $thisAlt = $(this).attr('alt');
  $('.content__main__shop__each__body__left__frame img.photo').attr({src:$thisImg,alt:$thisAlt});
 });
});
