curl localhost:4061/iot/devices -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
 {
"devices": [{
    "device_id": "atd-em500-smtc-001",
    "entity_name": "urn:ngsi-ld:em500smtc:atd-em500-smtc-001",
    "entity_type": "em500smtc",
    "timezone": "Europe/Madrid",
    "attributes": [
        {
            "object_id": "battery",
            "name": "battery",
            "type": "Number"
        },
        {
            "object_id": "temperature",
            "name": "temperature",
            "type": "Number"
        },
        {
            "object_id": "humidity",
            "name": "humidity",
            "type": "Number"
        },
        {
            "object_id": "ec",
            "name": "ec",
            "type": "Number"
        }
    ],
    "internal_attributes": {
        "lorawan": {
            "application_server": {
                "host": "eu1.cloud.thethings.network",
                "username": "atd-em500-smtc@ttn",
                "password": "NNSXS.DFZNC3GFTQZ7GDTAAUIJGCDQQNQ3YRW3DWF75DI.VVRYS2U4WB24ICE3IKKCN67YCBN6U3K2GVJ6YZWJFHQ2W2ANDX3Q",
                "provider": "TTN"
            },
            "dev_eui": "24E124126B421449",
            "app_eui": "24E124C0002A0001",
            "application_id": "atd-em500-smtc@ttn",
            "application_key": "DB614755B6CE5085DDBD843C63488B8B",
            "data_model": "application_server"
        }
    }
}]}
EOF
