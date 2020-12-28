window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var mybutton = document.getElementById("myBtn");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }

  if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}
function topFunction() {
  $('html,body').animate({scrollTop: 0},'slow');
}
