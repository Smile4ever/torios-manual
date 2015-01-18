# making index
makeindex torios.idx
makeindex torios-testing-manual.idx
# echo add to git hub
git add torios-testing-manual.pdf
git add torios.tex
git add torios.pdf
git add torios-testing-manual.pdf
git add *.png
cd screen-shots
cd ..
git add *.png
git commit -m "torios mamuals"
git push
echo "done" 
