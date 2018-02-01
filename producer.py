#pip install kafka-python
from kafka import KafkaProducer
import string
import random
import time
Host_Address = 'localhost'
Port = '9092'
Topic = 'test'
size=50
producer = KafkaProducer(bootstrap_servers=Host_Address+':'+Port)
for x in range(100):
    chars=string.ascii_uppercase + string.digits
    message = ''.join(random.choice(chars) for _ in range(size))
    producer.send(Topic, message)
    time.sleep(1)
    producer.flush()
