-- List the tracks which have been purchased at least twice, ordered by number of purchases

SELECT tracks.name, COUNT(*) purchases
FROM tracks
JOIN invoice_lines ON tracks.id = invoice_lines.track_id
GROUP BY tracks.id
ORDER BY purchases DESC