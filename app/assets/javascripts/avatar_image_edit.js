$(function() {
  $('.mypage-header__user-avatar').on("mouseover", function(){
    $('.change-header-avatar-image').show();
  });
  $('.mypage-header__user-avatar').on("mouseout", function(){
    $('.change-header-avatar-image').hide();
  });
  $('.change-header-avatar-image').change(function(){
    $('.mypage-avatar-image-submit').show();
  });
});
