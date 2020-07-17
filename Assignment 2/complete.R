complete <- function(directory, id= 1:332){
        files <- list.files(path = directory, full.names = TRUE )
        all_data <- data.frame()
        completecases <- data.frame()
        for (i in id){
                data <-read.csv(files[i])
                sum <- sum(complete.cases(data))
                completecases <- rbind(completecases, data.frame(id = i,nobs=sum))
        }
        completecases
}