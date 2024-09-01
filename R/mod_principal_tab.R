#' principal_tab UI Function
#'
#' @description A shiny Module.
#'
#' @param id,title,value,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_principal_tab_ui <- function(id, title = "Inicio", value = "start") {
  ns <- NS(id)
  # tagList(

    bslib::nav_panel(
      title = title,
      value = value,
    )

  # )
}

#' principal_tab Server Functions
#'
#' @noRd
mod_principal_tab_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_principal_tab_ui("principal_tab_1")

## To be copied in the server
# mod_principal_tab_server("principal_tab_1")
