%Inclass assignment 7. 
% 1. The gene Cdx2 is a crucial transcription factor involved in number of
% developmental stages. Use the UCSC genome browser to answer the following questions
% about it:

% A. What human chromosome is it located on?

%% It is located on human chromosome 13.

% B. How many exons does it have?

%% It has 3 exons.

% C. What is the precise position of its stop codon in the genome?

%% Its stop codon is located at around the 27,969,006 base-pair mark in the genome.

% D. Identify at least one difference in sequence between human and mouse
% CDX2.

%% There is a single nucleotide difference between the sequence of human CDX2 and mouse CDX2 at position 27,971,021.

% E. In which human tissues is it expressed most abundantly?

%% It is expressed most abundantly in the colon-transverse and the small intestine-terminal ileum. 

%2. A. Use the unigene database to find the accession number for a genbank
% entry containing the complete coding sequence of Cdx2. 

%% The accession number for a genbank entry containing the coding sequence of Cdx2 is...
%% NM_001265

% B. Use MATLAB to read the genbank information corresponding to that
% accession number. 

%% Reading Genbank Information using accession number:

accesion = 'NM_001265';
genbank_dat = getgenbank(accesion);

% C. Use the information read in to find the position of the start and stop
% codon within the sequence. What are the parts of the sequence before the start codon 
% and after the stop codon?

%% The part of the sequence before the start codon is a promoter/5' untranslated region and the part of the sequence after the stop codon is a polyA tail/3' untranslated region. 

start_codon = genbank_dat.CDS.indices(1);
stop_codon = genbank_dat.CDS.indices(2);
start_codon

start_codon =

   363
stop_codon

stop_codon =

        1304


% D. Use the protein_id to read the information on the protein. Use the
% information you read to determine where the homeobox domain of the protein is.
% Hint: see the field "Features". 

%% Protein information; the homeobox domain of the protein is located between the 190 and 242 amino acids in the sequence.

protein_data = genbank_dat.CDS.protein_id;
accession = protein_data;
genbank_dat2 = getgenpept(accession);
genbank_dat2.Features;

