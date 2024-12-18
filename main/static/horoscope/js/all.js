document.querySelectorAll('a').forEach((link) => {
    link.addEventListener('click', (e) => {
        e.preventDefault(); // Останавливаем стандартное поведение перехода по ссылке
        
        const href = link.getAttribute('href'); // Получаем адрес ссылки
        window.history.pushState({}, "", href); // Меняем путь в адресной строке

        // Перезагружаем страницу, чтобы перейти на новый путь
        window.location.href = href;
    });
});