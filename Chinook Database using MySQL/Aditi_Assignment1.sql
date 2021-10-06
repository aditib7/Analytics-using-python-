

SELECT AlbumId, Title TitleOfAlbum, COUNT(Name) TracksPerAlbum FROM album INNER JOIN track USING (AlbumId)
GROUP BY AlbumId
ORDER BY TracksPerAlbum DESC
LIMIT 10;



SELECT ar.ArtistId, ar.Name NameOfArtist, COUNT(t.Name) TracksPerArtist FROM artist ar INNER JOIN album al ON ar.ArtistId = al.ArtistId 
INNER JOIN track t ON al.AlbumId = t.AlbumId
GROUP BY ArtistId
ORDER BY TracksPerArtist DESC
LIMIT 10;




SELECT c.CustomerId, CONCAT_WS(',', c.LastName, c.FirstName) AS 'CustomerName', SUM(il.UnitPrice * il.Quantity) TotalAmount FROM customer c
INNER JOIN invoice i ON c.CustomerId = i.CustomerId INNER JOIN invoiceline il ON i.InvoiceId = il.InvoiceId
GROUP BY CustomerId
ORDER BY TotalAmount DESC
LIMIT 10;



SELECT a.AlbumId, a.Title TitleOfAlbum, SUM(il.Quantity) TotalPurchase FROM album a INNER JOIN track t ON a.AlbumId = t.AlbumId
INNER JOIN invoiceline il ON t.TrackId = il.TrackId
GROUP BY AlbumId
ORDER BY TotalPurchase DESC, AlbumId ASC
LIMIT 10;




SELECT g.GenreId, g.Name NameOfGenre, t.TrackId, t.Name NameOfTrack, SUM(il.Quantity) NumberPurchased FROM genre g LEFT JOIN track t ON g.GenreId = t.GenreId
LEFT JOIN invoiceline il ON t.TrackId = il.TrackId
GROUP BY TrackId
ORDER BY NumberPurchased DESC, TrackId ASC
LIMIT 10;




SELECT TrackId, TrackName,  Milliseconds / 60000 AS 'Playtime' FROM (SELECT TrackId, Name AS 'TrackName', Milliseconds FROM track
ORDER BY Milliseconds DESC LIMIT 10) AS tracktime;




SELECT AlbumId, AlbumName, Duration/60000 AS 'Playtime' FROM (SELECT a.AlbumId, a.Title AlbumName, SUM(t.Milliseconds) Duration FROM album a
INNER JOIN track t ON a.AlbumId = t.AlbumId
GROUP BY AlbumId
ORDER BY Duration DESC
LIMIT 10) AS tracktime;




SELECT ArtistId, ArtistName, COUNT(DISTINCT(GenreId)) NumberOfGenres FROM (SELECT ar.ArtistId, ar.Name ArtistName, t.GenreId FROM artist ar
LEFT JOIN album al ON ar.ArtistId = al.ArtistId INNER JOIN track t ON al.AlbumId = t.AlbumId) AS artist_albums
GROUP BY ArtistId
ORDER BY NumberOfGenres DESC, ArtistId ASC
LIMIT 10;





SELECT ArtistId, ArtistName, TotalNumberSold FROM (SELECT ar.ArtistId, ar.Name ArtistName, SUM(il.Quantity) TotalNumberSold FROM artist ar
LEFT JOIN album al ON ar.ArtistId = al.AlbumId
INNER JOIN track t ON al.AlbumId = t.AlbumId
INNER JOIN invoiceline il ON t.TrackId = il.TrackId
GROUP BY ArtistId
ORDER BY TotalNumberSold DESC, ArtistId ASC
LIMIT 3) AS higherpurchases;




SELECT MediaTypeId, MediaType, MostPurchased FROM (SELECT m.MediaTypeId, m.Name MediaType, SUM(il.Quantity) MostPurchased FROM mediatype m
LEFT JOIN track t ON m.MediaTypeId = t.MediaTypeId
INNER JOIN invoiceline il ON t.TrackId = il.TrackId
GROUP BY MediaTypeId
ORDER BY MostPurchased DESC, MediaTypeId ASC
LIMIT 1) AS media_purchase;













