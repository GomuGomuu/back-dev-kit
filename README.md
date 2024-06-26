## This repository is a development kit for the backend of the project

## Requirements
- Docker and docker-compose
- Make file

## Installation
- Make .env file following the example.env file and fill the variables
- Make sure you have the necessary permissions to run the make file
- Run the command `make fire-up` to start the containers

## Commands

For the first time you just need to run
    
```bash
make fire-up
```
This will clone all the necessary repositories and start the containers.


For the next times you can just run
```bash
make up
```

For to update the repositories you can run
```bash
make update
```


To stop the containers you can run
```bash
make down
```

To rebuild the containers you can run
```bash
make rebuild
```

To rebuild the containers and start them you can run
```bash
make rebuild
```

___

## The projects related to this repository are:
-  [Marry](https://github.com/GomuGomuu/merry) Api backend
- [Olop Price Scraping](https://github.com/GomuGomuu/olop-price-scraping) Crowler microservice that monitors the OPTCG exchange rate on ALOP