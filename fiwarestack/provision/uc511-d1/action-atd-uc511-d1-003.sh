# EnForma COMÚN
curl localhost:1026/v2/subscriptions -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
{
        "description": "Sub urn:ngsi-ld:uc511d1:atd-uc511-d1-003",
        "subject": {
            "entities": [
            {
                "idPattern": "urn:ngsi-ld:uc511d1:atd-uc511-d1-003",
                "type": "uc511d1"
            }
            ],
            "condition": {
                "attrs": [
                "action"
                ]
            }
        },
        "notification": {
            "http": {
                "url": "http://ucoiot-nodered:1880/001/hiba/rabanales/uc511-d1"
            },
            "attrs": [
                "action"
            ],
            "metadata": ["dateCreated", "dateModified"]
        },
        "throttling": 5
    }
EOF
