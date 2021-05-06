#' Forest Growth Function
#' 
#' [explanation here]
#' @param T is the period of growth
#' @param P is the initial population
#' @param r is the intrinsic growth rate before canopy closure
#' @param g is the linear growth rate after canopy closure
#' @param K is the carrying capacity
#' @return size of forest at time T (in units of Carbon)
#' 
#' @authors
#' Anna Abelman, Margaret Brickner, & Hannah Garcia
#' 

forest_growth = function(T, P0, r, g, K){ 
  
  P = P0 * exp(r*T)
  if(P>K) {
    r=g
  }
}
  

# not sure how to include g? no idea if this is correct either lol