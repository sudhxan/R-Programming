# Import Data--------
stats <- read.csv(file.choose(), stringsAsFactors = T)
stats

#getting working directory
getwd()
#setting working directory
setwd("E:\\R")

stats <- read.csv(file.choose())
stats

# Explore Data ----------
stats
nrow(stats) #Imported number of rows (195)
ncol(stats) #Imported number of cols (5)
head(stats)
tail(stats)
str(stats) #structure
summary(stats)

# Using $ sign in the Data ----------
stats
head(stats)
stats[3,3]
stats[3, "Birth.rate"]
stats$Internet.users #returns a vector of all the units in the column
stats[,"Internet.users"] #gives output same as the previous step
stats$Internet.users[2] #second row in the column internet_users
levels(stats$Income.Group) #gives the different categories in the column 
unique(stats$Income.Group) #gives different unique categories in the column mostly same as the above

# Basic Operations in a dataframe ----------

stats[1:10,]
stats[3:9,]
stats[, c(1,3)]
stats
is.data.frame(stats[1,])
is.data.frame(stats[,1]) #this will be in vector form run the below line to check
stats[,1]
stats[,1,drop=F]
is.data.frame(stats[,1,drop=F]) #Now we have it in a dataframe
stats$Birth.rate * stats$Internet.users
stats$MyNewColumn <- stats$Birth.rate * stats$Internet.users
head(stats) #New column is created in the dataframe

stats$xyz <- 1:5 #creates numbers from 1 to 5 and fits it in the column xyz in random order
stats$xyz <- 1:4 # it will generate an ERROR because, 4 is not a multipe of 195(no of rows)
stats$MyNewColumn <- NULL #removes the column
stats$xyz <- NULL
head(stats)

# Filtering dataframes ----------
head(stats, n=10)
filter <- stats$Birth.rate > 12
stats[filter,]

stats[stats$Internet.users>40 & stats$Birth.rate<10,]
stats[stats$Country.Name == "Austria",]
levels(stats$Income.Group)
