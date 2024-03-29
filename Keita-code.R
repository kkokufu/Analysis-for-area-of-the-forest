the.data = read.table("Forest718.txt")
the.data <- as.matrix(read.table("Forest718.txt"))
hist(the.data[,1])
hist(the.data[,2])
hist(the.data[,3])
hist(the.data[,4])
hist(the.data[,5])
hist(the.data[,6])
hist(the.data[,7])
hist(the.data[,8])
hist(the.data[,9])
hist(the.data[,10])
hist(the.data[,11])
hist(the.data[,12])
plot(the.data[,5], the.data[,13])
plot(the.data[,6], the.data[,13])
plot(the.data[,7], the.data[,13])
plot(the.data[,8], the.data[,13])
plot(the.data[,9], the.data[,13])
plot(the.data[,10], the.data[,13])
plot(the.data[,11], the.data[,13])
plot(the.data[,12], the.data[,13])
max(the.data[,5])
min(the.data[,5])
max(the.data[,6])
min(the.data[,6])
max(the.data[,7])
min(the.data[,7])
max(the.data[,8])
min(the.data[,8])
max(the.data[,9])
min(the.data[,9])
max(the.data[,10])
min(the.data[,10])
max(the.data[,11])
min(the.data[,11])
max(the.data[,12])
min(the.data[,12])
max(the.data[,13])
min(the.data[,13])
my.data = array(0,c(517,9))
my.data[,1] = (the.data[,5]-min(the.data[,5]))/(max(the.data[,5])-min(the.data[,5]))
my.data[,2] = (the.data[,6]-min(the.data[,6]))/(max(the.data[,6])-min(the.data[,6]))
my.data[,3] = (the.data[,7]-min(the.data[,7]))/(max(the.data[,7])-min(the.data[,7]))
my.data[,4] = (the.data[,8]-min(the.data[,8]))/(max(the.data[,8])-min(the.data[,8]))
my.data[,5] = (the.data[,9]-min(the.data[,9]))/(max(the.data[,9])-min(the.data[,9]))
my.data[,6] = (the.data[,10]-min(the.data[,10]))/(max(the.data[,10])-min(the.data[,10]))
my.data[,7] = (the.data[,11]-min(the.data[,11]))/(max(the.data[,11])-min(the.data[,11]))
my.data[,8] = (the.data[,12]-min(the.data[,12]))/(max(the.data[,12])-min(the.data[,12]))
my.data[,9] = (the.data[,13]-min(the.data[,13]))/(max(the.data[,13])-min(the.data[,13]))
write.table(my.data,"my-transformed.txt",)
install.packages("lpSolve")
source ("AggWaFit718.R")
fit.QAM(my.data[,c(2:9,1)],"WAMoutput.txt", "WAMstats.txt")
fit.QAM(my.data[,c(2:9,1)],"PMoutput.txt", "PMstats.txt", g=PM05, g.inv = invPM05)
fit.QAM(my.data[,c(2:9,1)],"QMoutput.txt", "QMstats.txt", g=QM, g.inv = invQM)
fit.OWA(my.data[,c(2:9,1)],"OWAoutput.txt", "OWAstats.txt")
fit.choquet(my.data[,c(6,2,8,5,1)], "Choquetoutput1.txt", "Choquetstats1.txt")
fit.choquet(my.data[,c(2:9,1)], "Choquetoutput2.txt", "Choquetstats2.txt")
(91.6-18.7)/(96.2-18.7)
(181.3-1.1)/(291.3-1.1)
(613-7.9)/(860.6-7.9)
(7.6-0)/(56.1-0)
(24.6-2.2)/(33.3-2.2)
(44-15)/(100-15)
(4-0.4)/(9.4-0.4)
(0-0)/(6.4-0)
prediction.data = c(0.9406452, 0.6209511, 0.7096282, 0.1354724, 0.7202572, 0.3411765, 0.4, 0)
pre.table = array(0,c(517,9))
pre.table[,1] = my.data[,1]
pre.table[,2] = my.data[,2]
pre.table[,3] = my.data[,3]
pre.table[,4] = my.data[,4]
pre.table[,5] = my.data[,5]
pre.table[,6] = my.data[,6]
pre.table[,7] = my.data[,7]
pre.table[,8] = my.data[,8]
pre.table[,9] = my.data[,9]

pre.table[,1] = my.data[,9]
pre.table[,2] = my.data[,1]
pre.table[,3] = my.data[,2]
pre.table[,4] = my.data[,3]
pre.table[,5] = my.data[,4]
pre.table[,6] = my.data[,5]
pre.table[,7] = my.data[,6]
pre.table[,8] = my.data[,7]
pre.table[,9] = my.data[,8]
fit.QAM(pre.table[,c(2:9,1)],"WAMoutput.txt1", "WAMstats.txt1")
fit.QAM(pre.table[,c(2:9,1)],"PMoutput.txt1", "PMstats.txt1", g=PM05, g.inv = invPM05)
fit.QAM(pre.table[,c(2:9,1)],"QMoutput.txt1", "QMstats.txt1", g=QM, g.inv = invQM)
fit.OWA(pre.table[,c(2:9,1)],"OWAoutput.txt1", "OWAstats.txt1")
fit.choquet(pre.table[,c(6,2,8,5,1)], "Choquetoutput1.txt1", "Choquetstats1.txt1")
WAMweights = c(0,1.00000000000001,0,0,0,0,0,0)
QAM(prediction.data, WAMweights)
0.6209511*(0.02100974-0.006287804)+0.006287804
