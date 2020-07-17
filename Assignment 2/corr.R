corr <- function(directory, threshold = 0){
        source("complete.R")
        files <- list.files(path = directory, full.names = TRUE)
        completecases <- complete(directory)
        abovethreshold <- completecases[completecases$nobs > threshold, 1]
        correlation <- rep(NA, length(abovethreshold))
        for(i in abovethreshold){
                mtrdata <- read.csv(files[i])
                completecases <- complete.cases(mtrdata)
                sulfatedata <- mtrdata[completecases, 2]
                nitratedata <- mtrdata[completecases,3]
                correlation[i]<- cor(x=sulfatedata,y=nitratedata)
        }
        correlation <- correlation[complete.cases(correlation)]
}

