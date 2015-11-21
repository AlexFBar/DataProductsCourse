library(shiny)
library(ggplot2)
data("ToothGrowth")

shinyServer(function(input, output) {
        
        output$distPlot <- renderPlot({
                doses <- input$dose
                ggplot(ToothGrowth[ToothGrowth$dose==doses,], aes(x=factor(supp), y=len, colour=factor(supp)))+
                        facet_grid(.~dose)+
                        geom_boxplot()+
                        coord_cartesian(ylim = input$theethrange)+
                        ggtitle("Exploratory from Tooth Growth by Supplement")+
                        labs(y="Tooth Length", x="Supplement")
        })
        
})