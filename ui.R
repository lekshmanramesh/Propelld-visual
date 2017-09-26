#
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
  headerPanel("Propelling India"),
  
  # Sidebar with a slider input for number of bins. Create as many Inputs as you want 
  sidebarPanel(
    selectInput("acad_score", "Academic Score:",
                list("Consistently > 60%" = 1, 
                     "Others" = 2)),
    selectInput("qualification", "Highest Degree:",
                list("Masters" = 1, 
                     "Bachelors/Diploma" = 2)),
    selectInput("College", "College:",
                list("Tier 1/2" = 1, 
                     "Tier 3" = 2)),
    selectInput("Test Score", "Test Score:",
                list(">= 60%" = 1, 
                     "< 60%" = 2)),
    selectInput("Relevant Experience", "Relevant Experience:",
                list("Yes" = 1, 
                     "No" = 2)),
    selectInput("Bank Balance", "Bank Balance:",
                list("> INR 60,000" = 1, 
                     "<= INR 60,000" = 2)),
    selectInput("acad_score", "Academic Score:",
                list("Consistently > 60%" = 1, 
                     "Others" = 2)),
    selectInput("qualification", "Highest Degree:",
                list("Masters" = 1, 
                     "Bachelors/Diploma" = 2)),
    selectInput("College", "College:",
                list("Tier 1/2" = 1, 
                     "Tier 3" = 2)),
    selectInput("Test Score", "Test Score:",
                list(">= 60%" = 1, 
                     "< 60%" = 2)),
    selectInput("Relevant Experience", "Relevant Experience:",
                list("Yes" = 1, 
                     "No" = 2)),
    selectInput("Bank Balance", "Bank Balance:",
                list("> INR 60,000" = 1, 
                     "<= INR 60,000" = 2))
  ),
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("distPlot"))
  )
)