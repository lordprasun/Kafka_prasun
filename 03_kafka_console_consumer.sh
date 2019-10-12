kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic myfirst_topic

kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic myfirst_topic --from-beginning

kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic myfirst_topic --group my_firstconsumer_group

kafka-consumer-groups.sh --bootstrap-server localhost:9092 --list
# console-consumer-19897
# console-consumer-51044 :- default groups created when not specified explicitly 
# my_firstconsumer_group

kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my_firstconsumer_group
# Consumer group 'my_firstconsumer_group' has no active members.

# TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
# myfirst_topic   2          1               1               0               -               -               -
# myfirst_topic   1          3               3               0               -               -               -
# myfirst_topic   0          2               2               0               -               -               -

kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my_firstconsumer_group --reset-offsets --to-earliest --topic myfirst_topic --dry-run
# TOPIC                          PARTITION  NEW-OFFSET     
# myfirst_topic                  2          0              
# myfirst_topic                  1          0              
# myfirst_topic                  0          0   