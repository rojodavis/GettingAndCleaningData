##Assumes data files have been downloaded and unzipped
##to a subfolder named "ProjectFiles" in the working directory

##Install Packages
##install.packages("dplyr")
library("dplyr")

##install.packages("xlsx")
library("xlsx")


##Get working directory
curdir <- getwd()

##Load datasets
##Test
x_test <- read.table(paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\test\\x_test.txt", sep=''), na.strings = "NA")
y_test <- read.table(paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\test\\y_test.txt", sep=''), na.strings = "NA")
subject_test <- read.table(paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\test\\subject_test.txt", sep=''), na.strings = "NA")
##Train
x_train <- read.table(paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\train\\x_train.txt", sep=''), na.strings = "NA")
y_train <- read.table(paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\train\\y_train.txt", sep=''), na.strings = "NA")
subject_train <- read.table(paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\train\\subject_train.txt", sep=''), na.strings = "NA")
##Supporting Data
features <- read.table(paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\features.txt", sep=''), na.strings = "NA")
activity_labels <- read.table(paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\activity_labels.txt", sep=''), na.strings = "NA")

##Apply Header Information
features_sub <- features$V2
x_test_h <- setNames(x_test, features_sub)
y_test_h <- setNames(y_test, c("Activity"))
subject_test_h <- setNames(subject_test, c("Subject"))
x_train_h <- setNames(x_train, features_sub)
y_train_h <- setNames(y_train, c("Activity"))
subject_train_h <- setNames(subject_train, c("Subject"))

##Combine Datasets Horizontally
temp_test_h <- cbind(subject_test_h, y_test_h)
combined_test_h <- cbind(temp_test_h, x_test_h)
temp_train_h <- cbind(subject_train_h, y_train_h)
combined_train_h <- cbind(temp_train_h, x_train_h)

##Combine Datasets Vertically
combined_tidy <- rbind(combined_test_h, combined_train_h)  

##Add Valid Variable Names
valid_names <- make.names(names = names(combined_tidy), unique=TRUE, allow_=TRUE)
combined_tidy_renamed <- setNames(combined_tidy, valid_names)

##Limit dataset to "STD" and "MEAN" related values
combined_tidy_select <- select(combined_tidy_renamed, matches("Subject|Activity|std|mean"))

##Apply valid activity names
activity_labels_h <- setNames(activity_labels, c("ID", "Activity"))
combined_tidy_select$ActivityD <- activity_labels_h[match(combined_tidy_select$Activity, activity_labels_h$ID), "Activity"]

##Rearrange Columns
combined_tidy_select <- combined_tidy_select[,c(1,2,ncol(combined_tidy_select),3:(ncol(combined_tidy_select)-1))]

##Grouping and Summarizing to finalize tidy dataset
tidy <- combined_tidy_select %>% group_by(Subject, Activity, ActivityD) %>% 
       summarise_if(.predicate = function(x) is.numeric(x),
                     .funs = funs(mean="mean"))
##Write the file
write.xlsx(as.data.frame(tidy), paste(curdir, "\\ProjectFiles\\UCI HAR Dataset\\test\\Tidy.xlsx", sep=''))
