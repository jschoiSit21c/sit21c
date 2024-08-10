package com.sit21c.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception{
		http
			.csrf().disable() // CSRF 보호 비활성화
			.authorizeRequests()
				.antMatchers("/company/openWriteCeo", "/company/writeCeo")
					.hasRole("SA")
				.anyRequest()
					.permitAll()
				.and()
				.formLogin()
					.loginPage("/login/loginForm")
					.defaultSuccessUrl("/")
					.failureUrl("/login/loginForm?error=true")
					.permitAll()
				.and()
				.logout()
					.permitAll();
		return http.build();
					
			
			
	}
}
