# *Kafka Configure Linux* #

Get required version of kafka from https://kafka.apache.org/downloads
We are using kafka_2.12-2.0.0 

edit and source .profile
```
export PATH="$PATH:/home/prasun/kafka_2.12-2.0.0/bin"
```

(optional) Update Properties
dataDir in config/zookeeper.properties
log.dirs,num.partitions in config/server.properties

Terminal - A: Runs Zookeper server
```shell script
bin/zookeeper-server-start.sh config/zookeeper.properties
```

Terminal - B: Runs kafka server
```shell script
bin/kafka-server-start.sh config/server.properties
```
All Set!!!
Zookeeper should be running on port 2181
Kafka should be running on port 9092

We work in Terminal C:
