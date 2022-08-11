#! /bin/bash

mkdir spider
cd spider
mkdir announcements
touch ./announcements/welcome.txt

declare -a domain=("devops" "webdev" "algos" "ui_ux" "spml" "appdev" "ee" "robotics" )

for i in "${domain[@]}"
do
    mkdir $i 
 done

for i in "${domain[@]}"
do 
    cd $i
    mkdir tasks
    mkdir grades
    mkdir announcements
    touch Inductees.txt
    touch ./grades/task1-grades.txt
    touch ./announcements/welcome.txt
    touch ./tasks/task1-PS.pdf
    mkdir ./tasks/submissions
    touch ./tasks/submissions/mentee1.pdf
    cd ~/spider
done
