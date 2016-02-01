library(shiny)

#ui.R
# This is the UI part of shiny app. It is used to predict people's weight based on height entered by
# user through the input field. After user click on the submit button, the main panel will show both
# the value of user's input and the predicated weight in lbs.

shinyUI(fluidPage(
  titlePanel("How much do you weigh?"),
  sidebarLayout(
   sidebarPanel(
     h2("Instructions:"),
     
     h6("1. Please enter your height in inches"),
     h6("2. Then click on submit button"),
     h6("3. Your weight will appear on the right panel"),
     
     br(),
     numericInput("your_height", "Your height (inches)", 65, 20, 100, 1),
     submitButton("Submit")
   ),
   mainPanel(
     h3("Your height (inches) is: "),
     textOutput("heightIn"),
     br(),
     h3("Your weight (lbs) is: "),
     textOutput("weightOut")
   )
  )
))