#Codebook

###source data

Please see links below for source data for project

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Description of data
There were 30 subjects that were tested based on 6 different activities. You can find the 6 activites down below in the "Activites" section of this code book. The age groups were between 19-48 years old. All 30 subjects had a Samsung Galaxy S II on their waist. And if you're wondering, no, the phones did not explode during this test. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###Datasets included in analysis

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


###The Identifiers of the data are:

1. 'Subject' - ID 
2. 'Activity' - type of activity performed that was measured

###Measurements

1. tBodyAccMeanX
2. tBodyAccMeanY
3. tBodyAccMeanZ
4. tBodyAccStdX
5. tBodyAccStdY
6. tBodyAccStdZ
7. tGravityAccMeanX
8. tGravityAccMeanY
9. tGravityAccMeanZ
10. tGravityAccStdX
11. tGravityAccStdY
12. tGravityAccStdZ
13. tBodyAccJerkMeanX
14. tBodyAccJerkMeanY
15. tBodyAccJerkMeanZ
16. tBodyAccJerkStdX
17. tBodyAccJerkStdY
18. tBodyAccJerkStdZ
19. tBodyGyroMeanX
20. tBodyGyroMeanY
21. tBodyGyroMeanZ
22. tBodyGyroStdX
23. tBodyGyroStdY
24. tBodyGyroStdZ
25. tBodyGyroJerkMeanX
26. tBodyGyroJerkMeanY
27. tBodyGyroJerkMeanZ
28. tBodyGyroJerkStdX
29. tBodyGyroJerkStdY
30. tBodyGyroJerkStdZ
31. tBodyAccMagMean
32. tBodyAccMagStd
33. tGravityAccMagMean
34. tGravityAccMagStd
35. tBodyAccJerkMagMean
36. tBodyAccJerkMagStd
37. tBodyGyroMagMean
38. tBodyGyroMagStd
39. tBodyGyroJerkMagMean
40. tBodyGyroJerkMagStd
41. fBodyAccMeanX
42. fBodyAccMeanY
43. fBodyAccMeanZ
44. fBodyAccStdX
45. fBodyAccStdY
46. fBodyAccStdZ
47. fBodyAccMeanFreqX
48. fBodyAccMeanFreqY
49. fBodyAccMeanFreqZ
50. fBodyAccJerkMeanX
51. fBodyAccJerkMeanY
52. fBodyAccJerkMeanZ
53. fBodyAccJerkStdX
54. fBodyAccJerkStdY
55. fBodyAccJerkStdZ
56. fBodyAccJerkMeanFreqX
57. fBodyAccJerkMeanFreqY
58. fBodyAccJerkMeanFreqZ
59. fBodyGyroMeanX
60. fBodyGyroMeanY
61. fBodyGyroMeanZ
62. fBodyGyroStdX
63. fBodyGyroStdY
64. fBodyGyroStdZ
65. fBodyGyroMeanFreqX
66. fBodyGyroMeanFreqY
67. fBodyGyroMeanFreqZ
68. fBodyAccMagMean
69. fBodyAccMagStd
70. fBodyAccMagMeanFreq
71. fBodyBodyAccJerkMagMean
72. fBodyBodyAccJerkMagStd
73. fBodyBodyAccJerkMagMeanFreq
74. fBodyBodyGyroMagMean
75. fBodyBodyGyroMagStd
76. fBodyBodyGyroMagMeanFreq
77. fBodyBodyGyroJerkMagMean
78. fBodyBodyGyroJerkMagStd
79. fBodyBodyGyroJerkMagMeanFreq

###Activity Labels

* 1 = walking: subject walked during the test
* 2 = walking upstairs: subject walked up a staircase during the test
* 3 = walking downstairs: subject was walking down a staircase during the test
* 4 = sitting: subject was sitting during the test
* 5 = standing: subject was standing during the test
* 6 = laying: subject was laying down during the test
