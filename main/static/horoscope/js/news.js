document.addEventListener('DOMContentLoaded', () => {
    const allNews = document.querySelectorAll('.News');
    const loadMoreButton = document.querySelector('.all');
    let currentIndex = 6; 

    // Если новостей меньше 6, то сразу отображаем все
    if (allNews.length <= 6) {
        currentIndex = allNews.length;
        loadMoreButton.style.display = 'none'; // Скрыть кнопку, если новостей меньше 6!!
    }

    // Показать ещё 3 новости при клике на кнопку
    loadMoreButton.addEventListener('click', () => {
        const nextIndex = currentIndex + 3;
        allNews.forEach((news, index) => {
            if (index >= currentIndex && index < nextIndex) {
                news.style.display = 'block';
            }
        });

        currentIndex = nextIndex;
        // Скрываем кнопку, если больше нечего показывать
        if (currentIndex >= allNews.length) {
            loadMoreButton.style.display = 'none';
        }
    });

    // Теперь добавляем обработчики для сортировки
    document.getElementById("sort-date-asc")?.addEventListener("click", () => sortData('date', 'asc'));
    document.getElementById("sort-date-desc")?.addEventListener("click", () => sortData('date', 'desc'));
    document.getElementById("sort-title-asc")?.addEventListener("click", () => sortData('title', 'asc'));
    document.getElementById("sort-title-desc")?.addEventListener("click", () => sortData('title', 'desc'));

    // Модальное окно
    var modal = document.getElementById("sortModal");
    var btn = document.getElementById("sortButton");
    var span = document.getElementsByClassName("close")[0];

    if (btn && modal && span) {
        // Открытие модального окна при нажатии на кнопку
        btn.onclick = function() {
            modal.style.display = "block";
        }

        // Закрытие модального окна при нажатии на крестик
        span.onclick = function() {
            modal.style.display = "none";
        }

        // Закрытие модального окна, если кликнуть вне окна
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    }
});

document.querySelectorAll('a.sort-link').forEach(link => {
    link.addEventListener('click', function(event) {
        event.preventDefault();
        const url = this.href;

        fetch(url)
            .then(response => response.text())
            .then(html => {
                // Обновляем только контейнер новостей
                document.querySelector('.container1').innerHTML = new DOMParser()
                    .parseFromString(html, 'text/html')
                    .querySelector('.container1').innerHTML;
            });
    });
});