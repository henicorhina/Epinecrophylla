#!/bin/sh




cd /Volumes/Backup_Plus/Epinecrophylla/0_Epinecrophylla_ms/SNAPP/pyrrhonota_x2/

/Applications/BEAST_2.5.2/bin/beast \
	-threads 4 \
	Epinecrophylla_pyrrhonota_x2_priors.run1.xml
	


cd /Volumes/Backup_Plus/Epinecrophylla/0_Epinecrophylla_ms/SNAPP/reduced_toSpecies_x2/
	
/Applications/BEAST_2.5.2/bin/beast \
	-threads 4 \
	-resume \
	Epinecrophylla_toSpecies_x2_priors.run1.xml

	
cd /Volumes/Backup_Plus/Epinecrophylla/0_Epinecrophylla_ms/SNAPP/reduced_toClade_x2/
	
/Applications/BEAST_2.5.2/bin/beast \
	-resume \
	-threads 4 \
	Epinecrophylla_toClade_plus_pyrrhonota_x2.run1.xml
