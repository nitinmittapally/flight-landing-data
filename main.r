data_path <- './data/faa.csv'
data <- read.csv(data_path, header = T)

# Peeking data $python df.head()
head(data)

# get the info of the dataset $python df.info() 
str(data)

# summary of the dataset $python df.describe()
summary(data)

#attach: makes it working data set no need to call by dataset name while referring to columns 
attach(data)

mean(distance) # else mean mean(data$distance)

# sorting data column
pitch.sorted = sort(data$pitch)
round(pitch.sorted, 5.4)
median(pitch.sorted)
median(data$pitch)

# trimmed mean 
mean(data$pitch, trim = 0.01)

mean(data$height) - 2*sd(data$height)
mean(data$height) + 2*sd(data$height)

sum(data$height < 9.6 | data$height > 50.6)/800

