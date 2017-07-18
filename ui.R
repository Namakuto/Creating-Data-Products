# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Mean 'Mtcars' Parameters, based upon Cyl Number"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       selectInput("variable",
                   "Y variable of choice: ",
                   choices = names(cars.d[,c(2,4,5,6,7,8,12)]),
                   selected = names(cars.d[,2]))
       ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("cylPlot")
    )
  )
))
