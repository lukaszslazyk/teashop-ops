:: Clone other repositories in their directories
cd frontend
del .gitkeep
git clone https://github.com/lukaszslazyk/teashop-frontend.git .

cd ..\backend
del .gitkeep
git clone https://github.com/lukaszslazyk/teashop-backend.git .

cd ..\cdn
del .gitkeep
git clone https://github.com/lukaszslazyk/teashop-cdn.git .

:: Setup docker environment
cd ..
docker-compose build
