# likelihood_gaussian_identity

likelihood_gaussian_identity <- function(y, f, which = c('d0', 'd1', 'd2', 'link'), ...) {
  # Gaussian log-likelihood (and its derivatives)
  # with the identity link function
  # y is the observed data, either binary (0, 1) or proportion
  # f is the value of the correspnding latent gaussians
  # which determines whether to return the log-likelihood (d0)
  # or it's first or second derivative
  # \dots doesn't do anything, but is there for compatibility with other
  # likelihood which might use it
  
  # check which derivative is needed
  which <- match.arg(which)
  
  # repeat y if needed
  if(length(y) != length(f)) y <- rep(y, length(f))
  
  # create an empty vector for the results
  ans <- vector('numeric', length(y))
  
  # straight likelihood case
  if (which == 'd0') {
    
    # log-likelihood
    
    # can't do this yet as we don't have a way of dealing with
    # hyperparameters on the likelihood

    stop ('Gaussian likelihood (for non-direct inference) not yet implemented.')
    
  } else if (which == 'd1') {
    
    # first derivative
    
    # can't do this yet as we don't have a way of dealing with
    # hyperparameters on the likelihood
    
    stop ('Gaussian likelihood (for non-direct inference) not yet implemented.')
    
  } else if (which == 'd2') {
    # second derivative
    
    # can't do this yet as we don't have a way of dealing with
    # hyperparameters on the likelihood
    
    stop ('Gaussian likelihood (for non-direct inference) not yet implemented.')
    
  } else {
    
    # otherwise the link function (identity)
    ans <- f
    
  }
  
  return (ans)
  
}