df1 <- data.frame(nome=c("Razer", "Anthom", "Nizer", "Rojas", "Montaño"), cidadeId=c(3, 10, 2, 3, 1))
cidades <- data.frame(cidadeId=c(1, 2, 3, 4), cidade=c("Curitiba", "SJP", "Pinhais", "Colombo"))

# • CROSS JOIN :
merge(df1, cidades, by=NULL)
# 
# • INNER JOIN
merge(df1, cidades, by="cidadeId")
# 
# • OUTER JOIN
merge(df1, cidades, by="cidadeId", all=TRUE)
# 
# • LEFT OUTER JOIN
merge(df1, cidades, by="cidadeId", all.x=TRUE)
# 
# • RIGHT OUTER JOIN
merge(df1, cidades, by="cidadeId", all.y=TRUE)