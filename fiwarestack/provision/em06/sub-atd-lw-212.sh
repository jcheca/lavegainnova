# EnForma COMÚN
curl localhost:1026/v2/subscriptions -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
{
        "description": "Sub urn:ngsi-ld:cesensamb2:atd-lw-212",
        "subject": {
            "entities": [
            {
                "id": "urn:ngsi-ld:cesensamb2:atd-lw-212",
                "type": "cesensamb2"
            }
            ],
            "condition": {
                "attrs": [
                "battery","humidity_in","temp_in","uvi","rf"
                ]
            }
        },
        "notification": {
            "http": {
                "url": "http://quantumleap:8668/v2/notify"
            },
            "attrs": [
                "battery","humidity_in","temp_in","uvi","rf"
            ],
            "metadata": ["dateCreated", "dateModified"]
        },
        "throttling": 5
    }
EOF
