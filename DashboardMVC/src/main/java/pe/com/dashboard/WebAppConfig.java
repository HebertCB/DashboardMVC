/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.dashboard;

/**
 *
 * @author davidmp
 */

import java.util.Locale;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;

import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

@Configuration
@ComponentScan("pe.com.dashboard")
@EnableWebMvc

public class WebAppConfig extends WebMvcConfigurerAdapter{
 
	
	@Bean
        public UrlBasedViewResolver tilesViewResolver(){
            UrlBasedViewResolver resolver = new UrlBasedViewResolver();
            resolver.setViewClass(TilesView.class);
            return resolver;
        }
    
        @Bean
        public TilesConfigurer tilesConfigurer(){
            TilesConfigurer tconfig = new TilesConfigurer();
            tconfig.setDefinitions(new String[]{"/WEB-INF/tiles/tiles.xml"});
            return tconfig;
        }
        
        @Bean
	public UrlBasedViewResolver setupViewResolver() {
		UrlBasedViewResolver resolver = new UrlBasedViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setViewClass(JstlView.class);
		return resolver;
	}
        /*
	@Bean
	public MessageSource messageSource() {
	    ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
	    messageSource.setBasename("messages");
	    return messageSource;
	}        
        */   

        @Override
        public void addResourceHandlers(final ResourceHandlerRegistry registry) {
            registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
            registry.addResourceHandler("/webjars/**").addResourceLocations("/webjars/");
        }     
        
        @Bean
        public ReloadableResourceBundleMessageSource messageSource(){
            ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
            messageSource.setBasename("classpath:messages");
            messageSource.setDefaultEncoding("UTF-8");
            return messageSource;
        }
        
        @Bean
        public CookieLocaleResolver localeResolver(){
            CookieLocaleResolver localeResolver = new CookieLocaleResolver();
            localeResolver.setDefaultLocale(Locale.ENGLISH);
            localeResolver.setCookieName("my-locale-cookie");
            localeResolver.setCookieMaxAge(3600);
            return localeResolver;
        }

        @Bean
        public LocaleChangeInterceptor localeInterceptor(){
            LocaleChangeInterceptor interceptor = new LocaleChangeInterceptor();
            interceptor.setParamName("lang");
            return interceptor;
        }

        @Override
        public void addInterceptors(InterceptorRegistry registry) {
            registry.addInterceptor(localeInterceptor());
        }    

}
