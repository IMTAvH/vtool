#' panel_contenido UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_panel_inicio_contenido_ui <- function(id) {
  ns <- NS(id)
  tagList(

    bslib::card_body(
      fillable = FALSE,
      bslib::layout_columns(
        col_widths = c(8,4),
        # First element of the card
        tags$div(
          class = "jumbotron text-left",
          style = "margin-bottom:0px;margin-top:0px;margin-right:100px",
          tags$img(
            src="www/vtool_logo_1.svg",
            width=150,
            height=150,
            style="margin-left:0px;padding-left:0px"
          ),
          tags$h3(
            class = 'jumbotron-heading',
            stye = 'margin-bottom:0px;margin-top:0px',
            'Un explorador de datos para estudiar el microbioma vaginal'
          ),
          br(),
          p(
            "VTOOL es una herramienta basada en Shiny para el analisis
               exploratorio de datos. A traves de una interface
               interactiva e intuitiva, esta herramienta busca facilitar
               la exploracion y visualizacion de datos asociados al estudio
               del microbioma vaginal."
          ),
          br(),
          p(
            "VTOOL es un proyecto de codigo abierto (open source),
               desarrollado en colaboracion con investigadores y bioninformaticos,
               quienes buscan fomentar el estudio del microbioma vaginal.
               Si te interesa contribuir, reportar errores, o saber mas de
               este proyecto, por favor",
            tags$a(
              href="https://github.com/IMTAvH/vtool",
              "visita nuestro repositorio en GitHub"),
            ".",
            .noWS = "outside"
          )
        ),
        # Second element of the card
        bslib::card_body(
          fillable = FALSE,
          fill = FALSE,
          tags$h3(
            class = 'jumbotron-heading',
            'Empezemos cargando tus datos'
          ),
          p("1. Selecciona el formato del archivo:"),
          #   shinyWidgets::awesomeRadio(
          #     "input_format",
          #     label = "Formato:",
          #     choices = c("Tidytacos", "Biom"),
          #     selected = "Tidytacos",
          #     inline = T
          #     ),
          #   p("2. Encuentra tu(s) archivos:"),
          #   uiOutput("load_file_options"),
          #   tags$br(),
          #   actionButton(
          #     "input_my_data",
          #     label = "Importar datos",
          #     width = "100%",
          #     disabled = FALSE
          #     ) %>% bslib::tooltip("No olvides cargar tus archivos antes de presionar este boton"),
          #   tags$br(),
          #   tags$br(),
          #   tags$h3(class = 'jumbotron-heading', 'O carga un dataset ejemplo'),
          #   actionButton(
          #     "input_example",
          #     label = "Cargar ejemplo",
          #     width = "100%"
          #     ),
          #   tags$br(),
          #   tags$br()
        )
      )
    )

  )
}

#' panel_contenido Server Functions
#'
#' @noRd
mod_panel_inicio_contenido_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_panel_inicio_contenido_ui("panel_inicio_contenido_1")

## To be copied in the server
# mod_panel_inicio_contenido_server("panel_inicio_contenido_1")
