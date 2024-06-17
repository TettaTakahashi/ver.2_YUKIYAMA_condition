$(function(){
  $('.menu-trigger').on('click', function(event){
    $(this).toggleClass('active');
    $('#header-menu').fadeToggle();
    event.preventDefault();
  })
})