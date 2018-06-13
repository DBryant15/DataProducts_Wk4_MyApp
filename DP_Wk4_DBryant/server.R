library(shiny)
#20180605 1306 - DWB - Not sure if this sqldf package is supported in Shiny.io.
#I did check and this is a cran package so good chance it will.
library(sqldf)

# Define server logic required to print instructions and draw a plot
shinyServer(function(input, output) {
  
  #provides instructions for app
  output$howTo <- renderPrint({
    Text_of_HowTo <- "This app with display a barpolt of tree height through 25 years. The data starts as year 5 and ends at year 25. To see the growth at years 5, 10, 15,20, or 25: Click the Plot tab and slide the slider by left clicking your mouse on the slider."
    print(Text_of_HowTo)
  })
  
  output$distPlot <- renderPlot({
    
    #loads a dataset for plotting
    treesGrowing <- datasets::Loblolly
    
    #SQL to get data for display
    TreeHeightAtUserSelectedYear_QRY <- paste("SELECT Seed, height 
                                     FROM treesGrowing
                                     WHERE age = ", input$Years)
    
    #execution of SQL
    treeHieghtAtYear <- sqldf::sqldf(TreeHeightAtUserSelectedYear_QRY)
    
    #create simple bar plot
    barplot(treeHieghtAtYear$height, 
            names.arg = treeHieghtAtYear$Seed,
            ylim=c(0,70)
            )
    
  })
  
})