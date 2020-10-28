

dados <- read.csv("C:/Users/Dell/Downloads/restaurante.csv", header = TRUE, sep=";")

str(dados)

install.packages("rpart")

library("rpart")

Modelo_DT <- rpart(R ~ EP + QR + LE, method = "class", data = dados, control = rpart.control(minsplit = 1), parms = list(split = "Information"))

print(Modelo_DT)

install.packages("rpart.plot")

library("rpart.plot")


Arvore_plot <- rpart.plot(Modelo_DT, type = 3)
