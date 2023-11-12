library(tidyLPA)
library(dplyr)
install.packages("devtools")


#Data読み込み（2020）
PrefYLL2020 <- read.csv("F:/lifetable_2000/PrefYLL2020x.csv")

#Men
#plot
results<-PrefYLL2020 %>%
  select(CancerM,CardioM,CerebroM,PneumoniaM,AccidentM,TrafficM,SuicideM,KidneyM) %>%
  scale() %>%
  estimate_profiles(4)
plot_profiles(results)

#data
results<-PrefYLL2020 %>%
  select(CancerM,CardioM,CerebroM,PneumoniaM,AccidentM,TrafficM,SuicideM,KidneyM,Covid19M) %>%
  scale() %>%
  estimate_profiles(4)  %>%
  get_data(results)
write.csv(results,"F:/lifetable_2000/result2020_m.csv")

#Women
#plot
results<-PrefYLL2020 %>%
  select(CancerF,CardioF,CerebroF,PneumoniaF,AccidentF,TrafficF,SuicideF,KidneyF) %>%
  scale() %>%
  estimate_profiles(4)
plot_profiles(results)

#data
results<-PrefYLL2020 %>%
  select(CancerF,CardioF,CerebroF,PneumoniaF,AccidentF,TrafficF,SuicideF,KidneyF) %>%
  scale() %>%
  estimate_profiles(4)  %>%
  get_data(results)
write.csv(results,"F:/lifetable_2000/result2020_f.csv")



####2010読み込み
PrefYLL2010 <- read.csv("F:/lifetable_2000/PrefYLL2010.csv")


#plot
results<-PrefYLL2010 %>%
  select(CancerM,CardioM,CerebroM,PneumoniaM,AccidentM,TrafficM,SuicideM,KidneyM) %>%
  scale() %>%
  estimate_profiles(4)
plot_profiles(results)

#data
results<-PrefYLL2010 %>%
  select(CancerM,CardioM,CerebroM,PneumoniaM,AccidentM,TrafficM,SuicideM,KidneyM) %>%
  scale() %>%
  estimate_profiles(4)  %>%
  get_data(results)
write.csv(results,"F:/lifetable_2000/result2010_m.csv")

#plot
results<-PrefYLL2010 %>%
  select(CancerF,CardioF,CerebroF,PneumoniaF,AccidentF,TrafficF,SuicideF,KidneyF) %>%
  scale() %>%
  estimate_profiles(4)
plot_profiles(results)

#data
results<-PrefYLL2010 %>%
  select(CancerF,CardioF,CerebroF,PneumoniaF,AccidentF,TrafficF,SuicideF,KidneyF) %>%
  scale() %>%
  estimate_profiles(4)  %>%
  get_data(results)
write.csv(results,"F:/lifetable_2000/result2010_f.csv")

