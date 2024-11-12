import random

answers_qtd = 100 # Quantidade de respostas geradas

tb_users_max_id = 129 # Usuário com maior id
tb_users_min_id = 30 # Usuário com menor id

tb_questions_qtd = 37 # Quantidade de perguntas

# SQL
output_sql = "INSERT INTO `tbusuario_responde_pergunta` (`idUsuario`, `idPergunta`, `respostaUsuario`) VALUES\n"

values = []
for i in range(0, answers_qtd):
    idUser = random.randint(tb_users_min_id, tb_users_max_id)
    idQuestion = random.randint(1, tb_questions_qtd)

    # Formata cada entrada como um valor SQL
    values.append(f"({idUser}, {idQuestion}, 'Resposta para a pergunta')")

# Comando SQL completo
output_sql += ",\n".join(values) + ";"

with open("insert_answers.sql", "w", encoding="utf-8") as f:
    f.write(output_sql)