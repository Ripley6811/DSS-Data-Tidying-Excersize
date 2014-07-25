library(plyr)


## This function accepts two parameters:
## "filedir" is the "UCI HAR Dataset" directory containing data files
## and folders.
## "write2file" is a boolean with default as TRUE. Set to FALSE
## to prevent output of the tidy data set to two *.txt files.

run_analysis = function(filedir, write2file=TRUE){
  ## Save the current working directory.
  original.dir = getwd()
  ## Set the working directory to the data directory.
  setwd(filedir)
  
  ## Load the column descriptions for the "features.txt" file.
  Col.names = read.table(paste(filedir, "features.txt", sep="\\"))
  
  ## Load a list of activity names from "activity_labels.txt" file.
  Act.names = as.character(read.table("activity_labels.txt")$V2)
  
  ## Load subject ID data from "subject" files.
  Subj_test = as.numeric(readLines("test\\subject_test.txt"))
  Subj_train = as.numeric(readLines("train\\subject_train.txt"))
  
  ## Create a filter to extract the mean and standard deviation data.
  mmm = grepl("mean()", Col.names$V2, fixed=TRUE)
  sss = grepl("std()", Col.names$V2, fixed=TRUE)
  mean.std.indices = mmm | sss
  
  ## Load the "sensor" data.
  X_test = read.table(paste0(filedir, "\\test\\X_test.txt"))[mean.std.indices]
  X_train = read.table(paste0(filedir, "\\train\\X_train.txt"))[mean.std.indices]

  ## Load the "activity" data.
  y_test = read.table(paste0(filedir, "\\test\\y_test.txt"))
  y_train = read.table(paste0(filedir, "\\train\\y_train.txt"))
  
  ## Combine the "test" and "train" data sets.
  X = rbind(X_test,X_train)
  Y = rbind(y_test,y_train)
  S = c(Subj_test, Subj_train)
  
  ## Rename columns of the two data sets.
  names(X) = Col.names[mean.std.indices, "V2"]
  names(Y) = "Activity"

  ## Add the "activity" column to the larger data set.
  X$Activity = factor(Y[["Activity"]], labels=Act.names)
  X$Subjects = S
  
  
  ## Create a list of lists of averages
  tidy.list = list()
  for(act in split(X, X$Activity)) { ## Per activity
    for(subj in split(act, act$Subjects)) { ## Per individual
      ## Append row of column means (colMeans) to list.
      tidy.list[[length(tidy.list)+1]] = c(act$Activity[1], 
                                           subj$Subjects[1], 
                                           colMeans(subj[1:66]))
    }
  }
  
  ## Recompile list of lists into a new data.frame.
  tidy.data = ldply(tidy.list)
  ## Add labels to "activity" numbers. (Convert to 'factor')
  tidy.data$V1 = factor(tidy.data$V1, labels=Act.names)
  ## Rename the 'subject' and 'activity' columns.
  tidy.data = rename(tidy.data, c("V1"="Activity", "V2"="Subject-ID"))
  
  ## Reset working directory to original location.
  setwd(original.dir)
  
  ## Write data set to files in the working directory if parameter is TRUE.
  if(write2file){
    ### Write the column names for the new data.frame to file.
    #col.filename = "tidy_data_labels.txt"
    ### Delete old file if it already exists.
    #if(file.exists(col.filename)){
    #  file.remove(col.filename)
    #}
    ### Append each column number and label as a new row in file.
    #for(i in 1:length(names(tidy.data))) { 
    #  write(paste(i, names(tidy.data)[i]), 
    #        col.filename, append=TRUE) 
    #}
    
    ## Write the data.frame to a new file without row names.
    write.table(tidy.data, "tidy_data.txt", row.names=FALSE, col.names=TRUE)
  }
  
  ## Return tidy data set.
  tidy.data
}