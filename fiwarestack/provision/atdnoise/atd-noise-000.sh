curl localhost:4061/iot/devices -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
 {
"devices": [{
    "device_id": "atd-noise-000",
    "entity_name": "urn:ngsi-ld:atdnoise:atd-noise-000",
    "entity_type": "atdnoise",
    "timezone": "Europe/Madrid",
    "attributes": [
        {
            "object_id": "analog_in_1",
            "name": "mediaglobal",
            "type": "Number"
        },
        {
            "object_id": "analog_in_2",
            "name": "stdev",
            "type": "Number"
        },
        {
            "object_id": "digital_in_1",
            "name": "moda",
            "type": "Number"
        },
        {
            "object_id": "digital_in_2",
            "name": "minimo",
            "type": "Number"
        },
        {
            "object_id": "digital_in_3",
            "name": "maximo",
            "type": "Number"
        },
        {
            "object_id": "digital_in_4",
            "name": "pasos",
            "type": "Number"
        }
    ],
    "internal_attributes": {
        "lorawan": {
            "application_server": {
                "host": "eu1.cloud.thethings.network",
                "username": "atd-noise@ttn",
                "password": "NNSXS.W5UNCNFAQTJKSAJFH6L33VVMVURZCVQNHTHVM4A.H3JCJRXR667EXOJU5SMVRNL54FT2QP2U6U42QYEZNOURSO2DMDNQ",
                "provider": "TTN"
            },
            "dev_eui": "A8610A3039466C05",
            "app_eui": "70B3D57ED000EFDA",
            "application_id": "atd-noise@ttn",
            "application_key": "B6CECFBEE1C2F063E24623200729B4B3",
            "data_model": "application_server"
        }
    }
}]}
EOF
