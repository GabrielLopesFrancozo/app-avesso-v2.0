// $(document).ready(function() {
//     // Função para carregar o conteúdo e rolar para o final
//     function loadMessages() {
//       $("#box-msg").load("box-mensagens.php", function() {
//         // Define a rolagem para o final da div após o carregamento do conteúdo
//         $("html, body").animate({ scrollTop: $(document).height() }, "fast");
//       });
//     }
  
//     // Carrega o conteúdo inicialmente
//     loadMessages();
  
//     // Atualiza o conteúdo e rola para o final a cada 3 segundos
//     setInterval(loadMessages, 100);
  
//     $("#btn-insert-msg").on('click',function(event){
//       event.preventDefault();
      
//       var mensagem = $('#txtMsg').val();
//       var idR = $("#idRemetente").val();
//       var idD = $("#idDestinatario").val();
      
//     // Verifica se o campo não está vazio
//     if (mensagem.trim() === "") {
//       alert("Por favor, digite uma mensagem.");
//       return;
//     }
//   // Faz a requisição AJAX
//     $.ajax({
//       url: 'insert-mensagens.php',
//       type: 'POST',
//       data: { txtMsg: mensagem, idRemetente: idR, idDestinatario: idD },
//       success: function(response) {
//          // alert("Mensagem enviada com sucesso!");
//           $('#txtMsg').val(''); // Limpa o campo após o envio
//       },
//       error: function(xhr, status, error) {
//           alert("Ocorreu um erro ao enviar a mensagem.");
//           console.error(error);
//       }
//     });
//     $("html, body").animate({ scrollTop: $(document).height() }, "fast");
//   });
//   });

$(".chat").click(function() {
  $(".messages-container").load("./pages/chat-page/messages-page/messages.php");

});