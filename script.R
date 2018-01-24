#!/usr/bin/env r

library(docopt)

message("Running script")

doc <- "Usage: script.R -n count

-n --number count     how many points
"

opt <- docopt::docopt(doc)


n = as.numeric(opt$number)

set.seed(123)


d = data.frame(a = runif(n),
               b = rnorm(n),
               z = sample(letters,n,replace=TRUE))

write.csv(d)
