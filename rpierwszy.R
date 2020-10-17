print("Hello World")

install.packages("httr")
install.packages("jsnolite")

library(httr)
library(jsonlite)

installed.packages()

endpoint <-"api.openweathermap.org/data/2.5/weather?q=Lublin&units=metric&appid=ccd2c7f8b414cadf0c4383ce0a541dc2"
getWeather <- GET(endpoint)
wetherText<-content(getWeather, "text"); wetherText

weatherJson<-fromJSON(wetherText, flatten = TRUE)
weatheerDF<-as.data.frame(weatherJson) 
View(weatheerDF)

x<-"to jest zmienna"
x <-123
?vector

mojVector <- vector("numeric", 10)
mojVector
mojVector<- c(1,2,3,4, FALSE)
mojVector
mojVector<- as.logical(mojVector); mojVector
mojVector2 <- c(-1, 0, 2, 3)
mojVector2 <-as.logical(mojVector2); mojVector2





a<-c(1,2,3,4,5)
b <-c(6,7)
c <- a+b
print(c)



plec<-c("mezczyzna","kobieta","mezczyzna","kobieta","kobieta")
plec<-factor(c("mezczyzna","kobieta","mezczyzna","kobieta","kobieta", levels = c("mezczyzna", "kobieta"))); plec



class(plec)
plecf <- as.factor(plec)
unclass(plec)


plecf[3:5]<-NA
is.na(plecf)
plecf[is.na(plecf)]

complete.cases(plecf)


df <- data.frame(index = c(1,2,3), imie =c("jan", "marek", "Sonia"), plec = factor(c("mezczyzna", "mezczyzna", "kobieta")))
df


getwd()

### wczytywanie danych
dfn <-read.csv("dane.csv",sep = ";"); View(dfn)
dfn2<-read.csv2("dane.csv"); View(dfn)

dfn2$waga

len <-length(dfn2$wzrost)

for(i in 1: len){
  print(dfn$wzrost[i])
    print(dfn2$waga[i]/(dfn2$wzrost[i]/100)^2)
}


i<-1

while(i<=len){
  dfn2$bmi[i]<-( dfn2$waga[i] / ( dfn2$wzrost[i]/100)^2 )
  i<-i+1
}

dfn2$bmi2<-(dfn2$waga/(dfn2$wzrost/100)^2)


hello <-function(x = "hello"){
  print(paste(x, "RSTUDIO", sep = " "))
}

hello(c("Witam", "pPrivaet"))


liczBMI <-function(masa, wzrost){
  k<-match(0, masa)
  if(!is.na(k)){
    bmi<-"dzielenie przez zero"
  }else{ bmi<-masa/(wzrost/100)^2}
  bmi
}

liczBMI(masa = c(100,200), wzrost = c(200, 200))


liczBMI2<- function( ){
  komunikat<- "podaj mase i wzrost oddzielone przecinkiem:"
  wektorOdp<- as.numeric( strsplit( readline(komunikat),",")[[1]] )
  bmi<- wektorOdp[1] / ( wektorOdp[2]/100)^2
  bmi
}

liczBMI2()