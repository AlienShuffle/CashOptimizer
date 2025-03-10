#
# Must be in the public folder when run (not good assumption)
#
# create the most up to date Bank List.
if [ -d Banks ]; then
  (
    cd Banks
    find * -prune -type d -print >/tmp/bank-list.txt
    [ -f "bank-list.txt" ] || touch -list.txt
    if diff bank-list.txt /tmp/bank-list.txt; then
      true
      #echo bank-list.txt unchanged.
    else
      cat /tmp/bank-list.txt >bank-list.txt
      echo bank-list.txt updated.
    fi
    rm /tmp/bank-list.txt
  )
  for dir in Banks/*/history; do
    (
      #echo "cd into $dir"
      cd "$dir"
      find * -prune -type d -print >/tmp/acct-list.txt
      [ -f "acct-list.txt" ] || touch acct-list.txt
      if diff acct-list.txt /tmp/acct-list.txt; then
        true
        #echo "$dir/acct-list.txt unchanged."
      else
        cat /tmp/acct-list.txt >acct-list.txt
        echo "$dir/acct-list.txt updated."
      fi
      rm /tmp/acct-list.txt
    )
  done
fi
#
# create the various index.html files.
#
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
    -P "*.json|*.csv|*.html|*.txt"
done
