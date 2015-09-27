shinyUI(pageWithSidebar(
headerPanel("Please enter your vehicle details"),
sidebarPanel(
numericInput('id1', 'No of Cylinder', 4, min = 4, max = 8, step = 2),
numericInput('id2', 'Weight (lb/1000)', 1.513, min = 1.513, max = 5.424, step = 0.01),
numericInput('id3', 'Qsec	 (1/4 mile time)', 14.50 , min = 14.50 , max = 22.90, step = 0.1),
numericInput('id4', 'Transmission (0 = automatic, 1 = manual)', 0, min = 0, max = 1, step = 1),
submitButton('Submit')
),
mainPanel(
h2('Details entered'),
h4('You entered'),
verbatimTextOutput("oid1"),
h4('You entered'),
verbatimTextOutput("oid2"),
h4('You entered'),
verbatimTextOutput("oid3"),
h4('You entered'),
verbatimTextOutput("oid4"),
h2('Results of prediction (Yours Miles per Gallon (MPG))'),
verbatimTextOutput("prediction")
)
))












