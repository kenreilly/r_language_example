require('httr')

# load config
config <- config::get(file='../config.yaml')
datasource.url <- config$datasource$url 
datasource.key <- config$datasource$key

# retrieve data
response <- GET(datasource.url, add_headers('X-API-Key' = datasource.key))
dataset <- content(response, as='text')

# write file
cat(dataset, file = '../data/dataset.json')