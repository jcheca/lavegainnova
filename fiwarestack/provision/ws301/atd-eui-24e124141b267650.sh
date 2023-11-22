curl localhost:4061/iot/devices -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
 {
"devices": [{
    "device_id": "eui-24e124141b267650",
    "entity_name": "urn:ngsi-ld:ws301:eui-24e124141b267650",
    "entity_type": "ws301",
    "timezone": "Europe/Madrid",
    "attributes": [
        {
            "object_id": "battery",
            "name": "battery",
            "type": "Number"
        },
        {
            "object_id": "state",
            "name": "state",
            "type": "Number"
        },
        {
            "object_id": "install",
            "name": "install",
            "type": "Number"
        }
    ],
    "internal_attributes": {
        "lorawan": {
            "application_server": {
                "host": "eu1.cloud.thethings.network",
                "username": "atd-ws301@ttn",
                "password": "NNSXS.CRDS5GP6ICXO5S3GSUVHJ3LYTOCLGFNCNIT5DCA.T7GUY5BSYECEH4U4F447WDY3GTZ22PEVL5XF4MW2JQZSUE4TRORQ",
                "provider": "TTN"
            },
            "dev_eui": "24E124141B267650",
            "app_eui": "0234565433221234",
            "application_id": "atd-ws301@ttn",
            "application_key": "2E47BA92121A0B187EE6D356159006B4",
            "data_model": "application_server"
        }
    }
}]}
EOF
