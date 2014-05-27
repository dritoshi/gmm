# probabilistic density of general gaussian distribution
dprob.gauss <- function(model, x) {
  x <- as.matrix(x)
  d <- ncol(x)
  n <- nrow(x)
  z <- 1 / sqrt((2*pi)^d*det(as.matrix(model$sigma))) * exp(-mahalanobis(x, model$mu, model$sigma)/2)
  return(matrix(z, n, 1))
}
