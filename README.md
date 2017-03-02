[![](https://images.microbadger.com/badges/image/khezen/elastalert.svg)](https://hub.docker.com/r/khezen/elastalert/)

# Supported tags and respective `Dockerfile` links

* `latest` [(Dockerfile)](https://github.com/Khezen/docker-elastalert/Dockerfile)

# What is Elastalert?
[ElastAlert](https://github.com/Yelp/elastalert) is a simple framework for alerting on anomalies, spikes, or other patterns of interest from data in Elasticsearch.


# How To Use

## docker engine

```
docker run -d khezen/elastalert:latest   
```

## docker-compose

### [File Descriptors and MMap](https://www.elastic.co/guide/en/elasticsearch/guide/current/_file_descriptors_and_mmap.html)

run the following command on your host to make elasticsearch run properly:
```
sysctl -w vm.max_map_count=262144
```
You can set it permanently by modifying `vm.max_map_count` setting in your `/etc/sysctl.conf`.

### docker-compose.yml
```
version: '2'
services:    
    elastalert:
        image: khezen/elastalert
        environment:
            ELASTIC_PWD: changeme
            ELASTICSEARCH_HOST: localhost
            ELASTICSEARCH_PORT: 9200
        volumes:
            - /etc/elastalert:/etc/elastalert
            - /usr/share/elastalert/rules:/usr/share/elastalert/rules
        network_mode: bridge
        restart: unless-stopped

```
or

```
version: '2'
services:
    elasticsearch:
        image: khezen/elasticsearch:2
        environment:
            ELASTIC_PWD: changeme
            KIBANA_PWD: brucewayne
            BEATS_PWD: jdilla
        volumes:
            - /data/elasticsearch:/usr/share/elasticsearch/data
            - /etc/elasticsearch:/usr/share/elasticsearch/config
        ports:
             - "9200:9200"
             - "9300:9300"
        network_mode: bridge
        restart: unless-stopped

    kibana:
        links:
            - elasticsearch:elasticsearch-0
        image: khezen/kibana:4
        environment:
            KIBANA_PWD: brucewayne
            ELASTICSEARCH_HOST: elasticsearch-0
            ELASTICSEARCH_PORT: 9200
        volumes:
            - /etc/kibana:/etc/kibana
        ports:
             - "5601:5601"
        network_mode: bridge
        restart: unless-stopped

    elastalert:
        links:
            - elasticsearch:elasticsearch-0
        image: khezen/elastalert
        environment:
            ELASTIC_PWD: changeme
            ELASTICSEARCH_HOST: elasticsearch-0
            ELASTICSEARCH_PORT: 9200
        volumes:
            - /etc/elastalert:/etc/elastalert
            - /usr/share/elastalert/rules:/usr/share/elastalert/rules
        network_mode: bridge
        restart: unless-stopped

```
# Environment Variables

##### ELASTIC_PWD | `changeme`
password for elasticsearch built-in user `elastic`.

##### ELASTICSEARCH_HOST | `elasticsearch`
Elasticsearch hostname.

##### ELASTICSEARCH_PORT | `9200`
Elasticsearch port.

# Configure Elastalert

Configuration file is located in `/etc/elastalert/elastalert.yml` if you follow the same volume mapping as in docker-compose examples above.

You can find help with elastalert configuration [here](https://elastalert.readthedocs.io/en/latest/index.html).

# Share alert rules from host

You can share rules from host to the container by adding them to `/usr/share/elastalert/rules` if you follow the same volume mapping as in docker-compose examples above.

# User Feedback
## Issues
If you have any problems with or questions about this image, please ask for help through a [GitHub issue](https://github.com/Khezen/docker-elastalert/issues).

# Credit

[Yelp/ElastAlert](https://github.com/Yelp/elastalert)
