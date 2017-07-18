fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"

if(!file.exists("data")){
  dir.create("data")
}
download.file(fileUrl, destfile="./data/cameras.csv", method="curl")
dateDownloaded <- date()
save(dateDownloaded, file="./data/downloadDate.rda")
