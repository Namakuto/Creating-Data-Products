#
# The main code to calculate means on various 'mtcars' parameters.

library(shiny)
library(datasets); iibrary(ggplot2); data("mtcars")

shinyServer(function(input, output) {
  
  cars.d<-data.frame(mtcars)
  rownames(cars.d)<-NULL # REMOVE the rownames in the new data.frame
  cars.d$names<-rownames(mtcars); cars.d<-cars.d[,c(12,1:11)] 
  
  selection <- reactive({
    aggregate(cars.d[,input$variable], by=list(cars.d$cyl),FUN=mean)
  })
  
  output$cylPlot <- renderPlot({
    units<-c("(Miles/(US) Gallon)", "(Cubic in.)", "(Gross Horsepower)", 
             "(Rear Axle Ratio)", "(1000 lbs)", "(1/4 mile time)", "(Number of Carburetors)")
    index<-which(names(cars.d[,c(2,4,5,6,7,8,12)])==input$variable)
    
    g<-ggplot(data=selection(),
           aes(factor(selection()$Group.1), selection()$x, fill=c("4","6","8")))
    g+
      geom_col()+
      scale_fill_brewer(name="cyl",palette = input$colour) +
      labs(y=paste(input$variable, units[index],sep =" "), 
           x="Cyl Number",
           title=paste("Average", input$variable, sep= " ")) +
      theme_minimal()
      
  })
})
