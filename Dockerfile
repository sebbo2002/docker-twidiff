FROM ruby:alpine
RUN apk add --update build-base make git bash && \
	gem install t && \
	mkdir -p "/app/twidiff/results" && \
	cd "/app/twidiff/" && \
	wget "https://raw.githubusercontent.com/ryanseys/twidiff/master/twidiff.sh" && \
	chmod +x "./twidiff.sh" && \
	adduser -SD "twidiff" && \
	chown -R twidiff:nogroup "./results" && \
	ls -lah

USER twidiff

RUN git config --global user.email "me@localhost" && \
	git config --global user.name "My humble self"

WORKDIR /app/twidiff
CMD [ "./twidiff.sh" ]