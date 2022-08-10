FROM node:18-alpine
RUN apk add --no-cache g++ make bash squashfs-tools
WORKDIR /app
COPY . .
RUN yarn install --production
RUN yarn add cross-env 7za
RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

# RUN yarn build:linux
