---
title: "CodeBook"
output: html_document
---


## Data

The data and codebook used in this project was downloaded from the provided URL(s) listed below:

Data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Codebook:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The core dataset description as provided by the supplied codebook is as follows:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Data Load

The provided datasets were loaded and merged to create a singular dataset.  Provided Header and Activity information was added to provide more descriptive information.

## Data Transformation
A subset of the combined datasets was extracted to only include Subject, Activity and measurement information related to Standard Deviation ("STD") and Mean ("MEAN").  

The subsequent dataset was grouped and summarized to generate One
observation per row and one variable per column.

## Data Elements
Position	ColumnName	Description
1	Subject	Test Subject ID  
2	Activity	Activity ID  
3	ActivityD	Activity Description  
4	tBodyAcc.mean...X_mean	Body Acceleration Mean-X Axial Signal-Mean Value
5	tBodyAcc.mean...Y_mean	Body Acceleration Mean-Y Axial Signal-Mean Value
6	tBodyAcc.mean...Z_mean	Body Acceleration Mean-Z Axial Signal-Mean Value
7	tBodyAcc.std...X_mean	Body Acceleration Standard Deviation-X Axial Signal-Mean Value
8	tBodyAcc.std...Y_mean	Body Acceleration Standard Deviation-Y Axial Signal-Mean Value
9	tBodyAcc.std...Z_mean	Body Acceleration Standard Deviation-Z Axial Signal-Mean Value
10	tGravityAcc.mean...X_mean	Gravity Acceleration Mean-X Axial Signal-Mean Value
11	tGravityAcc.mean...Y_mean	Gravity Acceleration Mean-Y Axial Signal-Mean Value
12	tGravityAcc.mean...Z_mean	Gravity Acceleration Mean-Z Axial Signal-Mean Value
13	tGravityAcc.std...X_mean	Gravity Acceleration Standard Deviation-X Axial Signal-Mean Value
14	tGravityAcc.std...Y_mean	Gravity Acceleration Standard Deviation-Y Axial Signal-Mean Value
15	tGravityAcc.std...Z_mean	Gravity Acceleration Standard Deviation-Z Axial Signal-Mean Value
16	tBodyAccJerk.mean...X_mean	Body Accleration Jerk Mean-X Axial Signal-Mean Value
17	tBodyAccJerk.mean...Y_mean	Body Accleration Jerk Mean-Y Axial Signal-Mean Value
18	tBodyAccJerk.mean...Z_mean	Body Accleration Jerk Mean-Z Axial Signal-Mean Value
19	tBodyAccJerk.std...X_mean	Body Accleration Jerk Standard Deviation-X Axial Signal-Mean Value
20	tBodyAccJerk.std...Y_mean	Body Accleration Jerk Standard Deviation-Y Axial Signal-Mean Value
21	tBodyAccJerk.std...Z_mean	Body Accleration Jerk Standard Deviation-Z Axial Signal-Mean Value
22	tBodyGyro.mean...X_mean	Body Gyro Mean-X Axial Signal-Mean Value
23	tBodyGyro.mean...Y_mean	Body Gyro Mean-Y Axial Signal-Mean Value
24	tBodyGyro.mean...Z_mean	Body Gyro Mean-Z Axial Signal-Mean Value
25	tBodyGyro.std...X_mean	Body Gyro Standard Deviation-X Axial Signal-Mean Value
26	tBodyGyro.std...Y_mean	Body Gyro Standard Deviation-Y Axial Signal-Mean Value
27	tBodyGyro.std...Z_mean	Body Gyro Standard Deviation-Z Axial Signal-Mean Value
28	tBodyGyroJerk.mean...X_mean	Body Gyro Jeark Mean-X Axial Signal-Mean Value
29	tBodyGyroJerk.mean...Y_mean	Body Gyro Jeark Mean-Y Axial Signal-Mean Value
30	tBodyGyroJerk.mean...Z_mean	Body Gyro Jeark Mean-Z Axial Signal-Mean Value
31	tBodyGyroJerk.std...X_mean	Body Gyro Jeark Standard Deviation-X Axial Signal-Mean Value
32	tBodyGyroJerk.std...Y_mean	Body Gyro Jeark Standard Deviation-Y Axial Signal-Mean Value
33	tBodyGyroJerk.std...Z_mean	Body Gyro Jeark Standard Deviation-Z Axial Signal-Mean Value
34	tBodyAccMag.mean.._mean	Body Acceleration Magnitude Mean--Mean Value
35	tBodyAccMag.std.._mean	Body Acceleration Magnitude Standard Deviation--Mean Value
36	tGravityAccMag.mean.._mean	Gravity Acceleration Magnitude Mean--Mean Value
37	tGravityAccMag.std.._mean	Gravity Acceleration Magnitude Standard Deviation--Mean Value
38	tBodyAccJerkMag.mean.._mean	Body Acceleration Jerk Magnitude Mean--Mean Value
39	tBodyAccJerkMag.std.._mean	Body Acceleration Jerk Magnitude Standard Deviation--Mean Value
40	tBodyGyroMag.mean.._mean	Body Gyro Magnitude Mean--Mean Value
41	tBodyGyroMag.std.._mean	Body Gyro Magnitude Standard Deviation--Mean Value
42	tBodyGyroJerkMag.mean.._mean	Body Gyro Jerk Magnitude Mean--Mean Value
43	tBodyGyroJerkMag.std.._mean	Body Gyro Jerk Magnitude Standard Deviation--Mean Value
44	fBodyAcc.mean...X_mean	Body Acceleration Mean-X Axial Signal-Mean Value
45	fBodyAcc.mean...Y_mean	Body Acceleration Mean-Y Axial Signal-Mean Value
46	fBodyAcc.mean...Z_mean	Body Acceleration Mean-Z Axial Signal-Mean Value
47	fBodyAcc.std...X_mean	Body Acceleration Standard Deviation-X Axial Signal-Mean Value
48	fBodyAcc.std...Y_mean	Body Acceleration Standard Deviation-Y Axial Signal-Mean Value
49	fBodyAcc.std...Z_mean	Body Acceleration Standard Deviation-Z Axial Signal-Mean Value
50	fBodyAcc.meanFreq...X_mean	Body Acceleration Mean Frequency-X Axial Signal-Mean Value
51	fBodyAcc.meanFreq...Y_mean	Body Acceleration Mean Frequency-Y Axial Signal-Mean Value
52	fBodyAcc.meanFreq...Z_mean	Body Acceleration Mean Frequency-Z Axial Signal-Mean Value
53	fBodyAccJerk.mean...X_mean	Body Acceleration Jerk Mean-X Axial Signal-Mean Value
54	fBodyAccJerk.mean...Y_mean	Body Acceleration Jerk Mean-Y Axial Signal-Mean Value
55	fBodyAccJerk.mean...Z_mean	Body Acceleration Jerk Mean-Z Axial Signal-Mean Value
56	fBodyAccJerk.std...X_mean	Body Acceleration Jerk Standard Deviation-X Axial Signal-Mean Value
57	fBodyAccJerk.std...Y_mean	Body Acceleration Jerk Standard Deviation-Y Axial Signal-Mean Value
58	fBodyAccJerk.std...Z_mean	Body Acceleration Jerk Standard Deviation-Z Axial Signal-Mean Value
59	fBodyAccJerk.meanFreq...X_mean	Body Acceleration Jerk Mean Frequency-X Axial Signal-Mean Value
60	fBodyAccJerk.meanFreq...Y_mean	Body Acceleration Jerk Mean Frequency-Y Axial Signal-Mean Value
61	fBodyAccJerk.meanFreq...Z_mean	Body Acceleration Jerk Mean Frequency-Z Axial Signal-Mean Value
62	fBodyGyro.mean...X_mean	Body Gyro Mean-X Axial Signal-Mean Value
63	fBodyGyro.mean...Y_mean	Body Gyro Mean-Y Axial Signal-Mean Value
64	fBodyGyro.mean...Z_mean	Body Gyro Mean-Z Axial Signal-Mean Value
65	fBodyGyro.std...X_mean	Body Gyro Standard Deviation-X Axial Signal-Mean Value
66	fBodyGyro.std...Y_mean	Body Gyro Standard Deviation-Y Axial Signal-Mean Value
67	fBodyGyro.std...Z_mean	Body Gyro Standard Deviation-Z Axial Signal-Mean Value
68	fBodyGyro.meanFreq...X_mean	Body Gyro Mean Frequency-X Axial Signal-Mean Value
69	fBodyGyro.meanFreq...Y_mean	Body Gyro Mean Frequency-Y Axial Signal-Mean Value
70	fBodyGyro.meanFreq...Z_mean	Body Gyro Mean Frequency-Z Axial Signal-Mean Value
71	fBodyAccMag.mean.._mean	Body Acceleration Magnitude Mean--Mean Value
72	fBodyAccMag.std.._mean	Body Acceleration Magnitude Standard Deviation--Mean Value
73	fBodyAccMag.meanFreq.._mean	Body Acceleration Magnitude Mean Frequency--Mean Value
74	fBodyBodyAccJerkMag.mean.._mean	Body Acceleration Jerk Magnitude Standard Deviation--Mean Value
75	fBodyBodyAccJerkMag.std.._mean	Body Acceleration Jerk Magnitude Standard Deviation--Mean Value
76	fBodyBodyAccJerkMag.meanFreq.._mean	Body Acceleration Jerk Magnitude Mean Frequency--Mean Value
77	fBodyBodyGyroMag.mean.._mean	Body Gyro Magnitude Mean--Mean Value
78	fBodyBodyGyroMag.std.._mean	Body Gyro Magnitude Standard Deviation--Mean Value
79	fBodyBodyGyroMag.meanFreq.._mean	Body Gyro Magnitude Mean Frequency--Mean Value
80	fBodyBodyGyroJerkMag.mean.._mean	Body Gyro Jerk Magnitude Mean--Mean Value
81	fBodyBodyGyroJerkMag.std.._mean	Body Gyro Jerk Magnitude Standard Deviation--Mean Value
82	fBodyBodyGyroJerkMag.meanFreq.._mean	Body Gyro Jerk Magnitude Mean Frequency--Mean Value
83	angle.tBodyAccMean.gravity._mean	Body Acceleration Mean Gravity--Mean Value
84	angle.tBodyAccJerkMean..gravityMean._mean	Body Acceleration Jerk Mean Gravity--Mean Value
85	angle.tBodyGyroMean.gravityMean._mean	Body Gyro Mean Gravity Mean--Mean Value
86	angle.tBodyGyroJerkMean.gravityMean._mean	Body Gyro Jerk Mean Gravity Mean--Mean Value
87	angle.X.gravityMean._mean	Angle X Gravity Mean--Mean Value
88	angle.Y.gravityMean._mean	Angle Y Gravity Mean--Mean Value
89	angle.Z.gravityMean._mean	Angle Z Gravity Mean--Mean Value



