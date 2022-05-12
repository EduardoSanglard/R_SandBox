# 1. Execute os exercícios apresentados nos slides

x <- 10:20
sapply(x, sqrt)

quadrado <- function(x) {
  return (x^2)
}
dados <- 10:20
sapply(dados, quadrado)

potencia <- function(x, expoente) {
  return (x^expoente)
}
dados <- 10:20
sapply(dados, potencia, expoente=4)

x <- 10:20
lapply(x, sqrt)


matriz <- matrix(1:12, nrow=3, ncol=4)
apply(matriz, 1, sum) # lInhas
apply(matriz, 2, sum) # colunas

tapply(iris$Sepal.Width, iris$Species, mean)


n_alunos <- 200
n_cursos <- 4
v_nome <- paste("Aluno", 1:n_alunos)
v_nota <- sample(0:100, n_alunos, replace=T)
v_cursos <- paste("Curso", 1:n_cursos)
v_curso <- v_cursos[sample(1:n_cursos, n_alunos, replace=T)]
df <- data.frame(nome=v_nome, nota=v_nota, curso=v_curso)
head(df)
tapply(df$nota, df$curso, mean)

# 2. Crie uma matriz com 10 colunas contendo 100.000 números, sendo os números de 1:100000.
#   • Execute um comando apply que calcula a soma de cada linha desta matriz.
#   • Execute um comando apply que calcula a média de cada coluna desta matriz.

megaMatrix = matrix(1:100000, 1000, 1000)
sumRows = apply(megaMatrix, 1 ,sum)
meanCols = apply(megaMatrix, 2, mean)

# 3. Crie o seguinte data frame

idade <- c(56, 34, 67, 33, 25, 28)
peso <- c(78, 67, 56, 44, 56, 89)
altura <- c(165, 171, 167, 167, 166, 181)
dados <- data.frame(idade, peso, altura)

# Dê as seguintes respostas
# A média de todas as colunas (usando apply)


apply(dados, 2, mean)

# O valor máximo de todas as colunas (usando apply)

apply(dados, 2, max)

# A raiz quadrada de todos os valores do data frame, como uma matriz

matrizAoQuadrado <- sapply(as.list(dados), sqrt)
matrizAoQuadrado <- matrix(matrizAoQuadrado, 6, 3)
typeof(matrizAoQuadrado)
class(matrizAoQuadrado)
length(matrizAoQuadrado)
matrizAoQuadrado

# A raiz quadrada de todos os valores do data frame, como uma lista

listaAoQuadrado <- lapply(as.list(dados), sqrt)
typeof(listaAoQuadrado)
class(listaAoQuadrado)
listaAoQuadrado

# Todos os valores do data frame multiplicados por 20, como uma matriz (usando uma UDF)

times20 <- function(x) {
  return (x*20)
}

matrizTimes20 <- sapply(as.list(dados), times20)
matrizTimes20 <- matrix(matrizTimes20, 6, 3)
typeof(matrizTimes20)
class(matrizTimes20)
length(matrizTimes20)
matrizTimes20




