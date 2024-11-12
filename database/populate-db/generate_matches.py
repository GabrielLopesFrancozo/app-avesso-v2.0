import random

matches_qtd = 50 # Quantidade de matches gerados

tb_users_max_id = 129 # Usuário com maior id
tb_users_min_id = 30 # Usuário com menor id

# SQL
output_sql = "INSERT INTO `tbmatches` (`idUsuario1`, `idUsuario2`) VALUES\n"

values = []
for i in range(0, matches_qtd):
    idUser1 = random.randint(tb_users_min_id, tb_users_max_id)
    idUser2 = random.randint(tb_users_min_id, tb_users_max_id)

    if idUser1 != idUser2:
        # Formata cada entrada como um valor SQL
        values.append(f"({idUser1}, {idUser2})")

# Comando SQL completo
output_sql += ",\n".join(values) + ";"

with open("insert_matches.sql", "w", encoding="utf-8") as f:
    f.write(output_sql)