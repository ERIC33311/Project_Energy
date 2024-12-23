document.querySelectorAll('a').forEach((link) => {
    link.addEventListener('click', (e) => {
        e.preventDefault(); // Останавливаем стандартное поведение перехода по ссылке
        
        const href = link.getAttribute('href'); // Получаем адрес ссылки
        window.history.pushState({}, "", href); // Меняем путь в адресной строке

        // Перезагружаем страницу, чтобы перейти на новый путь
        window.location.href = href;
    });
});

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
  
  