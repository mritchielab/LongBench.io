# Build site
Rscript -e "blogdown:::build_site()"
rm -r docs
mv public docs
touch docs/.nojekyll