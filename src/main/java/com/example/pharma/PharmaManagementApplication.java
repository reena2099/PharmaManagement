package com.example.pharma;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan
public class PharmaManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(PharmaManagementApplication.class, args);
	}

}
