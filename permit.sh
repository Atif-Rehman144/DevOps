#! /bin/bash

cd ~/spider
#giving only root user the perms for announcement folder
#common
chmod u=rwx,g=rwx,o=rx announcements
chmod u=rwx,g=rwx,o=rx ./announcments/welcome.txt   

for i in */
do 
    #domain-specific 
    cd $i
    chmod u=rwx,g=rwx,o=rx announcements
    chmod u=rwx,g=rwx,o=rx ./annoucements/welcome.txt  
    
    #domains + inductees
    chmod u=rwx,g=rwx,o= $i
    chmod u=rwx,g=rx,o= inductees.txt

    #gving mentors permission to grade
    chgrp mentor grades #ownership
    chmod u=rx,g=rwx,o= grades

    #giving mentee perms to edit submissions
    cd tasks
    chmod u=rwx,g=rx,o= task1-PS.pdf
    chgrp mentee submissions
    chmod u=rx,g=rwx,o=rx submissions
    cd ~/spider
done