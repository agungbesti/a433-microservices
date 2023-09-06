# memulai membuat image dengan base image node tag 14-alpine
FROM node:14-alpine

# Working directory
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama 'item-db' sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi 8080
EXPOSE 8080

# Menjalankan perintah npm start untuk memulai sebuah aplikasi
CMD npm start