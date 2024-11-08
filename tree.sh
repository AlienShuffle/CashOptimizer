#find . -type d -print -exec sh -c 'echo hello world = "$0/xxx.html"' {} \;
#exit
# must be in the public folder when run (not good assumption, ugh.)
find * -type d -exec sh -c 'tree "$0" \
    -o "$0/index.html" \
    -H "https://cashoptimizer.pages.dev/$0" \
    -L 1 \
    --noreport \
    --houtro "" \
    --dirsfirst \
    --charset utf-8 \
    --ignore-case \
    --timefmt "%d-%b-%Y %H:%M" \
    -I "index.html" \
    -T "$0" \
    -h -D \
    -P "*.json|*.csv|*.html" \
    ' {} \;

    # -L 1 - only on level deep