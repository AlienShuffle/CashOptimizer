tree -H '.' \
    -f \
    --noreport \
    --houtro "" \
    --dirsfirst \
    --charset utf-8 \
    --ignore-case \
    --timefmt '%d-%b-%Y %H:%M' \
    -I "index.html" \
    -T 'Downloads' \
    -s -D \
    -P "*.json|*.csv|*.html" \
    -o index.html
    # -L 1 - only on level deep