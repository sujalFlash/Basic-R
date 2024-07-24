install.packages('iris')
data(iris)
head(iris)
unique(iris$Species)
mean(iris$Sepal.Length)
subset1=subset(iris,subset=(Species=='setosa'))
summary(subset1)
subset2=subset(iris,subset=(Species=='versicolor'))
summary(subset2)
subset3=subset(iris,subset=(Species=='virginica'))
summary(subset3)



# to create a scatter plot we can use ggplot or normal plot
install.packages('ggplot2')
library(ggplot2)
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,color=Species)) +
  geom_point()

#using normal plot
species_colors <- c(setosa = "red", versicolor = "green", virginica = "blue")
plot(iris$Sepal.Length, iris$Sepal.Width, 
     col = species_colors[iris$Species], 
     pch = 16, 
     main = "Sepal length vs Sepal Width",
     xlab = "Sepal Length", 
     ylab = "Sepal Width")

# Add a legend
legend("topright", 
       legend = levels(iris$Species), 
       col = species_colors, 
       pch = 16,
       title = "Species")
subset4=subset(iris,subset=Petal.Length>1.5)
summary(subset4)
summary(iris)
hist(iris$Petal.Length,main="Histogram plot of Petal Length ",xlab="Petal length",ylab="Frequency")
Sepal.Area=iris$Sepal.Length*iris$Sepal.Width
iris=cbind(iris,Sepal.Area=Sepal.Area)
summary(iris)
cor(iris$Sepal.Length,iris$Petal.Length)
#there are 2 methods of calculating Spearman and pearson
