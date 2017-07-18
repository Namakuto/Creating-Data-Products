# 
# User interface; the display/interaction code for the calculator.

library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Mean 'Mtcars' Parameters, based upon Cyl Number"),
  
  sidebarLayout(
    sidebarPanel(
       selectInput("variable",
                   "Y variable of choice: ",
                   choices = names(cars.d[,c(2,4,5,6,7,8,12)]),
                   selected = names(cars.d[,2]))
       ),
    mainPanel(
       plotOutput("cylPlot")
    )
  )
))
