# dockerized twidiff.sh
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Status](https://git-badges.sebbo.net/80/master/build)](https://git.sebbo.net/docker/twidiff/pipelines)

Just a very simple docker container for [twidiff.sh](https://github.com/ryanseys/twidiff)


### Usage

```bash
docker run --rm \
	-v /my/results:/app/twidiff/results \
	-v /my/config.yml:/home/twidiff/.trc \
	sebbo2002/twidiff
```
