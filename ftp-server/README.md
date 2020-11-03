Servidor FTP
#Utilizado para fazer o upload dos arquivos do servidor Web!

Passos

1. Criar a imagem a partir do Dockerfile

  cd web-server/ftp-server
  
 docker build -t <nome_imagem> .
  
2. Criar o container a partir da imagem criada no passo 1:

docker run -it -d --name ftp-server -p 20:20 -p 21:21 -v /root/web-server/site:/var/www/html -v /root/web-server/ftp-server/proftpd.conf:/etc/proftpd/proftpd.conf <nome_imagem>

3. Configurar a senha do usuario admweb:

docker exec -it ftp-server passwd admweb

4. Iniciar o serviço FTP

docker exec -it ftp-server /etc/init.d/proftpd start

5. Conectar-se ao servidor FTP

docker exec -it ftp-server ftp localhost

Irá pedir o usuario e senha. Coloque admweb como usuário e a senha do Passo 3

Para verificar o conteúdo basta dar o comando "ls"
