FROM darthjee/ruby_331:1.0.2

USER root

RUN apt-get update && apt-get install rename

USER app
