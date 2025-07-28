FROM node:18-alpine
WORKDIR /app
COPY . .

# download dependencies
RUN yarn install --production && yarn cache clean

# run container
ENTRYPOINT ["node"]
CMD ["src/index.js"]

EXPOSE 3000
