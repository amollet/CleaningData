Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these threedimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

For all signals we took the average of the signal value per activity and per subject.
The different activities are :

WALKING

WALKING_UPSTAIRS
WALKING_DOWNSTAIRS

SITTING

STANDING

LAYING


These signals were used to estimate variables of the feature vector for each pattern:  
'xyz' is used to denote 3axial signals in the X, Y and Z directions.

tbodyaccxyz
tgravityaccxyz
tbodyaccjerkxyz
tbodygyroxyz
tbodygyroJerkxyz
tbodyaccmag
tgravityaccmag
tbodyAccjerkmag
tbodygyromag
tbodygyroJerkmag
fbodyaccxyz
fbodyaccJerkxyz
fbodygyroxyz
fbodyaccmag
fbodyaccJerkmag
fbodygyromag
fbodygyroJerkmag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:

gravitymean
tbodyAccmean
tbodyAccJerkmean
tbodyGyromean
tbodyGyroJerkmean
