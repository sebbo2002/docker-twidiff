FROM ruby:alpine
RUN apk add --update build-base make git && \
	gem install t && \
	mkdir -p "/app/twidiff/results" \
	cd "/app/twidiff/" \
	wget "https://raw.githubusercontent.com/ryanseys/twidiff/master/twidiff.sh" "/app/twidiff/twidiff.sh" && \
	chmod +x "/app/twidiff/twidiff.sh" && \
	adduser -SD "twidiff" && \
	chown -R twidiff:nogroup "/app/twidiff/results"

USER twidiff

RUN git config --global user.email "me@localhost" \
	git config --global user.name "My humble self"

WORKDIR /app/twidiff
CMD [ "/app/twidiff/twidiff.sh" ]