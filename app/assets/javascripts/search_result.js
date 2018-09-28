$(function() {
  // var shopId = $(".addshop_id").data("shop-id");
  var result = $(".search_result").data("search-result");
  // 余力があれば、ハイライト機能をしっかりやりたいため以下コード、コメントアウトで残しておきます
  // reg = new RegExp(result);
  $(".shop_station:contains('"+result+"')").css("backgroundColor", "#fae486");
  // $("p:contains('"+result+"')").wrapInner('<pre />');
  // $("p:contains('"+result+"')").wrapInner('<code />');
  // hljs.initHighlightingOnLoad();
  // $('pre code').each(function(i, block) {
  //   hljs.highlightBlock(block);
  // });
  // $('.photolist').on('click', function(){
  // var shopId= $(this).data("shop-id");
  // var $thisImg = $(this).attr('src');
  // var $thisAlt = $(this).attr('alt');
  // var image = $(".content__main__shop__each__body__left__frame").data("shop-id");
  // if ($(".content__main__shop__each__body__left__frame").data("shop-id") == "shopId"){
  // $('.content__main__shop__each__body__left__frame').attr({src:$thisImg,alt:$thisAlt});
  //   }
   });
