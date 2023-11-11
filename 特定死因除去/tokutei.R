library(fmsb)

#特定死因の除去
PrefYLL2015 <- read.csv("F:/■■■県庁健康しが/特定死因除去/PrefYLL2015.csv")

data(PrefYLL2015)
COL <- ifelse(PrefYLL2015$PNAME=="Okayama", "blue", 
              ifelse(PrefYLL2015$PNAME=="Shiga", "red", "lightgrey"))
              
LTY <- ifelse(PrefYLL2015$PNAME=="Okayama", 1, 
              ifelse(PrefYLL2015$PNAME=="Shiga", 1, 3))
LWD <- ifelse(PrefYLL2015$PNAME=="Okayama", 2, 
              ifelse(PrefYLL2015$PNAME=="Shiga", 2, 1))
VLAB <- c("がん","心疾患\n(除高血圧)","脳血管疾患",
          "肺炎","事故","交通事故\n(再掲)","自殺","腎不全",
          "肝疾患","糖尿病","高血圧","結核")

males <- PrefYLL2015[,3:14]
females <- PrefYLL2015[,15:26]
layout(t(1:2))
radarchart(males, maxmin=FALSE, pcol=COL, axistype=2, pty=32,
           plty=LTY, plwd=LWD, vlabel=VLAB, 
           title="2015年特定死因を除いた場合の\n平均寿命の延び[男性]
（青：岡山，赤：滋賀，灰：その他)")
radarchart(females, maxmin=FALSE, pcol=COL, axistype=2, pty=32,
           plty=LTY, plwd=LWD, vlabel=VLAB, 
           title="2015年特定死因を除いた場合の\n平均寿命の延び[女性]
（青：岡山，赤：滋賀，灰：その他)")


library(fmsb)
PrefYLL2020 <- read.delim("https://minato.sip21c.org/demography/PrefYLL2020.txt")

data(PrefYLL2015)
COL <- ifelse(PrefYLL2020$PNAME=="Okinawa", "blue", 
              ifelse(PrefYLL2020$PNAME=="Shiga", "red", "lightgrey"))

LTY <- ifelse(PrefYLL2015$PNAME=="Okinawa", 1, 
              ifelse(PrefYLL2020$PNAME=="Shiga", 1, 3))
LWD <- ifelse(PrefYLL2015$PNAME=="Nagano", 2, 
              ifelse(PrefYLL2020$PNAME=="Okinawa", 2, 1))
VLAB <- c("がん","心疾患\n(除高血圧)","脳血管疾患",
          "肺炎","事故","交通事故\n(再掲)","自殺","腎不全",
          "肝疾患","糖尿病","高血圧","結核","COVID-19")

males <- PrefYLL2020[,3:15]
females <- PrefYLL2020[,16:28]
layout(t(1:2))
radarchart(males, maxmin=FALSE, pcol=COL, axistype=2, pty=32,
           plty=LTY, plwd=LWD, vlabel=VLAB, 
           title="2020年特定死因を除いた場合の\n平均寿命の延び[男性]
（青：沖縄，赤：滋賀，灰：その他)")
radarchart(females, maxmin=FALSE, pcol=COL, axistype=2, pty=32,
           plty=LTY, plwd=LWD, vlabel=VLAB, 
           title="2020年特定死因を除いた場合の\n平均寿命の延び[女性]
（青：沖縄，赤：滋賀，灰：その他)")



write.csv(PrefYLL2015,"PrefYLL2015.csv")
write.csv(PrefYLL2020,"PrefYLL2020.csv")
getwd()



#平均寿命推移
x <- read.delim("https://minato.sip21c.org/demography/Prefe0.txt")

males <- t(x[, 3:14])
colnames(males) <- x$PNAMEShiga
females <- t(x[, 15:26])
colnames(females) <- x$PNAME
COL <- ifelse(x$PNAME=="Nagano", "blue", ifelse(x$PNAME=="Shiga", "red", "lightgrey"))
LWD <- ifelse(x$PNAME=="Nagano", 2, ifelse(x$PNAME=="Shiga", 2, 1))
LTY <- ifelse(x$PNAME=="Nagano", 1, ifelse(x$PNAME=="Shiga", 1, 3))
years <- 1965+0:11*5

layout(t(1:2))
matplot(years, males, type="l", col=COL, lwd=LWD, lty=LTY, 
        main="男性の都道府県別平均寿命の推移\n（青：長野，赤：滋賀，灰色：他）")
matplot(years, females, type="l", col=COL, lwd=LWD, lty=LTY, 
        main="女性の都道府県別平均寿命の推移\n（青：長野，赤：滋賀，灰色：他）")




