document.addEventListener("DOMContentLoaded", function () {

    const modal = document.getElementById("paymentModal");
    const closeBtn = document.getElementById("closeModal");
  

    const openModal = () => {
      console.log("Кнопка нажата, открываю окно...");
      modal.style.display = "block";
    };
  

    const closeModal = () => {
      console.log("Закрываю окно...");
      modal.style.display = "none";
    };
  

    const openBtns = document.querySelectorAll(".openPaymentModal");
  
    if (openBtns.length > 0) {
      console.log("Найдено кнопок: ", openBtns.length);
      openBtns.forEach(btn => {
        btn.addEventListener("click", openModal);
      });
    } else {
      console.error("Кнопки с классом 'openPaymentModal' не найдены.");
    }
  

    closeBtn.addEventListener("click", closeModal);
  

    window.addEventListener("click", (event) => {
      if (event.target === modal) {
        closeModal();
      }
    });
  
  
    const paymentMethods = document.querySelectorAll(".ul .li");
    paymentMethods.forEach(method => {
      method.addEventListener("click", () => {
        alert("Извините, пока такой метод оплаты не предусмотрен. Пожалуйста, сделайте оплату вручную через номер телефона 😊");
      });
    });
  });




  document.addEventListener('DOMContentLoaded', () => {
    const allNews = document.querySelectorAll('.News');
    const loadMoreButton = document.querySelector('.all');
    let currentIndex = 6; // Сколько новостей сейчас видно

    // Если новостей меньше 6, то сразу отображаем все
    if (allNews.length <= 6) {
        currentIndex = allNews.length;
        loadMoreButton.style.display = 'none'; // Скрыть кнопку, если новостей меньше 6
    }

    // Скрываем все новости, кроме первых 6
    allNews.forEach((news, index) => {
        if (index >= currentIndex) {
            news.style.display = 'none';
        }
    });

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
});


document.addEventListener("DOMContentLoaded", function() {
  // Модальное окно сортировки
  const sortModal = document.getElementById('sortModal');
  const sortButton = document.getElementById('sortButton');
  const closeSortModal = sortModal.querySelector('.close');

  // Открытие модального окна сортировки
  sortButton.addEventListener('click', function() {
      sortModal.style.display = 'block';
  });

  // Закрытие модального окна сортировки
  closeSortModal.addEventListener('click', function() {
      sortModal.style.display = 'none';
  });

  // Закрытие модального окна сортировки, если кликнуть за пределами окна
  window.addEventListener('click', function(event) {
      if (event.target === sortModal) {
          sortModal.style.display = 'none';
      }
  });

  // Модальные окна оплаты
  const paymentModals = document.querySelectorAll('.modal');
  const openPaymentButtons = document.querySelectorAll('.openPaymentModal');
  const closePaymentModals = document.querySelectorAll('.close');

  // Открытие модальных окон оплаты
  openPaymentButtons.forEach(function(button) {
      button.addEventListener('click', function() {
          const paymentModal = button.closest('.News').querySelector('#paymentModal');
      });
  });

  // Закрытие модальных окон оплаты
  closePaymentModals.forEach(function(button) {
      button.addEventListener('click', function() {
          const modal = button.closest('.modal');
          modal.style.display = 'none';
      });
  });

  // Закрытие модальных окон оплаты, если кликнуть за пределами окна
  window.addEventListener('click', function(event) {
      paymentModals.forEach(function(modal) {
          if (event.target === modal) {
              modal.style.display = 'none';
          }
      });
  });
});
