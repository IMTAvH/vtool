#' panel_composicion_contenido UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_panel_composicion_contenido_ui <- function(id) {
  ns <- NS(id)
  tagList(

    bslib::navset_pill(
      id="my_community_tabs",
      # Dominant taxa
      #--------------
      bslib::nav_panel(
        title = "Taxon dominante",
        # bslib::layout_sidebar(
        #   border = FALSE,
        #   sidebar = bslib::sidebar(id="my_dominant_taxa_sidebar",
        #                            position = "right",
        #                            open = FALSE,
        #                            width = 400,
        #                            conditionalPanel(
        #                              condition = "input.dom_taxa_barplot_stratify==false",
        #                              tags$b("Taxon domiante seleccionado:"),
        #                              textOutput("my_dominant_taxa_name"),
        #                              verbatimTextOutput("my_dominant_taxa_barplot_click"),
        #                              #
        #                              tabsetPanel(
        #                                id="my_dominant_taxa_sidebar_plot_menu",
        #                                type="hidden",
        #                                tabPanel("my_dominant_taxa_sidebar_plot_cont",
        #                                         radioButtons("dt_plot_choice","Selecciona el tipo de grafico:",
        #                                                      c("Density","Histogram","Boxplot"), inline = TRUE
        #                                         ),
        #                                         conditionalPanel(
        #                                           condition = "input.dt_plot_choice=='Histogram'",
        #                                           sliderInput("dt_plot_hist_bins", "Numero de intervalos",
        #                                                       min=5, max = 100, value = 30)
        #                                         )),
        #                                tabPanel("my_dominant_taxa_sidebar_plot_bars")
        #                              ),
        #                              #
        #                              plotOutput("my_dominant_taxa_barplot_click_plot") %>%
        #                                shinycssloaders::withSpinner(color="#00719a")
        #                            ),
        #                            conditionalPanel(
        #                              condition = "input.dom_taxa_barplot_stratify==true",
        #                              tags$b("Taxon dominante y variable seleccionada"),
        #                              tags$p(strong("Variable seleccionada: "),
        #                                     textOutput("my_dominant_taxa_stratify_var")),
        #                              tags$p(strong("Evaluacion de asociacion: "),br(),
        #                                     em("Prueba de asociacion: "),
        #                                     textOutput("my_dominant_taxa_stratify_test")),
        #                              bslib::navset_underline(
        #                                id="my_dom_taxa_barplot_stratify_test_results",
        #                                bslib::nav_panel(title="Resultado",
        #                                                 verbatimTextOutput("my_dominant_taxa_by_variable_test_out")),
        #                                bslib::nav_panel(title="Tabla de contingencia",
        #                                                 tableOutput("my_dominant_taxa_by_variable_contingency"))
        #                              )
        #                            )
        #   ),
        #   tags$b("Participantes según taxon dominante"),
        #   bslib::layout_column_wrap(
        #     #width = 1/2,
        #     fill = TRUE,
        #     #height = "200px",
        #     width = "300px",
        #     heights_equal = "row",
        #     # Pie chart
        #     bslib::card_body(
        #       checkboxInput("dom_taxa_pie_legend",
        #                     label="Mostrar Legenda",
        #                     value = FALSE),
        #       plotly::plotlyOutput("my_dominant_taxa_pie") %>%
        #         shinycssloaders::withSpinner(color="#00719a")
        #     ),
        #     # Bar plot
        #     bslib::card_body(
        #       shinyWidgets::materialSwitch(inputId = "dom_taxa_barplot_stratify",
        #                                    label = "Agrupar participantes segun variable",
        #                                    right = TRUE,
        #                                    value = FALSE,
        #                                    status = "primary"),
        #       conditionalPanel(
        #         condition = "input.dom_taxa_barplot_stratify==true",
        #         shinyWidgets::pickerInput(inputId = "dom_taxa_barplot_variable",
        #                                   label = "Seleccionar variable",
        #                                   choices = c("a","b"),
        #                                   inline = TRUE, width = "fit",
        #                                   options = list(title = "seleccionar",
        #                                                  `live-search` = TRUE))
        #       ),
        #       conditionalPanel(
        #         condition = "input.dom_taxa_barplot_variable",
        #         shinyWidgets::awesomeRadio(inputId = "dom_taxa_barplot_stratify_yaxis",
        #                                    label = "Agrupar categorias por:",
        #                                    choices = c("taxa domiante", "variable seleccionada"),
        #                                    selected = "taxa domiante",
        #                                    inline = TRUE),
        #         shinyWidgets::awesomeRadio(inputId = "dom_taxa_barplot_stratify_test",
        #                                    label = "Evaluar asociacion",
        #                                    choices = c("No","Fisher", "Chi-Square"),
        #                                    selected = "No",
        #                                    inline = TRUE)
        #       ),
        #       #
        #       plotly::plotlyOutput("my_dominant_taxa_barplot") %>%
        #         shinycssloaders::withSpinner(color="#00719a",
        #                                      caption = "Generando figura ... no olvides seleccionar una variable"),
        #       # Switch for certain visualization options
        #       bslib::layout_column_wrap(
        #         width = "100px",
        #         shinyWidgets::materialSwitch(inputId = "dom_taxa_barplot_perc",
        #                                      label = "Usar frequencia porcentual",
        #                                      right = TRUE,
        #                                      value = FALSE,
        #                                      status = "primary"),
        #         conditionalPanel(
        #           condition = "input.dom_taxa_barplot_stratify==false || input.dom_taxa_barplot_stratify_yaxis=='variable seleccionada'",
        #           shinyWidgets::materialSwitch(inputId = "dom_taxa_barplot_stack",
        #                                        label = "Apilar barras",
        #                                        right = TRUE,
        #                                        value = FALSE,
        #                                        status = "primary")
        #         )
        #       )
        #     )
        #   )
        # )
      ),
      # Profiles
      # --------
      bslib::nav_panel(
        title = "Perfiles",
        # bslib::layout_sidebar(
        #   border = FALSE,
        #   sidebar = bslib::sidebar(
        #     id="my_profiles_sidebar",
        #     position = "right",
        #     open = FALSE,
        #     width = 400,
        #     #tags$b("Perfiles y variable seleccionada"),
        #     tags$b("Permutational Multivariate Analysis of Variance Using Distance Matrices"),
        #     tags$p(strong("Variable seleccionada: "),
        #            textOutput("my_profiles_stratify_var")),
        #     tags$span(strong("Evaluacion de asociacion: "),br(),
        #               #em("Prueba de asociacion: "),
        #               #p("Permutational Multivariate Analysis of Variance Using Distance Matrices"),
        #               #textOutput("adonis2")
        #     ),
        #     bslib::navset_underline(
        #       id="my_profiles_stratify_test_results",
        #       bslib::nav_panel(title="Resultado",
        #                        verbatimTextOutput("my_profiles_by_variable_test_out")),
        #       bslib::nav_panel(title="Interpretacion",
        #                        #tableOutput("my_profiles_by_variable_interpret")
        #                        tags$span(
        #                          p("PERMANOVA compara como varían los grupos entre si
        #                 en comparacion con cómo varian las personas dentro de cada grupo.
        #                 Utiliza una estadística llamada pseudo-F, que es parecida a la
        #                 F-estadística que se usa en ANOVA. Esta estadistica puede ser
        #                 cero o positiva, y los valores mas altos indican que el factor
        #                 de agrupamiento es más importante."),
        #                          p("PERMANOVA es una tecnica muy poderosa y flexible.
        #                   Se puede usar con datos de cualquier tipo, ya sea simple
        #                   o complejo, y con cualquier medida de distancia. Ademas,
        #                   funciona bien con diseños complicados que incluyen multiples
        #                   factores y covariables (predictores continuos).")
        #                        )
        #       )
        #     )
        #   ),
        #   bslib::card_body(
        #     bslib::layout_column_wrap(
        #       width = "300px",
        #       heights_equal = "row",
        #       bslib::card_body(
        #         fill = TRUE,
        #         shinyWidgets::materialSwitch(inputId = "profiles_aggregate",
        #                                      label = "Agrupar por categoria taxonómica",
        #                                      right = TRUE,
        #                                      value = FALSE,
        #                                      status = "primary"),
        #         conditionalPanel(
        #           condition = "input.profiles_aggregate==true",
        #           shinyWidgets::pickerInput(inputId = "profiles_select_rank",
        #                                     label = "Categoría taxonomica:",
        #                                     choices = c("genus"),
        #                                     inline = TRUE, width = "fit",
        #                                     options = list(title = "seleccionar"))
        #         )
        #       ),
        #       bslib::card_body(
        #         shinyWidgets::materialSwitch(inputId = "profiles_stratify",
        #                                      label = "Estratificar por variable",
        #                                      right = TRUE,
        #                                      value = FALSE,
        #                                      status = "primary"),
        #         conditionalPanel(
        #           condition = "input.profiles_stratify==true",
        #           shinyWidgets::pickerInput(inputId = "profiles_stratify_variable",
        #                                     label = "Variable seleccionada",
        #                                     choices = c("a","b"),
        #                                     inline = TRUE, width = "fit",
        #                                     options = list(title = "seleccionar",
        #                                                    `live-search` = TRUE))
        #         ),
        #         #
        #         conditionalPanel(
        #           condition = "input.profiles_stratify_variable",
        #           shinyWidgets::checkboxGroupButtons(
        #             inputId = "profiles_stratify_variable_categories",
        #             label = "Categoria(s) de la variable a mostrar:",
        #             choices = c("",""),
        #             direction = "horizontal",
        #             individual = TRUE,
        #             checkIcon = list(
        #               yes = tags$i(class = "fa fa-circle",
        #                            style = "color: steelblue"),
        #               no = tags$i(class = "fa fa-circle-o",
        #                           style = "color: steelblue"))
        #           ),
        #           bslib::layout_column_wrap(
        #             width = "100px",
        #             fixed_width = TRUE,
        #             fillable = TRUE,
        #             shinyWidgets::actionBttn(
        #               inputId = "profiles_stratify_variable_mostrar_categories",
        #               label = "Todas",
        #               color = "primary",
        #               style = "bordered",size = "sm",block = FALSE
        #             ),
        #             shinyWidgets::actionBttn(
        #               inputId = "profiles_stratify_variable_clear_categories",
        #               label = "Ninguna",
        #               color = "primary",
        #               style = "bordered",size = "sm", block = FALSE
        #             )
        #           ),
        #           checkboxInput("profiles_stratify_apply_test",
        #                         label="Evaluar diferencia en composicion",
        #                         value = FALSE)
        #         )
        #       ),
        #     )),
        #   bslib::card_body(
        #     plotly::plotlyOutput("profiles_stacked") %>%
        #       shinycssloaders::withSpinner(color="#00719a")
        #   )
        # )
      )
    )

  )
}

#' panel_composicion_contenido Server Functions
#'
#' @noRd
mod_panel_composicion_contenido_server <- function(id){
  moduleServer(id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_panel_composicion_contenido_ui("panel_composicion_contenido_1")

## To be copied in the server
# mod_panel_composicion_contenido_server("panel_composicion_contenido_1")
