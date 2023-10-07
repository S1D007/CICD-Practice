FROM node:12.2.0-alpine

WORKDIR /app

# Copy only necessary files
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

RUN npm run test

EXPOSE 8000

CMD ["node", "app.js"]
