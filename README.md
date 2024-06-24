# Spring Boot Student Management

This is a simple Spring Boot application for managing student data. The application provides basic CRUD operations on student entities.

## Technologies Used

- Java
- Spring Boot
- Maven
- MySQL

## Running the Application

1. Clone the repository: `git clone https://github.com/NCherfaoui/spring-boot-student-management.git`
2. Navigate into the directory: `cd spring-boot-student-management`
3. Run the application: `mvn spring-boot:run`

## API Endpoints

- `GET /api/v1/student`: Fetch all students
- `POST /api/v1/student`: Add a new student

## Docker

A Dockerfile is included for containerizing the application and a docker-compose file for running the MySQL database.

To run the database, use the following command:

```bash
docker-compose up