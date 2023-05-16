package com.ebikes.website.config;

import com.okta.spring.boot.oauth.Okta;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class OktaOauth2ConfigManager extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        // secure Rest api endpoint /orders for authorized customer (by unique email address)
        http.authorizeRequests().antMatchers("/api/orders/**").authenticated().and().
                oauth2ResourceServer().jwt();

        // Rest cross-origin resource-sharing filter
        http.cors();

        // response message for unauthorized http GET request
        Okta.configureResourceServer401ResponseBody(http);

        // disable cross-site request forgery protection (CSRF)
        http.csrf().disable();
    }
}
