for i in *
do
    if [ -f $i/MFP2-$i-EDGAR.json ]
    then
        echo $i already processed.
        continue
    fi
    if [ ! -f $i/$i-EDGAR.json ]
    then 
        #echo $i missing.
        continue
    fi
    echo mv $i/$i-EDGAR.json $i/MFP2-$i-EDGAR.json
    mv $i/$i-EDGAR.json $i/MFP2-$i-EDGAR.json
done
