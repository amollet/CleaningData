# CleaningData
The script included in this repo uses the following data which represents data collected from the accelerometers from the Samsung Galaxy S smartphone : <br />
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <br />
You need this data to be in your working directory in order for the script to work.<br />

The script does the following :<br />
It will load all the necessary data and merge it into one unique data frame<br />
It will extract only the measurement from the mean and standard deviation for each mesurement<br />
Put labels to the activity names <br />
Create a data set with the average of each variable for each activity and each subject and print it to a .txt file with the name "results.txt" into your working directory
