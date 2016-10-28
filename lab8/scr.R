library(arules)
library(arulesViz)
str(admissions)
col_names <- names(admissions)
admissions[,col_names] <- lapply(admissions[,col_names] , factor)
inspect(rules.all)
plot(rules.all)
head(admissions)
summary(admissions)
rules <- apriori(admissions, control=list(verbose=F),
                 parameter=list(minlen=2, supp=0.01, conf=0.2), 
                 appearance=list(rhs=c("admit=1","admit=0"), lhs=c("rank=1"), default="none"))
inspect(rules)
plot(rules)