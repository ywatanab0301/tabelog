$(function(){
  $('.fas.fa-sort-down').click(function(){
    $(".notification-sort__box").stop(true,true).slideToggle();
    $(this).toggleClass("active");
    });
  $('.fas.fa-sort-down').click(function(){
    $('.notification-sort__box',this).stop(true,true).slideUp();
  });
});


// $(function(){
//   // function buildHTML(list){
//   // var list = '';

//   // var html = `<div class='balloon'>
//   //                 <ul class='setting-list'>
//   //                   <li class='setting-list__item'>
//   //                     <a class='setting-list__target' href='/following/#{current_user.id}'>フォロー中一覧</a>
//   //                   </li>
//   //                   <li class='setting-list__item'>
//   //                     <a class='setting-list__target' href='#'>下書き一覧</a>
//   //                   </li>
//   //                   <li class='setting-list__item'>
//   //                     <a class='setting-list__target' href='#'>設定</a>
//   //                   </li>
//   //                   <li class='setting-list__item'>
//   //                     <a class='setting-list__target' href='/users/#{current_user.id}'>ログアウト</a>
//   //                   </li>
//   //                 </ul>
//   //               </div>`
//   // }
//   $('.fas.fa-sort-down').click(function(){
//     console.log("click_ok")
//     &("#menu").addclass(".setting-list__item")
//     $('#menu').append(html);
//     });
//   $('.fas.fa-sort-down').click(function(){
//     $('#menu').empty(html);
//     });
// });
