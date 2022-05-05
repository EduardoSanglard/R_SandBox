# Sejam os seguintes três vetores
v1 <- c(2005:2016)
v2 <- meses=c(1:12)
v3 <- dias=c(1:31)

# • Defina uma lista chamada datas que, ao ser impressa, seja:
#   $anos
# [1] 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016
# $meses
# [1] 1 2 3 4 5 6 7 8 9 10 11 12
# $dias
# [1] 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
# 24 25 26 27 28 29 30 31


datas <- list(anos=c(2005:2016), meses=c(1:12), dias=c(1:31))

# Sejam o seguinte vetor:
v <- c(1,3,4,7,11,18,29)

# • Crie uma lista com os dados x*2, x/2 e sqrt(x)
dobled_v <- v*2
divided_v <- v/2
squared_v <- sqrt(v)

# • Dada lista anterior, apresente o seguinte vetor
# 2.000000 2.645751 3.316625
# Procure a posição dos dados no vetor e acesse-os. Não é necessário buscar pelos
# números decimais.

sample_squared_v <- c(squared_v[3:5])
