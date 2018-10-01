// 選択肢を出す
function select() {
  var show = $(".content__side__top__area__box").show();
  var hide = $('.content__side__top__area__box').hide();

  $(".content__side__top__area__main").hover(show);
  $(".content__main").hover(hide);

  return select;
};

// $(function() {
//   $(".content__side__top__area__main").hover(function(){
//     $(this).next('.content__side__top__area__box').show();
//   }, function(){
//     $(".content__main").hover(function(){
//       $('.content__side__top__area__box').hide();
//     })
//   });
// });


$(function() {
  $(".content__side__top__genre__main").hover(function(){
    $(this).next('.content__side__top__genre__box').show();
  }, function(){
    $(".content__main").hover(function(){
      $('.content__side__top__genre__box').hide();
    })
  });
});

// 選択肢をviewに反映
$(function(){
  $("button.btn-search").hover(function(){
    // エリア
    var preId = $('.content__side__top form [name=prefecture_id]:checked').attr('id');
    var area = $(".content__side__top__area__main").text();
    var result1 = area.replace("全国", $('label[for="' + preId + '"]').text());
    $(".content__side__top__area__main").text(result1);

    var titlearea = $(".content__main__header__title span.area").text();
    var result2 =  titlearea.replace("全国", $('label[for="' + preId + '"]').text());
    $(".content__main__header__title span.area").text(result2);

    // ジャンル
    var genreId = $('.content__side__top form [name=genre_id]:checked').attr('id');
    var genre = $(".content__side__top__genre__main").text();
    var result3 = genre.replace("すべて", $('label[for="' + genreId + '"]').text());
    $(".content__side__top__genre__main").text(result3);

    var titlegenre = $(".content__main__header__title span.genre").text();
    var result4 =  titlegenre.replace("お店、レストラン", $('label[for="' + genreId + '"]').text());
    $(".content__main__header__title span.genre").text(result4);

  });
})

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
    $("li.nav-item.review").css({
        backgroundColor : '' ,
        borderTopColor : '' });
    $('a.nav-link.review').css('color', '');
    $("li.nav-item.origin").css({
        backgroundColor : '#faf8f5',
        borderTopColor : '#e0dccc' });
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
    $("li.nav-item.rank").css({
        backgroundColor : '' ,
        borderTopColor : '' });
    $('a.nav-link.rank').css('color', '');
    $("li.nav-item.origin").css({
        backgroundColor : '#faf8f5',
        borderTopColor : '#e0dccc' });
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
        return $(b).find(".content__main__shop__each__body__right__rate span.count").html() - $(a).find(".content__main__shop__each__body__right__rate span.count").html();
      })
    );
  });
});
