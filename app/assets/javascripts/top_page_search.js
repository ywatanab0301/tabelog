$(function(){
  var search_list = $("#hitlist");
  var add_list = $("#shoplist");

  function appendShop(shop) {
    var html = `<li class="add" id = shoplist>${ shop.name }</li>`
    search_list.append(html);
  }

  $("#search").on("keyup", function(){
    var input = $("#search").val();
    $.ajax({
      type: 'GET',
      url: location.href,
      data: ('keyword=' + input),
      processData: false,
      contentType: false,
      dataType: 'json'
    })
    .done(function(data){
      $("#hitlist").empty();
      var counter = 0;
      $(data).each(function(i, shop){
        if (counter < 5) {
        counter++;
        appendShop(shop);
        }
      })
    })
    .fail(function(){
      alert('error');
    })
  });

  $("#hitlist").on("click",".add", function(){
    $("#search").val(" ");
    var shopName = $(this, "list").text();
    $("#search").val(shopName);
  });
});
