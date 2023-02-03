## CRUD Spring Data JPA | Docker
Dans ce repo, nous allons voir un exemple CRUD Spring Boot Data JPA et Docker.

### Qu'est-ce que Docker ?
**Docker** est un moteur de conteneur qui permet de regrouper, d'expédier et de distribuer des applications sur des serveurs distribués.

### Technologies
---
- Java 11
- Spring Boot 2.7.7
- Spring Data JPA
- Lombok
- MapStruct
- Maven 3+
- PostgreSQL

### Exécuter et tester le projet
---
- Docker PostgreSQL : `docker pull postgres:latest` puis `docker run --name pgsql-dev -e POSTGRES_PASSWORD=root -p 5432:5432 postgres`
- Dans `pom.xml` veuillez modifier la valeur du host de `<postgresql.url>` dans la balise `<profile></profile>` selon votre configuration local. Cette valeur soit `localhost` soit l'`addresse IP` de votre machine.
- Dans le répertoire du projet, pour générer le fichier JAR, exécutez : `mvn clean install -DskipTests=true`
- Créer l'image Docker : `docker build --tag=crud-jpa-docker:latest .`
- Exécuter le conteneur à partir d'image `docker run -p 8081:8081 crud-jpa-docker:latest`
- Importer dans Postman la collection `socle_jpa.postman_collection.json` pour tester les APIs
- Vous pouver utiliser aussi l'url du Swagger ou importer l'url Swagger dans Postman
	- Les descriptions OpenAPI seront disponibles au chemin `/v3/api-docs` par défaut : http://localhost:8081/v3/api-docs/ et/ou http://localhost:8081/swagger-ui/index.html