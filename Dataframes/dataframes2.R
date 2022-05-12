df <- data.frame(letras=letters[1:10], numeros=21:30, valores=rnorm(10))

# a) Retorne a linha 5
df[5,]

# b) Retorna a coluna 2 (como lista e como data frame – drop=FALSE)
df[2,]
df[2,,drop=TRUE]
typeof(df[2,,drop=TRUE])

# c) Retorne as colunas 2 e 3
df[c(2,3),]

# d) Retorne os elementos da linha 6, mas somente as colunas 1 e 3
df[6, c(1,3)]

# e) Retorne os elementos que possuem na coluna "valores" um valor maior que zero
df[df$valores > 0,]

# f) Retorne os elementos que possuem na coluna "numeros" um valor ímpar
df[df$numeros %% 2 != 0,]

# g) Retorne os elementos que possuem na coluna "valores" um valor maior que zero e na coluna "numeros" um valor par
df[df$valores > 0 & df$numeros %% 2 == 0,]

# h) Retorne os elementos que possuem na coluna "letras" somente os seguintes valores "b", "g", "h"
df[df$letras %in% c('b','g','h'),]