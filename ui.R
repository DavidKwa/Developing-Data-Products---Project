shinyUI(pageWithSidebar(
        headerPanel("Which is the most fuel efficient vehicle?"),
            sidebarPanel(
                helpText("Please provide your typical monthly usage and the vehicle specifications"),
                numericInput('dis', 'Typical Monthly mileage:', 300, min = 1, max = 10000),
                numericInput('cost', 'Fuel Price (per gallon):', 0.95, min = 0.5, max = 5, step=0.01),
                sliderInput('cyl', 'Number of cylinders:', 4, min = 4, max = 8, value=c(4,8), step = 2),
                sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10),
                sliderInput('hp', 'Horsepower', min=50, max=340, value=c(50,340), step=10),
                checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
            ),
            mainPanel(
               dataTableOutput('table')
            )
        )
)
