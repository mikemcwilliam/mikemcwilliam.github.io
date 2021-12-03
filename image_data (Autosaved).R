

# generate image data .. 

img<-list.files(path="~/Documents/PostDoc/mikemcwilliam.github.io/images")

img<-img[!img %in% c("close.png","loading.gif", "next.png", "prev.png"  )]

small<-img[grepl("x", img)]
large<-gsub("x","", small)
LOC <- substr(large,nchar(large)-6, nchar(large)-4)
#large<-paste(substr(large, 1, 10), substr(large,15, nchar(large)), sep='')
#small<-paste(substr(small, 1, 10), substr(small,15, nchar(small)), sep='')


dat<-data.frame(name=gsub("_", "-", large))
dat$name<-gsub("\\.","-",dat$name)
dat$categories<-"image"
dat$image_path<-large
dat$preview<-small
dat$LOC <- LOC
dat$date<-substr(dat$preview,1, 10)
dat$date<-gsub("_", "/", dat$date)
dat$year<-substr(dat$date,1, 4)

# 3 letter name code (don't use x)
dat$location<-NA
dat$location[dat$LOC=="PPB"]<-"Port Phillip Bay, Australia"
dat$location[dat$LOC=="WHT"]<-"Whitsundays, Australia"
dat$location[dat$LOC=="NGB"]<-"Northern GBR, Australia"
dat$location[dat$LOC=="MAL"]<-"Maldives"
dat$location[dat$LOC=="LIZ"]<-"Lizard Is., Australia"
dat$location[dat$LOC=="CRL"]<-"Coral Sea, Australia"
dat$location[dat$LOC=="CGB"]<-"GBR, Australia"
dat$location[dat$LOC=="KAU"]<-"Kauai, HI"
dat$location[dat$LOC=="HER"]<-"Heron Is., Australia"
dat$location[dat$LOC=="KMO"]<-"Komodo, Indonesia"
dat$location[dat$LOC=="NSW"]<-"New South Whales, Australia"
dat$location[dat$LOC=="VIC"]<-"Victoria, Australia"
dat$location[dat$LOC=="PAL"]<-"Palau"
dat$location[dat$LOC=="CAL"]<-"California, USA"
dat$location[dat$LOC=="CAT"]<-"Catalina Island, USA"
dat$location[dat$LOC=="OAH"]<-"Oahu, HI"
dat$location[dat$LOC=="HAL"]<-"Haleiwa, HI"
dat$location[dat$LOC=="KON"]<-"Kona, HI"
dat$location[dat$LOC=="SYD"]<-"Sydney, Australia"

dat$name <- paste(substr(dat$name,1,11),substr(dat$name,16,18), sep="")

dat$order <- c(nrow(dat):1)


write.csv(dat, "~/Documents/PostDoc/mikemcwilliam.github.io/_data/gallery.csv", row.names=FALSE)










