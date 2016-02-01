#Script

1. For the train and test data sets all the data is read into R. 

1.1 Read the X file containing the measurements into a data frame

1.2 Read the activity file containing the activity labels

1.3 Read the subject file containing the identifier of the participant for each observartion

1.4 Read in the feature and activity list

1.5 Add the applicable feature names to the column names of the train and test files.

2 Combine the three train files together

3 Combine the three test files together

4 Combine the singular files from step 3 and step 4 together into a single data set.

5 Add the activity labels column to the data frame

6 Use dplyr to make a data.table

7 select the variables ,subject, activity, or contain a mean or standard deviation measurement. The rest should be disgarded.

8 Group the data by Subject and Activity 

9 Summarize by the averages of the mean and standard deviation columns

10 Write the output in CSV format without the row names


#Codebook

This file explains the variables, processing required and the data inputs when making the tidy data set.

#Assignment

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
