# d dimension Gaussian model with constant identity variance-covariance matrix
gaussu <- function(d) {
  mu    <- rep(0, d)
  sigma <- 1
  model <- list(mu = mu, sigma = sigma) 
  class(model) <- 'gaussu'
  return(model)
}
