function showModal() {
    $(".modal-page").fadeIn(100, function() {
        $(this).css("display", "flex");
    });
}

$(document).ready(function () {
    
    // Fechar modal ao clicar em cancelar ou no botão de fechar
    $("#cancelLogout, span").click(function () {
        $(".modal-page").fadeOut(100);
    });

    // Confirmação de logout
    $("#confirmLogout").click(function () {
        window.location.href = "./pages/registration/login.php";
    });
});