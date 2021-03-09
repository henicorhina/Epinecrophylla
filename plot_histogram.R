#!/usr/bin/env Rscript

library(ggplot2)
library(dplyr)
library(tidyr)
library(Hmisc)

setwd("/Volumes/Backup_Plus/Epinecrophylla/1_analysis/genetic_distances")

## nuDNA plots

nuDNA <- read.csv("Table_S4_nuDNA_distances.csv")
#tbl_df(nuDNA)

g <- tidyr::pivot_longer(nuDNA, 
                   cols = 2:24, names_to = "species_2",
                   values_to = "distance")

g <- dplyr::filter(g, distance != "na")
#tbl_df(g)

write.csv(g, "Table_S4_nuDNA_distances_gathered.csv", row.names = FALSE)

gathered <- read.csv("Table_S4_nuDNA_distances_gathered.csv")

p21 <- dplyr::filter(gathered, rank == "species")
p22 <- dplyr::filter(gathered, rank == "subspecies")
p23 <- dplyr::filter(gathered, rank == "intra_species")
p24 <- dplyr::filter(gathered, rank == "intra_subspecies")

p1 <- hist(p21$distance, breaks = 30)
p2 <- hist(p22$distance, breaks = 20)
p3 <- hist(p23$distance, breaks = 20)
p4 <- hist(p24$distance, breaks = 10)

png("nuDNA_Fst.png", 
    width = 6, height = 6, units = 'in', 
    res = 800)
tiff("nuDNA_Fst.tiff", 
     width = 6, height = 6, units = 'in', 
     res = 200)

plot(p1, col=rgb(0,0,1,1/2), xlim=c(0,0.8), ylim=c(0,35),
     main=" ", xlab = "nuDNA Fst")  # species
plot(p2, col=rgb(1,0,1,1/4), add=T)  # subspecies
minor.tick(nx=2, tick.ratio=0.5)
legend("topleft", legend=c("species", "subspecies"),
       col=c(rgb(0,0,1,1/2), rgb(1,0,1,1/4)), 
       fill=c(rgb(0,0,1,1/2), rgb(1,0,1,1/4)), 
       box.lty = 0, cex=0.6)
#arrows(5.2, 6, 5.2, 2.5, length = 0.05, angle = 60, code = 2)

dev.off()


png("nuDNA_Fst_intraspecific.png", 
    width = 6, height = 6, units = 'in', 
    res = 100)
tiff("nuDNA_Fst_intraspecific.tiff", 
     width = 6, height = 6, units = 'in', 
     res = 200)

plot(p3, col=rgb(0,0,1,1/2), xlim=c(0,0.3), ylim=c(0,4),
     main=" ", xlab = "nuDNA Fst")  # intra_species
plot(p4, col=rgb(1,0,1,1/4), add=T)  # intra_subspecies
#minor.tick(nx=2, ny=2, tick.ratio=0.5)
legend("topright", legend=c("intra-species", "intra-subspecies"),
       col=c(rgb(0,0,1,1/2), rgb(1,0,1,1/4)), 
       fill=c(rgb(0,0,1,1/2), rgb(1,0,1,1/4)), 
       box.lty = 0, cex=0.6)
#arrows(5.75, 3.5, 5.75, 2.3, length = 0.05, angle = 60, 
       #code = 2, lty = 5)
arrows(0.21, 2, 0.21, 1.2, length = 0.07, angle = 60, 
       code = 2, lty = 1)

dev.off()





## mtDNA plots

gathered <- read.csv("Table_S3_mtDNA_distances_corrected_dist_gathered.csv")

p21 <- dplyr::filter(gathered, rank == "species")
p22 <- dplyr::filter(gathered, rank == "subspecies")
p23 <- dplyr::filter(gathered, rank == "intra_species")
p24 <- dplyr::filter(gathered, rank == "intra_subspecies")

p1 <- hist(p21$distance, breaks = 30)
p2 <- hist(p22$distance, breaks = 10)
p3 <- hist(p23$distance, breaks = 20)
p4 <- hist(p24$distance, breaks = 8)

png("percent_corrected_mtDNA_divergence.png", 
     width = 6, height = 6, units = 'in', 
     res = 800)
tiff("percent_corrected_mtDNA_divergence.tiff", 
    width = 6, height = 6, units = 'in', 
    res = 200)

plot(p1, col=rgb(0,0,1,1/2), xlim=c(0,20), ylim=c(0,40),
     main=" ", xlab = "% corrected mtDNA divergence")  # species
plot(p2, col=rgb(1,0,1,1/4), add=T)  # subspecies
minor.tick(nx=2, ny=2, tick.ratio=0.5)
legend("topleft", legend=c("species", "subspecies"),
       col=c(rgb(0,0,1,1/2), rgb(1,0,1,1/4)), 
       fill=c(rgb(0,0,1,1/2), rgb(1,0,1,1/4)), 
       box.lty = 0, cex=0.6)
#arrows(5.2, 6, 5.2, 2.5, length = 0.05, angle = 60, code = 2)

dev.off()


png("percent_corrected_intraspecific_mtDNA_divergence.png", 
    width = 6, height = 6, units = 'in', 
    res = 100)
tiff("percent_corrected_intraspecific_mtDNA_divergence.tiff", 
     width = 6, height = 6, units = 'in', 
     res = 200)

plot(p3, col=rgb(0,0,1,1/2), xlim=c(0,4), ylim=c(0,8),
     main=" ", xlab = "% corrected intraspecific mtDNA divergence")  # intra_species
plot(p4, col=rgb(1,0,1,1/4), add=T)  # intra_subspecies
#minor.tick(nx=2, ny=2, tick.ratio=0.5)
legend("topright", legend=c("intra-species", "intra-subspecies"),
       col=c(rgb(0,0,1,1/2), rgb(1,0,1,1/4)), 
       fill=c(rgb(0,0,1,1/2), rgb(1,0,1,1/4)), 
       box.lty = 0, cex=0.6)
#arrows(5.75, 3.5, 5.75, 2.3, length = 0.05, angle = 60, 
#       code = 2, lty = 5)
#arrows(6.25, 5.5, 6.25, 4.3, length = 0.05, angle = 60, 
#       code = 2, lty = 1)

dev.off()



# attempt with ggplot

p21 <- dplyr::filter(gathered, rank == "species" | rank == "subspecies")
p1 <-p21[,4:5]

ggplot(p1, aes(distance, fill = rank)) + 
  geom_histogram(alpha = 0.5, aes(y = ..density..), position = 'identity')
