FROM ruby:alpine
RUN apk add --update build-base make && \
	gem install t && \
	mkdir -p "/app/twidiff/results" \
	cd "/app/twidiff/" \
	wget "https://raw.githubusercontent.com/ryanseys/twidiff/master/twidiff.sh" && \
	chmod +x "/app/twidiff/twidiff.sh" && \
	adduser --system --disabled-password "twidiff" && \
	chown -R twidiff:nogroup "/app/twidiff/results"

RUN git config --global user.email "me@localhost" \
	git config --global user.name "My humble self"

WORKDIR /app/twidiff
CMD [ "/app/twidiff/twidiff.sh" ]