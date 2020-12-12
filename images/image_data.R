

# generate image data .. 

img<-list.files(path="~/Documents/PostDoc/mikemcwilliam.github.io/images")

img<-img[!img %in% c("close.png","loading.gif", "next.png", "prev.png"  )]

small<-img[grepl("x", img)]
large<-gsub("x","", small)

dat<-data.frame(name=gsub("_", "-", large))
dat$name<-gsub("\\.","-",dat$name)
dat$categories<-"image"
dat$image_path<-large
dat$preview<-small
dat$date<-substr(dat$preview,1, 10)
dat$date<-gsub("_", "/", dat$date)
dat$year<-substr(dat$date,1, 4)
dat

dat$location<-c(
"Port Phillip Bay",
"Port Phillip Bay",
"Port Phillip Bay",
"Port Phillip Bay",
"Whitsundays",
"Coral Sea",
"Maldives",
"Maldives",
"Lizard",
"Great Barrier Reef",
"Great Barrier Reef",
"Kauai",
"Heron Is.",
"Heron Is.",
"Komodo",
"Coral Sea",
"Vicoria, Australia",
"Vicoria, Australia",
"Coral Sea",
"Coral Sea",
'Coral Sea',
"Coral Sea",
"Crescent Head, NSW",
"Palau",
"Palau",
"Palau",
"Palau",
"Palau",
"Palau",
"Palau",
"Haleiwa",
"CA",
"Catalina",
"Catalina",
"Catalina",
"Makapu'u",
"Kona",
"Kona",
"Haleiwa"
)


dat

write.csv(dat, "~/Documents/PostDoc/mikemcwilliam.github.io/_data/gallery.csv")











dat$title<-

Goatfish
Cuttlefish
Mirror
Sedragon
Anemonefish
Diver
Mantis
Flatworm
Cuttlefish Liz.
Rib reef
Bleached table
Napali
Trout hiding
Turtle laying
Manta
Crest wave
Mornington
Cobbles
Mellish reef
Stylasterid
Grey reef
Brown Boobies
Nurse shark
Palau boat
Lobophyllia
Palau lakes
Palau jelly
Palau table
Palau tree
Palau caves
Galapagos shark
Kelp
Red kelpfish
Small kelpfish
Makapu'u
Yellow Frogfish
Orange Frogfish
Kelp beach