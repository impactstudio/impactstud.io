// Header content transition in from left on load

function headerContentTransition(parent, delay) {

  leftPositionContent(parent, delay);
  transitionContentIn(parent, delay);
}

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
    $(this).delay(delay += 150).animate({ marginLeft: 0 }, {duration: 400, easing: 'linear'});
  });
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
headerContentTransition(".hero-content", 200);
