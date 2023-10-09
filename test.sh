#!/usr/bin/bash
git rev-parse --abbrev-ref HEAD > branch.txt
read -r BRANCH <"branch.txt"
echo $BRANCH
rm branch.txt

git diff --dirstat main $BRANCH ./* > diff.txt
echo "*** diff.txt ***"
cat diff.txt

# Use sed to remove characters before the match pattern
match_pattern=' '
sed "s/.*$match_pattern/$match_pattern/" "diff.txt" > changed.txt

echo "*** changed.txt ***"
cat changed.txt

read -r CHDIR <"changed.txt"
echo $CHDIR

cd $CHDIR
pwd

