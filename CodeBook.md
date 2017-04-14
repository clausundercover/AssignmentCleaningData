This file is the code book for the result of the assignment of the Getting and Cleaning data course project.

The data described herein is based on the UCI dataset available here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

File alldata.csv contains the data for both test subjects and train subjects as follows:

ACTIVITY_NAME - name of the activity, has one of 6 possible values:
	WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING

SUBJECT - the identifier for the test or train subject

Other columns indicate the test data received for each subject/activity:

	tBodyAcc-mean()-X
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
	tBodyGyro-mean()-X
	tBodyGyro-mean()-Y
	tBodyGyro-mean()-Z
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
	tBodyAccMag-mean()
	tGravityAccMag-mean()
	tBodyAccJerkMag-mean()
	tBodyGyroMag-mean()
	tBodyGyroJerkMag-mean()
	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
	fBodyAccMag-mean()
	fBodyBodyAccJerkMag-mean()
	fBodyBodyGyroMag-mean()
	fBodyBodyGyroJerkMag-mean()
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z
	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z
	tBodyAccMag-std()
	tGravityAccMag-std()
	tBodyAccJerkMag-std()
	tBodyGyroMag-std()
	tBodyGyroJerkMag-std()
	fBodyAcc-std()-X
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
	fBodyAccMag-std()
	fBodyBodyAccJerkMag-std()
	fBodyBodyGyroMag-std()
	fBodyBodyGyroJerkMag-std()

File means.csv contains the means of the data data aggregated for both test subjects and train subjects as follows:

ACTIVITY_NAME - name of the activity, has one of 6 possible values:
	WALKING
	WALKING_UPSTAIRS
	WALKING_DOWNSTAIRS
	SITTING
	STANDING
	LAYING

SUBJECT - the identifier for the test or train subject

Other columns indicate the means of the test data received for each subject/activity:

	tBodyAcc-mean()-X
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
	tBodyGyro-mean()-X
	tBodyGyro-mean()-Y
	tBodyGyro-mean()-Z
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
	tBodyAccMag-mean()
	tGravityAccMag-mean()
	tBodyAccJerkMag-mean()
	tBodyGyroMag-mean()
	tBodyGyroJerkMag-mean()
	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
	fBodyAccMag-mean()
	fBodyBodyAccJerkMag-mean()
	fBodyBodyGyroMag-mean()
	fBodyBodyGyroJerkMag-mean()
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z
	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z
	tBodyAccMag-std()
	tGravityAccMag-std()
	tBodyAccJerkMag-std()
	tBodyGyroMag-std()
	tBodyGyroJerkMag-std()
	fBodyAcc-std()-X
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
	fBodyAccMag-std()
	fBodyBodyAccJerkMag-std()
	fBodyBodyGyroMag-std()
	fBodyBodyGyroJerkMag-std()