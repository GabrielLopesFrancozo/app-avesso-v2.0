import random

likes_qtd = 150 # Quantidade de likes gerados

tb_users_max_id = 129 # Usuário com maior id
tb_users_min_id = 30 # Usuário com menor id

# SQL
output_sql = "INSERT INTO `tblikes` (`idUsuario`, `idUsuarioLike`) VALUES\n"

values = []
while len(values) < likes_qtd:
    idUser = random.randint(tb_users_min_id, tb_users_max_id)
    idUsuarioLike = random.randint(tb_users_min_id, tb_users_max_id)

    # Evita que o usuário de like na mesma pessoa mais de uma vez
    if values.count(f"({idUser}, '{idUsuarioLike}')") == 0:
        # Formata cada entrada como um valor SQL
        values.append(f"({idUser}, {idUsuarioLike})")

# Comando SQL completo
output_sql += ",\n".join(values) + ";"

with open("insert_likes.sql", "w", encoding="utf-8") as f:
    f.write(output_sql)