#find . -type d -print -exec sh -c 'echo hello world = "$0/xxx.html"' {} \;
#exit
# must be in the public folder when run (not good assumption, ugh.)
find . -type d -print -exec sh -c 'tree "$0" \
    -o "$0/index.html" \
    -H "." \
    -L 1 \
    --noreport \
    --houtro "" \
    --dirsfirst \
    --charset utf-8 \
    --ignore-case \
    --timefmt "%d-%b-%Y %H:%M" \
    -I "index.html" \
    -T "CashAnalyzerFiles" \
    -s -D \
    -P "*.json|*.csv|*.html" \
    ' {} \;

    # -L 1 - only on level deep