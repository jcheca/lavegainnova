# EnForma COMÚN
curl localhost:1026/v2/subscriptions -s -S --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'fiware-service: lavega' --header 'fiware-servicepath: /poc' -d @- <<EOF
{
        "description": "Sub urn:ngsi-ld:atdnoise:atd-noise-000",
        "subject": {
            "entities": [
            {
                "idPattern": "urn:ngsi-ld:atdnoise:atd-noise-000",
                "type": "atdnoise"
            }
            ],
            "condition": {
                "attrs": [
                    "maximo","minimo","mediaglobal","moda","pasos","stdev"
                ]
            }
        },
        "notification": {
            "http": {
                "url": "http://quantumleap:8668/v2/notify"
            },
            "attrs": [
                    "maximo","minimo","mediaglobal","moda","pasos","stdev"
            ],
            "metadata": ["dateCreated", "dateModified"]
        },
        "throttling": 5
    }
EOF
