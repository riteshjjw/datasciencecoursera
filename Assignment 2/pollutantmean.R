pollutantmean <- function(directory, pollutant, id = 1:332) {
        files <- list.files(path = directory, full.names = TRUE )
        all_data = data.frame()
        for (i in id) {
                data = read.csv(files[i])
                all_data = rbind(all_data, data)
        }
        if (pollutant == 'sulfate'){
                mean(all_data$sulfate, na.rm = TRUE)
        } else if (pollutant == 'nitrate'){
                mean(all_data$nitrate, na.rm = TRUE)
        }

}

