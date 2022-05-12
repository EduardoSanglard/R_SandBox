# Escreva um laço que varre os números de 1 a 7 e imprime seus quadrados, usando o
# comando print().

for (i in 1:7) {
  print(sqrt(i))
}

# • Usando laços, varra uma lista de números aleatórios gerados por rnorm(), mas pare
# se o número encontrado for mais que 1.
for (n in rnorm(10)){
  print(n)
  if (n > 1){
    break
  }
}


# • Usando laços, varra uma lista de números aleatórios gerados por rnorm(), mas use
# o comando next para pular os números negativos.
for (n in rnorm(10)){
  if (n < 0){
    next
  }
  print(n)
}


# • Use laços aninhados para criar a matriz abaixo. Faça a alocação prévia da matriz com
# valores NA.

# 0 1 2 3 4
# 1 0 1 2 3
# 2 1 0 1 2
# 3 2 1 0 1
# 4 3 2 1 0

dim <- 5

matriz = matrix( rep(NA, dim*dim) , dim, dim)

for (r in 1:nrow(matriz)) {
  for (c in 1:nrow(matriz)) {
    matriz[r,c] = abs(r-c)
  }
}


# Crie o seguinte data frame:

student.df <- data.frame( name = c("Sue", "Eva", "Henry", "Jan"),
                            sex = c("f", "f", "m", "m"),
                            years = c(21,31,29,19))


#   • Usando um comando ifelse(), crie uma coluna chamada teen, booleana, que indica se a
#   pessoa possui menos de 20 anos


# Crie o seguinte data frame:

a <- c(3,7,NA, 9)
b <- c(2,NA,9,3)
f <- c(5,2,5,6)
d <- c(NA,3,4,NA)

mydf <- data.frame(a=a,b=b,f=f,d=d)

#   • Adicione uma quinta coluna usando as seguintes regras:
#   1. A 5a coluna tem o valor da coluna 2 se a coluna 1 é NA
#   2. A 5a coluna tem o valor da coluna 4 se a coluna 2 é NA
#   3. A 5a coluna contém o valor da coluna 3 em qualquer outro caso
#   • O resultado deve ser:

#     a b f d V5
#   1 3 2 5 NA 5
#   2 7 NA 2 3 3
#   3 NA 9 5 4 9
#   4 9 3 6 NA 6

mydf$v5 <- mydf$f

for (r in 1:nrow(mydf)){
  if (is.na(mydf[r,1])){
    mydf[r,5] = mydf[r,2]
  }
  else if (is.na(mydf[r,2])){
    mydf[r,5] = mydf[r,4]
  }
}

# Crie uma matriz com 10 colunas contendo 100.000 números, sendo os números de
# 1:100000. Faça um laço for que calcula a soma de cada linha desta matriz.

matriz <- matrix(1:100000, 1000, 1000)

for (r in 1:nrow(matriz)) {
  print(sum(matriz[r,]))
}

# • Crie o seguinte data frame

vector1 <- 1:10
vector2 <- c("Odd", "Loop", letters[1:8])
vector3 <- rnorm(10, sd = 10)
df1 <- data.frame(vector1, vector2, vector3, stringsAsFactors = FALSE)

# • Faça um laço genérico sobre as colunas deste data frame efetuando o seguinte cálculo:
# • Se a coluna for numérica, calcula sua média
# • Se a coluna for de texto calcula a soma dos caracteres na coluna (nchar())

for (col in 1:ncol(df1)) {
  if (is.numeric(df1[,col])) {
    print(sum(df1[,col]))
  }
  else {
    print( sum( nchar( as.character(df1[,col]) ) ) )
  }
}

# Crie um script R (chamado funcoes.R) e escreva nele as seguinte funções:
# • Para calcular o quadrado de um número
# • Para receber duas matrizes e retornar a multiplicação
# • Para receber um data frame contendo uma coluna nome e uma coluna idade, e retornar a
# média das idades
# • Para receber um data frame contendo uma coluna nome e uma coluna idade, e retornar
# uma lista com dois dados, o nome e a idade, da pessoa que contém a maior idade
# • Carregue o script no R e execute as funções

source('Programming/funcoes.R')

multipliedMatrix <- multipleMatrix(matriz, matriz)

ages <- c(sample(1:100, replace=T, size=5))
nomes <- c('John', 'Doe', 'Beltrano', 'Fulano', 'Ciclano')

df_people <- data.frame(idade=ages, nome=nomes, stringsAsFactors = FALSE)
meanAges(df_people)
getOldest(df_people)
