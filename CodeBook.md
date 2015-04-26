Feature Selection <br />
=================

The features selected for this database come from the accelerometer and gyroscope 3axial raw signals tAccXYZ and tGyroXYZ. <br />
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. <br />
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br />
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
<br />
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these threedimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
<br />
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
<br />
For all signals we took the average of the signal value per activity and per subject.
The different activities are :
<br />
WALKING
<br />
WALKING_UPSTAIRS
<br />
WALKING_DOWNSTAIRS
<br />
SITTING
<br />
STANDING
<br />
LAYING
<br />

These signals were used to estimate variables of the feature vector for each pattern:<br />  
'xyz' is used to denote 3axial signals in the X, Y and Z directions.<br />

tbodyaccxyz<br />
tgravityaccxyz<br />
tbodyaccjerkxyz<br />
tbodygyroxyz<br />
tbodygyroJerkxyz<br />
tbodyaccmag<br />
tgravityaccmag<br />
tbodyAccjerkmag<br />
tbodygyromag<br />
tbodygyroJerkmag<br />
fbodyaccxyz<br />
fbodyaccJerkxyz<br />
fbodygyroxyz<br />
fbodyaccmag<br />
fbodyaccJerkmag<br />
fbodygyromag<br />
fbodygyroJerkmag<br />

The set of variables that were estimated from these signals are: <br />

mean: Mean value<br />
std: Standard deviation<br />


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle variable:<br />

gravitymean<br />
tbodyAccmean<br />
tbodyAccJerkmean<br />
tbodyGyromean<br />
tbodyGyroJerkmean<br />
