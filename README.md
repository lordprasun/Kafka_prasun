# *Kafka tutorial* #

```shell script
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/lordprasun/Kafka_prasun.git
git push -u origin master
```

First create a virtual environment:
```shell script
apt-get install python-virtualenv
virtualenv /home/kafka/ --no-site-packages
```
    
Get required version of kafka from http://supergsego.com/apache/kafka

Terminal - A: Runs Zookeper server
```shell script
bin/zookeeper-server-start.sh config/zookeeper.properties
```

Terminal - B: Runs kafka server
```shell script
bin/kafka-server-start.sh config/server.properties
```

Terminal - C: Producer Console
Create Topic:
```shell script
 bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
 bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test2
 bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 2 --topic LJtest
```

List/Describe all Topic:
 ```shell script
 bin/kafka-topics.sh --list --zookeeper localhost:2181
 bin/kafka-topics.sh --describe --zookeeper localhost:2181 --topic test
```

Send Some message:
```shell script
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test
```   
 
Terminal - D: Consumer Console
```shell script
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test
```
  
Start Multiple Producer/Brokers

```text
1. Create config/server.properties files for each broker-list
2. Change the broker.id
3. Change the listeners port say increment by 1(PLAINTEXT://:9093)
4. Change log.dirs
```


Important Broker Configurations
```text
zookeper.connect
delete.topic.enable
log.retention.ms 
log.retention.bytes
```
