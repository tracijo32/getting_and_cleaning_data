# Getting and Cleaning Data

This file describes the cleaning of the "Human Activity Recognition Using Smartphones Dataset, Version 1.0". The description of this data set can be found at

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## run_analysis.R

This file is an R script designed to read in the data, available at 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This script:

1) Reads all tables provided in the zip directory UCI HAR Dataset
2) Merges the training and test data
3) Selects only the columns that contain mean and standard deviations of the data set
4) Adds the subject numbers and activities to each row in the main dataset
5) Groups and averages columns by subject and activity


