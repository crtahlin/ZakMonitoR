#' @title Print out all representative names.
#'
#' @export
getAllRepNames <- function () {
  # construct API request
  reqURL <- "http://www.zakonodajni-monitor.si"
  reqRoot <- "/api/poslanci/vsi"
  request <- paste0(reqURL, reqRoot)
  # call API
  result <- GET(request)
  # parse result
  data <- fromJSON(content(result, as="text"))
  # return only the names of the deputies
  return(data$properties$name)
}
