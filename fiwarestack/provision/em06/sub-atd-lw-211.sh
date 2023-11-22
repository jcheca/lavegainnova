# EnForma COMÚN
curl localhost:1026/v2/subscriptions -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
{
        "description": "Sub urn:ngsi-ld:cesensamb1:atd-lw-211",
        "subject": {
            "entities": [
            {
                "id": "urn:ngsi-ld:cesensamb1:atd-lw-211",
                "type": "cesensamb1"
            }
            ],
            "condition": {
                "attrs": [
                "battery","humidity_in","temp_in","pluviometer","humidity","pressure","temperature","radiometer","direction","velocity","velocityMax"
                ]
            }
        },
        "notification": {
            "http": {
                "url": "http://quantumleap:8668/v2/notify"
            },
            "attrs": [
                "battery","humidity_in","temp_in","pluviometer","humidity","pressure","temperature","radiometer","direction","velocity","velocityMax"
            ],
            "metadata": ["dateCreated", "dateModified"]
        },
        "throttling": 5
    }
EOF
