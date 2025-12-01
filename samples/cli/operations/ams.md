## Go Extend SDK CLI Sample App Operation Index for Ams service.

### Operation `auth_check`
```sh
$ samples/cli/sample-apps Ams authCheck \
    > result.txt
```

### Operation `portal_health_check`
```sh
$ samples/cli/sample-apps Ams portalHealthCheck \
    > result.txt
```

### Operation `admin_account_get`
```sh
$ samples/cli/sample-apps Ams adminAccountGet \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_account_create`
```sh
$ samples/cli/sample-apps Ams adminAccountCreate \
    --namespace 'string' \
    --body '{"name": "string"}' \
    > result.txt
```

### Operation `admin_account_link_token_get`
```sh
$ samples/cli/sample-apps Ams adminAccountLinkTokenGet \
    --namespace 'string' \
    > result.txt
```

### Operation `admin_account_link`
```sh
$ samples/cli/sample-apps Ams adminAccountLink \
    --namespace 'string' \
    --body '{"token": "string"}' \
    > result.txt
```

### Operation `artifact_get`
```sh
$ samples/cli/sample-apps Ams artifactGet \
    --namespace 'string' \
    --artifactType 'string' \
    --count 1 \
    --endDate 'string' \
    --fleetID 'string' \
    --imageID 'string' \
    --maxSize 1 \
    --minSize 1 \
    --offset 1 \
    --region 'string' \
    --serverId 'string' \
    --sortBy 'string' \
    --sortDirection 'asc' \
    --startDate 'string' \
    --status 'string' \
    > result.txt
```

### Operation `artifact_bulk_delete`
```sh
$ samples/cli/sample-apps Ams artifactBulkDelete \
    --namespace 'string' \
    --artifactType 'string' \
    --fleetId 'string' \
    --uploadedBefore '2000-01-01' \
    > result.txt
```

### Operation `artifact_usage_get`
```sh
$ samples/cli/sample-apps Ams artifactUsageGet \
    --namespace 'string' \
    > result.txt
```

### Operation `artifact_delete`
```sh
$ samples/cli/sample-apps Ams artifactDelete \
    --artifactID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `artifact_get_url`
```sh
$ samples/cli/sample-apps Ams artifactGetURL \
    --artifactID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `development_server_configuration_list`
```sh
$ samples/cli/sample-apps Ams developmentServerConfigurationList \
    --namespace 'string' \
    --count 1 \
    --imageId 'string' \
    --name 'string' \
    --offset 1 \
    --sortBy 'created_at' \
    --sortDirection 'asc' \
    > result.txt
```

### Operation `development_server_configuration_create`
```sh
$ samples/cli/sample-apps Ams developmentServerConfigurationCreate \
    --namespace 'string' \
    --body '{"commandLineArguments": "string", "expiresAt": "2000-01-01T12:34:56Z", "imageId": "string", "name": "string"}' \
    > result.txt
```

### Operation `development_server_configuration_get`
```sh
$ samples/cli/sample-apps Ams developmentServerConfigurationGet \
    --developmentServerConfigID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `development_server_configuration_delete`
```sh
$ samples/cli/sample-apps Ams developmentServerConfigurationDelete \
    --developmentServerConfigID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `development_server_configuration_patch`
```sh
$ samples/cli/sample-apps Ams developmentServerConfigurationPatch \
    --developmentServerConfigID 'string' \
    --namespace 'string' \
    --body '{"commandLineArguments": "string", "expiresAt": "2000-01-01T12:34:56Z"}' \
    > result.txt
```

### Operation `fleet_list`
```sh
$ samples/cli/sample-apps Ams fleetList \
    --namespace 'string' \
    --active false \
    --count 1 \
    --name 'string' \
    --offset 1 \
    --region 'string' \
    --sortBy 'active' \
    --sortDirection 'asc' \
    > result.txt
```

### Operation `fleet_create`
```sh
$ samples/cli/sample-apps Ams fleetCreate \
    --namespace 'string' \
    --body '{"active": false, "claimKeys": ["string"], "dsHostConfiguration": {}, "fallbackFleet": "string", "hibernateAfterPeriod": "string", "imageDeploymentProfile": {}, "name": "string", "onDemand": false, "regions": [{}], "samplingRules": {}}' \
    > result.txt
```

### Operation `bulk_fleet_delete`
```sh
$ samples/cli/sample-apps Ams bulkFleetDelete \
    --namespace 'string' \
    --body '{"fleetIds": ["string"]}' \
    > result.txt
```

### Operation `fleet_get`
```sh
$ samples/cli/sample-apps Ams fleetGet \
    --fleetID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `fleet_update`
```sh
$ samples/cli/sample-apps Ams fleetUpdate \
    --fleetID 'string' \
    --namespace 'string' \
    --body '{"active": false, "claimKeys": ["string"], "dsHostConfiguration": {}, "fallbackFleet": "string", "hibernateAfterPeriod": "string", "imageDeploymentProfile": {}, "name": "string", "onDemand": false, "regions": [{}], "samplingRules": {}}' \
    > result.txt
```

### Operation `fleet_delete`
```sh
$ samples/cli/sample-apps Ams fleetDelete \
    --fleetID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `fleet_artifact_sampling_rules_get`
```sh
$ samples/cli/sample-apps Ams fleetArtifactSamplingRulesGet \
    --fleetID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `fleet_artifact_sampling_rules_set`
```sh
$ samples/cli/sample-apps Ams fleetArtifactSamplingRulesSet \
    --fleetID 'string' \
    --namespace 'string' \
    --body '{"coredumps": {}, "logs": {}}' \
    > result.txt
```

### Operation `fleet_servers`
```sh
$ samples/cli/sample-apps Ams fleetServers \
    --fleetID 'string' \
    --namespace 'string' \
    --count 1 \
    --offset 1 \
    --region 'string' \
    --serverId 'string' \
    --sortBy 'string' \
    --sortDirection 'asc' \
    --status 'claimed' \
    > result.txt
```

### Operation `fleet_server_history`
```sh
$ samples/cli/sample-apps Ams fleetServerHistory \
    --fleetID 'string' \
    --namespace 'string' \
    --count 1 \
    --offset 1 \
    --reason 'string' \
    --region 'string' \
    --serverId 'string' \
    --sortDirection 'string' \
    --status 'string' \
    > result.txt
```

### Operation `image_list`
```sh
$ samples/cli/sample-apps Ams imageList \
    --namespace 'string' \
    --count 1 \
    --inUse 'string' \
    --isProtected false \
    --name 'string' \
    --offset 1 \
    --sortBy 'string' \
    --sortDirection 'string' \
    --status 'string' \
    --tag 'string' \
    --targetArchitecture 'string' \
    > result.txt
```

### Operation `images_storage`
```sh
$ samples/cli/sample-apps Ams imagesStorage \
    --namespace 'string' \
    > result.txt
```

### Operation `image_get`
```sh
$ samples/cli/sample-apps Ams imageGet \
    --imageID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `image_mark_for_deletion`
```sh
$ samples/cli/sample-apps Ams imageMarkForDeletion \
    --imageID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `image_patch`
```sh
$ samples/cli/sample-apps Ams imagePatch \
    --imageID 'string' \
    --namespace 'string' \
    --body '{"addedTags": ["string"], "isProtected": false, "name": "string", "removedTags": ["string"]}' \
    > result.txt
```

### Operation `image_unmark_for_deletion`
```sh
$ samples/cli/sample-apps Ams imageUnmarkForDeletion \
    --imageID 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `qo_s_regions_get`
```sh
$ samples/cli/sample-apps Ams qoSRegionsGet \
    --namespace 'string' \
    --status 'string' \
    > result.txt
```

### Operation `qo_s_regions_update`
```sh
$ samples/cli/sample-apps Ams qoSRegionsUpdate \
    --namespace 'string' \
    --region 'string' \
    --body '{"status": "string"}' \
    > result.txt
```

### Operation `info_regions`
```sh
$ samples/cli/sample-apps Ams infoRegions \
    --namespace 'string' \
    > result.txt
```

### Operation `fleet_server_info`
```sh
$ samples/cli/sample-apps Ams fleetServerInfo \
    --namespace 'string' \
    --serverID 'string' \
    > result.txt
```

### Operation `fleet_server_connection_info`
```sh
$ samples/cli/sample-apps Ams fleetServerConnectionInfo \
    --namespace 'string' \
    --serverID 'string' \
    > result.txt
```

### Operation `server_history`
```sh
$ samples/cli/sample-apps Ams serverHistory \
    --namespace 'string' \
    --serverID 'string' \
    > result.txt
```

### Operation `info_supported_instances`
```sh
$ samples/cli/sample-apps Ams infoSupportedInstances \
    --namespace 'string' \
    > result.txt
```

### Operation `account_get`
```sh
$ samples/cli/sample-apps Ams accountGet \
    --namespace 'string' \
    > result.txt
```

### Operation `fleet_claim_by_id`
```sh
$ samples/cli/sample-apps Ams fleetClaimByID \
    --fleetID 'string' \
    --namespace 'string' \
    --body '{"region": "string", "sessionId": "string"}' \
    > result.txt
```

### Operation `local_watchdog_connect`
```sh
$ samples/cli/sample-apps Ams localWatchdogConnect \
    --namespace 'string' \
    --watchdogID 'string' \
    > result.txt
```

### Operation `fleet_claim_by_keys`
```sh
$ samples/cli/sample-apps Ams fleetClaimByKeys \
    --namespace 'string' \
    --body '{"claimKeys": ["string"], "regions": ["string"], "sessionId": "string"}' \
    > result.txt
```

### Operation `watchdog_connect`
```sh
$ samples/cli/sample-apps Ams watchdogConnect \
    --namespace 'string' \
    --watchdogID 'string' \
    > result.txt
```

### Operation `upload_url_get`
```sh
$ samples/cli/sample-apps Ams uploadURLGet \
    > result.txt
```

### Operation `func1`
```sh
$ samples/cli/sample-apps Ams func1 \
    > result.txt
```

### Operation `basic_health_check`
```sh
$ samples/cli/sample-apps Ams basicHealthCheck \
    > result.txt
```

