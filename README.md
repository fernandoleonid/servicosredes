# Serviços de Redes 
Scripts criados para as aulas do curso redes de computadores do SENAI Jandira no de 2020

## criarDominio.sh
Script com objetivo de receber o nome do domínio, como argumento, cria uma nova zona no BIND9 e o banco de dados com configurações mínima.
- É necessário o arquivo db.modelo

## criarSite.sh
Script com objetivo de receber o nome do domínio, como argumento, e cria e ativa o site no APACHE2, também cria o arquivo index.html para teste do novo site.
- É necessário os arquivos conf.modelo e html.modelo

## criarFTP.sh
Script com objetivo de receber o nome do domínio, como argumento, e cria um usuário para utilização do FTP.

## criarDSF.sh
Script com objetido de receber como argumento um arquivo texto com um lista de dominios, e enviar, um a um, para os script criarDominio.sh, criarSite.hs e criarFTP.sh
