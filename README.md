---
title: "README.md"
author: "Kath"
date: "14 August 2015"
output: html_document
---

This is the README file for this assignment. It explains how all of the scripts work and how they are connected.

The zipped data file has been unzipped into the working directory. (In the UCI HAR Dataset folder.)

The data exists in two sets. The training set and the test set. The data values are in:
./UCI HAR Dataset/test/X_test.txt
./UCI HAR Dataset/train/X_test.txt

The features.txt file in the zipped data lists the field names for each of the 561 variables in the data sets.
The features_info.txt file explains the origin of all the data variables.
The variables that we are interested in are the mean and standard deviation variables for each measurement.
We want Mean and Standard Deviation for each of the following:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

This list of required column names and numbers is:
1	tBodyAcc-mean()-X
2	tBodyAcc-mean()-Y
3	tBodyAcc-mean()-Z
4	tBodyAcc-std()-X
5	tBodyAcc-std()-Y
6	tBodyAcc-std()-Z
41	tGravityAcc-mean()-X
42	tGravityAcc-mean()-Y
43	tGravityAcc-mean()-Z
44	tGravityAcc-std()-X
45	tGravityAcc-std()-Y
46	tGravityAcc-std()-Z
81	tBodyAccJerk-mean()-X
82	tBodyAccJerk-mean()-Y
83	tBodyAccJerk-mean()-Z
84	tBodyAccJerk-std()-X
85	tBodyAccJerk-std()-Y
86	tBodyAccJerk-std()-Z
121	tBodyGyro-mean()-X
122	tBodyGyro-mean()-Y
123	tBodyGyro-mean()-Z
124	tBodyGyro-std()-X
125	tBodyGyro-std()-Y
126	tBodyGyro-std()-Z
161	tBodyGyroJerk-mean()-X
162	tBodyGyroJerk-mean()-Y
163	tBodyGyroJerk-mean()-Z
164	tBodyGyroJerk-std()-X
165	tBodyGyroJerk-std()-Y
166	tBodyGyroJerk-std()-Z
201	tBodyAccMag-mean()
202	tBodyAccMag-std()
214	tGravityAccMag-mean()
215	tGravityAccMag-std()
227	tBodyAccJerkMag-mean()
228	tBodyAccJerkMag-std()
240	tBodyGyroMag-mean()
241	tBodyGyroMag-std()
253	tBodyGyroJerkMag-mean()
254	tBodyGyroJerkMag-std()
266	fBodyAcc-mean()-X
267	fBodyAcc-mean()-Y
268	fBodyAcc-mean()-Z
269	fBodyAcc-std()-X
270	fBodyAcc-std()-Y
271	fBodyAcc-std()-Z
345	fBodyAccJerk-mean()-X
346	fBodyAccJerk-mean()-Y
347	fBodyAccJerk-mean()-Z
348	fBodyAccJerk-std()-X
349	fBodyAccJerk-std()-Y
350	fBodyAccJerk-std()-Z
424	fBodyGyro-mean()-X
425	fBodyGyro-mean()-Y
426	fBodyGyro-mean()-Z
427	fBodyGyro-std()-X
428	fBodyGyro-std()-Y
429	fBodyGyro-std()-Z
503	fBodyAccMag-mean()
504	fBodyAccMag-std()
516	fBodyBodyAccJerkMag-mean()
517	fBodyBodyAccJerkMag-std()
529	fBodyBodyGyroMag-mean()
530	fBodyBodyGyroMag-std()
542	fBodyBodyGyroJerkMag-mean()
543	fBodyBodyGyroJerkMag-std()

The list of column numbers is:
(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543)

The list of column names is:
("tBodyAcc-mean-X","tBodyAcc-mean-Y","tBodyAcc-mean-Z","tBodyAcc-std-X","tBodyAcc-std-Y","tBodyAcc-std-Z","tGravityAcc-mean-X","tGravityAcc-mean-Y","tGravityAcc-mean-Z","tGravityAcc-std-X","tGravityAcc-std-Y","tGravityAcc-std-Z","tBodyAccJerk-mean-X","tBodyAccJerk-mean-Y","tBodyAccJerk-mean-Z","tBodyAccJerk-std-X","tBodyAccJerk-std-Y","tBodyAccJerk-std-Z","tBodyGyro-mean-X","tBodyGyro-mean-Y","tBodyGyro-mean-Z","tBodyGyro-std-X","tBodyGyro-std-Y","tBodyGyro-std-Z","tBodyGyroJerk-mean-X","tBodyGyroJerk-mean-Y","tBodyGyroJerk-mean-Z","tBodyGyroJerk-std-X","tBodyGyroJerk-std-Y","tBodyGyroJerk-std-Z","tBodyAccMag-mean","tBodyAccMag-std","tGravityAccMag-mean","tGravityAccMag-std","tBodyAccJerkMag-mean","tBodyAccJerkMag-std","tBodyGyroMag-mean","tBodyGyroMag-std","tBodyGyroJerkMag-mean","tBodyGyroJerkMag-std","fBodyAcc-mean-X","fBodyAcc-mean-Y","fBodyAcc-mean-Z","fBodyAcc-std-X","fBodyAcc-std-Y","fBodyAcc-std-Z","fBodyAccJerk-mean-X","fBodyAccJerk-mean-Y","fBodyAccJerk-mean-Z","fBodyAccJerk-std-X","fBodyAccJerk-std-Y","fBodyAccJerk-std-Z","fBodyGyro-mean-X","fBodyGyro-mean-Y","fBodyGyro-mean-Z","fBodyGyro-std-X","fBodyGyro-std-Y","fBodyGyro-std-Z","fBodyAccMag-mean","fBodyAccMag-std","fBodyBodyAccJerkMag-mean","fBodyBodyAccJerkMag-std","fBodyBodyGyroMag-mean","fBodyBodyGyroMag-std","fBodyBodyGyroJerkMag-mean","fBodyBodyGyroJerkMag-std")

The activity number that applies to each observation is given in:
./UCI HAR Dataset/test/Y_test.txt
./UCI HAR Dataset/train/Y_test.txt

The mapping of activity name to number is given in:
./UCI HAR Dataset/activity_labels.txt

The activity labels are as follows:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

The list of column names is "ActivityName" for the column that has just been added and then the the column names list as given above was used to rename all the colunns in the data set.


The subject that applies to each observation is given in:
./UCI HAR Dataset/test/subect_test.txt
./UCI HAR Dataset/train/subject_test.txt



The following proccessing steps were carried out:
- The test data set was read into R.
- The training data set was read into R.
- The two sets were combined.
- The list of required column names and numbers was created.
- Only the required columns were extracted.
- A factor was created for the activity names.
- The activity names for the test data set was read into R.
- The activity names for the training data set was read into R.
- The two sets were combined.
- The factor and the list of activity numbers were used to create a list of the activity names.
- The activity names were combined with the other data to create a single data set.
- The columns were renamed to be more descriptive.
- The list of subjects for the test data set was read into R.
- The list of subjects for the training data set was read into R.
- The two sets were combined.
- The subjects were combined with the other data to create a single data set.
- The new column with subject number in it was renamed to "Subject".
- The data set was split by subject and activity.
- Averages of each data column were taken by activity and subject.
- The table was transposed so that each observation appears in a different row and each measurement in a different column.
- The tidy data was written to a text file.

