#!/bin/bash

url="https://pokeapi.co/api/v2/pokemon/$1"
id=$(curl $url | jq .id)
if [ -z "$id" ]
then
        echo "No se encontró un Pokemon con ese nombre :C"
else
	nombre=$(curl $url | jq .name)
	peso=$(curl $url | jq .weight)
	altura=$(curl $url | jq .height)
	order=$(curl $url | jq .order)
	echo "ID: $id Name: $nombre Weight: $peso Height: $altura Order: $order"
fi
exit
