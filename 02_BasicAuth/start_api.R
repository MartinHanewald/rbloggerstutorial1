library(plumber)
r <- plumb("api_functions.R") 
r$run(port=8000, host='0.0.0.0')
