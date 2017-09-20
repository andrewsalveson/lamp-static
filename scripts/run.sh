sudo docker run -ti \
  -p 5656:80 \
  -v /var/public:/var/www/html \
  --env NODE_ENV=development \
  --name $2 \
  $1/$2
