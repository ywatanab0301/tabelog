$(function(){
  $(".review-post__buttons--trash.fas.fa-trash-alt").on('click', function(){
    if(window.confirm("行った（口コミ）と写真、秘密メモを含む、全ての投稿内容が削除されます。本当によろしいですか？")) {
      location.href = $(this).attr('href');
      } else {
    return false;
    }
  });
});
