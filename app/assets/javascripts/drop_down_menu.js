$(function(){
  $(".user-menu__target--user-image").click(function(){
    $("ul.setting-list:not(:animated)", this).slideDown();
  }, function(){
    console.log("over！！！！");
    $("ul.setting-list",this).slideUp();
  });
});
