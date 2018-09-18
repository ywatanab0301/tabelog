$(function(){
  $('.top-headline').on('mouseover', function(){
    // console.log("タイトルがクリックされました");
    $('.top-headline').css({
      backgroundColor: '#fff'
    });
  });
  $('.top-headline').on('mouseout', function(){
    $('.top-headline').css({
      backgroundColor: ''
    });
  });
});
