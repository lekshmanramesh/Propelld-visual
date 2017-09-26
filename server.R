#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
library(grid)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  victor_dummy2=reactive({a=subset(victor_dummy, acad_score==input$acad_score & qualification==input$qualification & college==input$College & test_score==input$`Test Score` & relevant_exp==input$`Relevant Experience` &
                                   bank_bal==input$`Bank Balance`)
                          b=mean(a$pd)
                          return(b)})
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    ggplot(data=victor_dummy,aes(x=pd))+geom_line(stat="density", color="darkblue", lwd=1.5, linetype="dashed")+
    annotate("segment",x=victor_dummy2(), xend=victor_dummy2(), y=3.5, yend=0, color="sienna", lwd=1.4, arrow=arrow())+
    annotate("text", size=6, x=(victor_dummy2()), y=4, label=paste("Probability Of \nDefault: ", round(victor_dummy2(),2), sep=""))+
      ggtitle("Relative Riskiness Of The Student")+
      labs(x="Probability Of Default", y="Relative Frequency")+
      theme(axis.title = element_text(face = "bold", size=22))+
      theme(plot.title = element_text(face="bold", size=32))+
      theme(axis.text.y = element_blank() )+
      theme(axis.text.x = element_text(size=18))
      
    
  })
  
})
