FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 3000

RUN apt update -y &&\
    apk add --no-cache bash curl &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]
