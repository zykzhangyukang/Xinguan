package com.coderman.api.system.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * Created by zhangyukang on 2019/12/1 22:09
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {

    @Bean
    public Docket docket(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.coderman"))
                .paths(PathSelectors.any())
                .build();
    }
    public ApiInfo apiInfo(){
        Contact contact=new Contact("zhangyukang","http://www.zykcoderman.xyz","3053161401@qq.com");
        return new ApiInfoBuilder()
                .title("SpringBoo+JWT+SpringDataJPA API文档")
                .description("小章鱼的API接口")
                .termsOfServiceUrl("")
                .version("1.0")
                .build();
    }
}
