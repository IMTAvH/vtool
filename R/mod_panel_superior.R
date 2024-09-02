#' panel_superior UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_panel_superior_ui <- function(id) {
  ns <- NS(id)
  tagList(

    bslib::page_navbar(

      title = bslib::card_image(
        height = "75", width = "75",
        # file = "www/vtool_logo_2.svg"
        src = "www/vtool_logo_2.svg"
      ),

      id = ns("my_navbar"),

      bslib::nav_panel(title = "Inicio", value = "start", mod_panel_contenido_ui("panel_contenido_1")),
      bslib::nav_panel(title = "Datos", value = "my_data", mod_panel_contenido_ui("panel_contenido_2")),
      bslib::nav_panel(title = "Composicion", value = "my_community", mod_panel_contenido_ui("panel_contenido_3")),

      theme = bslib::bs_theme(version = 5, preset = "yeti", primary = "#00719a"),

      window_title = ""

    )

  )
}

#' panel_superior Server Functions
#'
#' @noRd
mod_panel_superior_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns
    mod_panel_contenido_server("panel_contenido_1")
    mod_panel_contenido_server("panel_contenido_2")
    mod_panel_contenido_server("panel_contenido_3")

  })
}

## To be copied in the UI
# mod_panel_superior_ui("panel_superior_1")

## To be copied in the server
# mod_panel_superior_server("panel_superior_1")
