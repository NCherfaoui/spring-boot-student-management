# Utilisation d'une image de base plus légère
FROM maven:eclipse-temurin

LABEL authors="nassim"

# Création d'un répertoire pour l'application
WORKDIR /app

# Installation de dockerize
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# Copie du fichier pom.xml et téléchargement des dépendances pour améliorer la mise en cache
COPY pom.xml .
RUN mvn dependency:go-offline

# Copie du reste de l'application
COPY src ./src

# Construction de l'application
RUN mvn clean install -DskipTests

# Copie du jar dans le conteneur
RUN mv target/*.jar app.jar

# Spécification d'un utilisateur non root
RUN useradd -m myuser
USER myuser

ENTRYPOINT ["dockerize", "-wait", "tcp://db:3306", "-timeout", "30s", "java","-jar","app.jar"]
EXPOSE 8080