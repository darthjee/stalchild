FROM darthjee/ruby_270:1.2.0

USER root

RUN apt-get update && apt-get install rename

USER app
