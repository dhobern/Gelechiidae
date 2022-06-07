$versionid=get-date -UFormat "%y.%j (%d %b %Y)"
$releasedate=get-date -UFormat "%Y-%m-%d"
sed -i -e "s/^version: .*$/version: 1.1.$versionid\r/" -e "s/^released: .*$/released: $releasedate\r/" coldp/metadata.yaml

erase Gelechiidae.zip
cd coldp
7z a ../Gelechiidae.zip *
cd ..