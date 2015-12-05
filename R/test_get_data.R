library(httr)
library(jsonlite)

reqURL <- "http://www.zakonodajni-monitor.si"
reqRoot <- "/api/poslanci/vsi"

request <- paste0(reqURL, reqRoot)
request

result <- GET(request)
result

content(result, as="text")
data <- fromJSON(content(result, as="text"))

head(data)
str(data, nchar.max=10)

data$properties$name
data$properties$functions
data$properties$contacts
data$properties$organs

data$`_id`
