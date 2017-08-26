#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# build this mofo
hugo -t hugo-strata-theme

# to go le public folder and add ze shizzle
cd public
git add .

# let's get committed
msg="we iz rebuilding diz shizzle on=====> (◕‿◕)$(date)"

  if [ $# -eq 1 ]
    then msg="$1"
  fi

git commit -m "$msg"

# push it sucka!凸(`ﾛ´)凸
git push origin master

cd ..

