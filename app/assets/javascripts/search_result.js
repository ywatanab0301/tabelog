$(function() {
  var result = $(".search_result").data("search-result");
  // 余力があれば、ハイライト機能をしっかりやりたいため以下コード、コメントアウトで残しておきます
  // reg = new RegExp(result);
  $(".shop_station:contains('"+result+"')").css("backgroundColor", "#fae486")
  // $("p:contains('"+result+"')").wrapInner('<pre />');
  // $("p:contains('"+result+"')").wrapInner('<code />');
  // hljs.initHighlightingOnLoad();
  // $('pre code').each(function(i, block) {
  //   hljs.highlightBlock(block);
  // });
});
