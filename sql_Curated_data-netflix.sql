DROP VIEW IF EXISTS netflix_titles_final; 
CREATE VIEW netflix_titles_final AS (
SELECT *
FROM netflix_titles
LEFT JOIN netflix_titles_cast
		USING (show_id)
LEFT JOIN netflix_titles_category
 		USING (show_id)
LEFT JOIN netflix_titles_countries
        USING (show_id)
LEFT JOIN netflix_titles_directors
		USING (show_id)
)