/*
package com.laiqd.config;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

//@Configuration
//@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
*/
/*    @Resource
    private CustomUserServiceImpl customUserService;
    @Resource
    private LoginSuccessHandler loginSuccessHandler;*//*



    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .authorizeRequests()
                    .antMatchers("/resources*/
/**").permitAll()
                    .anyRequest().authenticated()
                .and()
                    .formLogin()
                    .loginPage("/loginPage")
                    .loginProcessingUrl("/login")
                    .defaultSuccessUrl("/home")
//                    .successHandler(loginSuccessHandler)
                    .permitAll()
                .and()
                    .logout()
                    .permitAll();
    }

    */
/*@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(customUserService)
                .passwordEncoder(new Md5PasswordEncoder());
    }*//*

}
*/
