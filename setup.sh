# Clone other repositories in their folders
cd frontend
rm .gitkeep
git clone https://github.com/lukaszslazyk/teashop-frontend.git .

cd ../backend
rm .gitkeep
git clone https://github.com/lukaszslazyk/teashop-backend.git .

cd ../cdn
rm .gitkeep
git clone https://github.com/lukaszslazyk/teashop-cdn.git .

# Setup docker environment
cd ..
docker-compose build
