#Set seed
set.seed(123456)

#First survey
programs <- c("Excel", "SPSS dropdowns", "SPSS syntax", 
              "SAS", "R", "Python", "Something not listed", 
              "What is this 'analyze' you speak of?")


Q1 <- sample(programs, size = 50, replace = TRUE, prob = c(0.35, 0.35, 0.05, 
                                                           0.05, 0.15, 0.01, 
                                                           0.02, 0.02))

survey1 <- data.frame(Q1 = Q1)

write.csv(survey1, "survey1.csv")

#Second survey
age <- round(rnorm(50, mean = 35, sd = 5.1), 0)
articles <- round(rnorm(50, mean = 12, sd = 3))

#Combine into dataframe
#Make sure vars are named correctly
#Need to match what I'm doing with Qualtrics
survey_age <- data.frame(Q1 = age,
                         Q2 = articles)


write.csv(survey_age, "survey2.csv")

#Third survey
#Is your fav color blue?
blue <- sample(c("yes", "no"), 50, replace = TRUE, prob = c(0.6, 0.4))

#Rank 3 movies 1-5 (LotR, Jaws, Dirty Dancing)
LotR <- sample(c(1:5), 50, replace = TRUE, prob = c(0.1, 0.2, 0.2, 0.2, 0.3))
Jaws <- sample(c(1:5), 50, replace = TRUE, prob = c(0.4, 0.1, 0.2, 0.2, 0.1))
DD <- sample(c(1:5), 50, replace = TRUE, prob = c(0.05, 0.2, 0.25, 0.3, 0.2))

last_survey <- data.frame(Q1 = blue,
                          Q2_1 = LotR,
                          Q2_2 = Jaws,
                          Q2_3 = DD)

write.csv(last_survey, "survey3.csv")
