
# d dimension Gaussian model with diagonal variance-covariance matrix
gaussd <- function(d) {
  mu    <- rep(0, d)
  sigma <- rep(1, d)
  model <- list(mu = mu, sigma = sigma)
  class(model) <- 'gaussd'
  return(model)
}
