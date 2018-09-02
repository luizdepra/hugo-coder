window.onscroll = function () {
  var header = document.getElementById("navigation");

  if (window.pageYOffset > 60) {
    header.classList.add("fixed");
  } else {
    header.classList.remove("fixed");
  }
};
