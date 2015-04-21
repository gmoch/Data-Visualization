
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Choropleth for Several Indicators:"), h4("By Granger Moch and Will Murphy"), br(""),
  
  selectInput("indicator", label = h3("Select An Indicator"), 
              choices = list("Child Mortality (under 5 per 1000 live births)" = "SH.DYN.MORT", 
                             "Percentage of paved roads" = "IS.ROD.PAVE.ZS", 
                             "GDP per person employed (constant 1990 PPP $)" = "SL.GDP.PCAP.EM.KD", 
                             "Inflation, consumer prices (annual %)" = "FP.CPI.TOTL.ZG",
                             "Fertility rate, total (births per woman)" = "SP.DYN.TFRT.IN",
                             "Internet users (per 100 people)" = "IT.NET.USER.P2"), 
              selected = "SH.DYN.MORT"),
  sliderInput("Year", "Data from years:", 
              min=1980, max=2012, value=2010,  step=1,
              format="###0",animate=FALSE),
  
  htmlOutput("choroplethplot"))
  )

