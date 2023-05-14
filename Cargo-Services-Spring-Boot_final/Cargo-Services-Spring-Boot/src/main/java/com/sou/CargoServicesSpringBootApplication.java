package com.sou;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.sou")
public class CargoServicesSpringBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(CargoServicesSpringBootApplication.class, args);
	}

}
