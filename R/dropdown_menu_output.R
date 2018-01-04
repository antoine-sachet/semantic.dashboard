#' Create a dropdown menu output.
#' @description UI-side function for dynamic dropdownMenu.
#' @param outputId Id of the output.
#' @return A dropdown menu that can be passed to \code{\link[semantic.dashboard]{dashboardHeader}}
#' @export
dropdown_menu_output <- function(outputId){
  shiny::uiOutput(outputId)
}

#' @describeIn dropdown_menu_output Create a value box output (alias for \code{dropdown_menu_output} for compatibility with \code{shinydashboard})
#' @export
dropdownMenuOutput <- dropdown_menu_output

#' Create a dropdown menu output.
#' @description Server-side function for dynamic dropdownMenu.
#' @param expr dropdownMenu.
#' @param env The environment in which to evaluate expr.
#' @param quoted Is expr a quoted expression (with \code{quote()})? This is useful if you want to save an expression in a variable.
#' @return A dynamic dropdown menu that can be assigned to output.
#' @export
render_dropdown_menu <- function(expr, env = parent.frame(), quoted = FALSE){
  fun <- shiny::exprToFunction(expr, env, quoted)
  shiny::renderUI(fun())
}

#' @describeIn render_dropdown_menu Create a valueBox output (alias for \code{render_dropdown_menu} for compatibility with \code{shinydashboard})
#' @export
renderDropdownMenu <- render_dropdown_menu