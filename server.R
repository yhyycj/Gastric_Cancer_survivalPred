library(shiny)
library(survival)
library(rms)
shinyServer(function(input, output, session){
  record <- reactive({
    data.frame(ranked_RJClass_5 = as.integer(input$ranked_RJClass_5), diaGroup = as.integer(input$diaGroup), TNM_7th = as.integer(input$TNM_7th), ageGroup_5 = as.integer(input$ageGroup_5), gender = as.integer(input$gender))
  })
  
  predValues <- reactive({
    surModel <- readRDS('predSurModel.rds')
    surv <- Survival(surModel)
    data.frame(
        Duration = c('3 years', '5 years'),
        Survival_rate = c(surv(3*12, predict(surModel, record())), surv(5*12, predict(surModel, record())))
    )
  })
  
  # Show the values using an HTML table
  output$values <- renderTable({
    predValues()
  })
})