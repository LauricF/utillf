#' function to display help
#'
#' @return automatic call of help on the function where the pointer is
help_shortcut <- function() {
  # select function name to look for help
  context <- rstudioapi::getActiveDocumentContext()
  # extract row  position in document
  context_row <- context$selection[[1]]$range$end["row"]
  # extract col  position in document
  context_col <- context$selection[[1]]$range$end["column"]
  # extract variable name
  grab_line <- context$content[context_row]
  # identify potential spaces
  grab_space_position <- gregexpr("['\\s','(',-]", grab_line)[[1]]
  if (length(grab_space_position) == 0) {
    #if only one word
    functionName <- grab_line
  } else {
    #if more words
    # identify the last space before the function name
    lastSpace <-
      max(grab_space_position[grab_space_position < context_col], na.rm = TRUE)
    # identify the first space after the function name
    firstSpace <-
      min(grab_space_position[grab_space_position > context_col], nchar(grab_line))
    firstSpace <-
      ifelse(is.na(firstSpace), length(grab_line), firstSpace)
    functionName <- substr(grab_line, lastSpace + 1, firstSpace - 1)
  }

  # submit help code to the console
  code <- paste0("?", functionName)
  rstudioapi::sendToConsole(code,
                            execute = TRUE,
                            echo = FALSE,
                            focus = FALSE)
  # https://rstudio.github.io/rstudioapi/reference/index.html
  # https://rstudio.github.io/rstudioapi/reference/sendToConsole.html
}
