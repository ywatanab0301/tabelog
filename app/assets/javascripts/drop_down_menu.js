$(function(){
  $('.fas.fa-sort-down').click(function(){
    $('#menu',this).stop(true,true).slideToggle();
    });
  // $('.fas.fa-sort-down').click(function(){
  //   $('#menu',this).stop(true,true).slideUp();
  // });
});


$(function(){
  function buildHTML(list){
  var list = '';

  var html = `<div class='balloon'>
                  <ul class='setting-list'>
                    <li class='setting-list__item'>
                      <a class='setting-list__target' href='/following/#{current_user.id}'>フォロー中一覧</a>
                    </li>
                    <li class='setting-list__item'>
                      <a class='setting-list__target' href='#'>下書き一覧</a>
                    </li>
                    <li class='setting-list__item'>
                      <a class='setting-list__target' href='#'>設定</a>
                    </li>
                    <li class='setting-list__item'>
                      <a class='setting-list__target' href='/users/#{current_user.id}'>ログアウト</a>
                    </li>
                  </ul>
                </div>`
  }
  list = html
  if list == '';
  $('.fas.fa-sort-down').click(function(){
    $('#menu').append(html);
    });
  else list == html;
  $('.fas.fa-sort-down').click(function(){
    $('#menu').empty(html);
    });
});
