$(window).on('load', function() {
  $('#slider').flexslider({
    animation: "fade",
    prevText: "◀",
    nextText: "▶",
    controlsConatiner: '.flexslider-controls',
    manualControls: ".thumb li",
  });
});
