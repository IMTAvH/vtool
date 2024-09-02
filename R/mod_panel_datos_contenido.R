#' panel_datos_contenido UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_panel_datos_contenido_ui <- function(id) {
  ns <- NS(id)
  tagList(

    # the card with content
    bslib::layout_column_wrap(
      width = 1/3,
      fill = FALSE,
      height = "150px",
      #width = "250px",
      # !!!my_data_value_boxes
      bslib::value_box(
        title = "Nr. de Muestras",
        value = textOutput("total_sample"),
        showcase = icon("vial")#,
        #p("Some text"),
        #p("More text ...")
        #full_screen = FALSE,
        #theme = "success"
      ),
      bslib::value_box(
        title = "Nr. de Taxones",
        value = textOutput("total_taxa"),
        showcase = icon("bacteria")#,
        #p("Some text"),
        #p("More text ...")
      ),
      bslib::value_box(
        title = "Lecturas Totales",
        value = textOutput("total_reads"),
        showcase = icon("dna")#,
        #p("Some text"),
        #p("More text ...")
      )
    )
    # bslib::navset_pill(
    #   id="my_data_tabs",
    #   # Muestras y metadata
    #   bslib::nav_panel(
    #     title = "Muestras y metadata",
    #     bslib::navset_underline(id="my_samples_navbar",
    #                             bslib::nav_panel("Explorar Tabla",
    #                                              bslib::card(
    #                                                class="table-responsive",
    #                                                full_screen = TRUE,
    #                                                bslib::layout_sidebar(
    #                                                  sidebar = bslib::sidebar(id="data_samples_table_sidebar",
    #                                                                           position = "right",
    #                                                                           width = 400,
    #                                                                           open = FALSE,
    #                                                                           tags$span(strong("Variable seleccionada: "),
    #                                                                                     textOutput("my_col_name")),
    #                                                                           #textOutput("my_col_name"),
    #                                                                           uiOutput("my_sample_col_plot_options"),
    #                                                                           bslib::card(fullscreen = TRUE,
    #                                                                                       plotOutput("my_samples_col_plots") %>%
    #                                                                                         shinycssloaders::withSpinner(color="#00719a",
    #                                                                                                                      caption = "Cargando gráfico"))
    #
    #                                                  ),
    #                                                  p("Esta vista te permite explorar las muestras y su metadata."),
    #                                                  DT::dataTableOutput(outputId = "my_samples", width = "100%") %>%
    #                                                    shinycssloaders::withSpinner(color="#00719a", caption = "Cargando tabla")
    #                                                ))
    #                             ),
    #                             bslib::nav_panel("Data Faltante", value = "my_samples_na_tab",
    #                                              bslib::card(
    #                                                full_screen = TRUE,
    #                                                #card_header("Data Faltante"),
    #                                                tags$span(class = "text-left",
    #                                                          p("Esta vista permite explorar patrones
    #                                          de valores faltantes (NA) en la tabla de
    #                                          muestras. El gráfico que mostramos es
    #                                          una representación gráfica de la tabla,
    #                                          donde las celdas que contienen valores son
    #                                          de color ",
    #                                                            span("gris claro", style="color:#333333;"),
    #                                                            " y las celdas con valores faltantes son
    #                                          de color",
    #                                                            span("gris oscuro", style="color:#cccccc;"),"."),
    #                                                          p("Además, el orden de las filas y las columnas
    #                                          ha sido re-organizado de tal modo que muestras
    #                                          con valores faltantes en las mismas columnas son
    #                                          agrupadas. De igual manera, columnas con valores
    #                                          faltantes en las mismas muestras son agrupadas.")
    #                                                ),
    #                                                plotly::plotlyOutput("my_samples_nas") %>%
    #                                                  shinycssloaders::withSpinner(color="#00719a",
    #                                                                               caption = "Cargando gráfico")
    #                                              )
    #                             ),
    #                             bslib::nav_spacer())
    #   ),
    #   bslib::nav_panel(
    #     title = "Taxones y metadata",
    #     bslib::card(
    #       full_screen = TRUE,
    #       bslib::layout_sidebar(
    #         sidebar = bslib::sidebar(id="data_taxa_table_sidebar",
    #                                  position = "right",
    #                                  width = 400,
    #                                  open = FALSE,
    #                                  tags$span(strong("Variable seleccionada: "),
    #                                            textOutput("my_taxa_col_name")),
    #                                  #textOutput("my_taxa_col_name"),
    #                                  uiOutput("my_taxa_col_plot_options"),
    #                                  plotOutput("my_taxa_col_plots") %>%
    #                                    shinycssloaders::withSpinner(color="#00719a",
    #                                                                 caption = "Cargando gráfico")
    #         ),
    #         p("Esta vista te permite explorar las taxa y su metadata."),
    #         DT::DTOutput(outputId = "my_taxa", width = "100%") %>%
    #           shinycssloaders::withSpinner(color="#00719a", caption = "Cargando tabla")
    #       ))
    #   ),
    #   bslib::nav_panel(
    #     title = "Abundancias",
    #     bslib::card(
    #       full_screen = TRUE,
    #       bslib::layout_sidebar(
    #         sidebar = bslib::sidebar(id = "data_counts_table_sidebar",
    #                                  position = "right",
    #                                  width = 400,
    #                                  open = FALSE),
    #         p("Esta vista te permite explorar la abundancia de cada taxón en cada muestra."),
    #         DT::DTOutput(outputId = "my_counts", width = "100%") %>%
    #           shinycssloaders::withSpinner(color="#00719a", caption = "Cargando tabla")
    #       )
    #     )
    #   )
    # )

  )
}

#' panel_datos_contenido Server Functions
#'
#' @noRd
mod_panel_datos_contenido_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_panel_datos_contenido_ui("panel_datos_contenido_1")

## To be copied in the server
# mod_panel_datos_contenido_server("panel_datos_contenido_1")
