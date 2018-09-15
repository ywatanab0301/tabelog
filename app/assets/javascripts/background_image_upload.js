// カバー写真変更ボタンの表示
$(function() {
  $('#cover-image').on("mouseover", function(){
    $('.change-header-cover').show();
  });
  $('#cover-image').on("mouseout", function(){
    $('.change-header-cover').hide();
  });
  $('.change-header-cover').change(function(){
    console.log(this)
    $('.cover-image-submit').show();
  });
});
