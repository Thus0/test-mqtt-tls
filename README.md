# test MQTTS / MQTT-TLS

* author: Thus0
* last modified: 2022-01-30 01:37

# architecture

```
 MQTTS sensor  --- [operator_net] ------- router-mqtts (NAT) ------- [inter_net] ------- MQTTS server
                    192.168.22.x        .254              .254        192.168.21.x 
```

