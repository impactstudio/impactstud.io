// --- HOME HERO CONTENT TRANSTION ON LOAD ---
// - position content left

function leftPositionContent(parent, delay) {
  $(parent).children().each(function(){
    positionLeft = - window.outerWidth
    $(this).css( {
      "margin-left" : positionLeft.toString() + "px",
    });
  });
}

function transitionContentIn(parent, delay) {
  $(parent).children().each(function(){
    $(this).removeClass("get-off-the-page");
    $(this).delay(delay += 250).animate({ marginLeft: 0 }, {duration: 400, easing: 'linear'});
  });
}

function headerContentTransition(parent, delay) {
  leftPositionContent(parent, delay);
  transitionContentIn(parent, delay);
}

function resetState(parent) {
  $(parent).children().each(function(){
    $(this).removeClass("get-off-the-page");
    $(this).css({
      "margin-left": 0
    });
  });
}

// I want this loaded with at the same time as the rest of the DOM
if (window.outerWidth > 531) {
  headerContentTransition(".hero-content", 200);
}
else {
  resetState(".hero-content")
}

// --- FIXED NAVBAR ON SCROLL ---

function removeSubPageLogo() {
  $(".header-logo").css({
    "display": "none"
  });
}

function reAdjustNavbar() {
  $(".header-navigation").css({
    "width": "100%",
    "text-align": "center",
  });
}

function showSubPageLogo() {
  $(".header-logo").css({
    "display": "block",
    "margin": "0 auto 30px auto"
  });
}

function fixedNavbarAccomodation() {
  $(window).scroll(function() {
    var windowWidth = $(window).width();
    if (windowWidth < 1200) {
      if ($(this).scrollTop() > 200) {
        removeSubPageLogo();
        reAdjustNavbar();
      }
    else {
      showSubPageLogo();
    }
    }
   });
}

$(document).ready(function(){
  fixedNavbarAccomodation();
});
