#!/bin/bash

no=1

# Wit,Monastery of Christ in the Desert,Monks Wit,5.10%,$37.95,http://beeradvocate.com/beer/profile/24136/70638
while IFS=, read style brewery beer abv price ba
do

cat << EOF > _posts/2012-12-$no-${brewery// /-}-${beer// /-}.md
---
layout: beer
title: Day $no - $brewery $beer
day: $no
brewery: $brewery
name: $beer
image: beer.png
country: USA
style: $style
cost: $price
abv: $abv
ageit: Drink it fresh
respect: false
balink: $ba
---
## The Beer

## The Brewery

EOF

no=`expr $no + 1` 

done < beer.csv

echo "done"