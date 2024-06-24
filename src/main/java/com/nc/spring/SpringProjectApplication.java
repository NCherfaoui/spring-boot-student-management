package com.nc.spring;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;



@SpringBootApplication

public class SpringProjectApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringProjectApplication.class, args);
    }

/*	@GetMapping("/hello")
	public List<String> hello() {
		return List.of("Hello", "World");*/

}