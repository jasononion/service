package com.service.service.controller;


import org.springframework.beans.factory.annotation.Autowired;
import io.servicecomb.provider.pojo.RpcSchema;

@javax.annotation.Generated(value = "io.swagger.codegen.languages.CsePojoDemoCodegen", date = "2017-11-23T03:26:44.484Z")

@RpcSchema(schemaId = "service")
public class ServiceImpl implements Service{

    @Autowired
    private ServiceDelegate serviceDelegate;


    public String helloworld(String name) {

        return serviceDelegate.helloworld(name);
    }

}
