Fishing_Fleet <- data.frame(Area_1=c(10,20,30,40,50),
Area_2=c(15,25,35,45,55),Area_3=c(12,14,16,18,20),
Area_4=c(12,24,36,48,60),Area_5=c(15,30,45,60,75),Area_6=c(20,40,60,80,100))


row.names(Fishing_Fleet) <- c("Boat_1","Boat_2","Boat_3","Boat_4","Boat_5")
Fishing_Fleet

mean(as.numeric(Fishing_Fleet[1,]))



library(DescTools)
for (i in 1:5) {
	print(paste("The AM of Boat ",i," is ",mean(as.numeric(Fishing_Fleet[i,]))))
    print(paste("The GM of Boat ",i," is ",Gmean(as.numeric(Fishing_Fleet[i,]))))
    print(paste("The HM of Boat ",i," is ",Hmean(as.numeric(Fishing_Fleet[i,]))))
    print(paste("The GM of Boat ",i," is ",median(as.numeric(Fishing_Fleet[i,]))))   
}

for (i in 1:6) {
	print(paste("The AM of Area ",i," is ",mean(as.numeric(Fishing_Fleet[,i]))))
    print(paste("The GM of Area ",i," is ",Gmean(as.numeric(Fishing_Fleet[,i]))))
    print(paste("The HM of Area ",i," is ",Hmean(as.numeric(Fishing_Fleet[,i]))))
    print(paste("The GM of Area ",i," is ",median(as.numeric(Fishing_Fleet[,i]))))   
}


for (i in 1:5) {
	print(paste("The Maximum catch of Boat ",i," is ",max(as.numeric(Fishing_Fleet[i,]))))
    	print(paste("The Minimum catch of Boat ",i," is ",min(as.numeric(Fishing_Fleet[i,]))))

}

for (i in 1:6) {
	print(paste("The Maximum catch of Area ",i," is ",max(as.numeric(Fishing_Fleet[,i]))))
    	print(paste("The Minimum catch of Area ",i," is ",min(as.numeric(Fishing_Fleet[,i]))))

}




for (i in 1:5) {
    cat("The Range of Boat ",i," is ")
	print(paste(range(as.numeric(Fishing_Fleet[i,]))))
}

for (i in 1:6) {
    cat("The range of Area ",i," is ")
	print(paste(range(as.numeric(Fishing_Fleet[,i]))))

}

std.error(v)
library(plotrix)