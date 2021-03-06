#' automatic writting of begining of allocation to  a variable inside rstudio
#' thank you https://www.statworx.com/de/blog/defining-your-own-shortcut-in-rstudio/
#' @return automatic writting of begining of allocation to  a variable inside rstudio
set_lazy_variable_allocation_function <- function(){
  # grab current document information
  context <- rstudioapi::getActiveDocumentContext()
  # extract row  position in document
  context_row <- context$selection[[1]]$range$end["row"]

  # extract variable name
  grab_variable_name <- context$content[context_row]
  # remove potential spaces
  grab_variable_name <- gsub(" ", "", grab_variable_name)
  # copy variable names
  rstudioapi::insertText(text = paste0( " <- ",grab_variable_name, " %>% ",collapse = ""))
}

