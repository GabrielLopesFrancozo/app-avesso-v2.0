import random

hashtags_qtd = 150 # Quantidade de hashtags geradas

tb_users_max_id = 129 # Usuário com maior id
tb_users_min_id = 30 # Usuário com menor id

hashtags = ["Aventura", "Viagem", "Video-Games", "Carros", "Motos", "Comida Japonesa", "Comida italiana", "Estar com a familia", "Tempo de qualidade", "Praia", "Escrever", "Dançar", "Beber", "Séries", "Futebol", "Esportes", "Fotos", "Surf", "Naturaza", "Acampar", "Festas", "Baladas", "Cumprir metas", "Conhecer pessoas", "Conhecer lugares", "Dar risada", "Comer pastel da feria"]

# SQL
output_sql = "INSERT INTO `tbhashtags` (`idUsuario`, `tituloHashtag`) VALUES\n"

values = []
while len(values) < hashtags_qtd:
    idUser = random.randint(tb_users_min_id, tb_users_max_id)
    hashtag_title = random.choice(hashtags)

    # Evita que o mesmo usuário tenha a mesma hashtag duas ou mais vezes
    if values.count(f"({idUser}, '{hashtag_title}')") == 0:
        # Formata cada entrada como um valor SQL
        values.append(f"({idUser}, '{hashtag_title}')")

# Comando SQL completo
output_sql += ",\n".join(values) + ";"

with open("insert_hashtags.sql", "w", encoding="utf-8") as f:
    f.write(output_sql)
