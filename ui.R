library(shiny)

shinyUI(fluidPage(
        # Application title
        titlePanel("Tooth Growth Data Inference"),
        h6("(by AlexFBar November 2015)"),
        p('The dinamic boxplot graphic below uses the ToothGrowth dataset to demonstrate the effect of some doses of Vitamin C (VC) and Orange Juice (OJ) in the lenght of odontobasts (teeth) in each of 10 guinea pigs.'),
        p('Choose the mg doses on the left to see the correspondent length of theeth.'),
        p('Change the scale range of Y-axis (Tooth Lenght) to a better viewing.'),
        sidebarLayout(
                        sidebarPanel(
                                radioButtons("dose", "Dosage of supplements:",
                                     list("0.5 mg" = 0.5,
                                          "1.0 mg" = 1.0,
                                          "2.0 mg" = 2.0)),
                                sliderInput("theethrange", "Scale range of Y-axis (Tooth Lenght):", 
                                            min=0, max=50, value=c(0,50),step=1)
                ),
        mainPanel(
                        plotOutput("distPlot"),
                        p('You can conclude that with higher doses of vitamin C, the tooth length is more increased.')
                )
        )
))