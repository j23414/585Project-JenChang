library(shiny)

# Define UI for application that plots random distributions
shinyUI(pageWithSidebar( # btter to use fluidPage but doesn't work on the server?
  
  # Application title
  headerPanel("Hello Shiny New World!"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("obs","Number of Observations:", min=1, max=1000, value=500)
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )  
))