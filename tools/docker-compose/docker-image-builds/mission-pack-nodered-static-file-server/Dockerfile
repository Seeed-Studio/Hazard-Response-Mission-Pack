FROM openresty/openresty:1.21.4.1-0-alpine-fat

# add luarocks to install plugins
RUN apk add --no-cache luarocks

# install luafilesystem plugin
RUN luarocks install luafilesystem