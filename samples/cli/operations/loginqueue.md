## Go Extend SDK CLI Sample App Operation Index for Loginqueue service.

### Operation `admin_get_configuration`
```sh
$ samples/cli/sample-apps Loginqueue adminGetConfiguration \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_update_configuration`
```sh
$ samples/cli/sample-apps Loginqueue adminUpdateConfiguration \
    --namespace 'string' \
    --body '{"enabled": false, "maxConcurrency": 1, "maxLoginRate": 1, "minActivationPeriodInSecond": 1, "playerPollingTimeInSecond": 1, "playerReconnectGracePeriodInSecond": 1, "queueReconnectGracePeriodInSecond": 1, "safetyMarginPercentage": 1}' \
    > result.txt
```

### Operation `admin_get_status`
```sh
$ samples/cli/sample-apps Loginqueue adminGetStatus \
    --namespace 'string' \
    > result.txt
```

### Operation `refresh_ticket`
```sh
$ samples/cli/sample-apps Loginqueue refreshTicket \
    --namespace 'string' \
    > result.txt
```

### Operation `cancel_ticket`
```sh
$ samples/cli/sample-apps Loginqueue cancelTicket \
    --namespace 'string' \
    > result.txt
```

