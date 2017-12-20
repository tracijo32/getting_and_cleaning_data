# Code Book
## for Getting and Cleaning Data Final Assignment

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


