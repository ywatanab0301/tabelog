// 選択肢を出す
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

// タブの色変更
$(function() {
  $("li.nav-item.origin").on('click mouseover', function(){
    $(this).css('borderTopColor', '#e06650');
    $('li.nav-item.origin span').css('color', '#e06650');
    $('li.nav-item.origin .fa.fa-utensils').css('color', '#e06650');
  });
});

$(function() {
  $("li.nav-item.rank").on('click', function(){
    $(this).css('background-color', '#fff');
    $("li.nav-item.review").css('background-color', '');
    $("li.nav-item.review").css('borderTopColor', '');
    $('a.nav-link.review').css('color', '');
    $("li.nav-item.origin").css('background-color', '#faf8f5');
    $('li.nav-item.origin').css('borderTopColor', '#e0dccc');
    $('li.nav-item.origin span').css('color', '#000');
    $('li.nav-item.origin .fa.fa-utensils').css('color', '#000');
  });
  $("li.nav-item.rank").on('click mouseover', function(){
    $(this).css('borderTopColor', '#fcb720');
    $('a.nav-link.rank').css('color', '#fcb720');
  });
});

$(function() {
  $("li.nav-item.review").on('click', function(){
    $(this).css('background-color', '#fff');
    $("li.nav-item.rank").css('background-color', '');
    $("li.nav-item.rank").css('borderTopColor', '');
    $('a.nav-link.rank').css('color', '');
    $('li.nav-item.origin span').css('color', '#000');
    $('li.nav-item.origin .fa.fa-utensils').css('color', '#000');
  });
  $("li.nav-item.review").on('click mouseover', function(){
    $(this).css('borderTopColor', '#88bd2a');
    $('a.nav-link.review').css('color', '#88bd2a');
  });
});

// 並び替え
$(function(){
  $("li.nav-item.rank").on('click', function(){
    $('.content__main__shop').html(
      $('.content__main__shop__each').sort(function(a, b){
        return $(b).find(".content__main__shop__each__body__right__rate span.num").html() - $(a).find(".content__main__shop__each__body__right__rate span.num").html();
      })
    );
  });
});

$(function(){
  $("li.nav-item.review").on('click', function(){
    $('.content__main__shop').html(
      $('.content__main__shop__each').sort(function(a, b){
        return $(b).find(".content__main__shop__each__body__right__rate  a.review").html() - $(a).find(".content__main__shop__each__body__right__rate  a.review").html();
      })
    );
  });
});

// 写真の変更
$(function(){
 $('ul.photolist img').hover(function(){
  var $thisImg = $(this).attr('src');
  var $thisAlt = $(this).attr('alt');
  $('.content__main__shop__each__body__left__frame img.photo').attr({src:$thisImg,alt:$thisAlt});
 });
});
