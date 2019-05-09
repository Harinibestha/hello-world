track<-read.csv("/Users/harinib/Downloads/tracks-1.csv",header = TRUE, stringsAsFactors = FALSE, na.strings = c(NA,"Missing",""))

names(track)
colnames(track)
col_names_tracks <- colnames(track)
col_names_tracks
nrow(track)
ncol(track)
head(track,20)
head(track,20)
str(track)
track_new <-track[,c("AlbumId","TrackId","UnitPrice")]
unq_album <- unique(track[,3])
#or
#unq_album1 <- unique(track$AlbumId)

unq_album_df <- as.data.frame(unq_album)
names(unq_album_df)[1] <- "AId"
unq_genreid <- unique(track$GenreId)
unq_genre_df <- as.data.frame(unq_genreid)
