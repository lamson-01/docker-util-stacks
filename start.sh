#!/bin/bash

#update maximum map count check for Elasticsearch
#https://www.elastic.co/guide/en/elasticsearch/reference/current/_maximum_map_count_check.html


sysctl -w vm.max_map_count=262144

docker compose up -d \
	opensearch \
	mysql \
	mongo \
	redis \
	memcached \
	rabbitmq \
	minio \
