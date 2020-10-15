#' A library of units conversion functions in R

# necessary/useful constants
NPL <- 4.44822    # newtons per pound-force
IPM <- 1550       # square inches per square meter
LPN <- 0.224809   # pound-force per newton
MPI <- 0.00064516 # meters square per square inch
KPM <- 1.60934    # kilometers per mile
MPK <- 0.621372   # miles per kilometer
LPG <- 3.78541    # liters per gallon
GPL <- 0.264172   # gallons per liter

#' PSI to KPa
#' 
#' A function to convert pounds per square inch to kilopascals
#'
#' @param   psi The input pounds per square inch value
#' @return      The psi converted to kilopascals
#'
#' @examples
#' psi2kpa(32)
#' 
#' @export
psi2kpa <- function(psi) {
  return(psi * NPL * IPM / 1000)
}

#' KPa to PSI
#' 
#' A function to convert kilopascals to pounds per square inch
#'
#' @param  kpa The input kilopascals value
#' @return     The kpa converted to pounds per square inch
#'
#' @examples 
#' kpa2psi(27)
#' 
#' @export
kpa2psi <- function(kpa) {
  # return the converted value
  return(kpa * 1000 * LPN * MPI)
}

#' MPG to L100K
#' 
#' A function to convert miles per gallon to liters per 100km
#'
#' @param  mpg The miles-per-gallon value
#' @return     The mpg converted to liters per 100 km
#'
#' @examples 
#' mpg2lp100k(27)
#' 
#' @export
mpg2lp100k <- function(mpg) {
  # return the converted value
  return((1 / mpg) * MPK * LPG * 100)
}

#' L100K to MPG
#' 
#' A function to convert liters per 100km to miles per gallon
#'
#' @param  lp100k The liters-per-100km value
#' @return        The lp100k converted to mpg
#'
#' @examples 
#' lp100k2mpg(27)
#' 
#' @export
lp100k2mpg <- function(lp100k) {
  # return the converted value
  return(1 / (lp100k * 0.01 * KPM * GPL))
}
