# Spring Boot Student Management

This is a simple Spring Boot application for managing student data. The application provides basic CRUD operations on student entities.

## Technologies Used

- Java
- Spring Boot
- Maven
- MySQL

## Running the Application

To run the application and its required MySQL database, follow these steps:

1. Clone the repository:
```bash
git clone https://github.com/NCherfaoui/spring-boot-student-management.git
```
2. Navigate into the directory:
```bash
cd spring-boot-student-management
```
3. Start the MySQL database: 
```bash
docker-compose up -d
```
4. Once the database is up and running, start the Spring Boot application:
````bash
mvn spring-boot:run
````
5. Access the application at [`http://localhost:8080`](http://localhost:8080)

This setup ensures that the MySQL database is running before the Spring Boot application starts.

## API Endpoints

- `GET /api/v1/student`: Fetch all students
- `POST /api/v1/student`: Add a new student
- `PUT /api/v1/student/{studentId}`: Update an existing student by ID
- `DELETE /api/v1/student/{studentId}`: Delete a student by ID

## Docker

A Dockerfile is included for containerizing the application and a docker-compose file for running the MySQL database.

To run the database independently, use the following command:

```bash
docker-compose up
```