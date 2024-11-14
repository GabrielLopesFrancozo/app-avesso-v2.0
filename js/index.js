document.addEventListener("DOMContentLoaded", function () {
    // Função para carregar o conteúdo com base no parâmetro 'menu'
    function loadContent(menu = 'home') {
        let contentToLoad, cssToLoad, jsToLoad;

        // Define os caminhos dos arquivos com base no parâmetro
        switch (menu) {
            case 'home':
                const elemento = document.getElementById("body");
                elemento.requestFullscreen();
                contentToLoad = './pages/home-page/home.php';
                cssToLoad = './pages/home-page/home.css';
                jsToLoad = './pages/home-page/home.js';
                localStorage.setItem("pagina", "home");
                break;
            case 'chat':
                contentToLoad = './pages/chat-page/chat.php';
                cssToLoad = './pages/chat-page/chat.css';
                jsToLoad = './pages/chat-page/chat.js';
                localStorage.setItem("pagina", "chat");
                break;
            case 'notifications':
                contentToLoad = './pages/notifications-page/notifications.php';
                cssToLoad = './pages/notifications-page/notifications.css';
                jsToLoad = './pages/notifications-page/notifications.js';
                localStorage.setItem("pagina", "notifications");
                break;
            case 'search':
                contentToLoad = './pages/search-page/search.php';
                cssToLoad = './pages/search-page/search.css';
                jsToLoad = './pages/search-page/search.js';
                localStorage.setItem("pagina", "search");
                break;
            case 'profile':
                contentToLoad = './pages/profile-page/profile.php';
                cssToLoad = './pages/profile-page/profile.css';
                jsToLoad = './pages/profile-page/profile.js';
                localStorage.setItem("pagina", "profile");
                break;
            case 'settings':
                contentToLoad = './pages/settings-page/settings.php';
                cssToLoad = './pages/settings-page/settings.css';
                jsToLoad = './pages/settings-page/settings.js';
                localStorage.setItem("pagina", "settings");
                break;
            default:
                contentToLoad = './pages/home-page/home.php';
                cssToLoad = './pages/home-page/home.css';
                jsToLoad = './pages/home-page/home.js';
                break;
        }

        // Exibe uma barra de carregamento
        const loadingBar = document.getElementById("loading-bar");
        loadingBar.style.width = "0%";
        loadingBar.style.display = "block";

        // Simula progresso da barra de carregamento
        let progress = 0;
        const progressInterval = setInterval(() => {
            progress += 20;
            loadingBar.style.width = progress + "%";
            if (progress >= 90) clearInterval(progressInterval);
        }, 50);

        // Carrega o conteúdo com AJAX
        fetch(contentToLoad)
            .then(response => {
                if (!response.ok) throw new Error("Erro na rede");
                return response.text();
            })
            .then(data => {
                clearInterval(progressInterval);
                loadingBar.style.width = "100%";
                setTimeout(() => loadingBar.style.display = "none", 50);
                document.querySelector("main").innerHTML = data;

                // Carrega CSS e JS
                document.querySelectorAll("link.dynamic-css").forEach(link => link.remove());
                const cssLink = document.createElement("link");
                cssLink.rel = "stylesheet";
                cssLink.href = cssToLoad;
                cssLink.classList.add("dynamic-css");
                document.head.appendChild(cssLink);

                document.querySelectorAll("script.dynamic-js").forEach(script => script.remove());
                const jsScript = document.createElement("script");
                jsScript.src = jsToLoad;
                jsScript.classList.add("dynamic-js");
                document.body.appendChild(jsScript);
            })
            .catch(error => console.error("Erro ao carregar o conteúdo:", error));
    }

    function updateActiveIcon(menuId) {
        document.querySelectorAll('.nav-item').forEach(item => {
            const icon = item.querySelector('i');
            const dataMenu = item.getAttribute('id');

            if (dataMenu === menuId) {
                item.classList.add('active');
                icon.className = icon.dataset.iconFilled; // Ícone preenchido
            } else {
                item.classList.remove('active');
                icon.className = icon.dataset.icon; // Ícone normal
            }
        });
    }

    // Atualiza a URL sem refresh
    function updateURL(menu) {
        history.pushState({}, "", `?menu=${menu}`);
    }

    // Detecta cliques nos links de navegação
    document.querySelectorAll('.nav-link').forEach(link => {
        link.addEventListener('click', function (e) {
            e.preventDefault();
            const menu = this.getAttribute('data-menu');

            // Carrega conteúdo e atualiza URL e ícone
            loadContent(menu);
            updateURL(menu);
            updateActiveIcon(menu);
        });
    });

    // Carrega o conteúdo inicial com base na URL
    const urlParams = new URLSearchParams(window.location.search);
    const initialMenu = urlParams.get('menu') || 'home';
    loadContent(initialMenu);
    updateActiveIcon(initialMenu);

    // Garante que o conteúdo certo é carregado ao usar o botão "voltar" do navegador
    window.addEventListener('popstate', function () {
        const menu = new URLSearchParams(window.location.search).get('menu');
        loadContent(menu);
        updateActiveIcon(menu);
    });

    localStorage.setItem("idUsuario", $("#idUsuario").text());
});
