# Cria vetor com valores aleatórios em distribuição normal
x <- rnorm(10)

# Média
mean(x)

# Mediana
median(x)

# Média Ponterada
weighted.mean(x, 1:5)

# Desvio Padrão: Medida de dispersão ao redor da média dos valores
# • Um valor pequeno, significa amplitude pequena ao redor da média, pouco dispersos
# • Um valor grande, significa amplitude grande ao redor da média, muito dispersos
sd(x)

# Min and Max
min(x)
max(x)

# Quartil: Valor que de 25% da população menor, mediana e 75% maior
quantile(x)

# Valores estatísticos básicos
summary(x)

# Amplitude: Diferença entre o menor e o maior valor de uma amostra
x <- c(22, 7, 19, 8, 9, 19, 10)
range(x)
diff(range(x))

# Coeficiente de Variação:
# • Desvio Padrão em porcentagem da média
# • Muito afetado pela escala dos valores
# • Comparar variáveis semelhantes

x <- c(22, 7, 19, 8, 9, 19, 10)
sd(x)/mean(x)*100

# Dada uma massa de dados, usa-se prop.table() para calcular as frequências relativas e porcentagens
x <- c(543, 1078, 930, 3529, 322)
prop.table(x)
prop.table(x)*100

# Criar uma tabela de Frequências: table()
grupoA <- rep("Grupo A", sample(1:100, 1))
grupoB <- rep("Grupo B", sample(1:100, 1))
grupoC <- rep("Grupo C", sample(1:100, 1))
grupos <- sample(c(grupoA, grupoB, grupoC))
table(grupos)

# Para descobrir a frequência das espécies nesta base Iris
table(iris$Species)

# Para descobrir a frequência de dados conforme uma condição
table(iris$Sepal.Length>5.0)

# Classes de Frequências
# • Para dados quantitativos (numéricos)
# • Com uma base de dados, consegue-se separá-la em categorias/classes
# • Deseja-se a tabela de frequências POR CLASSE
# • Seja a base de observações abaixo
dados <- c(38, 15, 43, 85, 36, 15, 96, 35, 20, 29, 76,
             39, 18, 14, 37, 39, 68, 63, 96, 86, 45, 89, 94, 60, 73, 60, 59,
             73, 52, 32)
summary(dados)

