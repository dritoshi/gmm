d2gauss <- function(model) {
  d <- length(model$mu)
  tmp <- gauss(d)
  tmp$mu    <- model$mu
  tmp$sigma <- model$sigma * diag(d)
  return(tmp)
}
dprob.gaussd <- function(model, x) {
  return(dprob(d2gauss(model), x))
}