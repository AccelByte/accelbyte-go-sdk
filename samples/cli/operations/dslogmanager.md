## Go Extend SDK CLI Sample App Operation Index for Dslogmanager service.

### Operation `get_server_logs`
```sh
$ samples/cli/sample-apps Dslogmanager getServerLogs \
    --namespace 'string' \
    --podName 'string' \
    --logType 'string' \
    --offset 1 \
    --origin 'string' \
    > result.txt
```

### Operation `list_terminated_servers`
```sh
$ samples/cli/sample-apps Dslogmanager listTerminatedServers \
    --namespace 'string' \
    --deployment 'string' \
    --endDate 'string' \
    --gameMode 'string' \
    --limit 1 \
    --next 'string' \
    --partyId 'string' \
    --podName 'string' \
    --previous 'string' \
    --provider 'string' \
    --region 'string' \
    --sessionId 'string' \
    --source 'string' \
    --startDate 'string' \
    --status 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `download_server_logs`
```sh
$ samples/cli/sample-apps Dslogmanager downloadServerLogs \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `check_server_logs`
```sh
$ samples/cli/sample-apps Dslogmanager checkServerLogs \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `batch_download_server_logs`
```sh
$ samples/cli/sample-apps Dslogmanager batchDownloadServerLogs \
    --body '{"Downloads": [{}]}' \
    > result.txt
```

### Operation `list_metadata_servers`
```sh
$ samples/cli/sample-apps Dslogmanager listMetadataServers \
    --body '{"pod_names": ["string"]}' \
    > result.txt
```

### Operation `list_all_terminated_servers`
```sh
$ samples/cli/sample-apps Dslogmanager listAllTerminatedServers \
    --deployment 'string' \
    --endDate 'string' \
    --gameMode 'string' \
    --limit 1 \
    --namespace 'string' \
    --next 'string' \
    --partyId 'string' \
    --podName 'string' \
    --previous 'string' \
    --provider 'string' \
    --region 'string' \
    --sessionId 'string' \
    --startDate 'string' \
    --status 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ samples/cli/sample-apps Dslogmanager publicGetMessages \
    > result.txt
```

