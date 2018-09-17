// カバー写真変更ボタンの表示
$(function() {
  $('#cover-image').on("mouseover", function(){
    $('.change-header-cover').show();
  });
  $('#cover-image').on("mouseout", function(){
    $('.change-header-cover').hide();
  });
  // 保存ボタンの表示
  $('.change-header-cover').change(function(){
    $('.cover-image-submit').show();
  });

  // アップロード
  $('#user_background_image').after('<span></span>');
  $('#user_background_image').change(function(e) {
    console.log(this);
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
      var img_src = $('<img class= coverimage_review, width= >').attr('src', reader.result);
      $(e.target).next().html(img_src);
    }
    reader.readAsDataURL(file);
  });
});
