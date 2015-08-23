

## 1 Merges the training and the test sets to create one data set.
## 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3 Uses descriptive activity names to name the activities in the data set
## 4 Appropriately labels the data set with descriptive variable names. 
## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Samsung data must be in your working directory
## Output is the tidy data file



## get the test data set
RawTest<-read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
## get the training data set
RawTrain<-read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)


## merge the data sets
RawCombined<-rbind(RawTest,RawTrain)

## extract only the columns we need
RequiredColumnNumbers<- c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543)
RequiredColumns <-RawCombined[,RequiredColumnNumbers]

## create a factor for the activity names
ActivitiesFactor<-factor(c(1:6), levels=c(1:6), labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

## get the test data set activity numbers
RawTestActivities<-read.table("./UCI HAR Dataset/test/Y_test.txt", header=FALSE)
## get the training data set activity numbers
RawTrainActivities<-read.table("./UCI HAR Dataset/train/Y_train.txt", header=FALSE)
## merge the activity numbers data sets
RawCombinedActivities<-rbind(RawTestActivities,RawTrainActivities)

## get the activity names from the factor
CombinedActivityNames<-ActivitiesFactor[RawCombinedActivities$V1]

## combine activity names with the rest of the data
ActivitiesAndData<-cbind(CombinedActivityNames,RequiredColumns)

## label all the variables appropriately
DataColumnNames<-c("tBodyAcc-mean-X","tBodyAcc-mean-Y","tBodyAcc-mean-Z","tBodyAcc-std-X","tBodyAcc-std-Y","tBodyAcc-std-Z","tGravityAcc-mean-X","tGravityAcc-mean-Y","tGravityAcc-mean-Z","tGravityAcc-std-X","tGravityAcc-std-Y","tGravityAcc-std-Z","tBodyAccJerk-mean-X","tBodyAccJerk-mean-Y","tBodyAccJerk-mean-Z","tBodyAccJerk-std-X","tBodyAccJerk-std-Y","tBodyAccJerk-std-Z","tBodyGyro-mean-X","tBodyGyro-mean-Y","tBodyGyro-mean-Z","tBodyGyro-std-X","tBodyGyro-std-Y","tBodyGyro-std-Z","tBodyGyroJerk-mean-X","tBodyGyroJerk-mean-Y","tBodyGyroJerk-mean-Z","tBodyGyroJerk-std-X","tBodyGyroJerk-std-Y","tBodyGyroJerk-std-Z","tBodyAccMag-mean","tBodyAccMag-std","tGravityAccMag-mean","tGravityAccMag-std","tBodyAccJerkMag-mean","tBodyAccJerkMag-std","tBodyGyroMag-mean","tBodyGyroMag-std","tBodyGyroJerkMag-mean","tBodyGyroJerkMag-std","fBodyAcc-mean-X","fBodyAcc-mean-Y","fBodyAcc-mean-Z","fBodyAcc-std-X","fBodyAcc-std-Y","fBodyAcc-std-Z","fBodyAccJerk-mean-X","fBodyAccJerk-mean-Y","fBodyAccJerk-mean-Z","fBodyAccJerk-std-X","fBodyAccJerk-std-Y","fBodyAccJerk-std-Z","fBodyGyro-mean-X","fBodyGyro-mean-Y","fBodyGyro-mean-Z","fBodyGyro-std-X","fBodyGyro-std-Y","fBodyGyro-std-Z","fBodyAccMag-mean","fBodyAccMag-std","fBodyBodyAccJerkMag-mean","fBodyBodyAccJerkMag-std","fBodyBodyGyroMag-mean","fBodyBodyGyroMag-std","fBodyBodyGyroJerkMag-mean","fBodyBodyGyroJerkMag-std")
NewColumnNames<-c("ActivityName",DataColumnNames)
colnames(ActivitiesAndData)<-NewColumnNames


## get the list of subjects from the test data
RawTestSubjects<-read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
## get the list of subjects from the training data
RawTrainSubjects<-read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
## merge the subjects into one data set
RawCombinedSubjects<-rbind(RawTestSubjects,RawTrainSubjects)

## Add the subject to the existing data set
SubjectsActivitesAndData<-cbind(RawCombinedSubjects,ActivitiesAndData)
## give the column with subject in it a descriptive column name
names(SubjectsActivitesAndData)[names(SubjectsActivitesAndData) == 'V1'] <- 'Subject'


## Split the data by activity so we can summarise by activity
SplitData<-split(SubjectsActivitesAndData,list(SubjectsActivitesAndData$ActivityName,SubjectsActivitesAndData$Subject))

## Now find the means for each of the data columns
AverageData<-sapply(SplitData, function(x) colMeans(x[, DataColumnNames], na.rm= TRUE))
## transpose the data into our tidy data set
TidyDataSet<-t(AverageData)

## Write the tidy data set to a file
write.table(TidyDataSet, file="./TidyData.txt",row.names = FALSE)
