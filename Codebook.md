# GettingandCleaningDataAssignment
This code book contains information on the variables, data, and transformations performed for the “Getting and Cleaning Data” final assignment.

Study Design

	•	This project is part of the final assignment for the “Getting and Cleaning Data” course from Johns Hopkins University on Coursera. The assignment objective was to product a tidy data set, extracting the mean and standard deviation for each measurement in the data set.
	•	Data was collected from the UC Irvine Machine Learning Repository and is available as part of the following database: “Human Activity Recognition Using Smartphones Data Set.” The full description of the data set is available at the following URL: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
		o	More detail on the data set collection from the project website: The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
	•	The data for the project is available at the following URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	•	The steps taken to complete the assignment are outlined below:
		1.	Data was downloaded from the URL above and unzipped into a chosen working directory.
		2.	The run_analysis.R script reads both the test and training data sets into the program and combines them, along with source variable names, and activity labels.
	3.	The mean and standard deviation measurements from the combined data set are extracted.
	4.	Labels for the activity names are cleaned.
	5.	Labels for the various features are cleaned, with extra characters removed.
	6.	Merged three data sets into one featuring subjects, mean/standard deviation measures, and activities.
	7.	The cleaned data frame is written to the “tidydata.txt” file in the working directory.
	8.	The data.table R library is loaded.
	9.	Created a second, independent data set with the contents of the first data set stored within.
	10.	Calculated mean and standard deviation for each variable for each activity and each subject.
	11.	Output of the data frame is written to the “calculated_tinydata.txt” file.

Code book

	•	The following variables are included in the data set:
		1.	subjectid: Subjects participating in the study, numbered from 1 to 30.
		2.	activity: Activity performed by the subject during the experiment (Six activitie: walking, walkingupstairs, walkingdownstairs, sitting, standing, laying)
		3.	Measurements from the original data set (66 variables, with 33 mean and 33 standard deviation measurements).
			o	These measures come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
			o	Time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
			o	Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
			o	'-XYZ' is used in these measures to denote 3-axial signals in the X, Y and Z directions.
1.	tBodyAccmeanX
2.	tBodyAccmeanY
3.	tBodyAccmeanZ
4.	tBodyAccstdX
5.	tBodyAccstdY
6.	tBodyAccstdZ
7.	tGravityAccmeanX
8.	tGravityAccmeanY
9.	tGravityAccmeanZ
10.	tGravityAccstdX
11.	tGravityAccstdY
12.	tGravityAccstdZ
13.	tBodyAccJerkmeanX
14.	tBodyAccJerkmeanY
15.	tBodyAccJerkmeanZ
16.	tBodyAccJerkstdX
17.	tBodyAccJerkstdY
18.	tBodyAccJerkstdZ
19.	tBodyGyromeanX
20.	tBodyGyromeanY
21.	tBodyGyromeanZ
22.	tBodyGyrostdX
23.	tBodyGyrostdY
24.	tBodyGyrostdZ
25.	tBodyGyroJerkmeanX
26.	tBodyGyroJerkmeanY
27.	tBodyGyroJerkmeanZ
28.	tBodyGyroJerkstdX
29.	tBodyGyroJerkstdY
30.	tBodyGyroJerkstdZ
31.	tBodyAccMagmean
32.	tBodyAccMagstd
33.	tGravityAccMagmean
34.	tGravityAccMagstd
35.	tBodyAccJerkMagmean
36.	tBodyAccJerkMagstd
37.	tBodyGyroMagmean
38.	tBodyGyroMagstd
39.	tBodyGyroJerkMagmean
40.	tBodyGyroJerkMagstd
41.	fBodyAccmeanX
42.	fBodyAccmeanY
43.	fBodyAccmeanZ
44.	fBodyAccstdX
45.	fBodyAccstdY
46.	fBodyAccstdZ
47.	fBodyAccJerkmeanX
48.	fBodyAccJerkmeanY
49.	fBodyAccJerkmeanZ
50.	fBodyAccJerkstdX
51.	fBodyAccJerkstdY
52.	fBodyAccJerkstdZ
53.	fBodyGyromeanX
54.	fBodyGyromeanY
55.	fBodyGyromeanZ
56.	fBodyGyrostdX
57.	fBodyGyrostdY
58.	fBodyGyrostdZ
59.	fBodyAccMagmean
60.	fBodyAccMagstd
61.	fBodyBodyAccJerkMagmean
62.	fBodyBodyAccJerkMagstd
63.	fBodyBodyGyroMagmean
64.	fBodyBodyGyroMagstd
65.	fBodyBodyGyroJerkMagmean
66.	fBodyBodyGyroJerkMagstd

Dataset reference: [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
