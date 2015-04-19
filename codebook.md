The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.  
The variables with the prefix "time" were captured at a constant rate of 50 Hz. Then they were filtered using 
a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the 
acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using 
another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

A Fast Fourier Transform (FFT) was applied to some of these signals producing.  The variables prefixed with "freq", ie the 
fequency domain. 


From each of these, the mean and the standard deviation were calculated and have "mean" and "std" respectively at the end of
the variable name.


"subject"             This is a variable ranging from 1 to 30 to represent the 30 individuals who performed the test.

"activity"            This variable is from a list of six activities that were performed: WALKING, WALKING_UPSTAIRS,
                      WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 

The following 66 variables are the measured variables in either time or frequency and are either the mean or the standard deviation.

"timebodyaccmeanx" 
"timebodyaccmeany" 
"timebodyaccmeanz" 
"timegravityaccmeanx" 
"timegravityaccmeany" 
"timegravityaccmeanz" 
"timebodyaccjerkmeanx" 
"timebodyaccjerkmeany" 
"timebodyaccjerkmeanz" 
"timebodygyromeanx" 
"timebodygyromeany" 
"timebodygyromeanz" 
"timebodygyrojerkmeanx" 
"timebodygyrojerkmeany" 
"timebodygyrojerkmeanz" 
"timebodyaccmagmean" 
"timegravityaccmagmean" 
"timebodyaccjerkmagmean" 
"timebodygyromagmean" 
"timebodygyrojerkmagmean" 
"freqbodyaccmeanx" 
"freqbodyaccmeany" 
"freqbodyaccmeanz" 
"freqbodyaccjerkmeanx" 
"freqbodyaccjerkmeany" 
"freqbodyaccjerkmeanz" 
"freqbodygyromeanx" 
"freqbodygyromeany" 
"freqbodygyromeanz" 
"freqbodyaccmagmean" 
"freqbodybodyaccjerkmagmean" 
"freqbodybodygyromagmean" 
"freqbodybodygyrojerkmagmean" 
"timebodyaccstdx" 
"timebodyaccstdy" 
"timebodyaccstdz" 
"timegravityaccstdx" 
"timegravityaccstdy" 
"timegravityaccstdz" 
"timebodyaccjerkstdx" 
"timebodyaccjerkstdy" 
"timebodyaccjerkstdz" 
"timebodygyrostdx" 
"timebodygyrostdy" 
"timebodygyrostdz" 
"timebodygyrojerkstdx" 
"timebodygyrojerkstdy" 
"timebodygyrojerkstdz" 
"timebodyaccmagstd" 
"timegravityaccmagstd" 
"timebodyaccjerkmagstd" 
"timebodygyromagstd" 
"timebodygyrojerkmagstd" 
"freqbodyaccstimedx" 
"freqbodyaccstimedy" 
"freqbodyaccstimedz" 
"freqbodyaccjerkstimedx" 
"freqbodyaccjerkstimedy" 
"freqbodyaccjerkstimedz" 
"freqbodygyrostimedx" 
"freqbodygyrostimedy" 
"freqbodygyrostimedz" 
"freqbodyaccmagstimed" 
"freqbodybodyaccjerkmagstimed" 
"bodygyromagstimed" 
"freqbodybodygyrojerkmagstimed"