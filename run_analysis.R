rm(list = ls())
furl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(furl, "dataset.zip", "curl")
dateDownloaded <- date()
unzip("dataset.zip")
datapath <- "./UCI HAR Dataset/"