# Do a logistic regression with trawlers and tursiops detections

load("logistic_reg.rdata")

# view data 
y_tur # tursiops detections 
y_fis # trawlers detections
eff # sampling effort of both monitoring programs

# summary data
y2 <- y_tur
y2[y2==1] <- 2
table(y2 + y_fis)
# 163 sites with no detections
# 74 sites with trawlers only
# 9 sites with tursiops only
# 33 with both tursiops and trawlers

# fit the logistic regression
fit <- glm( y_tur ~ as_factor(y_fis) + eff, family =binomial)
summary(fit)
# positive effect of trawlers detections on tursiops detection
plogis(predict(fit))
