curl localhost:4061/iot/devices -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
 {
"devices": [{
    "device_id": "atd-lw-211",
    "entity_name": "urn:ngsi-ld:cesensamb1:atd-lw-211",
    "entity_type": "cesensamb1",
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
            "object_id": "S2-Plu",
            "name": "pluviometer",
            "type": "Number"
        },
        {
            "object_id": "S3-H",
            "name": "humidity",
            "type": "Number"
        },
        {
            "object_id": "S3-P",
            "name": "pressure",
            "type": "Number"
        },
        {
            "object_id": "S3-T",
            "name": "temperature",
            "type": "Number"
        },
        {
            "object_id": "S4-R",
            "name": "radiometer",
            "type": "Number"
        },
        {
            "object_id": "S5-Dir",
            "name": "direction",
            "type": "Number"
        },
        {
            "object_id": "S5-Vel",
            "name": "velocity",
            "type": "Number"
        },
        {
            "object_id": "S5-VelMax",
            "name": "velocityMax",
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
            "dev_eui": "0000000006981419",
            "app_eui": "CCB3D5AAD0022FBB",
            "application_id": "atd-cesens@ttn",
            "application_key": "5B34FDC5C131ED709A57C593EC88661F",
            "data_model": "application_server"
        }
    }
}]}
EOF
