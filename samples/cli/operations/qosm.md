## Go Extend SDK CLI Sample App Operation Index for Qosm service.

### Operation `update_server_config`
```sh
$ samples/cli/sample-apps Qosm updateServerConfig \
    --namespace 'string' \
    --region 'string' \
    --body '{"status": "string"}' \
    > result.txt
```

### Operation `delete_server`
```sh
$ samples/cli/sample-apps Qosm deleteServer \
    --region 'string' \
    > result.txt
```

### Operation `set_server_alias`
```sh
$ samples/cli/sample-apps Qosm setServerAlias \
    --region 'string' \
    --body '{"alias": "string"}' \
    > result.txt
```

### Operation `list_server_per_namespace`
```sh
$ samples/cli/sample-apps Qosm listServerPerNamespace \
    --namespace 'string' \
    --status 'string' \
    > result.txt
```

### Operation `list_server`
```sh
$ samples/cli/sample-apps Qosm listServer \
    > result.txt
```

### Operation `heartbeat`
```sh
$ samples/cli/sample-apps Qosm heartbeat \
    --body '{"ip": "string", "port": 1, "region": "string"}' \
    > result.txt
```

