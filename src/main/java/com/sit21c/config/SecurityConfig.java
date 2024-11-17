package com.sit21c.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig {

	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception{
		http.csrf(csrf -> csrf.disable())
	    .formLogin(login -> login
	        .loginPage("/login/loginForm")
	        .defaultSuccessUrl("/")
	        .failureUrl("/login/loginForm?error=true"))
	    .logout(logout -> logout.logoutSuccessUrl("/"));
    return http.build();
					
			
			
	}
}
