curl localhost:4061/iot/devices -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
 {
"devices": [{
    "device_id": "atd-lw-212",
    "entity_name": "urn:ngsi-ld:cesensamb2:atd-lw-212",
    "entity_type": "cesensamb2",
    "timezone": "Europe/Madrid",
    "attributes": [
        {
            "object_id": "S1-BatV",
            "name": "battery",
            "type": "Number"
        },
        {
            "object_id": "S1-H_in",
            "name": "humidity_in",
            "type": "Number"
        },
        {
            "object_id": "S1-T_in",
            "name": "temp_in",
            "type": "Number"
        },
        {
            "object_id": "S2-UVi",
            "name": "uvi",
            "type": "Number"
        },
        {
            "object_id": "S3-RF",
            "name": "rf",
            "type": "Number"
        }
    ],
    "internal_attributes": {
        "lorawan": {
            "application_server": {
                "host": "eu1.cloud.thethings.network",
                "username": "atd-cesens@ttn",
                "password": "NNSXS.UJCY2FHHHETBO3Z6VRZGB3L2DTYA5ZAMDHT33KQ.YUAAAHAU6TRYINCF63N4A7TY527RJDPL32WM7YDKR5UZDL5HHY2A",
                "provider": "TTN"
            },
            "dev_eui": "000000001EDCE5B9",
            "app_eui": "CCB3D5AAD0022FBB",
            "application_id": "atd-cesens@ttn",
            "application_key": "31D5447145CC6BF7F212A26178DA9528",
            "data_model": "application_server"
        }
    }
}]}
EOF
