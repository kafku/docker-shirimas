# docker-shrimas
Dockerfile for [shirimas](https://github.com/oshikiri/shirimas)

## Usage
Create channel named _shiritori_ for your slack team.
Add `Bots` integration and check API token.

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




