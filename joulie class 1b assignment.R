dir.create("raw_data")

dir.create("clean_data")

dir.create("data")

dir.create("script")   

dir.create("results")






data <- read.csv(file.choose())

View(data)

str(data)

class("age")
data$age_character<-NULL
data$age<-as.integer(data$age)
str(data)
data$patient_id<-factor(data$patient_id)
str(data)



data$smoker_fac <- as.factor(data$smoker)
str(data)


data$smoker_num <- ifelse(data$smoker_fac == "Yes", 1, 0)
class(data$smoker_num)
str(data)

data$smoker_fac<-NULL
str(data)
