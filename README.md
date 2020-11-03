# web-server

Aula de Administração de Serviços Web - Ifal campus Rio Largo

#Imagem feita a partir do Debian:Stretch e instalado o apache2

#Executar um container a partir da imagem:

docker build -t <nome_imagem> .

docker run -it -d --name webserver -p 80:80 -v /root/web-server/site:/var/www/html <nome_imagem>
