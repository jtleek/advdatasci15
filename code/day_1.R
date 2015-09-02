library(gplots)
library(googlesheets)
my_url = "https://docs.google.com/spreadsheets/d/1El48mUK2FVPt_i6WlsvukFoYF1uCU00MqqLeY7W46LE/pubhtml"
my_gs = gs_url(my_url)
dat = gs_read(my_gs)


### plot

library(RSkittleBrewer)
trop = RSkittleBrewer("tropical")
colramp = colorRampPalette(c(trop[3],"white",trop[2]))(9)
palette(trop)

dat = as.matrix(dat)
dat[is.na(dat)]= 0

par(mar=c(5,5,5,5))
heatmap.2(as.matrix(dat),col=colramp,Rowv=NA,Colv=NA,
          dendrogram="none", scale="none",
          trace="none",margins=c(10,2))