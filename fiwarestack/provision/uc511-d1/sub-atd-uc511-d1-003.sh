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
                "battery","valve1","valve2","pulse1","pulse2","action"
                ]
            }
        },
        "notification": {
            "http": {
                "url": "http://quantumleap:8668/v2/notify"
            },
            "attrs": [
                "battery","valve1","valve2","pulse1","pulse2","action"
            ],
            "metadata": ["dateCreated", "dateModified"]
        },
        "throttling": 5
    }
EOF
