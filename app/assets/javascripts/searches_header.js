$(function(){
  $('.top-headline').on('mouseover', function(){
    // console.log("over!!!");
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

$(function(){
  $('.top-headline').on('mouseover',function(){
    $('.top-headline__logo-img').css({
      background: 'url(https://tblg.k-img.com/images/restaurant/logo/logo_tabelog.svg?1499244152) no-repeat 0 0/contain'
    });
  });
  $('.top-headline').on('mouseout',function(){
    // console.log("アウト！！！！");
    $('.top-headline__logo-img').css({
      background: 'url(https://tblg.k-img.com/images/restaurant/logo/logo_tabelog_white.svg?1499244152) no-repeat 0 0/contain'
    });
  });
});

$(function(){
  $('.top-headline',).on('mouseout',function(){
     // console.log("over！！！！");
    $('.user-menu__text').css({
      color: '#fff'
    });
  });
  $('.top-headline').on('mouseover',function(){
    $('.user-menu__text').css({
      color: '#06c'
    });
  });
});

$(function(){
  $('.top-headline',).on('mouseout',function(){
     // console.log("over！！！！");
    $('.fas.fa-sort-down').css({
      color: '#fff'
    });
  });
  $('.top-headline').on('mouseover',function(){
    $('.fas.fa-sort-down').css({
      color: '#06c'
    });
  });
});

