#Building a website via workflowr

install.packages("workflowr")

library(workflowr)

#configure github
wflow_git_config(user.name="julesolson", user.email="juliaeliolson@gmail.com", overwrite=TRUE)

setwd("C:/Users/Owner/Documents/CDL")

#Start a project
wflow_start("EVTWorkflow")

#Now I want to build a site with the following pages: "Intro", four pages for each analysis site, and "Data Sources" 
#Each page for the site will need R markdown for the code, and the resulting graphs 

#CA first
wflow_open("analysis/CAanalysis.Rmd")

wflow_open("analysis/CONUSanalysis.Rmd")

wflow_open("analysis/MALanalysis.Rmd")

wflow_open("analysis/NEYanalysis.Rmd")

#take a look
wflow_build()
