document.addEventListener('DOMContentLoaded', () => {
    const allNews = document.querySelectorAll('.News');  // Получаем все новости
    const loadMoreButton = document.querySelector('.all');  // Получаем кнопку "Показать ещё"
    let currentIndex = 6;  // Индекс, до которого будут показываться новости

    // Скрываем новости, которые превышают 6
    allNews.forEach((news, index) => {
        if (index >= currentIndex) {
            news.style.display = 'none';  // Скрываем новости, начиная с 7-й
        }
    });

    // Если новостей меньше или равно 6, сразу скрываем кнопку
    if (allNews.length <= 6) {
        currentIndex = allNews.length;  // Обновляем currentIndex, если новостей меньше 6
        if (loadMoreButton) {
            loadMoreButton.style.display = 'none';  // Скрываем кнопку "Показать ещё"
        }
    }

    // Если кнопка существует, добавляем обработчик на клик
    if (loadMoreButton) {
        loadMoreButton.addEventListener('click', () => {
            const nextIndex = currentIndex + 3;  // Загружаем 3 новости за раз

            // Показываем новости от текущего индекса до nextIndex
            allNews.forEach((news, index) => {
                if (index >= currentIndex && index < nextIndex) {
                    news.style.display = 'block';  // Отображаем новости
                }
            });

            currentIndex = nextIndex;  // Обновляем currentIndex

            // Если все новости показаны, скрываем кнопку
            if (currentIndex >= allNews.length) {
                loadMoreButton.style.display = 'none';  // Скрываем кнопку "Показать ещё"
            }
        });
    }
});

document.addEventListener('DOMContentLoaded', () => {
    

    // Добавляем обработчики для сортировки
    document.getElementById("sort-date-asc")?.addEventListener("click", () => sortData('date', 'asc'));
    document.getElementById("sort-date-desc")?.addEventListener("click", () => sortData('date', 'desc'));
    document.getElementById("sort-title-asc")?.addEventListener("click", () => sortData('title', 'asc'));
    document.getElementById("sort-title-desc")?.addEventListener("click", () => sortData('title', 'desc'));

    // Модальное окно для сортировки
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