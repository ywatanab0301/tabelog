$(function(){
  $(".content").hover(function(){
    // エリア
    var preId = $('.content__side__top form [name=prefecture_id]:checked').attr('id');
    var area = $(".content__side__top__area__main").text();
    var result1 = area.replace("全国", $('label[for="' + preId + '"]').text());
    $("span.header_upper__left-shopname").text(result1);
    // ジャンル
    var genreId = $('.content__side__top form [name=genre_id]:checked').attr('id');
    var genre = $(".content__side__top__genre__main").text();
    var result2 = genre.replace("すべて", $('label[for="' + genreId + '"]').text());
    $("span.header_upper__left-location").text(result2);
  });
})
