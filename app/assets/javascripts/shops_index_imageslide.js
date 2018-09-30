$(function(){


  $('.content__main__shop__each__body__left__frame').each(function() {

    var $slides = $(this).find('img'),
        slideCount = $slides.length,
        currentIndex = 0;

    $slides.eq(currentIndex).fadeIn();

    setInterval(showNextSlide, 6000);

    function showNextSlide () {

      var nextIndex = (currentIndex + 1) % slideCount;

      $slides.eq(currentIndex).fadeOut("slow");

      $slides.eq(nextIndex).fadeIn("slow");

      currentIndex = nextIndex;

    }

  });

});
