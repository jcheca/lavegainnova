curl localhost:4061/iot/devices -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
 {
"devices": [{
    "device_id": "atd-uc511-d1-003",
    "entity_name": "urn:ngsi-ld:uc511d1:atd-uc511-d1-003",
    "entity_type": "uc511d1",
    "timezone": "Europe/Madrid",
    "attributes": [
        {
            "object_id": "battery",
            "name": "battery",
            "type": "Number"
        },
        {
            "object_id": "valve1",
            "name": "valve1",
            "type": "Number"
        },
        {
            "object_id": "valve1_pulse",
            "name": "pulse1",
            "type": "Number"
        },
        {
            "object_id": "valve2",
            "name": "valve2",
            "type": "Number"
        },
        {
            "object_id": "valve2_pulse",
            "name": "pulse2",
            "type": "Number"
        },
        {
            "object_id": "action",
            "name": "action",
            "type": "String"
        }
    ],
    "internal_attributes": {
        "lorawan": {
            "application_server": {
                "host": "eu1.cloud.thethings.network",
                "username": "atd-uc511-d1@ttn",
                "password": "NNSXS.7IOOXZYDNP6AL5JKXU7BNY6E3GAJMLHNKX5SBDY.VT63ONZSAKCDEZMLQRCXRSF5O7B5JHQUKZH62DLNFDI56Z2Z2M7Q",
                "provider": "TTN"
            },
            "dev_eui": "24E124414B104029",
            "app_eui": "24E124C0002A8701",
            "application_id": "atd-uc511-d1@ttn",
            "application_key": "D85845EFB8D3B1FD8563B7F74A007B08",
            "data_model": "application_server"
        }
    }
}]}
EOF
