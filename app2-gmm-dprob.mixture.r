dprob.mixture <- function(model, x) {
	k <- length(model$models)
	x <- as.matrix(x)
	d <- ncol(x)
	n <- nrow(x)
	z <- matrix(
		unlist(
			lapply(
				model$models, function(model) { dprob(model, x) }
			)
		),
		n, k
	)
	return(
		apply(sweep(z, 2, model$prob, "*"), 1, sum)
	)
}
