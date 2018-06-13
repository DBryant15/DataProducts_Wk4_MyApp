library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  fluidPage(
  
  # Application title
  titlePanel("Tree height over time"),
  
  # Sidebar with a slider input to select the year of growth
  sidebarLayout(
    sidebarPanel(
      sliderInput("Years",
                  "Year of record:",
                  min = 5,
                  max = 25,
                  value = 5,
                  step = 5)
    ),
    
    # tabs for instruction and display of plot
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Plot", plotOutput("distPlot")), 
                  tabPanel("HowTo", verbatimTextOutput("howTo"))
    )
  )
)
)
)
