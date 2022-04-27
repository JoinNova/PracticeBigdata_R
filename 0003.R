#install.packages("rJava")
#install.packages("TSA")
#install.packages("ggplot2")
#install.packages(
#  "ggplot2",
#  repos = c("http://rstudio.org/_packages",
#            "http://cran.rstudio.com")
#)

#library(ggplot2)
#library(TSA)
#install.packages("https://cran.r-project.org/src/contrib/Archive/ggplot/ggplot_0.4.2.tar.gz",repos = NULL, type = "source", INSTALL_opts = c('--no-lock'))
#install.packages("r.Java")
#.libPaths()
#.libPaths('C:\Program Files\R\R-4.2.0\library')
#.libPaths('C:/Program Files/R/R-4.2.0/library')

#getwd()
#.libPaths("C:/2022restart/R_restart/practice")

#install.packages("tidyverse")
#.libPaths()

#0001

#ggplot(diamonds,
#      aes(color)
#      )+geom_bar()

#ggplot(sleep,
#       aes(x=ID,
#           y=extra)
#       ) + geom_point()


#install.packages("https://cran.r-project.org/src/contrib/Archive/ggplot/ggplot_0.4.2.tar.gz",repos = NULL, type = "source", INSTALL_opts = c('--no-lock'))

#ggplot(Orange,
#       aes(age,
#           circumference)
#       ) + geom_line(aes
#                     (color=Tree))


ggplot(data=airquality,
       aes(x=Month,
           y=Temp,
           group=Month)
       ) + geom_boxplot()
