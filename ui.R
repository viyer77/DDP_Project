#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
#This code displays input for Sepal length, Sepal width, Petal length, Petal width
#After user enters input and clicks submit, the prediction for the species is displayed

shinyUI(fluidPage(
  titlePanel("Predict type of Iris Species"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("SepalLength", "Select Sepal.Length", 4, 8, value = 5.5, step = 0.1),
      sliderInput("SepalWidth", "Select Sepal.Width", 2, 5, value = 4, step = 0.1),
      sliderInput("PetalLength", "Select Petal.Length", 1, 7, value = 4,step = 0.1),
      sliderInput("PetalWidth", "Select Petal.Width", 0.1, 3, value = 2,step = 0.1),
      
      submitButton("Submit")
    ),
    mainPanel(
      
      h3("Predicted Species (Setosa = 1, versicolor = 2, virginica = 3) :")  ,
      textOutput("pred1")
      
    )
  )
))