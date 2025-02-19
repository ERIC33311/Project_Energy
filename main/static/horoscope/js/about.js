document.addEventListener("DOMContentLoaded", () => {
    
    document.querySelectorAll(".faq_all").forEach((faq) => {
        faq.addEventListener("click", (event) => {
            event.stopPropagation(); 
            const answer = faq.querySelector(".answer");

            
            document.querySelectorAll(".faq_all.active").forEach((activeFaq) => {
                if (activeFaq !== faq) {
                    const activeAnswer = activeFaq.querySelector(".answer");
                    activeAnswer.style.maxHeight = null;
                    activeAnswer.style.opacity = 0;
                    activeFaq.classList.remove("active");
                }
            });

            
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

    
    document.addEventListener("click", () => {
        document.querySelectorAll(".faq_all.active").forEach((activeFaq) => {
            const activeAnswer = activeFaq.querySelector(".answer");
            activeAnswer.style.maxHeight = null;
            activeAnswer.style.opacity = 0;
            activeFaq.classList.remove("active");
        });
    });

    
    function checkAuthentication() {
        const isAuthenticated = localStorage.getItem("isAuthenticated");

        
        const loginLink = document.getElementById("login-link");
        const registerLink = document.getElementById("register-link");
        const accountLink = document.getElementById("account-link");

        if (loginLink && registerLink && accountLink) {
            if (isAuthenticated) {
                loginLink.style.display = "none";
                registerLink.style.display = "none";
                accountLink.style.display = "inline";
            } else {
                loginLink.style.display = "inline";
                registerLink.style.display = "inline";
                accountLink.style.display = "none";
            }
        }
    }

    
    function onRegistrationSuccess() {
        localStorage.setItem("isAuthenticated", true);
        window.location.href = "index.html";
    }

    
    checkAuthentication();
});