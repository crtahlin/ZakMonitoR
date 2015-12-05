#' @title Get one representative data
#'
#' @param name Name of representatives (as returned by \code getAllRepNames())
#'
#' @export
getOneRepData <- function(name) {
  # construct API request
  reqURL <- "http://www.zakonodajni-monitor.si"
  reqRoot <- "/api/poslanci/en/"
  request <- paste0(reqURL, reqRoot, name)
  # call API
  result <- GET(request)
  # parse result
  data <- fromJSON(content(result, as="text"))
  # return only the names of the deputies
  return(data)
}
