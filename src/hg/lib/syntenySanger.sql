# syntenySanger.sql was originally generated by the autoSql program, which also 
# generated syntenySanger.c and syntenySanger.h.  This creates the database representation of
# an object which can be loaded and saved from RAM in a fairly 
# automatic way.

#Sanger Mouse Synteny
CREATE TABLE syntenySanger (
    chrom varchar(255) not null,	# Human Chrom
    chromStart int unsigned not null,	# Start on Human
    chromEnd int unsigned not null,	# End on Human
    name varchar(255) not null,	# Mouse Chromosome
    score int unsigned not null,	# score always zero
    strand char(1) not null,	# + direction matches - opposite
              #Indices
    PRIMARY KEY(chrom)
);
