
library(dplyr)

#Reading in all the data as seen below.

#Reading in the train data
train_data1 <- read.table("./train/subject_train.txt", sep = "")

train_data2 <- read.table("./train/y_train.txt", sep = "")

train_data3 <- read.table("./train/X_train.txt" , sep = "")

#Reading in the test data.

test_data1 <- read.table("./test/subject_test.txt" , sep = "")

test_data2 <- read.table("./test/y_test.txt" ,sep = "")

test_data3 <- read.table("./test/X_test.txt" ,sep = "")

# Names and activties read.

feature_names <- read.table("features.txt" , sep = "")

activity_names <- read.table("activity_labels.txt", sep = "")


#Setting names of columns for the imported data above.


colnames(train_data3) = feature_names[,2];

colnames(test_data3) = feature_names[,2];

colnames(train_data2) = "Activity";

colnames(test_data2) = "Activity";

colnames(train_data1) = "Subject";

colnames(test_data1) = "Subject";

# Combine the above data together. First combine the train data components together and then the test data together.

data1 <- cbind(train_data2 , train_data1, train_data3)

data2 <- cbind(test_data2 , test_data1, test_data3)

#Combine the train and test data sets together.

temp_data <- rbind(data1, data2)


# ADD activity names into the data set

temp_data$Activity <- rep_len(activity_names$V2, 10299)

#Create data.table.

temp_data_T <-  data.table(temp_data)

# select all columns containing mean and std values.

temp_data2 <- select(temp_data_T, Subject, Activity, matches('.*(mean|std).*'))


#Create an independent tidy data set with the 
#average of each variable for each activity and each subject.

#Group by Subject and Activity.

tidy_data <- group_by(temp_data2, Activity , Subject ) %>%
         summarize_each( funs(mean))

#Export the Tidy data set.

write.table(tidy_data, file= "tidy_data.csv", sep= ",",row.names = FALSE)
