getdata-005_CourseProject
=========================

Coursera Course Project files

These are notes on the files created for a Coursera course project.

Files included are:

- *README.md*

    This file that describes the tidy data set and the files associated with the project.

- *tidy_data.txt*

    A space delimited data file. 1 header row, 180 data rows and 68 columns (181x68). Displays the averages for each variable in the 
    original data set. Ordered by activity then subject ID (first two columns respectively). Total of 6 activities and 30 subjects (180 rows).
    
- *CodeBook.md*

    Verbose version of tidy_data_columns.txt that describes the format of the data and how it was derived.
    
- *run_analysis.R*

    Contains one method which merges the testing and training data, extracts the mean and std data, and creates a new data set with the averages of all mean and std data columns for each activity-subject combination.
    Also creates the file "tidy_data.txt".
    **Returns a data.frame** for the new tidy data set.

    **Requires**: plyr
    
    **Method**: run_analysis(filedir, write2file=TRUE)
        
    ***filedir***: The "UCI HAR Dataset" path. ("C:/Users/.../getdata-005/UCI HAR Dataset").
    This is where the "test" and "train" folders are located.
    
    ***write2file***: Boolean to control writing data set to file "tidy_data.txt" in addition to returning a data.frame object.
        
    **Usage**:
    
        dirpath = "C:/Users/.../getdata-005/UCI HAR Dataset"
        ## Create output files for tidy data set and column labels.
        run_analysis( dirpath )
        ## Get tidy data set without creating files.
        tidy.data <- run_analysis( dirpath, write2file=FALSE )
