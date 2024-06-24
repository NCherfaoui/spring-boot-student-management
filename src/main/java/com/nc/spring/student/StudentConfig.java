package com.nc.spring.student;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.time.LocalDate;
import java.util.List;

@Configuration
public class StudentConfig {
    @Bean
    CommandLineRunner commandLineRunner(StudentRepository repository) {
        return args -> {
            Student John = new Student(

                    "John",
                    "john@example.com",
                    LocalDate.of(2000, 10, 5));
            Student Alex = new Student(

                    "Alex",
                    "alex@example.com",
                    LocalDate.of(2005, 10, 5));
            repository.saveAll(
                    List.of(John, Alex)
            );
        };
    }
}
