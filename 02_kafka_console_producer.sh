kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic myfirst_topic

kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic myfirst_topic --producer-property acks=all

kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic brand_new_topic
# >this topic do not exists
# [2020-08-23 22:52:29,301] WARN [Producer clientId=console-producer] Error while fetching metadata with correlation id 1 : {myfbrand_new_topic=LEADER_NOT_AVAILABLE} (org.apache.kafka.clients.NetworkClient)
# >hahahhaa

kafka-topics.sh --zookeeper localhost:2181 --list
# myfbrand_new_topic
# myfirst_topic :default topic created not recommended, always create topics before hand
