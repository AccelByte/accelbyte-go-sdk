## Go Extend SDK CLI Sample App Operation Index for Csm service.

### Operation `get_app_release_v1`
```sh
$ samples/cli/sample-apps Csm getAppReleaseV1 \
    --app 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ samples/cli/sample-apps Csm publicGetMessages \
    > result.txt
```

### Operation `get_app_list_v2`
```sh
$ samples/cli/sample-apps Csm getAppListV2 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --body '{"appNames": ["string"], "appStatuses": ["string"], "fuzzyAppName": "string", "scenario": "string"}' \
    > result.txt
```

### Operation `get_app_v2`
```sh
$ samples/cli/sample-apps Csm getAppV2 \
    --app 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `create_app_v2`
```sh
$ samples/cli/sample-apps Csm createAppV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"autoscaling": {}, "cpu": {}, "description": "string", "memory": {}, "replica": {}, "scenario": "string", "vmSharingConfiguration": "string"}' \
    > result.txt
```

### Operation `delete_app_v2`
```sh
$ samples/cli/sample-apps Csm deleteAppV2 \
    --app 'string' \
    --namespace 'string' \
    --forced 'string' \
    > result.txt
```

### Operation `update_app_v2`
```sh
$ samples/cli/sample-apps Csm updateAppV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"description": "string"}' \
    > result.txt
```

### Operation `create_deployment_v2`
```sh
$ samples/cli/sample-apps Csm createDeploymentV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"imageTag": "string"}' \
    > result.txt
```

### Operation `get_app_image_list_v2`
```sh
$ samples/cli/sample-apps Csm getAppImageListV2 \
    --app 'string' \
    --namespace 'string' \
    --cached 'string' \
    > result.txt
```

### Operation `delete_app_images_v2`
```sh
$ samples/cli/sample-apps Csm deleteAppImagesV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"imageTags": ["string"]}' \
    > result.txt
```

### Operation `create_no_sql_database_credential_v2`
```sh
$ samples/cli/sample-apps Csm createNoSQLDatabaseCredentialV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"password": "string", "username": "string"}' \
    > result.txt
```

### Operation `get_no_sql_database_v2`
```sh
$ samples/cli/sample-apps Csm getNoSQLDatabaseV2 \
    --app 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `create_no_sql_database_v2`
```sh
$ samples/cli/sample-apps Csm createNoSQLDatabaseV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"dbName": "string", "password": "string", "username": "string"}' \
    > result.txt
```

### Operation `delete_no_sql_database_v2`
```sh
$ samples/cli/sample-apps Csm deleteNoSQLDatabaseV2 \
    --app 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `update_app_resources_v2`
```sh
$ samples/cli/sample-apps Csm updateAppResourcesV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"autoscaling": {}, "cpu": {}, "memory": {}, "replica": {}, "vmSharingConfiguration": "string"}' \
    > result.txt
```

### Operation `update_app_resources_resource_limit_form_v2`
```sh
$ samples/cli/sample-apps Csm updateAppResourcesResourceLimitFormV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"clientEmail": "string", "preferredLimitReplica": 1, "requestReason": "string"}' \
    > result.txt
```

### Operation `get_list_of_secrets_v2`
```sh
$ samples/cli/sample-apps Csm getListOfSecretsV2 \
    --app 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `save_secret_v2`
```sh
$ samples/cli/sample-apps Csm saveSecretV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"configName": "string", "description": "string", "source": "string", "value": "string"}' \
    > result.txt
```

### Operation `update_secret_v2`
```sh
$ samples/cli/sample-apps Csm updateSecretV2 \
    --app 'string' \
    --configId 'string' \
    --namespace 'string' \
    --body '{"description": "string", "value": "string"}' \
    > result.txt
```

### Operation `delete_secret_v2`
```sh
$ samples/cli/sample-apps Csm deleteSecretV2 \
    --app 'string' \
    --configId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `start_app_v2`
```sh
$ samples/cli/sample-apps Csm startAppV2 \
    --app 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `stop_app_v2`
```sh
$ samples/cli/sample-apps Csm stopAppV2 \
    --app 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_notification_subscriber_list_v2`
```sh
$ samples/cli/sample-apps Csm getNotificationSubscriberListV2 \
    --app 'string' \
    --namespace 'string' \
    --notificationType 'string' \
    > result.txt
```

### Operation `bulk_save_subscription_app_notification_v2`
```sh
$ samples/cli/sample-apps Csm bulkSaveSubscriptionAppNotificationV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"subscribers": [{}]}' \
    > result.txt
```

### Operation `subscribe_app_notification_v2`
```sh
$ samples/cli/sample-apps Csm subscribeAppNotificationV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"notificationType": "string", "subscribers": [{}]}' \
    > result.txt
```

### Operation `get_subscription_v2_handler`
```sh
$ samples/cli/sample-apps Csm getSubscriptionV2Handler \
    --app 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `subscribe_v2_handler`
```sh
$ samples/cli/sample-apps Csm subscribeV2Handler \
    --app 'string' \
    --namespace 'string' \
    --body '{"notificationType": "string"}' \
    > result.txt
```

### Operation `unsubscribe_v2_handler`
```sh
$ samples/cli/sample-apps Csm unsubscribeV2Handler \
    --app 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_subscription_app_notification_by_user_idv2`
```sh
$ samples/cli/sample-apps Csm deleteSubscriptionAppNotificationByUserIDV2 \
    --app 'string' \
    --namespace 'string' \
    --userId 'string' \
    > result.txt
```

### Operation `get_list_of_variables_v2`
```sh
$ samples/cli/sample-apps Csm getListOfVariablesV2 \
    --app 'string' \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `save_variable_v2`
```sh
$ samples/cli/sample-apps Csm saveVariableV2 \
    --app 'string' \
    --namespace 'string' \
    --body '{"applyMask": false, "configName": "string", "description": "string", "source": "string", "value": "string"}' \
    > result.txt
```

### Operation `update_variable_v2`
```sh
$ samples/cli/sample-apps Csm updateVariableV2 \
    --app 'string' \
    --configId 'string' \
    --namespace 'string' \
    --body '{"applyMask": false, "description": "string", "value": "string"}' \
    > result.txt
```

### Operation `delete_variable_v2`
```sh
$ samples/cli/sample-apps Csm deleteVariableV2 \
    --app 'string' \
    --configId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_list_of_deployment_v2`
```sh
$ samples/cli/sample-apps Csm getListOfDeploymentV2 \
    --namespace 'string' \
    --limit 1 \
    --offset 1 \
    --body '{"appIds": ["string"], "deploymentIds": ["string"], "statuses": ["string"]}' \
    > result.txt
```

### Operation `get_deployment_v2`
```sh
$ samples/cli/sample-apps Csm getDeploymentV2 \
    --deploymentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `delete_deployment_v2`
```sh
$ samples/cli/sample-apps Csm deleteDeploymentV2 \
    --deploymentId 'string' \
    --namespace 'string' \
    > result.txt
```

### Operation `get_no_sql_cluster_v2`
```sh
$ samples/cli/sample-apps Csm getNoSQLClusterV2 \
    --namespace 'string' \
    > result.txt
```

### Operation `update_no_sql_cluster_v2`
```sh
$ samples/cli/sample-apps Csm updateNoSQLClusterV2 \
    --namespace 'string' \
    --body '{"maxDCU": 3.14, "minDCU": 3.14, "profileName": "string"}' \
    > result.txt
```

### Operation `create_no_sql_cluster_v2`
```sh
$ samples/cli/sample-apps Csm createNoSQLClusterV2 \
    --namespace 'string' \
    --body '{"maxDCU": 3.14, "minDCU": 3.14, "profileName": "string"}' \
    > result.txt
```

### Operation `delete_no_sql_cluster_v2`
```sh
$ samples/cli/sample-apps Csm deleteNoSQLClusterV2 \
    --namespace 'string' \
    > result.txt
```

### Operation `get_no_sql_access_tunnel_v2`
```sh
$ samples/cli/sample-apps Csm getNoSQLAccessTunnelV2 \
    --namespace 'string' \
    > result.txt
```

### Operation `get_resources_limits`
```sh
$ samples/cli/sample-apps Csm getResourcesLimits \
    --namespace 'string' \
    > result.txt
```

### Operation `get_notification_subscriber_list_v3`
```sh
$ samples/cli/sample-apps Csm getNotificationSubscriberListV3 \
    --app 'string' \
    --namespace 'string' \
    --notificationType 'string' \
    > result.txt
```

### Operation `delete_subscription_app_notification_v3`
```sh
$ samples/cli/sample-apps Csm deleteSubscriptionAppNotificationV3 \
    --app 'string' \
    --namespace 'string' \
    --emailAddress 'string' \
    --userId 'string' \
    > result.txt
```

