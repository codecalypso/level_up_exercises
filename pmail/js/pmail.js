$(function(){

   $('.menu li').click(function(){
     $(".menu li").removeClass("float-bar");
     $(this).addClass("float-bar");
    });

    $(".dropdown-button").click(function(){
      $(this).find(".dropdown").toggle();
    });
  });




