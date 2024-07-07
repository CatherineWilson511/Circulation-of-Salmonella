# Circulation-of-Salmonella
Here we deposit the data presented in the upcoming research paper 'Circulation of Salmonella spp. between humans, animals and the  environment in urban and rural, low-intensity, animal-owning agricultural systems in Malawi'.

Here we deposit the data presented in the upcoming research paper entitled "Circulation of Salmonella spp. between humans, animals and the environment in urban and rural, low-intensity, animal-owning agricultural systems in Malawi".

We provide the code for the analysis performed in the associated R code (Salmonella_genome_diversity.R and Salmonella_network.R).

metadata_osnp_sharing.csv contains 14 columns containing the overall metadata of the Salmonella isolate from which was part of a ‘sharing pair’.
A.	HH1 (Lane ID)
B.	ST_HH1 (Sequence Type)
C.	Subspecies_HH1 (Salmonella subspecies)
D.	Serovar_HH1 (Salmonella serovar)
E.	HH1_number (Household number)
F.	study_site_HH1 (Study site)
G.	Sample.type_HH1 (Sample type)
H.	Individual.type_HH1 (Individual sample type)
I.	animal.category_HH1 (Animal category)
J.	Host_HH1 (Host category)
K.	AMR_finder_HH1 (Antimicrobial resistance determinant present detected with AMRFinderPlus))
L.	abricate_pf_HH1 (Abricate: Plasmid Finder)
M.	Sample.ID_HH1 (Individual sample number)
N.	HH1_visit (Household visit number)

total_host_hh.csv contains 4 columns containing the overall number of hosts within each household, according to Host category, from which Salmonella was isolated during the study. 

source_target_p.csv contains 2 columns which contain details of gene IDs. Each row within the dataset therefore contains two genomes which differ by 0 SNPs of the core gene alignment. 
A.	Source (Lane ID of genome 1)
B.	Target (Lane ID of genome 2)

meta_hum_st_wide_wide_extra.csv contains 14 columns. Columns A denotes the household number. The additional 13 columns each denote a different sequence type (ST) of Salmonella detected within human faecal samples collected from each household. 

meta_env_st_wide_wide_extra.csv contains 16 columns. Columns A denotes the household number. The additional 15 columns denote a different sequence type (ST) of Salmonella detected within environmental samples collected from each household. 

meta_an_st_wide_wide_extra.csv contains 58 columns. Columns A denotes the household number. The additional 57 columns each denote a different sequence type (ST) of Salmonella detected within animal faeces collected from each household. 
