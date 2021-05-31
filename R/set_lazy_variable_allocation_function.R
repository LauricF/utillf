#' automatic writting of begining of allocation to  a variable inside rstudio
#'
#' @return automatic writting of begining of allocation to  a variable inside rstudio
set_lazy_variable_allocation_function <- function(){
  # grab current document information
  context <- rstudioapi::getActiveDocumentContext()
  # extract horizontal courser position in document
  context_col <- context$selection[[1]]$range$end["column"]

  # if a line has less than 81 characters, insert hyphens at the current line
  grab_variable_name <- context$content[context_col]
  # copy variable names
  rstudioapi::insertText(text = paste0( " <- ",grab_variable_name, " %>% ",collapse = ""))
}

