MATCH path = (gene_1:Gene)
  - [enc_1_10:enc] - (protein_10:Protein)
  - [rel_10_10:h_s_s|ortho*0..1] - (protein_10b:Protein)
  - [enc_10_9:enc] - (gene_9:Gene)
  - [rel_9_2:occ_in|pub_in] - (publication_2:Publication)
WHERE gene_1.iri IN $startGeneIris
RETURN path