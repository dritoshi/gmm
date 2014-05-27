# Gaussian mixuture model
mixture <- function(models, prob = rep(1/length(models), length(models))) {
  tmp <- list(prob = prob, models = models)  # prob: mixture ratio
  class(tmp) <- "mixture"
  return(tmp)
}
