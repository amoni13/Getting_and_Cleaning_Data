##CodeBook
#####For tidy dataset created in the completion of Course Project

The code included in 'run_anlaysis.R' presents a tidy version of the mean and standard deviation data found in its unaltered from here:

The dataset coded for combines all study observations regardless of their assignment to the test group or training groups as described in the supporting documentation of the original data set. 

Column 1: Activity

This variable indicates the activity for which each measurement was taken.  Six activities were performed by study participants: Walking, Walking Upstairs, Walking Downstairs, Standing, Sitting, and Laying.  This variable has been recoded from the original to offer the descriptive name of each activity in the tidy data set.

Colum2:  Participant

Study participants were assigned a number 1-30 to track each participant across activity levels.  

####Remaining Variables
Following explanation has been taken from the original data set description:

    Variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

    Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

    These signals were used to estimate variables of the feature vector for each pattern:  
    '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

Included in the tidy dataset is the average for the estimated mean and standard deviation from each of these signal variables organized by activity and participant:

Columns 3:8  	 'tBodyAcc-XYZ'

Columns 9:14	 'tGravityAcc-XYZ'

Columns 15:20	 'tBodyAccJerk-XYZ'

Columns 21:26	 'tBodyGyro-XYZ'

Columns 27:32  'tBodyGyroJerk-XYZ'

Columns 33:34	 'tBodyAccMag'

Columns 35:36	 'tGravityAccMag'

Columns 37:38	 'tBodyAccJerkMag'

Columns 39:40  'tBodyGyroMag'

Columns 41:42  'tBodyGyroJerkMag'

Columns 43:48  'fBodyAcc-XYZ'

Columns 49:54  'fBodyAccJerk-XYZ'

Columns 55:60  'fBodyGyro-XYZ'

Columns 61:62  'fBodyAccMag'

Columns 63:64  'fBodyAccJerkMag'

Columns 65:66  'fBodyGyroMag'

Columns 66:68  'fBodyGyroJerkMag'
