#/bin/bash

echo Vamos criar uma pasta para salvar os arquivos, digite um nome pra ela:
read pasta

mkdir $pasta
cd $pasta

echo Digite a url
read url

subfinder -d $url | httpx-toolkit -silent -threads 1000 | xargs -I@ sh -c 'findomain -t @ -q | httpx-toolkit -silent | anew | waybackurls | anew allurls'
