# 
curl -X POST \
  http://localhost:1026/v2/entities/urn:ngsi-ld:uc511d1:atd-uc511-d1-003/attrs \
  -H 'Content-Type: application/json' \
  -H 'Fiware-Service: lavega' \
  -H 'Fiware-ServicePath: /poc' \
  -H 'cache-control: no-cache' \
  -d ' {
       "action": {
            "type": "String",
            "value": "w17-ff1da0003c0000"
        }
 }        
 '
