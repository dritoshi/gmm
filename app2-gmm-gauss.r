# General d dimension Gaussian model
gauss <- function(d) {
  mu    <- rep(0, d)  # mean
  sigma <- diag(0)    # variance-covariance matrix
  model <- list(mu = mu, sigma = sigma) 
  class(model) <- 'gauss'
  return(model)
}
