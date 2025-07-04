<#--
    Licensed to the Apache Software Foundation (ASF) under one or more
    contributor license agreements.  See the NOTICE file distributed with
    this work for additional information regarding copyright ownership.
    The ASF licenses this file to You under the Apache License, Version 2.0
    (the "License"); you may not use this file except in compliance with
    the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
-->

version: "3.9"
services:
<#if modules.consumers?has_content && modules.consumers?size != 0>
<#list modules.consumers as service>
    ${service.name}:
    <#if service.docker_service.image?has_content>
        image: ${service.docker_service.image}
    </#if>
    <#if service.docker_service.networks?has_content>
        networks: ${service.docker_service.networks}
    </#if>
    <#if service.docker_service.network_mode?has_content>
        network_mode: ${service.docker_service.network_mode}
    </#if>
    <#if service.docker_service.hostname?has_content>
        hostname: ${service.docker_service.hostname}
    </#if>
    <#if service.docker_service.restart??>
        restart: ${service.docker_service.restart}
    </#if>
    <#if service.docker_service.build?has_content>
        build: ${service.docker_service.build}
    </#if>
    <#if service.docker_service.container_name?has_content>
        container_name: ${service.docker_service.container_name}
    </#if>
    <#if service.docker_service.volumes??>
        volumes:
        <#list service.docker_service.volumes as volume>
            - ${volume}
        </#list>
    </#if>
    <#if service.docker_service.environment??>
        environment:
        <#list service.docker_service.environment as key,value>
            ${key}: ${value}
        </#list>
    </#if>
    <#if service.docker_service.ports??>
        ports:
        <#list service.docker_service.ports as port>
            - ${port}
        </#list>
    </#if>
    <#if service.docker_service.depends_on??>
        depends_on:
        <#list service.docker_service.depends_on?keys as key>
            ${key}:
                condition: ${service.docker_service.depends_on[key].condition}
        </#list>
    </#if>
    <#if service.docker_service.healthcheck??>
        healthcheck:
        <#list service.docker_service.healthcheck as key,value>
            ${key}: ${value}
        </#list>
    </#if>
</#list>
</#if>
<#if modules.providers?has_content && modules.providers?size != 0>
<#list modules.providers as service>
    ${service.name}:
    <#if service.docker_service.image?has_content>
        image: ${service.docker_service.image}
    </#if>
    <#if service.docker_service.networks?has_content>
        networks: ${service.docker_service.networks}
    </#if>
    <#if service.docker_service.network_mode?has_content>
        network_mode: ${service.docker_service.network_mode}
    </#if>
    <#if service.docker_service.hostname?has_content>
        hostname: ${service.docker_service.hostname}
    </#if>
    <#if service.docker_service.restart??>
        restart: ${service.docker_service.restart}
    </#if>
    <#if service.docker_service.build?has_content>
        build: ${service.docker_service.build}
    </#if>
    <#if service.docker_service.container_name?has_content>
        container_name: ${service.docker_service.container_name}
    </#if>
    <#if service.docker_service.volumes??>
        volumes:
        <#list service.docker_service.volumes as volume>
            - ${volume}
        </#list>
    </#if>
    <#if service.docker_service.environment??>
        environment:
        <#list service.docker_service.environment as key,value>
            ${key}: ${value}
        </#list>
    </#if>
    <#if service.docker_service.ports??>
        ports:
        <#list service.docker_service.ports as port>
            - ${port}
        </#list>
    </#if>
    <#if service.docker_service.depends_on??>
        depends_on:
        <#list service.docker_service.depends_on?keys as key>
            ${key}:
                condition: ${service.docker_service.depends_on[key].condition}
        </#list>
    </#if>
    <#if service.docker_service.healthcheck??>
        healthcheck:
        <#list service.docker_service.healthcheck as key,value>
            ${key}: ${value}
        </#list>
    </#if>
</#list>
</#if>
<#if modules.infrastructures?has_content && modules.infrastructures?size != 0>
<#list modules.infrastructures as service>
    ${service.name}:
    <#if service.docker_service.image?has_content>
        image: ${service.docker_service.image}
    </#if>
    <#if service.docker_service.networks?has_content>
        networks: ${service.docker_service.networks}
    </#if>
    <#if service.docker_service.network_mode?has_content>
        network_mode: ${service.docker_service.network_mode}
    </#if>
    <#if service.docker_service.hostname?has_content>
        hostname: ${service.docker_service.hostname}
    </#if>
    <#if service.docker_service.restart??>
        restart: ${service.docker_service.restart}
    </#if>
    <#if service.docker_service.build?has_content>
        build: ${service.docker_service.build}
    </#if>
    <#if service.docker_service.container_name?has_content>
        container_name: ${service.docker_service.container_name}
    </#if>
    <#if service.docker_service.volumes??>
        volumes:
        <#list service.docker_service.volumes as volume>
            - ${volume}
        </#list>
    </#if>
    <#if service.docker_service.environment??>
        environment:
        <#list service.docker_service.environment as key,value>
            ${key}: ${value}
        </#list>
    </#if>
    <#if service.docker_service.ports??>
        ports:
        <#list service.docker_service.ports as port>
            - ${port}
        </#list>
    </#if>
    <#if service.docker_service.depends_on??>
        depends_on:
        <#list service.docker_service.depends_on?keys as key>
            ${key}:
                condition: ${service.docker_service.depends_on[key].condition}
        </#list>
    </#if>
    <#if service.docker_service.healthcheck??>
        healthcheck:
        <#list service.docker_service.healthcheck as key,value>
            ${key}: ${value}
        </#list>
    </#if>
</#list>
</#if>
