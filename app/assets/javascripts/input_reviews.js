$(function() {
  $("#datepicker").datepicker();

  $(".input-text").on("keyup", function(){
    var charNum = String($(this).val().length);
    $(".js-text-count-num").text(charNum);
  });

  $("#star-rating-total").rateYo({
    ratedFill: "#E74C3C", starWidth: "35px",
    })
    .on("rateyo.set", function (e, data) {
        alert("The rating is set to " + data.rating + "!");
    });

  $("#review_rate").spinner({
    step: 0.1, max: 5, min: 1.0
      }
    );

  $("#review_price").spinner({
    step: 0.1, max: 5, min: 1.0
      }
    );

  $("#star-rating-dish").rateYo({
      ratedFill: "#fa0", starWidth: "25px",
      })
      .on("rateyo.set", function (e, data) {
          alert("The rating is set to " + data.rating + "!");
      }
  );
  $("#review_food_rate").spinner({
    step: 0.1, max: 5, min: 1.0
      }
    );

  $("#star-rating-cp").rateYo({
      ratedFill: "#fa0", starWidth: "25px",
      })
      .on("rateyo.set", function (e, data) {
          alert("The rating is set to " + data.rating + "!");
      }
  );
  $("#review_cp_rate").spinner({
    step: 0.1, max: 5, min: 1.0
      }
    );

  $("#star-rating-service").rateYo({
      ratedFill: "#fa0", starWidth: "25px",
      })
      .on("rateyo.set", function (e, data) {
          alert("The rating is set to " + data.rating + "!");
      }
  );
  $("#review_service_rate").spinner({
    step: 0.1, max: 5, min: 1.0
      }
    );

  $("#star-rating-drink").rateYo({
      ratedFill: "#fa0", starWidth: "25px",
      })
      .on("rateyo.set", function (e, data) {
          alert("The rating is set to " + data.rating + "!");
      }
  );
  $("#review_drink_rate").spinner({
    step: 0.1, max: 5, min: 1.0
      }
    );

  $("#star-rating-atmosphere").rateYo({
      ratedFill: "#fa0", starWidth: "25px",
      })
      .on("rateyo.set", function (e, data) {
          alert("The rating is set to " + data.rating + "!");
      }
  );
  $("#review_atmosphere").spinner({
    step: 0.1, max: 5, min: 1.0
      }
    );


  $('#review_pic1').after('<span></span>');
    // アップロードするファイルを選択
  $('#review_pic1').change(function(e) {
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
      var img_src = $('<img class= avatar_review, width= >').attr('src', reader.result);
      $(e.target).next().html(img_src);
    }
    reader.readAsDataURL(file);
  });

  $('#review_pic2').after('<span></span>');
    // アップロードするファイルを選択
  $('#review_pic2').change(function(e) {
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
      var img_src = $('<img class= avatar_review, width= >').attr('src', reader.result);
      $(e.target).next().html(img_src);
    }
    reader.readAsDataURL(file);
  });

  $('#review_pic3').after('<span></span>');
    // アップロードするファイルを選択
  $('#review_pic3').change(function(e) {
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
      var img_src = $('<img class= avatar_review, width= >').attr('src', reader.result);
      $(e.target).next().html(img_src);
    }
    reader.readAsDataURL(file);
  });

  $('#review_pic4').after('<span></span>');
    // アップロードするファイルを選択
  $('#review_pic4').change(function(e) {
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
      var img_src = $('<img class= avatar_review, width= >').attr('src', reader.result);
      $(e.target).next().html(img_src);
    }
    reader.readAsDataURL(file);
  });

  $('#review_pic5').after('<span></span>');
    // アップロードするファイルを選択
  $('#review_pic5').change(function(e) {
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
      var img_src = $('<img class= avatar_review, width= >').attr('src', reader.result);
      $(e.target).next().html(img_src);
    }
    reader.readAsDataURL(file);
  });
});

