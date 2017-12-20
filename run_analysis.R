library(dplyr)

dir = "UCI HAR Dataset"

## load in all of the tables
features = read.table(file.path(dir,"features.txt"))
activity_labels = read.table(file.path(dir,'activity_labels.txt'))
X_train = read.table(file.path(dir,"train","X_train.txt"))
X_test = read.table(file.path(dir,"test","X_test.txt"))
y_train = read.table(file.path(dir,"train","y_train.txt"))
y_test = read.table(file.path(dir,"test","y_test.txt"))
subject_train = read.table(file.path(dir,"train","subject_train.txt"))
subject_test = read.table(file.path(dir,"test","subject_test.txt"))

## combine the training and test data sets
X = rbind(X_train,X_test)
y = rbind(y_train,y_test)
subject = rbind(subject_train,subject_test)

## get the column index and names that contain mean and std
column_index = grep("mean|std",features[,2])
column_names = grep("mean|std",features[,2],value=TRUE)

## remove parentheses from the column names
column_names = gsub("[()]","",column_names)

## select only the columns with mean and std from the X data
X_select = select(X,column_index)

## replace the activity labels with the name of the activities
activities = activity_labels[match(y[,1],activity_labels[,1]),2]

## combine the X data with the activity names and subject numbers
data = cbind(subject,activities,X_select)
names(data) = c("subject","activity",column_names)

## group by activity and summarize with the mean of each group
average = data %>% group_by(activity,subject) %>% summarize_all(funs(mean))
