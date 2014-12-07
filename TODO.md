# TODO

* We need more features and distant supervision rules for the G/P relations. I
	cannot judge most of them, because I lack biology knowledge. I can help
	implement them though.
* Disambiguation of gene entities: many gene symbols are ambiguous (they may
	refer to multiple genes). At this time we make no effort to understand which
	gene they belong to. One way to partially solve the issue is to look for
	gene long names in the document. If we find a long name "N" of a gene that can
	be associated with a symbol "S" found in the document, then we can use the
	main symbol for "N" (which may even be "S"!) as the entity for mentions with
	word "S".
* Creation of HPOterm mention candidates: Emily claims that a lot of her
	diseases are mentioned as acronyms, rather than with a full name. Is it true
	for our case? You know the literature and your community, I don't. Shall we
	investigate it further to increase coverage? Note the increase in HPOterm
	coverage may lead to improved coverage of G/P relation
* Add inference rules to avoid that one 

