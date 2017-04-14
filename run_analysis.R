#GENERAL COMMENTS
#This file expects to find a directory UCI HAR Dataset in the current working directory

#Phase 0 ===== Preparations ====


#load the used data library - I prefer readr and dplyr
library(readr)
library(dplyr)

#verify that we have a data set. assumption is that the directory with the dataset is in the current directory.

dirname <- "UCI HAR Dataset"
if(!dir.exists(dirname)) stop(paste0("cannot find the data set. We expect to find a directory named ", dirname))

#Phase 1 ===== Merges the training and the test sets to create one data set =====

#read the column names from features.txt, we only extract the second column which is a vector of column names
colnames <- read_delim(file.path(dirname, "features.txt"), col_names=FALSE, delim=" ", quote = "", col_types = "ic")[[2]]

#extract the test data into the data_test list. The file is fixed width format, with 16 chars per column. First prepare the arguments to read_fwf

col_positions <- fwf_widths(rep(16, length(colnames)), colnames)
col_types <-  paste0(rep("n", length(colnames)), collapse="")

#read and suppress warnings since we have duplicate names. They will be treated consistently.

x_data_test <- suppressWarnings(read_fwf(file.path(dirname, "test/X_test.txt"), col_positions = col_positions, col_types = col_types))
x_data_train <- suppressWarnings(read_fwf(file.path(dirname, "train/X_train.txt"), col_positions = col_positions, col_types = col_types))

y_data_test <- read_csv(file.path(dirname, "test/y_test.txt"), col_names = c("ACTIVITY"), col_types = "i")
y_data_train <- read_csv(file.path(dirname, "train/y_train.txt"), col_names = c("ACTIVITY"), col_types = "i")

subject_test <- read_csv(file.path(dirname, "test/subject_test.txt"), col_names = c("SUBJECT"), col_types = "i")
subject_train <- read_csv(file.path(dirname, "train/subject_train.txt"), col_names = c("SUBJECT"), col_types = "i")

# our resulting dataset is called alldata
alldata <- rbind(cbind(subject_train, y_data_train, x_data_train), cbind(subject_test, y_data_test, x_data_test))

#clean up the environment
rm(list = c("col_positions", "col_types", "colnames", "x_data_test", "y_data_test", "x_data_train", "y_data_train", "subject_test", "subject_train"))

#Phase 2 ==== Extracts only the measurements on the mean and standard deviation for each measurement.====

alldata <- alldata %>% select(ACTIVITY, SUBJECT, contains("mean()"), contains("std()"))

#Phase 3 ==== Uses descriptive activity names to name the activities in the data set =====

#Extract the names from the table. Only second column is interesting.

actnames <- read_delim(file.path(dirname, "activity_labels.txt"), delim=" ", col_names=FALSE, col_types="cc")[[2]]

alldata <- alldata %>% mutate(ACTIVITY_NAME = actnames[ACTIVITY]) %>% select(-ACTIVITY) %>% select(ACTIVITY_NAME, everything())

rm(list=c("actnames", "dirname"))

#Phase 4 ==== Appropriately labels the data set with descriptive variable names. =====

#note that this has been done already in the process.

#Phase 5 ==== From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. ====

means <- alldata %>% group_by(ACTIVITY_NAME, SUBJECT) %>% summarize_all(mean)


#optionally, you can export the resulting data to csv by commenting below lines:
#write_csv(alldata, "alldata.csv")
#write_csv(means, "means.csv")