rm(list=ls())

data(mtcars)

mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$vs <- as.factor(mtcars$vs)
mtcars$am <- factor(mtcars$am)
mtcars$gear <- factor(mtcars$gear)
mtcars$carb <- factor(mtcars$carb)
attach(mtcars)


my_amIntWtModel<-lm(mpg ~ wt + qsec + am + cyl, data=mtcars)
summary(my_amIntWtModel)

