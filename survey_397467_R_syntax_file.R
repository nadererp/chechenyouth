#$Rev: 10193 $ all.
data <- read.csv("https://github.com/nadererp/chechenyouth/blob/master/survey_397467_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)

# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"

# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"

#Field hidden

# LimeSurvey Field type: A
data[, 3] <- as.character(data[, 3])
attributes(data)$variable.labels[3] <- "startlanguage"
names(data)[3] <- "startlanguage"

# LimeSurvey Field type: F
data[, 4] <- as.numeric(data[, 4])
attributes(data)$variable.labels[4] <- "[] All things considered, how satisfied are you with your life as a whole these days? On this scale 1 means you are  “completely  dissatisfied”  and  10  means  you  are  “completely  satisfied”  where  would  you  put  your satisfaction with your life as a whole?"
data[, 4] <- factor(data[, 4], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - completely  dissatisfied", "2", "3", "4", "5", "6", "7", "8", "9", "10 - completely  satisfied"))
names(data)[4] <- "V22_satis_SQ001"

# LimeSurvey Field type: F
data[, 5] <- as.numeric(data[, 5])
attributes(data)$variable.labels[5] <- "Generally speaking, would you say that most people can be trusted or that you need to be very careful in dealing with people?"
data[, 5] <- factor(data[, 5], levels=c(1,2),labels=c("Большинству людей можно доверять.", "Нужно быть очень осторожными в отношениях с людьми."))
names(data)[5] <- "V23_trust"

# LimeSurvey Field type: F
data[, 6] <- as.numeric(data[, 6])
attributes(data)$variable.labels[6] <- "[] Some people feel they have completely free choice and control over their lives, while other people feel that what they do has no real effect on what happens to them. Please use this scale where 1 means \"none at all\" and 10 means \"a great deal\" to indicate how much freedom of choice and control you feel you have over the way your life turns out. "
data[, 6] <- factor(data[, 6], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - none at all", "2", "3", "4", "5", "6", "7", "8", "9", "10 - a great deal"))
names(data)[6] <- "V46_choice_SQ001"

# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "[] Do you think most people would try to take advantage of you if they got a chance, or would they try to be fair? Please show your response on this scale, where 1 means that “people would try to take advantage of you,” and 10 means that “people would try to be fair.”"
data[, 7] <- factor(data[, 7], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - people would try to take advantage of you", "2", "3", "4", "5", "6", "7", "8", "9", "10 - people would try to be fair"))
names(data)[7] <- "V47_betray_SQ001"

# LimeSurvey Field type: F
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "[Being a housewife is just as fulfilling as working for pay.   ] 	For each of the following statements, please indicate how strongly you agree or disagree with each. Do you strongly 	agree, agree, disagree, or strongly disagree? "
data[, 8] <- factor(data[, 8], levels=c(1,2,3,4),labels=c("Strongly Agree", "Agree", "Disagree", "Strongly Disagree"))
names(data)[8] <- "V60_gndrdisc_1"

# LimeSurvey Field type: F
data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "[On the whole, men make better political leaders than women do.   ] 	For each of the following statements, please indicate how strongly you agree or disagree with each. Do you strongly 	agree, agree, disagree, or strongly disagree? "
data[, 9] <- factor(data[, 9], levels=c(1,2,3,4),labels=c("Strongly Agree", "Agree", "Disagree", "Strongly Disagree"))
names(data)[9] <- "V60_gndrdisc_2"

# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "[A university education is more important for a boy than for a girl.  ] 	For each of the following statements, please indicate how strongly you agree or disagree with each. Do you strongly 	agree, agree, disagree, or strongly disagree? "
data[, 10] <- factor(data[, 10], levels=c(1,2,3,4),labels=c("Strongly Agree", "Agree", "Disagree", "Strongly Disagree"))
names(data)[10] <- "V60_gndrdisc_3"

# LimeSurvey Field type: F
data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "[On the whole, men make better  business  executives than women do. ] 	For each of the following statements, please indicate how strongly you agree or disagree with each. Do you strongly 	agree, agree, disagree, or strongly disagree? "
data[, 11] <- factor(data[, 11], levels=c(1,2,3,4),labels=c("Strongly Agree", "Agree", "Disagree", "Strongly Disagree"))
names(data)[11] <- "V60_gndrdisc_5"

# LimeSurvey Field type: F
data[, 12] <- as.numeric(data[, 12])
attributes(data)$variable.labels[12] <- "[When jobs are scarce, men should have more right  to a job than women. ] 	For each of the following statements, please indicate how strongly you agree or disagree with each. Do you strongly 	agree, agree, disagree, or strongly disagree? "
data[, 12] <- factor(data[, 12], levels=c(1,2,3,4),labels=c("Strongly Agree", "Agree", "Disagree", "Strongly Disagree"))
names(data)[12] <- "V60_gndrdisc_4"

# LimeSurvey Field type: F
data[, 13] <- as.numeric(data[, 13])
attributes(data)$variable.labels[13] <- "[Claiming government benefits to which you are not entitled] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 13] <- factor(data[, 13], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[13] <- "V198_just_1"

# LimeSurvey Field type: F
data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "[Divorce] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 14] <- factor(data[, 14], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[14] <- "V198_just_8"

# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[Avoiding a fare on public transport] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 15] <- factor(data[, 15], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[15] <- "V198_just_2"

# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "[Prostitution] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 16] <- factor(data[, 16], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[16] <- "V198_just_6"

# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[Someone accepting a bribe in the course of their duties] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 17] <- factor(data[, 17], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[17] <- "V198_just_4"

# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[Homosexuality] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 18] <- factor(data[, 18], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[18] <- "V198_just_5"

# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[Cheating on taxes if you have a chance] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 19] <- factor(data[, 19], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[19] <- "V198_just_3"

# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[For a man to beat his wife] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 20] <- factor(data[, 20], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[20] <- "V198_just_11"

# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[Abortion] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 21] <- factor(data[, 21], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[21] <- "V198_just_7"

# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[Euthanasia—ending of the life of the incurable sick ] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 22] <- factor(data[, 22], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[22] <- "V198_just_9"

# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Suicide] Please indicate for each of the following statements whether you think it can always be justified, never be justified, or something in between."
data[, 23] <- factor(data[, 23], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - never justifiable", "2", "3", "4", "5", "6", "7", "8", "9", "10 - always justifiable"))
names(data)[23] <- "V198_just_10"

# LimeSurvey Field type: F
data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "Independently of whether you attend religious services or not, would you say you are:"
data[, 24] <- factor(data[, 24], levels=c(1,2,3),labels=c("A religious person", "Not a religous person", "An atheist"))
names(data)[24] <- "V187_believer"

# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[] How important is God in your life? Please use this scale to indicate. 10 means “very important” and 1 means “not at all important.”:"
data[, 25] <- factor(data[, 25], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - not at all important", "2", "3", "4", "5", "6", "7", "8", "9", "10 - very important"))
names(data)[25] <- "V192_god_SQ001"

# LimeSurvey Field type: F
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "How proud are you to be a Russian citizen?"
data[, 26] <- factor(data[, 26], levels=c(1,2,3,4),labels=c("Very proud", "Quite proud", "Not very proud", "Not at all proud"))
names(data)[26] <- "V209_proud"

# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "Do you consider yourself Chechen?"
data[, 27] <- factor(data[, 27], levels=c(1,2),labels=c("Yes", "No"))
names(data)[27] <- "V209_1_proud"

# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "If yes, are you proud to be Chechen?"
data[, 28] <- factor(data[, 28], levels=c(1,2,3,4),labels=c("Very proud", "Quite proud", "Not very proud", "Not at all proud"))
names(data)[28] <- "V209_2_proud"

# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[] How satisfied are you with the financial situation of your household? Please use this scale again to help with your answer:"
data[, 29] <- factor(data[, 29], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - not at all satisfied", "2", "3", "4", "5", "6", "7", "8", "9", "10 - completely  satisfied"))
names(data)[29] <- "V68_finsatis_SQ001"

# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "How interested would you say you are in politics?"
data[, 30] <- factor(data[, 30], levels=c(1,2,3,4),labels=c("Very interested", "Somewhat interested", "Not very interested", "Not at all interested"))
names(data)[30] <- "V95_interestpol"

# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Having a strong leader who does not have to bother with parliament and elections] I\'m going to describe various types of political systems and ask what you think about each as a way of governing this country. For each one, would you say it is a very good, fairly good, fairly bad or very bad way of governing this country? "
data[, 31] <- factor(data[, 31], levels=c(1,2,3,4),labels=c("Very good", "Fairly good", "Fairly bad", "Very bad"))
names(data)[31] <- "V148_prefsystem_SQ001"

# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Having experts, not government, make decisions according to what they think is best for the country] I\'m going to describe various types of political systems and ask what you think about each as a way of governing this country. For each one, would you say it is a very good, fairly good, fairly bad or very bad way of governing this country? "
data[, 32] <- factor(data[, 32], levels=c(1,2,3,4),labels=c("Very good", "Fairly good", "Fairly bad", "Very bad"))
names(data)[32] <- "V148_prefsystem_SQ002"

# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Having the army rule] I\'m going to describe various types of political systems and ask what you think about each as a way of governing this country. For each one, would you say it is a very good, fairly good, fairly bad or very bad way of governing this country? "
data[, 33] <- factor(data[, 33], levels=c(1,2,3,4),labels=c("Very good", "Fairly good", "Fairly bad", "Very bad"))
names(data)[33] <- "V148_prefsystem_SQ003"

# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Having a democratic political system] I\'m going to describe various types of political systems and ask what you think about each as a way of governing this country. For each one, would you say it is a very good, fairly good, fairly bad or very bad way of governing this country? "
data[, 34] <- factor(data[, 34], levels=c(1,2,3,4),labels=c("Very good", "Fairly good", "Fairly bad", "Very bad"))
names(data)[34] <- "V148_prefsystem_SQ004"

# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "People sometimes talk about what the aims of this country should be for the next ten years. Here is a list of some goals which different people would give top priority. Would you please say which one of these you, yourself, consider the most important?"
data[, 35] <- factor(data[, 35], levels=c(1,2,3,4),labels=c("A high level of economic growth", "Making sure this country has strong defense forces", "Seeing that people have more say about how things are done at their jobs and in their communities", "Trying to make our cities and countryside more beautiful"))
names(data)[35] <- "V69_cntrftr"

# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- " Что из перечисленного на карточке кажется Вам наиболее важным?"
data[, 36] <- factor(data[, 36], levels=c(1,2,3,4),labels=c("Maintaining order in the nation", "Giving people more say in important government decisions", "Fighting rising prices", "Protecting freedom of speech"))
names(data)[36] <- "v71_cntrftr2"

# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- " Here is another list. In your opinion, which one of these is most important? "
data[, 37] <- factor(data[, 37], levels=c(1,2,3,4),labels=c("A stable economy", "Progress toward a less impersonal and more humane society", "Progress toward a society in which Ideas count more than money", "The fight against crime"))
names(data)[37] <- "v73_cntrftr3"

# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[Governments tax the rich and subsidize the poor.] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 38] <- factor(data[, 38], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[38] <- "V152_chardem_1"

# LimeSurvey Field type: F
data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[Religious authorities interpret the laws.] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 39] <- factor(data[, 39], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[39] <- "V152_chardem_2"

# LimeSurvey Field type: F
data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[People choose their leaders in free elections.] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 40] <- factor(data[, 40], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[40] <- "V152_chardem_3"

# LimeSurvey Field type: F
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[People receive state aid for unemployment.] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 41] <- factor(data[, 41], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[41] <- "V152_chardem_4"

# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[The army takes over when government is incompetent. ] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 42] <- factor(data[, 42], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[42] <- "V152_chardem_5"

# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[Civil rights protect people’s liberty against oppression.] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 43] <- factor(data[, 43], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[43] <- "V152_chardem_6"

# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[The economy is prospering. ] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 44] <- factor(data[, 44], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[44] <- "V152_chardem_7"

# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[Criminals are severely punished. ] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 45] <- factor(data[, 45], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[45] <- "V152_chardem_8"

# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[People can change the laws in referendums. ] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 46] <- factor(data[, 46], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[46] <- "V152_chardem_9"

# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[Women have the same rights as men.] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 47] <- factor(data[, 47], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[47] <- "V152_chardem_10"

# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[Religious authorities are an important part of the political system] Many things may be desirable, but not all of them are essential characteristics of democracy. Please indicate for each of the following things how essential you think it is as a characteristic of democracy. Use this scale where 1 means “not at all an essential characteristic of democracy” and 10 means it definitely is “an essential characteristic."
data[, 48] <- factor(data[, 48], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1 - Not an essential of democracy", "2", "3", "4", "5", "6", "7", "8", "9", "10 - essential of democracy"))
names(data)[48] <- "V152_chardem_11"

# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[not at all important | absolutely important] How important is it for you to live in a country that is governed democratically?  On this scale where 1 means it is “not at all important” and 10 means “absolutely important” what position would you choose?"
data[, 49] <- factor(data[, 49], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[49] <- "V162_impdem_SQ001"

# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Not at all democratic | Completly democratic] And how democratically is this country being governed today? Again using a scale from 1 to 10, where 1 means that it is “not at all democratic” and 10 means that it is “completely democratic,” what position would you choose? : "
data[, 50] <- factor(data[, 50], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[50] <- "V163_demqual_SQ001"

# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[The government should ensure broad social security | The government should not ensure broad social security if it has adverse effects on the country\'s economy] 	I would be interested on your opinion on several questions."
data[, 51] <- factor(data[, 51], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[51] <- "V114_lrscale_1"

# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[The economy should be completely controlled by the government  | The economy should be free of governmental intervention] 	I would be interested on your opinion on several questions."
data[, 52] <- factor(data[, 52], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[52] <- "V114_lrscale_2"

# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[Incomes should be made more equal | We need larger income differences s incentives for individual effort] 	I would be interested on your opinion on several questions."
data[, 53] <- factor(data[, 53], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[53] <- "V114_lrscale_4"

# LimeSurvey Field type: F
data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[The government should take more responsibility to ensure that everyone is provided for | People should take more responsibility to provide for themselves] 	I would be interested on your opinion on several questions."
data[, 54] <- factor(data[, 54], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[54] <- "V114_lrscale_6"

# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Competition is good. It stimulates people to work hard and develop new ideas | Competition is harmful. It brings out the worst in people ] 	I would be interested on your opinion on several questions."
data[, 55] <- factor(data[, 55], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[55] <- "V114_lrscale_7"

# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[In the long run, hard work usually brings a better life | Hard work doesn’t generally bring success—it’s more a matter of luck and connections] 	I would be interested on your opinion on several questions."
data[, 56] <- factor(data[, 56], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[56] <- "V114_lrscale_8"

# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[People can only get rich at the expense of others | Wealth can grow so there’s enough for everyone] 	I would be interested on your opinion on several questions."
data[, 57] <- factor(data[, 57], levels=c(1,2,3,4,5,6,7,8,9,10),labels=c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10"))
names(data)[57] <- "V114_lrscale_9"

# LimeSurvey Field type: F
data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "Please state your gender!"
data[, 58] <- factor(data[, 58], levels=c(1,2),labels=c("Female", "Male"))
names(data)[58] <- "V235_gndr"

# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "Can you tell me your year of birth, please? "
names(data)[59] <- "V236_age"

# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "Where are you from?"
data[, 60] <- factor(data[, 60], levels=c("A1","A2","A3","A4","A5"),labels=c("Grozny", "Shali", "Urus-Martan", "Gudermes", "Argun"))
names(data)[60] <- "V255_loc"

# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "[Other] Where are you from?"
names(data)[61] <- "V255_loc_other"

# LimeSurvey Field type: F
data[, 62] <- as.numeric(data[, 62])
attributes(data)$variable.labels[62] <- "What is the highest educational level that you have attained? "
data[, 62] <- factor(data[, 62], levels=c(1,2,3,4,5,6,7,8,9),labels=c("No formal education", "Incomplete primary school", "Complete primary school", "Incomplete secondary school: technical/vocational type", "Complete secondary school: technical/vocational type", "Incomplete secondary: university-preparatory type", "Complete secondary: university-preparatory type", "Some university-level education, without degree", "University-level education, with degree"))
names(data)[62] <- "V238_educ"

# LimeSurvey Field type: F
data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "Do you currently study at university?"
data[, 63] <- factor(data[, 63], levels=c(1,2),labels=c("Yes", "No"))
names(data)[63] <- "V238_1_study"

# LimeSurvey Field type: F
data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "Are you employed now or not? "
data[, 64] <- factor(data[, 64], levels=c(1,2),labels=c("Yes", "No"))
names(data)[64] <- "V238_2_job"

# LimeSurvey Field type: F
data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "Are you a member of a youth organization?"
data[, 65] <- factor(data[, 65], levels=c(1,2),labels=c("Yes", "No"))
names(data)[65] <- "n_1"

# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "If yes, please indicate which organizations?"
names(data)[66] <- "n_2"

