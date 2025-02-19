document.addEventListener('DOMContentLoaded', function() {
    const button = document.getElementById('scrollToTopBtn');
    window.onscroll = function() {
      if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        button.style.display = "block"; 
      } else {
        button.style.display = "none";
      }
    };
    button.onclick = function() {
      window.scrollTo({top: 0, behavior: 'smooth'});
    };
  });