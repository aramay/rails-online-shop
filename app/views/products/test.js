// WooThemes
// FlexSlider 2
// The best responsive slider. Period.
//
// DOWNLOAD FLEXSLIDER
// Other Examples
//
// Basic Slider
// Basic Slider customDirectionNav
// Basic Slider with Simple Caption
// Slider w/thumbnail controlNav pattern
// Slider w/thumbnail slider
// Basic Carousel
// Carousel with min and max ranges
// Carousel with dynamic min/max ranges
// Video & the api (vimeo)
// Video & the api (wistia)
//
// Previous
// Next
//
// Previous
// Next
// Slider with Carousel Slider as Navigation
// JS
// HTML
$(window).load(function() {
  // The slider being synced must be initialized first
  $('#carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 210,
    itemMargin: 5,
    asNavFor: '#slider'
  });

  $('#slider').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    sync: "#carousel"
  });
});
