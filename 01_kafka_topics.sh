# Create a Topic
kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic myfirst_topic --create --partitions 3 --replication-factor 2
# Error while executing topic command : Replication factor: 2 larger than available brokers: 1.

kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic myfirst_topic --create --partitions 3 --replication-factor 1
# Created topic "myfirst_topic".

kafka-topics.sh --zookeeper 127.0.0.1:2181 --topic mysecond_topic --create --partitions 6 --replication-factor 1
kafka-topics.sh --zookeeper localhost:2181 --list
# myfirst_topic
# mysecond_topic

kafka-topics.sh --zookeeper localhost:2181 --topic myfirst_topic --describe
# Topic:myfirst_topic	PartitionCount:3	ReplicationFactor:1	Configs:
# 	Topic: myfirst_topic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
# 	Topic: myfirst_topic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
# 	Topic: myfirst_topic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0

kafka-topics.sh --zookeeper localhost:2181 --topic mysecond_topic --delete
# Topic mysecond_topic is marked for deletion.
# Note: This will have no impact if delete.topic.enable is not set to true.



