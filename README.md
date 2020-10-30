# Teashop Ops

Operational scripts for Teashop application, including setting up the complete application environment.

## Teashop application environment

The application environment consists of the following containers:
- Reverse proxy - nginx server directing client requests to appropriate server
- Frontend - User Interface application written in React
- Backend - API application in .NET Core serving data and functionality to Frontend
- Database - SQL Express database server

## Usage 

To setup the complete application environment, first put Frontend and Backend code into their respective folders in this project directory. Then run the following command:

```
docker-compose build
```

To run the application:

```
docker-compose up
```

You can combine above commands:

```
docker-compose up --build
```

## Notes
- SQL Express database server takes some time to initialize after its container is up. Due to this fact, backend application might fail on startup as it tries to connect to the database and fails. Due to the usage of `restart: always` option in docker-compose file, the backend container will automatically restart on fail  until the database is fully initialized (usually it takes only one restart).
