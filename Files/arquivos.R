# 1. Execute os exercícios apresentados nos slides

sink("Files/saida.txt")
print("oi mundo!!")
sink()

x = rnorm(100)
y = rnorm(100,5,1)

pdf("Files/grafico.pdf")

png("Files/arquivo.png")

jpeg("Files/arquivo.jpg")


plot(x, lty=2, lwd=2, col="red", ylim=c(-10,10))
points(y, lty=3, col="green")

dev.off()

# 2. Carregue o arquivo
# http://www.razer.net.br/datasets/Biomassa_REG.csv

df_biomassa = read.csv2('http://www.razer.net.br/datasets/Biomassa_REG.csv', sep=';')
head(df_biomassa)

# 3. Carregue o arquivo http://www.razer.net.br/datasets/fertility.csv
df_fertility = read.csv2('http://www.razer.net.br/datasets/fertility.csv', sep=',')
head(df_fertility)

# 4. Salve a base de dados IRIS (data frame iris) usando os seguintes formatos:
library(datasets)
tail(iris)

#   a. Separador "**", ponto decimal ".", sem os nomes das linhas e o cabeçalho de colunas, com aspas nos campos string

# OBS: Write.csv estabelece assunções sobre formatação dos dados. Neste caso foi usado write.table para especificação dos valores

write.table(iris, 'Files/iris_1.csv', sep = '**', dec = '.', quote = T, row.names=F )

#   b. CSV com ponto decimal ",", sem os nomes das linhas, com o cabeçalho de colunas e sem aspas nos campos string

write.table(iris, 'Files/iris_2.csv', dec = ',', quote = F, row.names=F )
