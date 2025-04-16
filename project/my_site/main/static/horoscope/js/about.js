document.addEventListener("DOMContentLoaded", () => {
    document.querySelectorAll(".faq_all").forEach((faq) => {
        faq.addEventListener("click", (event) => {
            event.stopPropagation(); // Предотвращаем всплытие события, чтобы не закрыть при клике на сам элемент
            const answer = faq.querySelector(".answer");

            // Закрываем все открытые ответы, кроме текущего
            document.querySelectorAll(".faq_all.active").forEach((activeFaq) => {
                if (activeFaq !== faq) {
                    const activeAnswer = activeFaq.querySelector(".answer");
                    activeAnswer.style.maxHeight = null;
                    activeAnswer.style.opacity = 0;
                    activeFaq.classList.remove("active");
                }
            });

            // Открываем или закрываем текущий ответ
            if (faq.classList.contains("active")) {
                answer.style.maxHeight = null;
                answer.style.opacity = 0;
                faq.classList.remove("active");
            } else {
                answer.style.maxHeight = answer.scrollHeight + "px";
                answer.style.opacity = 1;
                faq.classList.add("active");
            }
        });
    });

    // Закрываем все ответы, если кликнули вне блока FAQ
    document.addEventListener("click", () => {
        document.querySelectorAll(".faq_all.active").forEach((activeFaq) => {
            const activeAnswer = activeFaq.querySelector(".answer");
            activeAnswer.style.maxHeight = null;
            activeAnswer.style.opacity = 0;
            activeFaq.classList.remove("active");
        });
    });
});