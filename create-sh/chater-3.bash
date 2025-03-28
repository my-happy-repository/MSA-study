
#!/usr/bin/env bash

mkdir microservices
cd microservices

spring init --type=gradle-project \
--boot-version=3.3.0 \
--build=gradle \
--java-version=21 \
--packaging=jar \
--name=product-service \
--package-name=se.magnus.microservices.core.product \
--groupId=se.magnus.microservices.core.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-service

spring init --type=gradle-project \
--boot-version=3.3.0 \
--build=gradle \
--java-version=21 \
--packaging=jar \
--name=review-service \
--package-name=se.magnus.microservices.core.review \
--groupId=se.magnus.microservices.core.review \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
review-service

spring init --type=gradle-project \
--boot-version=3.3.0 \
--build=gradle \
--java-version=21 \
--packaging=jar \
--name=recommendation-service \
--package-name=se.magnus.microservices.core.recommendation \
--groupId=se.magnus.microservices.core.recommendation \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
recommendation-service

spring init --type=gradle-project \
--boot-version=3.3.0 \
--build=gradle \
--java-version=21 \
--packaging=jar \
--name=product-composite-service \
--package-name=se.magnus.microservices.composite.product \
--groupId=se.magnus.microservices.composite.product \
--dependencies=actuator,webflux \
--version=1.0.0-SNAPSHOT \
product-composite-service

cd ..
