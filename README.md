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

    Describes the format of the data columns and how it was derived.
    
    Each record of the original data set contained:
    
    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    - Triaxial Angular velocity from the gyroscope. 
    - A 561-feature vector with time and frequency domain variables. 
    - Its activity label. 
    - An identifier of the subject who carried out the experiment.

- *run_analysis.R*

    **Description**:  Contains one method called "run_analysis" which does five things.
    
    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

    The new data set contains the averages of all mean and std data columns for each activity-subject combination.
    Optionally outputs the new data set to the file "tidy_data.txt".
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
