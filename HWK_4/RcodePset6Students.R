#Preliminaries
#---------------------------------------------------------
rm(list = ls())
library("mvtnorm")
setwd("/Users/loret/Desktop/DataSciencePrep/Data_Analysis_for_Social_Scientists/DataAnalysis_SocialSci")

real_theta <- 5
sample_size <- 100
number_simulations <- 100000

simulations1 <- matrix(runif(sample_size*100, max = real_theta), 
                       nrow = number_simulations)


estimator_mean <- 2*apply(simulations1, 1, mean)
estimator_median <- 2*apply(simulations1, 1, 100)

p1 <- hist(estimator_mean, breaks = 100)
p2 <- hist(estimator_median, breaks = 100)
range <- range(p1$mids, p2$mids )
p1$XXX = p1$density
p2$counts = p2$XXX

pdf("histogram1.pdf")
plot( p1, col=rgb(1,0,0,1/4), xlim = range, xlab = "values", ylab = "density")
plot( p2, col=rgb(0,0,1,1/4), add = XXX)  
dev.off()