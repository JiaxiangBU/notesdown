library('nonlinearTseries')
library('plot3D')
lor = lorenz(do.plot = F)

pdf(file="lorenz.pdf",colormodel="cmyk")
scatter3D(lor$x, lor$y, lor$z,
          ann=FALSE,col = terrain.colors(25), 
		  type="o",cex = 0.3,
		  colkey=FALSE,box=FALSE)
dev.off()		  
		  
		  
# ```{r lorenz,fig.cap="lorenz",pdfcrop=T,small.mar=T,fig.asp=1,fig.width=9}
library('nonlinearTseries')
library('plot3D')
lor = lorenz(do.plot = F)

# pdf(file="lorenz.pdf",colormodel="cmyk")
scatter3D(lor$x, lor$y, lor$z,
          ann=FALSE,col = terrain.colors(25), 
          type="o",cex = 0.3,
          colkey=FALSE,box=FALSE)
# dev.off()
# ```
# 放两个 R 在两个圈中
		  