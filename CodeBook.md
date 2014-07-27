#### Code Book - Human Activity Detection: Tidy Data Set
##### Organized by data set columns: 1 through 68.
###### Columns 3 to 68 are averaged values of all mean/std for a particular activity and subject.

1. Activity
    - Human Activity: Factor w/ 6 levels (Text-format if read from file.)
    
            1 WALKING
            2 WALKING_UPSTAIRS
            3 WALKING_DOWNSTAIRS
            4 SITTING
            5 STANDING
            6 LAYING

2. Subject-ID
    - Subject/Participant identification number: numeric
        
            1-30    (30 subjects participated in this research)
        
3. AVE-tBodyAcc-mean()-X
    - Averaged value for all mean values of body acceleration in the X direction: numeric
    
            [-1,1]  (features were normalized to within -1.0 to 1.0)

            All columns listed below are similarly defined. See the README.txt found 
            with the orginal data files for further explanation of the label meaning.
            
4. AVE-tBodyAcc-mean()-Y
5. AVE-tBodyAcc-mean()-Z
6. AVE-tBodyAcc-std()-X
7. AVE-tBodyAcc-std()-Y
8. AVE-tBodyAcc-std()-Z
9. AVE-tGravityAcc-mean()-X
10. AVE-tGravityAcc-mean()-Y
11. AVE-tGravityAcc-mean()-Z
12. AVE-tGravityAcc-std()-X
13. AVE-tGravityAcc-std()-Y
14. AVE-tGravityAcc-std()-Z
15. AVE-tBodyAccJerk-mean()-X
16. AVE-tBodyAccJerk-mean()-Y
17. AVE-tBodyAccJerk-mean()-Z
18. AVE-tBodyAccJerk-std()-X
19. AVE-tBodyAccJerk-std()-Y
20. AVE-tBodyAccJerk-std()-Z
21. AVE-tBodyGyro-mean()-X
22. AVE-tBodyGyro-mean()-Y
23. AVE-tBodyGyro-mean()-Z
24. AVE-tBodyGyro-std()-X
25. AVE-tBodyGyro-std()-Y
26. AVE-tBodyGyro-std()-Z
27. AVE-tBodyGyroJerk-mean()-X
28. AVE-tBodyGyroJerk-mean()-Y
29. AVE-tBodyGyroJerk-mean()-Z
30. AVE-tBodyGyroJerk-std()-X
31. AVE-tBodyGyroJerk-std()-Y
32. AVE-tBodyGyroJerk-std()-Z
33. AVE-tBodyAccMag-mean()
34. AVE-tBodyAccMag-std()
35. AVE-tGravityAccMag-mean()
36. AVE-tGravityAccMag-std()
37. AVE-tBodyAccJerkMag-mean()
38. AVE-tBodyAccJerkMag-std()
39. AVE-tBodyGyroMag-mean()
40. AVE-tBodyGyroMag-std()
41. AVE-tBodyGyroJerkMag-mean()
42. AVE-tBodyGyroJerkMag-std()
43. AVE-fBodyAcc-mean()-X
44. AVE-fBodyAcc-mean()-Y
45. AVE-fBodyAcc-mean()-Z
46. AVE-fBodyAcc-std()-X
47. AVE-fBodyAcc-std()-Y
48. AVE-fBodyAcc-std()-Z
49. AVE-fBodyAccJerk-mean()-X
50. AVE-fBodyAccJerk-mean()-Y
51. AVE-fBodyAccJerk-mean()-Z
52. AVE-fBodyAccJerk-std()-X
53. AVE-fBodyAccJerk-std()-Y
54. AVE-fBodyAccJerk-std()-Z
55. AVE-fBodyGyro-mean()-X
56. AVE-fBodyGyro-mean()-Y
57. AVE-fBodyGyro-mean()-Z
58. AVE-fBodyGyro-std()-X
59. AVE-fBodyGyro-std()-Y
60. AVE-fBodyGyro-std()-Z
61. AVE-fBodyAccMag-mean()
62. AVE-fBodyAccMag-std()
63. AVE-fBodyBodyAccJerkMag-mean()
64. AVE-fBodyBodyAccJerkMag-std()
65. AVE-fBodyBodyGyroMag-mean()
66. AVE-fBodyBodyGyroMag-std()
67. AVE-fBodyBodyGyroJerkMag-mean()
68. AVE-fBodyBodyGyroJerkMag-std()
