package com.example.refugeapproject;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.example.refugeapproject.membership.UserDetailsServiceImpl;
import com.example.refugeapproject.membership.UserRepo;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)
public class ConfigSecurity{

    @Autowired
	DataSource dataSource;

	@Autowired
	UserRepo UserRepository;

	@Value("${spring.security.debug:false}")
    boolean securityDebug;
	
	@Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }
     
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
     
	
	@Bean
	public AuthenticationManager authenticationManager(HttpSecurity http, BCryptPasswordEncoder passwordEncoder, UserDetailsService userDetailsService) 
	throws Exception {
		return http.getSharedObject(AuthenticationManagerBuilder.class)
		.userDetailsService(userDetailsService)
		.passwordEncoder(passwordEncoder)
		.and()
		.build();
	}
	
	@Bean
	public WebSecurityCustomizer webSecurityCustomizer() {
		return (web) -> web.debug(securityDebug)
		  .ignoring()
		  .antMatchers("/static/**","/css/**", "/js/**");
	}
	
	
	@Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
		http.csrf().disable()
		.authorizeRequests()
		.antMatchers("/*").permitAll()
		.antMatchers("/admin/user/**","/admin/adminPortal").hasRole("ADMIN")
		.antMatchers("/publish/**","/admin/**").hasAnyRole("EDITOR","ADMIN")
		.and()
		.formLogin().loginPage("/login").permitAll().defaultSuccessUrl("/admin/secure")
		.and()
		.logout().permitAll().logoutSuccessUrl("/")
		.invalidateHttpSession(true)
		.clearAuthentication(true);
	
		return http.build();
	}
    
}
