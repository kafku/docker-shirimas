# docker-shrimas
Dockerfile for [oshikiri/shirimas](https://github.com/oshikiri/shirimas).

## Usage
[Docker image](https://registry.hub.docker.com/u/kafku/docker-shirimas/) is available on [Docker Hub Registry](https://registry.hub.docker.com/).
Create channel named _shiritori_ on your Slack team.
Access to [Slack WEB API page](https://api.slack.com/web) and create API token for your team.

```sh
docker run -d --name=shirimas \
    -e SLACKTOKEN=Slack_API_token \
	-v /slack_shirimas:/shirimas/src/db \
	kafku/docker-shirimas:latest
```

## Build image
```sh
git clone https://github.com/kafku/docker-shirimas.git
docker build -t kafku/docker-shirimas docker-shirimas/
```

## Contribution
Please open a new [GitHub issue](https://github.com/kafku/docker-shirimas) for bug reports 
and new features.




