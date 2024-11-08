# Must be in the public folder when run (not good assumption)
for dir in $(find . -type d -print); do
  if [ "$dir" = '.' ]; then
    baseURL="https://cashoptimizer.pages.dev"
    ofile="index.html"
    else
    baseURL="https://cashoptimizer.pages.dev$(echo $dir | sed 's/^\.//')"
    ofile="$dir/index.html"
  fi
  tree "$dir" \
    -o "$ofile" \
    -H "$baseURL" \
    -L 1 \
    --noreport \
    --dirsfirst \
    --charset utf-8 \
    --ignore-case \
    --timefmt "%b %d %Y %H:%M" \
    -h -D \
    --hintro "../src/hintro.html" \
    -I "index.html" \
    -P "*.json|*.csv|*.html"
done