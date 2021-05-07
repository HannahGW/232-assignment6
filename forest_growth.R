#' Forest Growth Function
#' 
#' @param time is the period of growth
#' @param C is the size of the forest (canopy cover)
#' @param parms$r is the exponential growth rate (below canopy cover threshold)
#' @param parms$g is the linear growth rate (at or above canopy threshold)
#' @param parms$Ct is the threshold for Carbon storage
#' @param parms$K is the carrying capacity of forest size (canopy cover)
#' @return C size of forest at time T (in units of Carbon)
#' 
#' @authors
#' Anna Abelman, Margaret Brickner, & Hannah Garcia
#' 

forest_growth = function(time, C, parms){ 

  # For when C < K
  exponential = parms$r*C
  
  # For when C >= K
  linear = parms$g
  
  capacity = 0 
  
  forest_size = ifelse(C<parms$Ct, exponential,
                       ifelse(C>=parms$Ct&C<parms$K, linear, capacity))
  
  return(list(forest_size))
}
  

