#!/bin/bash
sed -i -e "s/^version: .*$/version: 1.1.`date '+%y.%j'`\r/" -e "s/^issued: .*$/issued: `date '+%Y-%m-%d'`\r/" coldp/metadata.yaml

rm -f Gelechiidae.zip
cd coldp
zip -r ../Gelechiidae.zip *
cd ..