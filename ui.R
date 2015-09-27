library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Diamond Price Predictor"),
    sidebarPanel(
        h2('Enter carat below.'),
        numericInput("carat", 'Carat', value = 1.5, step = 0.1, min = 0.3, max = 5),
        p('This app will estimate the price of the diamond in the market depending on the carat of the diamond. 
          Enter the carat value in the box above and the estimated price will appear on the right.')
    ),
    mainPanel(
        h2('Carat: '),
        verbatimTextOutput("Carat"),
        h2('Estimated Price in USD: '),
        verbatimTextOutput("price")
    )
))