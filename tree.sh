# Must be in the public folder when run (not good assumption)
for dir in $(find . -type d -print); do
  if [ "$dir" = '.' ]; then
    thisdirstring=""
    treestring=""
    else
    thisdirstring="$(basename $dir)/"
    treestring="$dir/"
  fi
  tree "$dir" \
    -o "$treestring"index.html \
    -H "https://cashoptimizer.pages.dev/$thisdirstring" \
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
##  --noreport \
# what is going on here?
# -o is location of the output file
# -H create HTML output using the parameter as path to tree.
#
# -I ignore list
# -P pattern match file inclusion list (not directories)
# unused:
# -L 1 - only on level deep
# -houtro "" - not sure what this does!
