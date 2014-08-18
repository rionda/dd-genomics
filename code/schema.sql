-- This SQL script contains the instruction to create the tables. 
-- WARNING: all the tables are dropped and recreated

-- Sentences table
DROP TABLE IF EXIST sentences CASCADE;
CREATE TABLE sentences (
	docid text,
	sentid text,
	wordidxs int[],
	words text[],
	poses text[],
	ners text[],
	dep_paths text[],
	dep_parents int[]
	bounding_boxes text[]
);
