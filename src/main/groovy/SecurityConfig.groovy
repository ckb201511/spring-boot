//import demo4.Reader
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder
//import org.springframework.security.config.annotation.web.builders.HttpSecurity
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.password.NoOpPasswordEncoder
//import org.springframework.security.crypto.password.PasswordEncoder
//
//@Configuration
//class SecurityConfig extends WebSecurityConfigurerAdapter {
//
//
//
//    @Override
//    void configure(HttpSecurity http) throws Exception {
//
//        http.authorizeRequests()
//                .antMatchers("/", "/home").permitAll()
//                .anyRequest().authenticated()
//                .and()
//                .formLogin()
//                .loginPage("/login").permitAll()
//                .failureUrl("/login?error=true")
//        http.csrf().disable()
//    }
//
//    void configure(AuthenticationManagerBuilder auth) throws Exception {
//
//        auth.userDetailsService({username -> (username != null && username.equals("admin")) ? Reader.newInstance("admin","123") : null}).passwordEncoder(passwordEncoder())
//    }
//
//    @Bean
//     PasswordEncoder passwordEncoder() {
//        NoOpPasswordEncoder.getInstance()
//    }
//
//}
