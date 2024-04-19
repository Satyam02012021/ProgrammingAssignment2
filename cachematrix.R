makeVector <- function(x = numeric()) {
    vec <- x
    set <- function(value) {
        vec <<- value
    }
    get <- function() vec
    mean <- function() mean(vec)
    list(set = set, get = get, mean = mean)
}
