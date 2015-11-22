# run_analysis code will gather data from the UCI HAR dataset and produce two csv files
# Two datasets, test and train, are gathered into one table named 'data_all'
# 'data_all only contains variables relating to std dev and mean from the UCI HAR dataset
# 'data_all' should contain 10,299 rows, 3 columns of categorical data, and 86 columns of variables
# 'summary_means' is a table which summarizes the data by taking the mean of each variable and 
# grouping the results by subject and activity

### loads dplyr and tidyr packages ###
library(dplyr)
library(tidyr)

### reads in files containing test data, train data, column headers, subject number, activity label ###
features <- read.table("UCI HAR Dataset/features.txt", sep = " ", col.names = c("feature_cnt", "feature_name"), quote = "")
train_raw <- read.table("UCI HAR Dataset/train/X_train.txt", dec = ".", comment.char = "", colClasses = "numeric", col.names = features$feature_name) %>% tbl_df
test_raw <- read.table("UCI HAR Dataset/test/X_test.txt", dec = ".", comment.char = "", colClasses = "numeric", col.names = features$feature_name) %>% tbl_df
train_labels <- read.table("UCI HAR Dataset/train/Y_train.txt",col.names = "label")
test_labels <- read.table("UCI HAR Dataset/test/Y_test.txt",col.names = "label")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt",col.names = "subject")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt",col.names = "subject")

### selects only variables related to mean and std dev from train and test ###
test <- test_raw %>% select(contains("std"), contains("mean"))
train <- train_raw %>% select(contains("std"), contains("mean"))

### adds column marking which dataset the record belongs to ###
test <- test %>% mutate(dataset = "test")
train <- train %>% mutate(dataset = "train")

### adds subject number and activity label to datasets ###
test <- cbind(test_subject,test_labels,test)
train <- cbind(train_subject,train_labels,train)

### combines test and train datasets into one table ###
data_all <- bind_rows(train, test)

### replaces the activity number with descriptive title ###
data_all <- data_all %>% mutate(activity = ifelse(label==1,"WALKING",
                                  ifelse(label==2,"WALKING_UPSTAIRS",
                                  ifelse(label==3,"WALKING_DOWNSTAIRS",
                                  ifelse(label==4,"SITTING",
                                  ifelse(label==5,"STANDING","LAYING"))))))

### cleans up variable names ###
names <- names(data_all)
names <- gsub("...",".",names, fixed = TRUE)
names <- gsub("..","",names, fixed = TRUE)
names(data_all) <- names

### rearranges columns ###
data_all <- data_all %>% select(dataset, subject, activity, tBodyAcc.std.X:angle.Z.gravityMean.)

### applies grouping, then summarizes data by taking mean ###
data_grouped <- data_all %>% group_by(subject, activity)
summary_data <- data_grouped %>% select(-dataset)
summary_means <- summary_data %>% summarize_each(funs(mean))

### writes out csv files to working directory ###
write.csv(data_all, file = "data_all.csv", row.names = FALSE)
write.csv(summary_means, file = "summary_means.csv", row.names = FALSE)