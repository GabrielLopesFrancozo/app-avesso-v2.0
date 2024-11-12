$("#Detona").on('click', function (event) {
    event.preventDefault();

    $.ajax({
        url: './index.php',
        type: 'POST',
        success: function (response) {
            
        },
        error: function (xhr, status, error) {
          alert("Ocorreu um erro ao enviar a mensagem.");
          console.error(error);
        }
      });
});