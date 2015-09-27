require(dplyr)

# clean vars in environment
rm(list = ls())

# start download
furl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(furl, "dataset.zip", "curl")
dateDownloaded <- date()

# extract zip file
unzip("dataset.zip")
datapath <- "./UCI HAR Dataset/"

# load data: include subject, train, test, features, lables
fullpath <- paste0(datapath, "train/subject_train.txt")
subtrain <- read.table(fullpath)
fullpath <- paste0(datapath, "train/X_train.txt")
xtrain <- read.table(fullpath)
fullpath <- paste0(datapath, "train/Y_train.txt")
ytrain <- read.table(fullpath)
fullpath <- paste0(datapath, "test/subject_test.txt")
subtest <- read.table(fullpath)
fullpath <- paste0(datapath, "test/X_test.txt")
xtest <- read.table(fullpath)
fullpath <- paste0(datapath, "test/Y_test.txt")
ytest <- read.table(fullpath)
fullpath <- paste0(datapath, "features.txt")
features <- read.table(fullpath)
fullpath <- paste0(datapath, "activity_labels.txt")
labels <- read.table(fullpath)

# get required columns(variables)
# variables have "mean()" or "std()" in their feature name
# 66 variables are stripped from total 561 variables
resV <- c(1:6, 41:46, 81:86, 121:126, 161:166)
for (i in seq(201, 253, by = 13)) { resV <- c(resV, seq(i, i+1)) }
resV <- c(resV, 266:271, 345:350, 424:429)
for (i in seq(503, 542, by = 13)) { resV <- c(resV, seq(i, i+1)) }
x1 <- select(xtrain, resV)
x2 <- select(xtest, resV)

# merge data, x are full version of all signal info., (66 variables)
#             y are full version of all target activity, (1 variable)
#             subj are full version of info. of all test subjects (1 variable)
# get merged data frameL: 'merge'
x <- rbind(x1, x2)
colnames(x) <- features$V2[resV]
y <- rbind(ytrain, ytest)
colnames(y) <- "Activity"
subj <- rbind(subtrain, subtest)
colnames(subj) <- "Subject"
rm(x1, x2, xtrain, xtest, ytrain, ytest)
merge <- cbind(subj, y, x)

# get tidy dataframe (row: 30 * 6, col: 66 + 2)
# average all variables, split by test subjects(30) and activities(6)
# write out tidy dataframe to 'tiny_data.txt'
tidy <- merge[1, ]
sp_subj <- split(merge, merge$Subject)
for (i in 1:length(sp_subj))
{
    sp_act <- split(sp_subj[[i]], sp_subj[[i]]$Activity)
    for (j in 1:length(sp_act))
    {
        newrow <- sapply(sp_act[[j]], mean)
        tidy <- rbind(tidy, newrow)
    }
}
tidy <- tidy[-1, ]
tidy$Subject <- as.integer(tidy$Subject)
tidy$Activity <- as.integer(tidy$Activity)
tidy$Activity <- labels$V2[tidy$Activity]
write.table(tidy, "tiny_data.txt", row.names = F)