# A seguir tem-se as distâncias entre quatro cidades da Europa, em Km:
# 
# • Atenas a Madri: 3949
# • Atenas a Paris: 3000
# • Atenas a Estocolmo: 3927
# • Madri a Paris: 1273
# • Madri a Estocolmo: 3188
# • Paris a Estocolmo: 1827
# 
# Crie uma matriz com os valores acima.
# • Nesta matriz, a diagonal principal deve conter zeros e o 'triângulo' acima da
# diagonal principal deve conter as mesmas informações do 'triângulo' abaixo da
# diagonal principal.
# • Use o nome das cidades como linhas e colunas desta matriz
# • Mostre a matriz


# City Order : Atenas -> Paris -> Madri -> Estocolmo

city_names <- list("Atenas", "Paris", "Madri", "Estocolmo") 
dists_atenas <- c(0, 3000 ,3949, 3927)
dists_paris <- c(3000, 0, 1273, 1827)
dists_madri <- c(3949, 1273, 0, 3188)
dists_estocolmo <- c(3927, 1827, 3188, 0)


dists_mt <- matrix(c(dists_atenas, dists_paris, dists_madri, dists_estocolmo), length(dists_atenas), length(dists_atenas))
colnames(dists_mt) <- rownames(dists_mt) <- city_names

View(dists_mt)
