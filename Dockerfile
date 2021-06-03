FROM nginx:stable-alpine

WORKDIR /usr/src/api
COPY . ./
RUN ls
RUN apk add npm

RUN npm prune --production

CMD ["node", "dist/main.js"]

EXPOSE 80
