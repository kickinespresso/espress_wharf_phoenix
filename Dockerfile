FROM kickinespresso/espresso_wharf:latest

MAINTAINER KickinEspresso <contact@kickinespreso.com>

# Other stuff
RUN mkdir /expresso_wharf_phoenix
WORKDIR /expresso_wharf_phoenix
COPY mix.lock /expresso_wharf_phoenix/mix.lock
COPY mix.exs /expresso_wharf_phoenix/mix.exs
RUN mix deps.get
#RUN npm install
COPY . /expresso_wharf_phoenix
RUN cd assets && npm install && node node_modules/brunch/bin/brunch build

EXPOSE 4000


# ONBUILD ENV MIX_ENV prod
# ONBUILD COPY mix.* /usr/src/app/
# ONBUILD COPY config /usr/src/app/
# ONBUILD RUN mix do deps.get, deps.compile
