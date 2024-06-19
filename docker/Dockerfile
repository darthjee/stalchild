FROM darthjee/ruby_331

USER root

RUN apt-get update && apt-get install rename
COPY source/* /home/app/
WORKDIR /home/app/
RUN mv /home/app/app /home/app/project

USER app
