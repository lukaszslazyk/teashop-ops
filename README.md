# Teashop Ops

Operational scripts for Teashop, including setting up the complete application environment.

## Teashop application environment

The application environment consists of the following containers:
- Reverse proxy - nginx server directing client requests to appropriate server
- Frontend - User Interface application written in React
- Backend - API application in .NET Core serving data and functionality to Frontend
- Database - SQL Express database server
- CDN - nginx server for serving assets, such as images

## Usage 

To quickly setup the complete application environment, run the setup script (setup.bat for Windows, setup.sh for Linux). You can also manually put dependent repositories into their respective directories and run the following command:
```
docker-compose build
```

After setup, you can run the application with command:
```
docker-compose up
```

If you want to run the application in the background then use:
```
docker-compose up -d
```

## Notes

- SQL Express database server takes some time to initialize after its container is up. Due to this fact, the backend service might fail on startup as it tries to connect to the database which is not yet initialized. However, due to the usage of `restart: always` option in docker-compose file, the backend container automatically restarts on fail until the database is fully initialized so the application should be fully functional after a short while.
