$versionid=get-date -UFormat "%y.%j (%d %b %Y)"
$releasedate=get-date -UFormat "%Y-%m-%d"
$versionshort=get-date -UFormat "1.1.%y.%j"
sed -i -e "s/^version: .*$/version: 1.1.$versionid\r/" -e "s/^issued: .*$/issued: $releasedate\r/" coldp/metadata.yaml

erase Gelechiidae.zip
cd coldp
7z a ../Gelechiidae.zip *
cd ..