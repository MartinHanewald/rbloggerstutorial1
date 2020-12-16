# plumber.R

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg=""){
    list(msg = paste0("The message is: '", msg, "'"))
}

#* Plot a histogram
#* @png
#* @get /
function(){
    rand <- rnorm(100)
    hist(rand)
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @get /sum
function(a=1, b=2){
    list(a=a, b=b, sum = as.numeric(a) + as.numeric(b))
}


#* @filter cors
cors <- function(res) {
    res$setHeader("Access-Control-Allow-Origin", "*")
    #res$setHeader("Access-Control-Allow-Method", "POST, GET, OPTIONS")
    #res$setHeader("Access-Control-Allow-Headers", "X-PINGOTHER, Content-Type")
    plumber::forward()
}