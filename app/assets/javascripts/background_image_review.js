$(function() {
  $('#user_background_image').after('<span></span>');

  // アップロードするファイルを選択
  $('#user_background_image').change(function(e) {
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
      var img_src = $('<img class= background_review, width= >').attr('src', reader.result);
      $(e.target).next().html(img_src);
    }
    reader.readAsDataURL(file);
  });
});
