$(function(){
  $(".fas.fa-sort-down").click(function(){
    $("#information-notification:not(:animated)", this).slideDown();
  }, function(){
    console.log("over！！！！");
    $("#information-notification",this).slideUp();
  });
});

$(function(){
  $(".fas.fa-sort-down").click(function(){
    $(".setting-list:not(:animated)", this).slideDown();
  }, function(){
    console.log("over！！！！");
    $(".setting-list",this).slideUp();
  });
});
