#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
# This code fits a random forest model to predict Species based on 
# Sepal length, Sepal width, Petal length, Petal width
# The prediction is then calculated and passed back to be displayed
library(shiny)
library(caret)
library(dplyr)
library(randomForest)
library(e1071)
data(iris)
shinyServer(function(input, output) {
  model1 <- train(as.factor(Species) ~ ., method="rf",data=iris)
 
  model1pred <- reactive({
    predict(model1, newdata = data.frame(Sepal.Length=input$SepalLength,
      Sepal.Width=input$SepalWidth,Petal.Length=input$PetalLength,Petal.Width=input$PetalWidth))
  })
  

  output$pred1 <- renderText({
    model1pred()
    
    
  })
  
 
})