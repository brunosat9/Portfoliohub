"""
Projeto academico: calculo de notas
Autor: Bruno Soares

O programa le notas ate o usuario digitar -1.
Depois mostra quantidade, valores, ordem inversa, soma, media,
quantidade acima da media e quantidade abaixo de 7.
"""

notas = []

while True:
    entrada = input("Digite uma nota ou -1 para encerrar: ")

    try:
        nota = float(entrada)
    except ValueError:
        print("Valor invalido. Digite apenas numeros.")
        continue

    if nota == -1:
        break

    notas.append(nota)

if len(notas) == 0:
    print("Nenhuma nota foi informada.")
else:
    print("
Quantidade de valores lidos:", len(notas))

    print("
Valores na ordem informada:")
    for nota in notas:
        print(nota, end=" ")

    print("

Valores na ordem inversa:")
    for nota in reversed(notas):
        print(nota)

    soma = sum(notas)
    media = soma / len(notas)

    acima_media = 0
    abaixo_sete = 0

    for nota in notas:
        if nota > media:
            acima_media += 1
        if nota < 7:
            abaixo_sete += 1

    print("
Soma dos valores:", soma)
    print("Media dos valores:", round(media, 2))
    print("Quantidade de valores acima da media:", acima_media)
    print("Quantidade de valores abaixo de 7:", abaixo_sete)
