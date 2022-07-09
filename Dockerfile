FROM elixir:1.8


RUN mix local.rebar --force
RUN mix local.hex --force
#
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get update -y
RUN apt-get install inotify-tools -y
RUN apt-get install nodejs -y
