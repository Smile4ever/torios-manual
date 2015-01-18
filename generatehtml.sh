mv torios.tex torios-original.tex
cp torios-original.tex torios.tex
sed -i "/tableofcontents/d" torios.tex
sed -i "/index{Table of Contents}/d" torios.tex
latex2html -local_icons -t "ToriOS Manual" -dir html torios.tex

rm torios.tex
mv torios-original.tex torios.tex

cd html
sed -i "s/<IMG WIDTH=\"43\" HEIGHT=\"24\" ALIGN=\"BOTTOM\" BORDER=\"0\" ALT=\"index\" SRC=\"index.png\">//" *.html
sed -i "s/<IMG WIDTH=\"26\" HEIGHT=\"24\" ALIGN=\"BOTTOM\" BORDER=\"0\" ALT=\"up\" SRC=\"up_g.png\">//" *.html
sed -i "s/<IMG WIDTH=\"63\" HEIGHT=\"24\" ALIGN=\"BOTTOM\" BORDER=\"0\" ALT=\"previous\" SRC=\"prev_g.png\">//" *.html

sed -i "s/up.png/up.svg/" *.html
sed -i "s/next.png/next.svg/" *.html
sed -i "s/prev.png/prev.svg/" *.html
sed -i "s/contents.png/contents.svg/" *.html
