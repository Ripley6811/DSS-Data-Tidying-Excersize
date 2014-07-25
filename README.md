getdata-005_CourseProject
=========================

Coursera Course Project files

These are notes on the "tidy data set" created for a Coursera course project.

Files included are:

- *README.md*

    This file that describes the tidy data set and the files associated with the project.

- *tidy_data.txt*

    A space delimited data file. 180 rows and 68 columns. Displays the averages for each variable in the 
    original data set. Ordered by activity then subject ID (first two columns respectively). Total of 6 activities and 30 subjects (180 rows).
    
- *tidy_data_labels.txt*

    A space delimited data file. 68 rows and 2 columns. Correlates the column number with a more descriptive label.
    
- *CodeBook.md*

    Verbose version of tidy_data_columns.txt that describes the format of the data and how it was derived.
    
- *run_analysis.R*

    Contains one method which merges the testing and training data, extracts the mean and std data, and creates a new data set with the averages of all mean and std data columns for each activity-subject combination.
    Also creates the files "tidy_data.txt" and "tidy_data_labels.txt".
    **Returns a data.frame** for the new tidy data set.

    **Requires**: plyr
    
    **Method**: run_analysis(filedir)
        
    *filedir*: The "UCI HAR Dataset" path. ("C:/Users/.../getdata-005/UCI HAR Dataset").
    This is where the "test" and "train" folders are located.
        
    **Usage**:
    
        dirpath = "C:/Users/.../getdata-005/UCI HAR Dataset"
        ## Create output files for tidy data set and column labels.
        run_analysis( dirpath )
        ## Get tidy data set without creating files.
        tidy.data = run_analysis( dirpath, write2file=FALSE )
