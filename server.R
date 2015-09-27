library(shiny)
library(ISLR)
library(ggplot2)
data(diamonds)

modFit <- lm(price ~ carat, data = diamonds)
perCarat <- coef(modFit)[2]
intercept <- modFit$coefficients[1]
totalPrice <- function(carat){
    intercept + carat * perCarat
}

shinyServer(
    function(input, output) {
        output$Carat <- renderPrint({input$carat})
        output$price <- renderText({totalPrice(input$carat)})
    }
)