# Link do DockerHub:
https://hub.docker.com/r/ostrowski2000/lab4_etap2 lub docker pull ostrowski2000/lab4_etap2

# Użyte polecenia:

docker init
? What application platform does your project use? PHP with Apache
? What version of PHP do you want to use? latest
? Please enter the relative directory (with a leading .) for your app: ./
? What port do you want to use to access your app? 9000

touch index.html
code index.html
docker build -t auto .
docker run -p 9000:80 auto

Serwer działa bez modyfikacji pliku Dockerfile

code Dockerfile

Dokonano modyfikacji pliku Dockerfile: ustawiono Ubuntu jako obraz bazowy, następnie zainstalowano najnowszą wersję Apache oraz uruchomiono serwer

docker build -t zad2 .
docker run -p 9000:80 --name zad2 zad2

Serwer działa również po modyfikacji pliku Dockerfile

docker tag zad2 ostrowski2000/lab4_etap2
docker push ostrowski2000/lab4_etap2