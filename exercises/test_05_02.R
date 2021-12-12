test <- function() {
    # Here we can either check objects created in the solution code, or the
    # string value of the solution, available as .solution. See the testTemplate
    # in the meta.json for details.
    if (!grepl("boxplot(mtcars$mpg, grouping(mtcars$cyl))", .solution, fixed = TRUE)) {
        stop("Are you pasting the code above?")
    }
    

    # This function is defined in the testTemplate
    success("Well done!") # nolint
}
