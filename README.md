# docker-shrimas
Dockerfile for [oshikiri/shirimas](https://github.com/oshikiri/shirimas).

## Usage
[Docker image](https://registry.hub.docker.com/u/kafku/docker-shirimas/) is available on [Docker Hub Registry](https://registry.hub.docker.com/).
Create channel named _shiritori_ for your slack team.
Add *Bots* integration and get API token.

```sh
docker run -d --name=shirimas \
    -e SLACKTOKEN=API_token_for_Bots_integration \
	kafku/docker-shirimas:latest
```

## Build image
```sh
git clone https://github.com/kafku/docker-shirimas.git
docker build -t kafku/docker-shirimas docker-shirimas/
```




