## Go Extend SDK CLI Sample App Operation Index for Dsartifact service.

### Operation `list_nodes_ip_address`
```sh
$ samples/cli/sample-apps Dsartifact listNodesIPAddress \
    --limit 1 \
    --next 'string' \
    --nodeIP 'string' \
    --previous 'string' \
    > result.txt
```

### Operation `delete_node_by_id`
```sh
$ samples/cli/sample-apps Dsartifact deleteNodeByID \
    --nodeIP 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `list_queue`
```sh
$ samples/cli/sample-apps Dsartifact listQueue \
    --limit 1 \
    --next 'string' \
    --previous 'string' \
    --nodeIP 'string' \
    > result.txt
```

### Operation `get_active_queue`
```sh
$ samples/cli/sample-apps Dsartifact getActiveQueue \
    --nodeIP 'string' \
    > result.txt
```

### Operation `set_active_queue`
```sh
$ samples/cli/sample-apps Dsartifact setActiveQueue \
    --nodeIP 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `delete_active_queue`
```sh
$ samples/cli/sample-apps Dsartifact deleteActiveQueue \
    --nodeIP 'string' \
    > result.txt
```

### Operation `report_failed_upload`
```sh
$ samples/cli/sample-apps Dsartifact reportFailedUpload \
    --nodeIP 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `delete_queue`
```sh
$ samples/cli/sample-apps Dsartifact deleteQueue \
    --namespace 'string' \
    --nodeIP 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `list_all_active_queue`
```sh
$ samples/cli/sample-apps Dsartifact listAllActiveQueue \
    --namespace 'string' \
    --limit 1 \
    --next 'string' \
    --nodeIP 'string' \
    --podName 'string' \
    --previous 'string' \
    > result.txt
```

### Operation `list_all_queue`
```sh
$ samples/cli/sample-apps Dsartifact listAllQueue \
    --namespace 'string' \
    --excludeUploading false \
    --limit 1 \
    --next 'string' \
    --nodeIP 'string' \
    --order 'string' \
    --podName 'string' \
    --previous 'string' \
    > result.txt
```

### Operation `list_terminated_servers_with_namespace`
```sh
$ samples/cli/sample-apps Dsartifact listTerminatedServersWithNamespace \
    --namespace 'string' \
    --deployment 'string' \
    --gameMode 'string' \
    --limit 1 \
    --next 'string' \
    --partyId 'string' \
    --podName 'string' \
    --previous 'string' \
    --provider 'string' \
    --region 'string' \
    --sessionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `download_server_artifacts`
```sh
$ samples/cli/sample-apps Dsartifact downloadServerArtifacts \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `check_server_artifact`
```sh
$ samples/cli/sample-apps Dsartifact checkServerArtifact \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `list_terminated_servers`
```sh
$ samples/cli/sample-apps Dsartifact listTerminatedServers \
    --deployment 'string' \
    --gameMode 'string' \
    --limit 1 \
    --next 'string' \
    --partyId 'string' \
    --podName 'string' \
    --previous 'string' \
    --provider 'string' \
    --region 'string' \
    --sessionId 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ samples/cli/sample-apps Dsartifact publicGetMessages \
    > result.txt
```

