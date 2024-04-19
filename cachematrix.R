#set the value of the vector
#get the value of the vector
#set the value of the mean
#get the value of the mean


makeVector <- function(x = numeric()) {
    vec <- x
    set <- function(value) {
        vec <<- value
    }
    get <- function() vec
    mean <- function() mean(vec)
    list(set = set, get = get, mean = mean)
}









#Caching the Inverse of a Matrix

# Initialize a variable to store the cached inverse
cached_inverse <- NULL

# Function to calculate the inverse of a matrix with caching
calculate_inverse <- function(matrix) {
  if (!is.null(cached_inverse)) {
    # If the cached inverse exists, return it
    message("Using cached inverse")
    return(cached_inverse)
  } else {
    # If the cached inverse doesn't exist, calculate it
    message("Calculating inverse")
    inverse <- solve(matrix)
    cached_inverse <<- inverse  # Cache the inverse
    return(inverse)
  }
}
