# Membuat image dengan nama item-app dan memiliki tag v1 
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 ghcr.io/agungbesti/item-app:v1

# login ke github packages dengan password yang telah tersimpan di env
echo $PASSWORD_GITHUB_REGISTRY | docker login -u agungbesti --password-stdin

# mengunggah image ke registry docker hub
docker push ghcr.io/agungbesti/item-app:v1