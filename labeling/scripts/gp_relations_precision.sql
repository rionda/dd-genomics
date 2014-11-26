COPY (
SELECT t0.relation_id  as relation_id 
     ,  array_to_string(t5.words, '_') || '/' || t6.entity     as relation_name
     ,  array_cat(t0.wordidxs_1, t0.wordidxs_2)    as relation_pos 
     ,  t1.words       as words
     ,  t2.array_accum as sentences_before
     ,  t3.array_accum as sentences_after
FROM
	gene_hpoterm_relations_is_correct_inference t0, 
	sentences t1,
	preceding_sentences t2,
	following_sentences t3,
	gene_mentions t5,
	hpoterm_mentions t6
WHERE
	t0.doc_id = t1.doc_id AND t0.sent_id_1 = t1.sent_id
AND 
	t0.doc_id = t2.doc_id AND t0.sent_id_1 = t2.sent_id
AND 
	t0.doc_id = t3.doc_id AND t0.sent_id_1 = t3.sent_id
AND 
	t0.mention_id_1 = t5.mention_id AND t0.mention_id_2 = t6.mention_id
AND
	t0.expectation > 0.9
ORDER BY random()
LIMIT 100
) TO STDOUT WITH HEADER
;