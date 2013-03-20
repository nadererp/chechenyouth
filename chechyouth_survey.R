##############################################################
## AUTHORITARIANISM AND POLITICAL VALUES: CHECHEN YOUTH     ##
## Peter NADERER                                            ##
## peter.naderer2@studio.unibo.it                           ##
## Alma Mater Studiorum - Universita' di Bologna            ##
## Interdisciplinary Research and Studies on Eastern Europe ##                                             ##
##############################################################

library(memisc)
library(ggplot2)
library(lattice)
library(car)
library(texreg)
library(gmodels)
library(gridExtra)
library(foreign)
library(reshape)
library(RColorBrewer)
library(psych)

setwd("D:/peter/studium/subjects/Thesis/survey/analysis")
source('D:/peter/studium/subjects/Thesis/survey/analysis/survey_397467_R_syntax_file.R')

### CLEANING DATA
data$org <- data$n_2

data$org[data$org == "Putin" | 
           data$org == "Youth Parliament" |
           data$org == "Iman"] <- "Governmental"

data$org[33] <- "Governmental"
data$org[40] <- "Governmental"
data$org[41] <- "Governmental"

data$org[data$org == "Youth For Future" | 
           data$org == "Youth for Future" | 
           data$org == "English Club" |
           data$org == "youth for Future" |
           data$org == "Youth For Future" |
           data$org == "Youth for future" |
           data$org == "youth for future" |
           data$org == "Y for Future + Sint" |
           data$org == "Legal Clinic" |
           data$org == "niiso"] <- "Independent"

data$org[data$org == "Sacita" | 
           data$org == NA] <- "Independent"

data$org <- replace(data$org, is.na(data$org), "Control")
data$org <- factor(data$org)
summary(data$org)

################################
### BUILDING MASS BELIEFS ######
################################

#####
##### EQUITY: GENDER EQUALITY OVER PATRIARCHY
#####

data$V60_gndrdisc_1 <- recode(as.numeric(data$V60_gndrdisc_1), "c(1)='0'; c(2) = '0.33'; c(3) = '0.66'; c(4) = '1'")
data$V60_gndrdisc_2 <- recode(as.numeric(data$V60_gndrdisc_2), "c(1)='0'; c(2) = '0.33'; c(3) = '0.66'; c(4) = '1'")
data$V60_gndrdisc_3 <- recode(as.numeric(data$V60_gndrdisc_3), "c(1)='0'; c(2) = '0.33'; c(3) = '0.66'; c(4) = '1'")
data$V60_gndrdisc_4 <- recode(as.numeric(data$V60_gndrdisc_4), "c(1)='0'; c(2) = '0.33'; c(3) = '0.66'; c(4) = '1'")
data$V60_gndrdisc_5 <- recode(as.numeric(data$V60_gndrdisc_5), "c(1)='0'; c(2) = '0.33'; c(3) = '0.66'; c(4) = '1'")

data[,8:12]

which(colnames(data)=="V60_gndrdisc_1" )


data$equity <- ((data[,8] + 
  data[,9] + 
  data[,10] + 
  data[,11] + 
  data[,12])/5)

summary(data$equity)


#####
##### LIBERTY: TOLERANCE OVER CONFORMITY
#####


data$liberty <- (((as.numeric(data$V198_just_5)/10) + #Homosexuality
(as.numeric(data$V198_just_7)/10) + #Abortion
 as.numeric(data$V198_just_9)/10 + #Euthanasia
(as.numeric(data$V198_just_8)/10))/4) #Suicide

summary(data$liberty)

######
###### AUTONOMY: SELF-DETERMINATION OVER OBEDIENCE
######

data$autonomy <- ((as.numeric(data$V46_choice_SQ001)/10 + #Free Choice
                     as.numeric(data$V148_prefsystem_SQ001)/4 +
                     (1 - (as.numeric(data$V148_prefsystem_SQ004)/4)) +
                     as.numeric(data$V47_betray_SQ001)/10 +
                     as.numeric(data$V152_chardem_3)/10)/5)

summary(data$autonomy)
######
###### EXPRESSION: PARTICIPATION OVER SECURITY
######

data$V69_cntrftr <- recode(as.numeric(data$V69_cntrftr), "c(3)='1'; else='0'")
data$v71_cntrftr2 <- recode(as.numeric(data$v71_cntrftr2), "c(2,4)='1'; else='0'")
data$v73_cntrftr3 <- recode(as.numeric(data$v73_cntrftr3), "c(2,3)='1'; else='0'")

data$expression <- (data$V69_cntrftr + data$v71_cntrftr2 + data$v73_cntrftr3)/3

summary(data$expression)

######
###### AGGREGATED EMANCIPATIVE MASS BLIEFS
######

data$emb <-    (data$equity +
               data$liberty +
               data$autonomy +
               data$expression)/4


summary(data$emb)

#######################################
###### GENERAL OBSERVATIONS ###########
#######################################

##### GENERAL DISTRIBUTION OF EMB

#BOXPLOT
ggplot(data, aes(x = org, y = emb)) +
         geom_boxplot() +
         geom_jitter(aes(color = org)) +
  ylab("Adapted Emancipative Values") +
  xlab("Sample Group")

#DENSITY
ggplot(data, aes(alpha = 1)) + 
  geom_density(aes(x = emb, fill = org)) + 
  #geom_bar(aes(x = emb)) +
  scale_fill_brewer(palette="PuBu") +
  xlab("Distribution of Emancipated Mass Beliefs") +
  ylab("Density")

#Only Club Iman and Putin Club

iman <- data[data$n_2 == "Iman",]
mean(iman$emb, na.rm = TRUE)

mean(data$emb, na.rm = TRUE)




describeBy(data$emb, data$org)
a <- data$emb[data$org == "Independent"]
b <- data$emb[data$org == "Governmental"]
c <- data$emb[data$org == "Control"]
t.test(a,b)

aov1 <- aov(data$emb ~ data$org)
anova(aov1)

summary(lm(emb ~ org, data = data))

ggplot(data, aes(x = emb, y = org)) + geom_smooth()

cor(data$emb[complete.cases(data$emb)], as.numeric(data$org[complete.cases(data$emb)]))

###### EMB VALUE SEGMENTS
#ANOVA
aov.equity <- aov(data$equity ~ data$org)
anova(aov.equity)

aov.liberty <- aov(data$liberty ~ data$org)
anova(aov.liberty)

aov.autonomy <- aov(data$autonomy ~ data$org)
anova(aov.autonomy)

aov.expression <- aov(data$expression ~ data$org)
anova(aov.expression)

#T-TEST
describeBy(data$equity, data$org)
describeBy(data$liberty, data$org)
describeBy(data$autonomy, data$org)
describeBy(data$expression, data$org)

a <- data$equity[data$org == "Independent"]
b <- data$equity[data$org == "Governmental"]
t.test(a,b)

a <- data$liberty[data$org == "Independent"]
b <- data$liberty[data$org == "Governmental"]
t.test(a,b)

a <- data$autonomy[data$org == "Independent"]
b <- data$autonomy[data$org == "Governmental"]
t.test(a,b)

a <- data$expression[data$org == "Independent"]
b <- data$expression[data$org == "Governmental"]
t.test(a,b)



#### BOXPLOTS

#Reshaping
df.s <- data[,67:72]
df.m <- melt(data[,67:72], measure.vars = c("equity","expression","liberty", "autonomy"))


ggplot(df.m, aes(x = org, y = value)) + 
  geom_boxplot() +
  geom_jitter(aes(color = org)) +
  facet_wrap(~ variable, ncol = 2) +
  ylab("Adapted Emancipative Values") +
  xlab("Sample Group")


#####
a <- ggplot(data, aes(alpha = 1)) + 
  geom_density(aes(x = equity, fill = org)) + 
  #geom_bar(aes(x = equity)) +
  scale_fill_brewer(palette="PuBu") +
  xlab("Equity") +
  ylab("Density") +
  opts(legend.position = "none")

b <- ggplot(data, aes(alpha = 1)) + 
  geom_density(aes(x = liberty, fill = org)) + 
  #geom_bar(aes(x = equity)) +
  scale_fill_brewer(palette="PuBu") +
  xlab("Liberty") +
  ylab("Density") +
  opts(legend.position = "none")

c <- ggplot(data, aes(alpha = 1)) + 
  geom_density(aes(x = autonomy, fill = org)) + 
  #geom_bar(aes(x = equity)) +
  scale_fill_brewer(palette="PuBu") +
  xlab("Autonomy") +
  ylab("Density") +
  opts(legend.position = "none")

d <- ggplot(data, aes(alpha = 1)) + 
  geom_density(aes(x = expression, fill = org)) + 
  #geom_bar(aes(x = equity)) +
  scale_fill_brewer(palette="PuBu") +
  xlab("Expression") +
  ylab("Density") +
  opts(legend.position = "none")

grid.arrange(a,b,c,d)

###### PROUD
######

mean(as.numeric(data$V209_proud), na.rm = TRUE)
mean(as.numeric(data$V209_2_proud), na.rm = TRUE)

ggplot(data, aes(x = data$V209_2_proud)) +
  geom_bar()
######

###### Religion
######

qplot(data$V46_choice_SQ001)
mean(as.numeric(data$V46_choice_SQ001))

summary(data$V192_god_SQ001)
summary(data$V187_believer)

###### HOMOSEXUALITY

cor(as.numeric(data$V192_god_SQ001[complete.cases(data$V192_god_SQ001)]),
    as.numeric(data$V198_just_5[complete.cases(data$V192_god_SQ001)]))

qplot(data$equity)


###### LR SCALE

which(colnames(data)=="V114_lrscale_1" )

data$lrscale <- (as.numeric(data[,51]) +
  as.numeric(data[,52]) + 
  as.numeric(data[,53]) + 
  as.numeric(data[,54]) + 
  as.numeric(data[,55]) + 
  as.numeric(data[,56]) + 
  as.numeric(data[,57]))/7

mean(data$lrscale, na.rm = TRUE)

describeBy(data$lrscale, )
ggplot(data, aes(x = org, y = lrscale)) + 
  geom_boxplot() +
  geom_jitter(aes(color = org))

ggplot(data, aes(x = lrscale, y = emb)) + 
  geom_jitter() + 
  geom_smooth(method = "lm")


#####

#IDENTITY


describe(as.numeric(data$V209_proud))
describeBy(as.numeric(data$V209_proud),data$org)


describe(as.numeric(data$V209_2_proud))

qplot(y  = as.numeric(data$V209_proud), x = data$org, geom = "boxplot")
qplot(x  = as.numeric(data$V209_2_proud), fill = data$org, geom = "density")


#Democracy

describeBy(as.numeric(data$V162_impdem_SQ001), data$org)

describe(as.numeric(iman$V163_demqual_SQ001))
describe(as.numeric(data$V163_demqual_SQ001[data$n_2 == "Putin"]))
describe(as.numeric(data$V163_demqual_SQ001[data$n_2 == "Iman"]))
describe(as.numeric(data$V163_demqual_SQ001[data$org == "Independent"]))
describe(as.numeric(data$V163_demqual_SQ001[data$org == "Governmental"]))


ggplot(data, aes(x = org, y = as.numeric(V163_demqual_SQ001))) + 
  geom_boxplot() +
  geom_jitter(aes(color = org)) +
  xlab("") +
  ylab("Satisfied with Democratic Quality")