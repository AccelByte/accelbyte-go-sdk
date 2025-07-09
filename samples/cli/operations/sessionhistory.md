## Go Extend SDK CLI Sample App Operation Index for Sessionhistory service.

### Operation `create_xray_ticket_observability`
```sh
$ samples/cli/sample-apps Sessionhistory createXrayTicketObservability \
    --namespace 'string' \
    --body '{"action": "string", "activeAllianceRule": {}, "activeMatchingRule": [{}], "function": "string", "gameMode": "string", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 1, "matchID": "string", "namespace": "string", "remainingPlayersPerTicket": [1], "remainingTickets": 1, "sessionTickID": "string", "tickID": 1, "ticketID": "string", "timeToMatchSec": 3.14, "timestamp": "2000-01-01T12:34:56Z", "unbackfillReason": "string", "unmatchReason": "string"}' \
    > result.txt
```

### Operation `create_xray_bulk_ticket_observability`
```sh
$ samples/cli/sample-apps Sessionhistory createXrayBulkTicketObservability \
    --namespace 'string' \
    --body '{"ticketObservabilities": [{}]}' \
    > result.txt
```

