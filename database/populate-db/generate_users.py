import random
import hashlib
from datetime import datetime, timedelta

users_qtd = 50

start_birth_date = datetime(1970, 1, 1)
end_birth_date = datetime(2003, 12, 31)

# Função para gerar datas aleatórias
def random_date(start_date, end_date):
    delta = end_date - start_date
    random_days = random.randint(0, delta.days)
    return start_date + timedelta(days=random_days)

# Listas de nomes e outras informações pré-definidas
males_first_names = ["João", "Joaquim", "Pedro", "Luiz", "Ricardo", "Rafael", "Gabriel", "Miguel", "Marcos", "Douglas", "Ronaldo", "Paulo", "Eduardo", "Mauricio", "Matheus", "Felipe", "Fábio", "Francisco", "Gustavo", "Guilherme", "Jhonatan", "Thiago", "Andrey", "Kauã", "Cauê", "Gilson", "Claudiney", "Frederico", "Higor", "Igor", "Patrick", "José", "Alexandre", "Flávio", "Arthur", "Vinícius", "Henrique", "Lucas", "Anderson", "Jair", "Otávio", "Wesley", "Pedro", "Pietro", "Luciano", "Luan", "Caio", "Natan", "Nathan", "Rodrigo", "Robson", "Renato", "Roger", "Raul", "Caetano", "Murilo", "Nicolas", "Nicolau", "Thales", "Teodoro", "Vitor", "Victor", "Valdemir", "Valdemar", "Fagner", "Vagner", "Denis", "Yuri", "Sandro", "William", "Abraão", "Antônio", "Carlos", "Daniel", "Marcelo", "Raimundo", "Heitor", "Samuel", "Bernardo", "Bruno", "Diego", "Diogo", "Edward", "Fernando", "Isaac", "Nelson", "Welinton", "Wendel"]
females_first_names = ["Maria", "Ana", "Carla", "Mariana", "Fernanda", "Paula", "Gisele", "Leticia", "Isabella", "Beatriz", "Catarina", "Renata", "Isabelle", "Lívia", "Thais", "Júlia", "Juliana", "Mônica", "Fábia", "Eduarda", "Vitória", "Viviane", "Bruna", "Bianca", "Laura", "Aghata", "Angélica", "Patrícia", "Gabrielle", "Sabrina", "Simone", "Bárbara", "Naiara", "Luísa", "Giovana", "Thaina", "Graziele", "Helen", "Marcela", "Viviane", "Paola", "Natalia", "Gabrielly", "Isabelly", "Helena", "Iara", "Íris", "Ingridy", "Ivone", "Ludmila", "Nataly", "Georgina", "Samanta", "Nicole", "Nicolly", "Camila", "Sofia", "Daniele", "Larissa", "Sara", "Sandra", "Tatiana", "Valentina", "Eloisa", "Eloa", "Eloane", "Iara", "Ruth", "Victória", "Isadora", "Julieta", "Cinthia", "Cinthya", "Amanda", "Jéssica", "Cássia", "Carol", "Caroline", "Pietra", "Raissa", "Regina", "Lara", "Cristiane", "Rafaela", "Yasmim", "Suelen", "Verônica"]
last_names = ["Da Silva", "Silva", "Santos", "Dos Santos", "Almeida", "De Almeida", "Garcia", "Pereira", "Oliveira", "Mendes", "", "Simões", "Lourenço", "Lopes", "De Sousa", "Sousa", "Duarte", "Alves", "Ferreira", "De Oliveira", "Barros", "De Barros", "Gomes", "Costa", "Da Costa", "Correia", "Mendes", "Teixeira", "De Melo", "De Andrade", "Magalhães", "Reis", "Cabral", "Dos Reis", "Dias", "Franco", "Rocha", "Filho", "Lacerda", "Machado", "De Assis", "Leite", "Gonçalves", "Mendonça", "Da Cruz", "Ribeiro", "Aquino", "Soares", "De Castro", "De Godoi", "Carvalho", "Borges", "Conceição", "Françozo", "Goes", "Ruiz", "Henriques", "Monteiro", "Martins", "Pires", "Barbosa", "Coelho", "Macedo", "Neves", "Bernardes", "Vazquez", "Alencar", "Santana", "Araújo", "Ramos", "Fernandes", "Brito", "Trevisan", "Augusto", "Guimarães", "Faria", "De Faria", "Farias", "Vieira", "Castro", "Galvão", "Moura", "Vaz", "Cavalcante", "Pinto", "Lima", "Cunha"]
sexualities = ["Héterossexual", "Homossexual", "Bissexual", "Outro", "Prefiro não informar"]
preferences = ["Homem", "Mulher", "Sem preferência"]
bios = ["adoro festas", "gosto de jogos", "adoro filmes", "gosto de ler", "adoro musicas", "gosto de series", "pratico esportes", "gosto de viajar", "gosto de comer", "gosto de cozinhar"]


# SQL
output_sql = "INSERT INTO `tbusuarios` (`emailUsuario`, `senhaUsuario`, `nomeUsuario`, `sobrenomeUsuario`, `dataNascUsuario`, `idPais`, `bioUsuario`, `sexualidadeUsuario`, `generoUsuario`, `preferenciaUsuario`) VALUES\n"

values = []
for i in range(0, users_qtd):
    # Gera dados aleatórios
    if random.randint(0, 1) == 1:
        first_name = random.choice(males_first_names)
        gender = random.choice(["Masculino", "Outro", "Prefiro não informar"])
        pronoun = "o"
    else:
        first_name = random.choice(females_first_names)
        gender = random.choice(["Feminino", "Outro", "Prefiro não informar"])
        pronoun = "a"

    salt = random.randint(1, 9999)

    last_name = random.choice(last_names)

    email = f"{first_name.lower()}.{last_name.lower().replace(' ', '')}.{salt}@example.com"

    password = f"{first_name.lower()}{last_name.lower().replace(' ', '')}{salt}"
    password_hash_object = hashlib.sha256(password.encode())
    encrypt_password = password_hash_object.hexdigest()
     
    dob = random_date(start_birth_date, end_birth_date).strftime("%Y-%m-%d")
    country_id = random.randint(1, 240)  # Assumindo 240 países diferentes
    bio = f"Olá, eu sou {pronoun} {first_name} e {random.choice(bios)}"
    sexuality = random.choice(sexualities)
    preference = random.choice(preferences)
    
    # Formata cada entrada como um valor SQL
    values.append(f"('{email}', '{encrypt_password}', '{first_name}', '{last_name}', '{dob}', {country_id}, '{bio}', '{sexuality}', '{gender}', '{preference}')")

# Comando SQL completo
output_sql += ",\n".join(values) + ";"

with open("insert_users.sql", "w", encoding="utf-8") as f:
    f.write(output_sql)