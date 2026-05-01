## Usage
### Prerequisites
- Docker
- Java (version 21)
- psql (Postgres CLI tool)

### Using the Docker Container
To build and start the container run:
```{sh}
docker-compose up -d
```

To initialize the database (only needed on first run):
```{sh}
psql -h localhost -U postgres -d mlb_pitching -f test/schema.sql
psql -h localhost -U postgres -d mlb_pitching -f test/seed.sql
```
To shutdown the container run:
```{sh}
docker-compose down [-v]
```
The -v option will delete the container and the volume (THIS WILL DELETE THE DATABASE DATA)

### Compiling and running the CLI Tool
To compile the tool run:
```{sh}
./gradlew build
```

This will create a jar file that can be run from the command line with java. To do this run:
```{sh}
java -jar build/libs/mlb-pitching-<version>.jar
```