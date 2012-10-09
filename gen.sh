#!/bin/bash
for i in `seq 1 24`;
do
  body="---\nlayout: beer\ntitle: Day $i - Beer\nday: $i\nbrewery: Founders\nname: Reds Rye\nimage: beer-founders-reds-rye.png\ncountry: USA\nstyle: Rye Ale\ncost: 38.99\nabv: 6.6\nageit: Drink it fresh\nbalink: http://beeradvocate.com/beer/profile/\n---"
  echo -e $body > _posts/day-$i-beer.md
done
