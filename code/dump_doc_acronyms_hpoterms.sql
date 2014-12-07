COPY (
	SELECT 
		doc_id, 
		array_to_string(array_accum(acronym), '|'),
		array_to_string(array_accum(hpoterm_id), '|')
	FROM 
		acronyms
	WHERE 
		hpoterm_id IS NOT NULL
	GROUP BY doc_id
) TO STDOUT;
