# Crie um script R (chamado funcoes.R) e escreva nele as seguinte funções:

# • Para calcular o quadrado de um número

quadrado <- function(n) {
  if (missing(x)) {
    x <- 1
  }
  return (x^x)
}

# • Para receber duas matrizes e retornar a multiplicação
multipleMatrix <- function(m1, m2){
  multipliedMatrix <- m1
  for (r in 1:nrow(m1)) {
    multipliedMatrix[r,] <- m1[r,] * m2[r,]
  }
  return (multipliedMatrix)
}


# • Para receber um data frame contendo uma coluna nome e uma coluna idade, e :
# retornar a média das idades
meanAges <- function(df) {
  return (mean(df$idade))
}

# retornar uma lista com dois dados, o nome e a idade, da pessoa que contém a maior idade
getOldest <- function(df) {
  return (df[df$idade == max(df$idade),])
}
