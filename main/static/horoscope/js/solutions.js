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