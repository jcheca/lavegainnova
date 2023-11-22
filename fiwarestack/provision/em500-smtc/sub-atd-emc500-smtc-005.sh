# EnForma COMÚN
curl localhost:1026/v2/subscriptions -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
{
        "description": "Sub urn:ngsi-ld:em500smtc:atd-em500-smtc-005 ",
        "subject": {
            "entities": [
            {
                "idPattern": "urn:ngsi-ld:em500smtc:atd-em500-smtc-005",
                "type": "em500smtc"
            }
            ],
            "condition": {
                "attrs": [
                "temperature","humidity","battery","ec"
                ]
            }
        },
        "notification": {
            "http": {
                "url": "http://quantumleap:8668/v2/notify"
            },
            "attrs": [
            "temperature","humidity","battery","ec"
            ],
            "metadata": ["dateCreated", "dateModified"]
        },
        "throttling": 5
    }
EOF
