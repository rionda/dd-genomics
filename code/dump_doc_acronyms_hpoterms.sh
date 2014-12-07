#! /bin/shy

# first argument is database name
# second argument is base dir

psql -d $1 -f $2/code/dump_doc_acronyms_hpoterms.sql > $2/dicts/doc_acronyms_hpoterms.tsv

