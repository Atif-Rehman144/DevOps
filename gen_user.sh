#! /bin/bash

#creating user_type group
addgroup mentor
addgroup mentee
addgroup root

for i in {1..6}
do
    useradd -m mentor"$i"
    usermod mentor"$i" -G mentor
done

#generating domain_specific groups
addgroup devops
addgroup webdev
addgroup algos
addgroup appdev
addgroup spml
addgroup ee
addgroup robotics
addgroup ui_ux

#6 mentors where 2 are in 2 domains
usermod mentor1 -G devops
usermod mentor2 -G webdev
usermod mentor3 -G algos
usermod mentor4 -G ui_ux
usermod mentor5 -G spml
usermod mentor6 -G appdev
usermod mentor1 -G ee
usermod mentor2 -G robotics

domain=("devops" "webdev" "algos" "ui_ux" "spml" "appdev" "ee" "robotics") 
for i in {1..8}
do
    for j in {1..5}
    do
        k=$(( $j * ($i-1) ))
        useradd -m mentee"$k"
        usermod mentee"$k" -G mentee 
        usermod mentee"$k" -G ${domain[$i]}
    done
done

#adding users to their second domain
usermod mentee4 -G webdev
usermod mentee5 -G webdev

usermod mentee9 -G algos
usermod mentee10 -G algos

usermod mentee14 -G ui_ux
usermod mentee15 -G ui_ux

usermod mentee19 -G spml
usermod mentee20 -G spml

usermod mentee24 -G ee
usermod mentee25 -G ee

usermod mentee29 -G robotics
usermod mentee30 -G robotics

usermod mentee34 -G devops
usermod mentee35 -G devops
