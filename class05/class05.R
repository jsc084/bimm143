#' ---
#' title: "Class 5: Data Visualization and graphs in R"
#' author: "Ji Sun Chin"
#' date: "January 21st, 2020"
#' ---

# Class 5
# Data Visualization and graphs in R
#Need to import/read input data file first
baby <- read.table("bimm143_05_rstats/weight_chart.txt", header = TRUE, sep="")
#plot(calls Age column in baby,Calls Weight column in baby, pch=15(displays point as filled square), cex=1.5(increases point size to 1.5X), lwd=2(increases line thickness by 2x), ylim=c(2.10)(limits y axis range), main(assigns title of plot))
plot(baby$Age, baby$Weight, type="o", pch= 15, cex=1.5, lwd=2, ylim=c(2,10), xlab="Age (months)", ylab="Weight (kg)", main="Baby weight with age " )

#barplots
#read in data
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", header=TRUE, sep="\t")
#names.arg(adds labels for each bar)
#par(mar() changes margin sizes)
par(mar=c(5,11,3,7))
barplot(mouse$Count, horiz=TRUE, names.arg=mouse$Feature, las=1, main="Number of features in the mouse GRCm38 genome")

#histograms
x <- c(rnorm(10000),rnorm(10000)+4)
hist(x, breaks=50)

#Using Color
male_female <- read.table("bimm143_05_rstats/male_female_counts.txt", header=TRUE, sep="\t")
par(mar=c(7,5,3,5))
#nrow(male_female) allows number of colors to depend on size of data
barplot(male_female$Count, names.arg= male_female$Sample, las= 2, ylab="Counts", col=rainbow(nrow(male_female)))

#different color scheme: alternate red and blue
barplot(male_female$Count, names.arg= male_female$Sample, las= 2, ylab="Counts", col=c("red","blue"))


#Coloring by Value
gene <- read.delim("bimm143_05_rstats/up_down_expression.txt", header= TRUE, sep="\t")
table(gene$State)


        
