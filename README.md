# Getting-and-cleaning-data
Week 4 Project Assignment
Week 4 peer grading assignment of getting and cleaning data of coursera

Coursera Getting and Cleaning Data course project

## What the entire project entails

In this project, data collected, worked with, and cleaned, to prepare a tidy data that can be used for data analysis at a later date.

### Files Contained in This Repository
Among the files in this repository are:
README.md  -  this file, which provides an overview of the data set and how it was created.
tidy_data.txt -  which contains the data set.
CodeBook.md - the code book, which describes the contents of the data set (data, variables and transformations used to generate the data).
run_analysis.R -  the R script that was used to create the data set (see the Creating the data set section below)


#### Creating The Data Set

The R script run_analysis.R can be used to create the data set. It retrieves the source data set and transforms it to produce the final data set by implementing the following steps (see the Code book for details, as well as the comments in the script itself):

Download and unzip source data if it doesn't exist.
Read data.
Merge the training and the test sets to create one data set.
Extract only the measurements on the mean and standard deviation for each measurement.
Use descriptive activity names to name the activities in the data set.
Appropriately label the data set with descriptive variable names.
Create a second, independent tidy set with the average of each variable for each activity and each subject.
Write the data set to the tidy_data.txt file.
The tidy_data.txt in this repository was created by running the run_analysis.R script using 
R version 4.1.2 (2021-11-01) on Windows 10.  64-bit edition.





 
