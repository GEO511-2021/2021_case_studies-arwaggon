#Beginning of script, load in Iris data
data("iris")
?mean

#Calculate the mean of Petal.Length
#Assign an object from the mean Petal.Length to be called petal_length_mean
mean(iris$Petal.Length)
petal_length_mean <- mean(iris$Petal.Length)

#Create histogram
hist(iris$Petal.Length)
?hist
?hist
hist(iris$Petal.Length, main="Histogram of Petal Length", col="blue", border="black",
     xlab="Petal Length data")
#Case Study 1