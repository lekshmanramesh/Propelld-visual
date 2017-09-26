install.packages("ggplot2")
install.packages("shiny")
library(ggplot2)
library(shiny)
#Dummy Data Creation
victor_dummy=NULL
victor_dummy$acad_score=sample(c(1,2), 10000, replace=T)
victor_dummy$qualification=sample(c(1,2), 10000, replace=T)
victor_dummy$college=sample(c(1,2), 10000, replace=T)
victor_dummy$Stream=sample(c(1,2), 10000, replace=T)
victor_dummy$test_score=sample(c(1,2), 10000, replace=T)
victor_dummy$relevant_exp=sample(c(1,2), 10000, replace=T)
victor_dummy$years_exp=sample(c(1,2), 10000, replace=T)
victor_dummy$bank_bal=sample(c(1,2), 10000, replace=T)
victor_dummy=data.frame(victor_dummy)
victor_dummy$pd=(apply(victor_dummy, 1, sum)-1)/21-rnorm(10000,2,1)/21

