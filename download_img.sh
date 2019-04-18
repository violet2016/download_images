mkdir $1
pushd $1
total=`echo $2 | rev | cut -d/ -f1 | rev | cut -d'.' -f1`
echo "total pages $total"
prefix=${2%/*.jpg}
echo "$prefix"
curl -O $prefix/[1-$total].jpg
popd
zip -rq $1.zip $1 -x "*/\.DS_Store"
#rm -rf $1
