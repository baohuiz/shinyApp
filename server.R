library(shiny)

# Server.R
# This is the server side code which uses the prediction function for the weight ~ height. The function will
# use the value entered by user, then do the calcuation based on the prediction function.

weightByHeightModel <- function(height) 40 + 1.6 * height

shinyServer(function(input,  output) {
  output$heightIn <- renderPrint(input$your_height)
  output$weightOut <- renderPrint(weightByHeightModel(input$your_height))
})