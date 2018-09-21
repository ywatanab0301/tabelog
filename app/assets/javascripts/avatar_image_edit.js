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

  $('#user_avatar').after('<span></span>');

  // アップロードするファイルを選択
  $('#user_avatar').change(function(e) {
    var file = $(this).prop('files')[0];

    // 画像以外は処理を停止
    if (! file.type.match('image.*')) {
      // クリア
      $(this).val('');
      $('span').html('');
      return;
    }

    // 画像表示
    var reader = new FileReader();
    reader.onload = function() {
      var img_src = $('<img class= avatar_review>').attr('src', reader.result);
      $(e.target).next().html(img_src);
    }
    reader.readAsDataURL(file);
  });
});
