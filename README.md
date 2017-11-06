# Docker Recon Image
Para usar o projeto precisamos ter instalado o **Docker** , qualquer duvida pode ser tirado na **wiki** do repositório.

## Clonando o repositório
Podemos clonar e construir a imagem.
```sh
git clone https://github.com/greenmind-sec/recon
```

Podemos ir até o projeto baixado.
```sh
cd recon
```

## Contruindo imagem
Nesse caso a minha imagem se chamara **recon**.
```sh
sudo docker build -t recon .
```

[![asciicast](https://asciinema.org/a/146170.png)](https://asciinema.org/a/146170)

## Usando a imagem
Depois de criar a nossa imagem **recon** podemos subir ela e destruir sempre que precisar.
```sh
docker run -ti --rm recon bash
```

E assim toda vez que sair da imagem ela é destruida.
