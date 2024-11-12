$("#sendButton").on('click', function (event) {
  event.preventDefault();

  var mensagem = $('#messageInput').val();
  var idR = localStorage.getItem("idUsuario");
  var idD = localStorage.getItem("idUsuarioMatch");

  // Verifica se o campo não está vazio
  if (mensagem.trim() === "") {
    return;
  }
  // Faz a requisição AJAX
  $.ajax({
    url: './pages/chat-page/insert-mensagens.php',
    type: 'POST',
    data: { txtMsg: mensagem, idRemetente: idR, idDestinatario: idD },
    success: function (response) {
      // alert("Mensagem enviada com sucesso!");
      $('#messageInput').val(''); // Limpa o campo após o envio
    },
    error: function (xhr, status, error) {
      alert("Ocorreu um erro ao enviar a mensagem.");
      console.error(error);
    }
  });
});

$(".messages-main").hide();

let refreshInterval; // Armazena o intervalo para poder limpar depois

$(".chat").click(function () {

  // Limpa o intervalo anterior, se existir, para evitar múltiplas chamadas
  if (refreshInterval) {
    clearInterval(refreshInterval);
  }

  $(".messages-main").show();

  $("#nomeUsuarioMatch").html(
    $(this).attr("data-nome") + " " + $(this).attr("data-sobrenome").replace("@", " ")
  );

  let idUsuarioMatch = $(this).attr("id");
  let nomeUsuarioMatch = $(this).attr("data-nome");
  let sobrenomeUsuarioMatch = $(this).attr("data-sobrenome");

  localStorage.setItem("idUsuarioMatch", idUsuarioMatch);
  localStorage.setItem("nomeUsuarioMatch", nomeUsuarioMatch);
  localStorage.setItem("sobrenomeUsuarioMatch", sobrenomeUsuarioMatch);

  // Carrega o conteúdo inicial da mensagem
  $(".messages-container").load(
    "./pages/chat-page/messages.php?idUsuarioMatch=" + idUsuarioMatch +
    "&nomeUsuarioMatch=" + nomeUsuarioMatch +
    "&sobrenomeUsuarioMatch=" + sobrenomeUsuarioMatch
  );

  // Define um novo intervalo para atualizar as mensagens
  refreshInterval = setInterval(function () {
    refreshMessages();
  }, 100);
});

function refreshMessages() {

  let idUsuarioMatch = localStorage.getItem("idUsuarioMatch");
  let nomeUsuarioMatch = localStorage.getItem("nomeUsuarioMatch");
  let sobrenomeUsuarioMatch = localStorage.getItem("sobrenomeUsuarioMatch");

  // Recarrega a área de mensagens com o novo valor do contador
  $(".messages-container").load(
    "./pages/chat-page/messages.php?idUsuarioMatch=" + idUsuarioMatch +
    "&nomeUsuarioMatch=" + nomeUsuarioMatch +
    "&sobrenomeUsuarioMatch=" + sobrenomeUsuarioMatch
  );
  $("#nomeUsuarioMatch").html(
    localStorage.getItem("nomeUsuarioMatch") + " " + localStorage.getItem("sobrenomeUsuarioMatch").replace("@", " ")
  );

}

if (localStorage.getItem("pagina") === "chat") {
  $(".messages-main").hide();
}