FILENAME=prog_Assignment_groups
libreoffice --headless --convert-to csv $FILENAME.xlsx --outdir .  
cat prog_Assignment_groups.csv | awk -F ',' {'print $3'} | awk -F ' ' {'print $1'}

