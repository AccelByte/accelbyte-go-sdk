## Go Extend SDK CLI Sample App Operation Index for Dsmc service.

### Operation `list_config`
```sh
$ samples/cli/sample-apps Dsmc listConfig \
    > result.txt
```

### Operation `update_image`
```sh
$ samples/cli/sample-apps Dsmc updateImage \
    --body '{"artifactPath": "string", "coreDumpEnabled": false, "image": "string", "imageReplicationsMap": {"string": {}}, "namespace": "string", "patchVersion": "string", "persistent": false, "ulimitFileSize": 1, "version": "string"}' \
    > result.txt
```

### Operation `create_image`
```sh
$ samples/cli/sample-apps Dsmc createImage \
    --body '{"artifactPath": "string", "coreDumpEnabled": false, "dockerPath": "string", "image": "string", "imageSize": 1, "namespace": "string", "persistent": false, "ulimitFileSize": 1, "version": "string"}' \
    > result.txt
```

### Operation `create_image_patch`
```sh
$ samples/cli/sample-apps Dsmc createImagePatch \
    --body '{"artifactPath": "string", "coreDumpEnabled": false, "dockerPath": "string", "image": "string", "imageSize": 1, "namespace": "string", "patchVersion": "string", "persistent": false, "ulimitFileSize": 1, "uploaderFlag": "string", "version": "string"}' \
    > result.txt
```

### Operation `get_lowest_instance_spec`
```sh
$ samples/cli/sample-apps Dsmc getLowestInstanceSpec \
    > result.txt
```

### Operation `get_worker_config`
```sh
$ samples/cli/sample-apps Dsmc getWorkerConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_worker_config`
```sh
$ samples/cli/sample-apps Dsmc updateWorkerConfig \
    --namespace 'string' \
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": false}' \
    > result.txt
```

### Operation `create_worker_config`
```sh
$ samples/cli/sample-apps Dsmc createWorkerConfig \
    --namespace 'string' \
    --body '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": false}' \
    > result.txt
```

### Operation `get_config`
```sh
$ samples/cli/sample-apps Dsmc getConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `create_config`
```sh
$ samples/cli/sample-apps Dsmc createConfig \
    --namespace 'string' \
    --body '{"claim_timeout": 1, "creation_timeout": 1, "default_version": "string", "port": 1, "ports": {"string": 1}, "protocol": "string", "providers": ["string"], "session_timeout": 1, "unreachable_timeout": 1}' \
    > result.txt
```

### Operation `delete_config`
```sh
$ samples/cli/sample-apps Dsmc deleteConfig \
    --namespace 'string' \
    > result.txt
```

### Operation `update_config`
```sh
$ samples/cli/sample-apps Dsmc updateConfig \
    --namespace 'string' \
    --body '{"claim_timeout": 1, "creation_timeout": 1, "default_version": "string", "port": 1, "protocol": "string", "providers": ["string"], "session_timeout": 1, "unreachable_timeout": 1}' \
    > result.txt
```

### Operation `clear_cache`
```sh
$ samples/cli/sample-apps Dsmc clearCache \
    --namespace 'string' \
    > result.txt
```

### Operation `get_all_deployment`
```sh
$ samples/cli/sample-apps Dsmc getAllDeployment \
    --namespace 'string' \
    --name 'string' \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_deployment`
```sh
$ samples/cli/sample-apps Dsmc getDeployment \
    --deployment 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `create_deployment`
```sh
$ samples/cli/sample-apps Dsmc createDeployment \
    --deployment 'string' \
    --namespace 'string' \
    --body '{"allow_version_override": false, "buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "extendable_session": false, "game_version": "string", "max_count": 1, "min_count": 1, "overrides": {"string": {}}, "region_overrides": {"string": {}}, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `delete_deployment`
```sh
$ samples/cli/sample-apps Dsmc deleteDeployment \
    --deployment 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_deployment`
```sh
$ samples/cli/sample-apps Dsmc updateDeployment \
    --deployment 'string' \
    --namespace 'string' \
    --body '{"allow_version_override": false, "buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "extendable_session": false, "game_version": "string", "max_count": 1, "min_count": 1, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `create_root_region_override`
```sh
$ samples/cli/sample-apps Dsmc createRootRegionOverride \
    --deployment 'string' \
    --namespace 'string' \
    --region 'string' \
    --body '{"buffer_count": 1, "buffer_percent": 1, "max_count": 1, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `delete_root_region_override`
```sh
$ samples/cli/sample-apps Dsmc deleteRootRegionOverride \
    --deployment 'string' \
    --namespace 'string' \
    --region 'string' \
    > result.txt
```

### Operation `update_root_region_override`
```sh
$ samples/cli/sample-apps Dsmc updateRootRegionOverride \
    --deployment 'string' \
    --namespace 'string' \
    --region 'string' \
    --body '{"buffer_count": 1, "buffer_percent": 1, "max_count": 1, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `create_deployment_override`
```sh
$ samples/cli/sample-apps Dsmc createDeploymentOverride \
    --deployment 'string' \
    --namespace 'string' \
    --version 'string' \
    --body '{"buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "extendable_session": false, "game_version": "string", "max_count": 1, "min_count": 1, "region_overrides": {"string": {}}, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `delete_deployment_override`
```sh
$ samples/cli/sample-apps Dsmc deleteDeploymentOverride \
    --deployment 'string' \
    --namespace 'string' \
    --version 'string' \
    > result.txt
```

### Operation `update_deployment_override`
```sh
$ samples/cli/sample-apps Dsmc updateDeploymentOverride \
    --deployment 'string' \
    --namespace 'string' \
    --version 'string' \
    --body '{"buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "game_version": "string", "max_count": 1, "min_count": 1, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `create_override_region_override`
```sh
$ samples/cli/sample-apps Dsmc createOverrideRegionOverride \
    --deployment 'string' \
    --namespace 'string' \
    --region 'string' \
    --version 'string' \
    --body '{"buffer_count": 1, "buffer_percent": 1, "max_count": 1, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `delete_override_region_override`
```sh
$ samples/cli/sample-apps Dsmc deleteOverrideRegionOverride \
    --deployment 'string' \
    --namespace 'string' \
    --region 'string' \
    --version 'string' \
    > result.txt
```

### Operation `update_override_region_override`
```sh
$ samples/cli/sample-apps Dsmc updateOverrideRegionOverride \
    --deployment 'string' \
    --namespace 'string' \
    --region 'string' \
    --version 'string' \
    --body '{"buffer_count": 1, "buffer_percent": 1, "max_count": 1, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `delete_creating_server_count_queue`
```sh
$ samples/cli/sample-apps Dsmc deleteCreatingServerCountQueue \
    --deployment 'string' \
    --namespace 'string' \
    --version 'string' \
    > result.txt
```

### Operation `get_all_pod_config`
```sh
$ samples/cli/sample-apps Dsmc getAllPodConfig \
    --namespace 'string' \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_pod_config`
```sh
$ samples/cli/sample-apps Dsmc getPodConfig \
    --name 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `create_pod_config`
```sh
$ samples/cli/sample-apps Dsmc createPodConfig \
    --name 'string' \
    --namespace 'string' \
    --body '{"cpu_limit": 1, "mem_limit": 1, "params": "string"}' \
    > result.txt
```

### Operation `delete_pod_config`
```sh
$ samples/cli/sample-apps Dsmc deletePodConfig \
    --name 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_pod_config`
```sh
$ samples/cli/sample-apps Dsmc updatePodConfig \
    --name 'string' \
    --namespace 'string' \
    --body '{"cpu_limit": 1, "mem_limit": 1, "name": "string", "params": "string"}' \
    > result.txt
```

### Operation `add_port`
```sh
$ samples/cli/sample-apps Dsmc addPort \
    --name 'string' \
    --namespace 'string' \
    --body '{"port": 1}' \
    > result.txt
```

### Operation `delete_port`
```sh
$ samples/cli/sample-apps Dsmc deletePort \
    --name 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_port`
```sh
$ samples/cli/sample-apps Dsmc updatePort \
    --name 'string' \
    --namespace 'string' \
    --body '{"name": "string", "port": 1}' \
    > result.txt
```

### Operation `list_images`
```sh
$ samples/cli/sample-apps Dsmc listImages \
    --namespace 'string' \
    --q 'string' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `delete_image`
```sh
$ samples/cli/sample-apps Dsmc deleteImage \
    --namespace 'string' \
    --imageURI 'string' \
    --version 'string' \
    > result.txt
```

### Operation `get_image_limit`
```sh
$ samples/cli/sample-apps Dsmc getImageLimit \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_image_patch`
```sh
$ samples/cli/sample-apps Dsmc deleteImagePatch \
    --namespace 'string' \
    --imageURI 'string' \
    --version 'string' \
    --versionPatch 'string' \
    > result.txt
```

### Operation `get_image_detail`
```sh
$ samples/cli/sample-apps Dsmc getImageDetail \
    --namespace 'string' \
    --version 'string' \
    > result.txt
```

### Operation `get_image_patches`
```sh
$ samples/cli/sample-apps Dsmc getImagePatches \
    --namespace 'string' \
    --version 'string' \
    > result.txt
```

### Operation `get_image_patch_detail`
```sh
$ samples/cli/sample-apps Dsmc getImagePatchDetail \
    --namespace 'string' \
    --version 'string' \
    --versionPatch 'string' \
    > result.txt
```

### Operation `add_buffer`
```sh
$ samples/cli/sample-apps Dsmc addBuffer \
    --namespace 'string' \
    --body '{"AllocCount": 1, "DeploymentName": "string", "JobCount": 1, "JobPriority": 1, "OverrideVersion": "string", "Region": "string"}' \
    > result.txt
```

### Operation `get_repository`
```sh
$ samples/cli/sample-apps Dsmc getRepository \
    --namespace 'string' \
    > result.txt
```

### Operation `list_server`
```sh
$ samples/cli/sample-apps Dsmc listServer \
    --namespace 'string' \
    --region 'string' \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `count_server`
```sh
$ samples/cli/sample-apps Dsmc countServer \
    --namespace 'string' \
    > result.txt
```

### Operation `count_server_detailed`
```sh
$ samples/cli/sample-apps Dsmc countServerDetailed \
    --namespace 'string' \
    --region 'string' \
    > result.txt
```

### Operation `list_local_server`
```sh
$ samples/cli/sample-apps Dsmc listLocalServer \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_local_server`
```sh
$ samples/cli/sample-apps Dsmc deleteLocalServer \
    --name 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_server`
```sh
$ samples/cli/sample-apps Dsmc getServer \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `delete_server`
```sh
$ samples/cli/sample-apps Dsmc deleteServer \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `list_session`
```sh
$ samples/cli/sample-apps Dsmc listSession \
    --namespace 'string' \
    --region 'string' \
    --withServer false \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `count_session`
```sh
$ samples/cli/sample-apps Dsmc countSession \
    --namespace 'string' \
    --region 'string' \
    > result.txt
```

### Operation `delete_session`
```sh
$ samples/cli/sample-apps Dsmc deleteSession \
    --namespace 'string' \
    --sessionID 'string' \
    > result.txt
```

### Operation `run_ghost_cleaner_request_handler`
```sh
$ samples/cli/sample-apps Dsmc runGhostCleanerRequestHandler \
    --namespace 'string' \
    > result.txt
```

### Operation `run_zombie_cleaner_request_handler`
```sh
$ samples/cli/sample-apps Dsmc runZombieCleanerRequestHandler \
    --namespace 'string' \
    --body '{"JobCount": 1, "Region": "string", "TimeoutSecond": 1, "ZombieCount": 1}' \
    > result.txt
```

### Operation `create_repository`
```sh
$ samples/cli/sample-apps Dsmc createRepository \
    --body '{"namespace": "string", "repository": "string"}' \
    > result.txt
```

### Operation `export_config_v1`
```sh
$ samples/cli/sample-apps Dsmc exportConfigV1 \
    --namespace 'string' \
    > result.txt
```

### Operation `import_config_v1`
```sh
$ samples/cli/sample-apps Dsmc importConfigV1 \
    --namespace 'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_all_deployment_client`
```sh
$ samples/cli/sample-apps Dsmc getAllDeploymentClient \
    --namespace 'string' \
    --name 'string' \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_deployment_client`
```sh
$ samples/cli/sample-apps Dsmc getDeploymentClient \
    --deployment 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `create_deployment_client`
```sh
$ samples/cli/sample-apps Dsmc createDeploymentClient \
    --deployment 'string' \
    --namespace 'string' \
    --body '{"allow_version_override": false, "buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "extendable_session": false, "game_version": "string", "max_count": 1, "min_count": 1, "overrides": {"string": {}}, "region_overrides": {"string": {}}, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    > result.txt
```

### Operation `delete_deployment_client`
```sh
$ samples/cli/sample-apps Dsmc deleteDeploymentClient \
    --deployment 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_all_pod_config_client`
```sh
$ samples/cli/sample-apps Dsmc getAllPodConfigClient \
    --namespace 'string' \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_pod_config_client`
```sh
$ samples/cli/sample-apps Dsmc createPodConfigClient \
    --name 'string' \
    --namespace 'string' \
    --body '{"cpu_limit": 1, "mem_limit": 1, "params": "string"}' \
    > result.txt
```

### Operation `delete_pod_config_client`
```sh
$ samples/cli/sample-apps Dsmc deletePodConfigClient \
    --name 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `list_images_client`
```sh
$ samples/cli/sample-apps Dsmc listImagesClient \
    --namespace 'string' \
    --count 1 \
    --offset 1 \
    --q 'string' \
    --sortBy 'createdAt' \
    --sortDirection 'asc' \
    > result.txt
```

### Operation `image_limit_client`
```sh
$ samples/cli/sample-apps Dsmc imageLimitClient \
    --namespace 'string' \
    > result.txt
```

### Operation `image_detail_client`
```sh
$ samples/cli/sample-apps Dsmc imageDetailClient \
    --namespace 'string' \
    --version 'string' \
    > result.txt
```

### Operation `list_server_client`
```sh
$ samples/cli/sample-apps Dsmc listServerClient \
    --namespace 'string' \
    --region 'string' \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `count_server_detailed_client`
```sh
$ samples/cli/sample-apps Dsmc countServerDetailedClient \
    --namespace 'string' \
    --region 'string' \
    > result.txt
```

### Operation `server_heartbeat`
```sh
$ samples/cli/sample-apps Dsmc serverHeartbeat \
    --namespace 'string' \
    --body '{"podName": "string"}' \
    > result.txt
```

### Operation `deregister_local_server`
```sh
$ samples/cli/sample-apps Dsmc deregisterLocalServer \
    --namespace 'string' \
    --body '{"name": "string"}' \
    > result.txt
```

### Operation `register_local_server`
```sh
$ samples/cli/sample-apps Dsmc registerLocalServer \
    --namespace 'string' \
    --body '{"custom_attribute": "string", "ip": "string", "name": "string", "port": 1}' \
    > result.txt
```

### Operation `register_server`
```sh
$ samples/cli/sample-apps Dsmc registerServer \
    --namespace 'string' \
    --body '{"custom_attribute": "string", "pod_name": "string"}' \
    > result.txt
```

### Operation `shutdown_server`
```sh
$ samples/cli/sample-apps Dsmc shutdownServer \
    --namespace 'string' \
    --body '{"kill_me": false, "pod_name": "string"}' \
    > result.txt
```

### Operation `get_server_session_timeout`
```sh
$ samples/cli/sample-apps Dsmc getServerSessionTimeout \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `get_server_session`
```sh
$ samples/cli/sample-apps Dsmc getServerSession \
    --namespace 'string' \
    --podName 'string' \
    > result.txt
```

### Operation `create_session`
```sh
$ samples/cli/sample-apps Dsmc createSession \
    --namespace 'string' \
    --body '{"client_version": "string", "configuration": "string", "deployment": "string", "game_mode": "string", "matching_allies": [{}], "namespace": "string", "notification_payload": {}, "pod_name": "string", "region": "string", "session_id": "string"}' \
    > result.txt
```

### Operation `claim_server`
```sh
$ samples/cli/sample-apps Dsmc claimServer \
    --namespace 'string' \
    --body '{"game_mode": "string", "matching_allies": [{}], "namespace": "string", "notification_payload": {}, "session_id": "string"}' \
    > result.txt
```

### Operation `get_session`
```sh
$ samples/cli/sample-apps Dsmc getSession \
    --namespace 'string' \
    --sessionID 'string' \
    > result.txt
```

### Operation `cancel_session`
```sh
$ samples/cli/sample-apps Dsmc cancelSession \
    --namespace 'string' \
    --sessionID 'string' \
    > result.txt
```

### Operation `get_default_provider`
```sh
$ samples/cli/sample-apps Dsmc getDefaultProvider \
    > result.txt
```

### Operation `list_providers`
```sh
$ samples/cli/sample-apps Dsmc listProviders \
    > result.txt
```

### Operation `list_providers_by_region`
```sh
$ samples/cli/sample-apps Dsmc listProvidersByRegion \
    --region 'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ samples/cli/sample-apps Dsmc publicGetMessages \
    > result.txt
```

