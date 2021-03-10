FROM elixir:1.11.2
LABEL maintainer="Sergio Márquez <smarquezs@gmail.com>"

# Create and set home directory
ENV HOME /opt/app
WORKDIR $HOME

RUN  apt-get update \
    && curl -sL https://deb.nodesource.com/setup_15.x | bash \
    && apt-get install -y apt-utils \
    && apt-get install -y nodejs \
    && apt-get install -y build-essential 

COPY . .

EXPOSE 4000