complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory,full.names = TRUE)
  nobs <- c()
  for (i in id) {
   nobs <- append(nobs,sum(complete.cases(read.csv(files_list[[i]]))))
  }
  x <- data.frame(id=id, nobs)
  x
}