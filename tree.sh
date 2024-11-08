#find . -type d -print -exec sh -c 'echo hello world = "$0/xxx.html"' {} \;
#exit
# must be in the public folder when run (not good assumption, ugh.)
find * -type d -exec sh -c 'tree "$0" \
    -o "$0/index.html" \
    -H "https://cashoptimizer.pages.dev/$0" \
    -T "$0" \
    -L 1 \
    --noreport \
    --dirsfirst \
    --charset utf-8 \
    --ignore-case \
    --timefmt "%d-%b-%Y %H:%M" \
    -h -D \
    -I "index.html" \
    -P "*.json|*.csv|*.html" \
    ' {} \;
# what is going on here?
  # -o is location of the output file
  # -H create HTML output using the parameter as path to tree.
  #
  # -I ignore list
  # -P pattern match file inclusion list (not directories)
# unused:
  # -L 1 - only on level deep
  # -houtro "" - not sure what this does!