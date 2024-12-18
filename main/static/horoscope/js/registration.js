document.getElementById('registration-form').addEventListener('submit', function(e) {
    var password = document.querySelector('input[name="password"]').value;
    var confirmPassword = document.getElementById('confirm-password').value;

    if (password !== confirmPassword) {
        e.preventDefault();  // Предотвращаем отправку формы
        alert('Пароли не совпадают!');
    }
});