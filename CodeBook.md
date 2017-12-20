# Code Book
## for Getting and Cleaning Data Final Assignment

### Files in UCI HAR Dataset
- 'features\_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity\_labels.txt': Links the class labels with their activity name.
- 'train/X\_train.txt': Training set.
- 'train/y\_train.txt': Training labels.
- 'test/X\_test.txt': Test set.
- 'test/y\_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject\_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

### run_analysis.R
#### Raw data frames from files directory UCI HAR Dataset:
- features
- activity\_labels

#### Raw data frames from files in directory UCI HAR Dataset/train
- X\_train
- y\_train
- subject\_train

#### Raw data frames from files in directory UCI HAR Dataset/test
- X\_test
- y\_test
- subject\_test

#### Combined data sets
- X: combines X\_train and X\_test
- y: combines y\_train and y\_test
- subject: combines subject\_train and subject\_test

#### Misc. variables
- column\_names: contains column names with only "mean" or "std" in the title
- column\_index: indices of the columns in column\_names
- activities: matches the activity label with the name of the activity

#### Cleaned data sets
- data: contains all of X, including the subjects and activities
- averages: averages data over activity and subject


