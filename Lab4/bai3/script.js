document.addEventListener('DOMContentLoaded', function() {
    const greetings = [
        'Hello!',
        'Bonjour!',
        'Hola!',
        'Ciao!',
        'Xin chao!',
        'Hallo!',
        'Campodicap!',
        'Xin chao cac ban',
        'Tam biet cac ban'
    ];

    const randomGreeting = greetings[Math.floor(Math.random() * greetings.length)];
    document.getElementById('random-hello').textContent = randomGreeting;
});