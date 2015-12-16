library(gplots)
library(googlesheets)
old_url = "https://docs.google.com/spreadsheets/d/1El48mUK2FVPt_i6WlsvukFoYF1uCU00MqqLeY7W46LE/pubhtml"
new_url ="https://docs.google.com/spreadsheets/d/10QoH7ULg7kvUZtABgigTwY8GasyFj91IchQsfCs0D9I/pubhtml"
old_gs = gs_url(old_url)
old_dat = gs_read(old_gs)


new_gs = gs_url(new_url)
new_dat = gs_read(new_gs)


### plot

library(RSkittleBrewer)
trop = RSkittleBrewer("tropical")
colramp = colorRampPalette(c(trop[3],"white",trop[2]))(9)
palette(trop)

old_dat = as.matrix(old_dat)
old_dat[is.na(old_dat)]= 0

par(mar=c(5,5,5,5))
heatmap.2(as.matrix(old_dat),col=colramp,Rowv=NA,Colv=NA,
          dendrogram="none", scale="none",
          trace="none",margins=c(10,2))

new_dat = as.matrix(new_dat)
new_dat[is.na(new_dat)]= 0

par(mar=c(5,5,5,5))
heatmap.2(as.matrix(new_dat),col=colramp,Rowv=NA,Colv=NA,
          dendrogram="none", scale="none",
          trace="none",margins=c(10,2))