'
1. Gráfico de DISPERSÃO com uma Série Temporal (Série de Tempo)

Este é um gráfico em que mostra a evolução de uma Variável ao longo do tempo (cronologicamente)

2. HISTOGRAMA

Este gráfico mostra a Distribuição de Frequências de uma variável. Não leva em consideração o "tempo". Apenas mostra o numero de vezes (a frequência) que a variável apresenta valores dentro de faixas pré definidas.

3. BOXPLOT

Este gráfico mostra a Distribuição dos dados tomando por base os Quartis.

4. ESTATÍSTICAS

Devem ser calculadas as Estatísticas abaixo:
  
  4.1 Mínimo / Máximo / Amplitude

4.2 QUARTIS

4.3 MEDIA, DESVIO PADRAO e COEFICIENTE de VARIACAO

4.4 MODA

4.5 Sumario Estatístico com sete Estatísticas Fundamentais:
  
  Mínimo / q1 / Mediana=q2 / Media / q3 / Máximo / Valores Ausentes (NAs)

5. DISTRIBUIÇÃO DE FREQUÊNCIAS

Deve ser montada a Distribuição de Frequências dos dados
'

dados2 <- read.csv2("C:/Users/Dell/Documents/Mack/6SEMESTRE/Ciencia de dados/dados/nivelDeAgua.csv", stringsAsFactors = FALSE)

library(ggplot2)

print("Gráfico de dispersão")

ggplot(dados2, aes(x = Data, y = AlturaMedia)) + 
  geom_point()


print("Histograma")


ggplot(dados2, aes(x = AlturaMedia)) +
  
  geom_histogram()

print("BoxPlot")

ggplot(dados2, aes( y = AlturaMedia)) + 
  geom_boxplot()

print("Valores minimo, 1quartil, mediana, média, 3quartil, max e NA's")

alturasMedias <- dados2[,3]
summary(alturasMedias)

print("DISTRIBUIÇÃO DE FREQUÊNCIAS")
install.packages("fdth")
library(fdth)

d <- fdt(dados2)
print ( d )

d <- fdt(dados2, start = 0.5, end = 1)
print(d, format = TRUE, col=1:4, pattern = "%2f")
