test <- function() {
    # Here we can either check objects created in the solution code, or the
    # string value of the solution, available as .solution. See the testTemplate
    # in the meta.json for details.
    if (!grepl("print(x)", .solution, fixed = TRUE)) {
        stop("Are you printing the correct variable?")
    }
    if (!grepl("x<-5", .solution, fixed = TRUE)) {
        if(!grepl("x <- 5", .solution, fixed = TRUE)){
        stop("Are you printing the correct variable?")}
    }

    # This function is defined in the testTemplate
    success("Well done!") # nolint
}
