#' Functions to calculate eGFR
#' @export
#' @param AGE numeric variable
#' @param Sex character variable in qoutes
#' @param CRE numeric variable
#' @example egfr(52, "M", 0.7)
#' egfr()
egfr <- function(AGE, Sex, CRE){

  ifelse(Sex == "F" & CRE <= 0.7, 144*(CRE/0.7)^-0.329*0.993^AGE,
         ifelse(Sex == "F" & CRE > 0.7, 144*(CRE/0.7)^-1.209*0.993^AGE,
                ifelse(Sex == "M" & CRE > 0.9, 141*(CRE/0.9)^-1.209*0.993^AGE,
                       ifelse(Sex == "M" & CRE <= 0.9, 141*(CRE/0.9)^-0.411*0.993^AGE, NA))))
}
