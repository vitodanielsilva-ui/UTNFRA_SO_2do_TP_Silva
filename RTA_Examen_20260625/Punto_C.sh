#!/bin/bash
cd ~/UTN-FRA_SO_Examenes/202406/docker/
docker build -t web1-silva .
docker tag web1-silva vitodanielsilvaui/web1-silva
docker push vitodanielsilvaui/web1-silva
docker run -d -p 8080:80 vitodanielsilvaui/web1-silva
