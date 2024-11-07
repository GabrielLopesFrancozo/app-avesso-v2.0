$(document).ready(function () {
    var $message = $("#mensagem");
    $message.hide();

    $("#btn-enviar-foto").on("click", function (event) {
        event.preventDefault();

        $("#form-upload-foto").ajaxForm({
            url: 'upload/executa-upload.php',
            success: function (data) {
                var message = data.substring(0, data.indexOf(';'));
                var messageType = data.substring(data.indexOf(';') + 1);

                if (messageType === "concluido") {
                    var photoPath = message;
                    message = "Foto carregada com sucesso!";
                    $("#foto-usuario").attr("src", photoPath + "?timestamp=" + new Date().getTime());
                    $message.show().attr("class", "mb-3 alert alert-success").html(message);

                } else if (messageType === "aviso") {
                    message = "A imagem ultrapassa o tamanho permitido.";
                    $message.show().attr("class", "mb-3 alert alert-warning").html(message);

                } else {
                    message = "Nenhuma foto selecionada.";
                    $message.show().attr("class", "mb-3 alert alert-danger").html(message);
                }

                $('input[type="file"]').val('');

                setTimeout(function () {
                    $message.fadeOut();
                }, 2500);
            },
            error: function (error) {
                console.error("Upload error:", error);
            }
        }).submit();
    });
});