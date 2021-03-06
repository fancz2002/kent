# bgiGeneSnp.sql was originally generated by the autoSql program, which also 
# generated bgiGeneSnp.c and bgiGeneSnp.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Beijing Genomics Institute Gene-SNP associations (many-to-many)
CREATE TABLE bgiGeneSnp (
    geneName varchar(255) not null,	# Name of BGI gene.
    snpName varchar(255) not null,	# Name of BGI SNP
    geneAssoc varchar(255) not null,	# Association to gene: upstream, utr, exon, etc
    effect varchar(255) not null,	# Changes to codon or splice site (if applicable)
    phase char(1) not null,	# Phase of SNP in codon (if applicable)
    siftComment varchar(255) not null,	# Comment from SIFT (if applicable)
              #Indices
    INDEX(geneName(20)),
    INDEX(snpName(18))
);
