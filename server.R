predict_mpg <- function(id1,id2,id3,id4){
select1 <- 0; select2 <- 0
if(id1==6) {select1=1}
if(id1==8) {select2=1}
13.7742 + select1*id1 + select2+id1 -3.6719*id2 + 1.0188*id3 + 2.4550*id4
}

shinyServer(
function(input, output) {
output$oid1 <- renderPrint({input$id1})
output$oid2 <- renderPrint({input$id2})
output$oid3 <- renderPrint({input$id3})
output$oid4 <- renderPrint({input$id4})
output$prediction <- renderPrint({predict_mpg(input$id1,input$id2,input$id3,input$id4)})
}
)