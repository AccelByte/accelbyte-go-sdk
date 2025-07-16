# Csm Service Index

&nbsp;

## Operations

### App Wrapper:  [App](../../services-api/pkg/service/csm/app.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps` | POST | GetAppListV1Short | [GetAppListV1Short](../../csm-sdk/pkg/csmclient/app/app_client.go) | [GetAppListV1Short](../../services-api/pkg/service/csm/app.go) | [GetAppListV1Short](../../samples/cli/cmd/csm/app/getAppListV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}` | GET | GetAppV1Short | [GetAppV1Short](../../csm-sdk/pkg/csmclient/app/app_client.go) | [GetAppV1Short](../../services-api/pkg/service/csm/app.go) | [GetAppV1Short](../../samples/cli/cmd/csm/app/getAppV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}` | PUT | CreateAppV1Short | [CreateAppV1Short](../../csm-sdk/pkg/csmclient/app/app_client.go) | [CreateAppV1Short](../../services-api/pkg/service/csm/app.go) | [CreateAppV1Short](../../samples/cli/cmd/csm/app/createAppV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}` | DELETE | DeleteAppV1Short | [DeleteAppV1Short](../../csm-sdk/pkg/csmclient/app/app_client.go) | [DeleteAppV1Short](../../services-api/pkg/service/csm/app.go) | [DeleteAppV1Short](../../samples/cli/cmd/csm/app/deleteAppV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}` | PATCH | UpdateAppV1Short | [UpdateAppV1Short](../../csm-sdk/pkg/csmclient/app/app_client.go) | [UpdateAppV1Short](../../services-api/pkg/service/csm/app.go) | [UpdateAppV1Short](../../samples/cli/cmd/csm/app/updateAppV1.go) |
| `/csm/v1/admin/namespaces/{namespace}/apps/{app}/release` | GET | GetAppReleaseV1Short | [GetAppReleaseV1Short](../../csm-sdk/pkg/csmclient/app/app_client.go) | [GetAppReleaseV1Short](../../services-api/pkg/service/csm/app.go) | [GetAppReleaseV1Short](../../samples/cli/cmd/csm/app/getAppReleaseV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/start` | PUT | StartAppV1Short | [StartAppV1Short](../../csm-sdk/pkg/csmclient/app/app_client.go) | [StartAppV1Short](../../services-api/pkg/service/csm/app.go) | [StartAppV1Short](../../samples/cli/cmd/csm/app/startAppV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/stop` | PUT | StopAppV1Short | [StopAppV1Short](../../csm-sdk/pkg/csmclient/app/app_client.go) | [StopAppV1Short](../../services-api/pkg/service/csm/app.go) | [StopAppV1Short](../../samples/cli/cmd/csm/app/stopAppV1.go) |

### Deployment Wrapper:  [Deployment](../../services-api/pkg/service/csm/deployment.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments` | POST | CreateDeploymentV1Short | [CreateDeploymentV1Short](../../csm-sdk/pkg/csmclient/deployment/deployment_client.go) | [CreateDeploymentV1Short](../../services-api/pkg/service/csm/deployment.go) | [CreateDeploymentV1Short](../../samples/cli/cmd/csm/deployment/createDeploymentV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/deployments` | POST | GetListOfDeploymentV1Short | [GetListOfDeploymentV1Short](../../csm-sdk/pkg/csmclient/deployment/deployment_client.go) | [GetListOfDeploymentV1Short](../../services-api/pkg/service/csm/deployment.go) | [GetListOfDeploymentV1Short](../../samples/cli/cmd/csm/deployment/getListOfDeploymentV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}` | GET | GetDeploymentV1Short | [GetDeploymentV1Short](../../csm-sdk/pkg/csmclient/deployment/deployment_client.go) | [GetDeploymentV1Short](../../services-api/pkg/service/csm/deployment.go) | [GetDeploymentV1Short](../../samples/cli/cmd/csm/deployment/getDeploymentV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId}` | DELETE | DeleteDeploymentV1Short | [DeleteDeploymentV1Short](../../csm-sdk/pkg/csmclient/deployment/deployment_client.go) | [DeleteDeploymentV1Short](../../services-api/pkg/service/csm/deployment.go) | [DeleteDeploymentV1Short](../../samples/cli/cmd/csm/deployment/deleteDeploymentV1.go) |

### Image Wrapper:  [Image](../../services-api/pkg/service/csm/image.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/images` | GET | GetAppImageListV1Short | [GetAppImageListV1Short](../../csm-sdk/pkg/csmclient/image/image_client.go) | [GetAppImageListV1Short](../../services-api/pkg/service/csm/image.go) | [GetAppImageListV1Short](../../samples/cli/cmd/csm/image/getAppImageListV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/images` | DELETE | DeleteAppImagesV1Short | [DeleteAppImagesV1Short](../../csm-sdk/pkg/csmclient/image/image_client.go) | [DeleteAppImagesV1Short](../../services-api/pkg/service/csm/image.go) | [DeleteAppImagesV1Short](../../samples/cli/cmd/csm/image/deleteAppImagesV1.go) |

### Configuration Wrapper:  [Configuration](../../services-api/pkg/service/csm/configuration.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets` | GET | GetListOfSecretsV1Short | [GetListOfSecretsV1Short](../../csm-sdk/pkg/csmclient/configuration/configuration_client.go) | [GetListOfSecretsV1Short](../../services-api/pkg/service/csm/configuration.go) | [GetListOfSecretsV1Short](../../samples/cli/cmd/csm/configuration/getListOfSecretsV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets` | POST | SaveSecretV1Short | [SaveSecretV1Short](../../csm-sdk/pkg/csmclient/configuration/configuration_client.go) | [SaveSecretV1Short](../../services-api/pkg/service/csm/configuration.go) | [SaveSecretV1Short](../../samples/cli/cmd/csm/configuration/saveSecretV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}` | PUT | UpdateSecretV1Short | [UpdateSecretV1Short](../../csm-sdk/pkg/csmclient/configuration/configuration_client.go) | [UpdateSecretV1Short](../../services-api/pkg/service/csm/configuration.go) | [UpdateSecretV1Short](../../samples/cli/cmd/csm/configuration/updateSecretV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}` | DELETE | DeleteSecretV1Short | [DeleteSecretV1Short](../../csm-sdk/pkg/csmclient/configuration/configuration_client.go) | [DeleteSecretV1Short](../../services-api/pkg/service/csm/configuration.go) | [DeleteSecretV1Short](../../samples/cli/cmd/csm/configuration/deleteSecretV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables` | GET | GetListOfVariablesV1Short | [GetListOfVariablesV1Short](../../csm-sdk/pkg/csmclient/configuration/configuration_client.go) | [GetListOfVariablesV1Short](../../services-api/pkg/service/csm/configuration.go) | [GetListOfVariablesV1Short](../../samples/cli/cmd/csm/configuration/getListOfVariablesV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables` | POST | SaveVariableV1Short | [SaveVariableV1Short](../../csm-sdk/pkg/csmclient/configuration/configuration_client.go) | [SaveVariableV1Short](../../services-api/pkg/service/csm/configuration.go) | [SaveVariableV1Short](../../samples/cli/cmd/csm/configuration/saveVariableV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}` | PUT | UpdateVariableV1Short | [UpdateVariableV1Short](../../csm-sdk/pkg/csmclient/configuration/configuration_client.go) | [UpdateVariableV1Short](../../services-api/pkg/service/csm/configuration.go) | [UpdateVariableV1Short](../../samples/cli/cmd/csm/configuration/updateVariableV1.go) |
| [DEPRECATED] `/csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId}` | DELETE | DeleteVariableV1Short | [DeleteVariableV1Short](../../csm-sdk/pkg/csmclient/configuration/configuration_client.go) | [DeleteVariableV1Short](../../services-api/pkg/service/csm/configuration.go) | [DeleteVariableV1Short](../../samples/cli/cmd/csm/configuration/deleteVariableV1.go) |

### Messages Wrapper:  [Messages](../../services-api/pkg/service/csm/messages.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/csm/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../../csm-sdk/pkg/csmclient/messages/messages_client.go) | [PublicGetMessagesShort](../../services-api/pkg/service/csm/messages.go) | [PublicGetMessagesShort](../../samples/cli/cmd/csm/messages/publicGetMessages.go) |

### App V2 Wrapper:  [AppV2](../../services-api/pkg/service/csm/appV2.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/csm/v2/admin/namespaces/{namespace}/apps` | POST | GetAppListV2Short | [GetAppListV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [GetAppListV2Short](../../services-api/pkg/service/csm/appV2.go) | [GetAppListV2Short](../../samples/cli/cmd/csm/appV2/getAppListV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}` | GET | GetAppV2Short | [GetAppV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [GetAppV2Short](../../services-api/pkg/service/csm/appV2.go) | [GetAppV2Short](../../samples/cli/cmd/csm/appV2/getAppV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}` | POST | CreateAppV2Short | [CreateAppV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [CreateAppV2Short](../../services-api/pkg/service/csm/appV2.go) | [CreateAppV2Short](../../samples/cli/cmd/csm/appV2/createAppV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}` | DELETE | DeleteAppV2Short | [DeleteAppV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [DeleteAppV2Short](../../services-api/pkg/service/csm/appV2.go) | [DeleteAppV2Short](../../samples/cli/cmd/csm/appV2/deleteAppV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}` | PATCH | UpdateAppV2Short | [UpdateAppV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [UpdateAppV2Short](../../services-api/pkg/service/csm/appV2.go) | [UpdateAppV2Short](../../samples/cli/cmd/csm/appV2/updateAppV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/resources` | PATCH | UpdateAppResourcesV2Short | [UpdateAppResourcesV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [UpdateAppResourcesV2Short](../../services-api/pkg/service/csm/appV2.go) | [UpdateAppResourcesV2Short](../../samples/cli/cmd/csm/appV2/updateAppResourcesV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form` | POST | UpdateAppResourcesResourceLimitFormV2Short | [UpdateAppResourcesResourceLimitFormV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [UpdateAppResourcesResourceLimitFormV2Short](../../services-api/pkg/service/csm/appV2.go) | [UpdateAppResourcesResourceLimitFormV2Short](../../samples/cli/cmd/csm/appV2/updateAppResourcesResourceLimitFormV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/start` | PUT | StartAppV2Short | [StartAppV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [StartAppV2Short](../../services-api/pkg/service/csm/appV2.go) | [StartAppV2Short](../../samples/cli/cmd/csm/appV2/startAppV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/stop` | PUT | StopAppV2Short | [StopAppV2Short](../../csm-sdk/pkg/csmclient/app_v2/app_v2_client.go) | [StopAppV2Short](../../services-api/pkg/service/csm/appV2.go) | [StopAppV2Short](../../samples/cli/cmd/csm/appV2/stopAppV2.go) |

### Deployment V2 Wrapper:  [DeploymentV2](../../services-api/pkg/service/csm/deploymentV2.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments` | POST | CreateDeploymentV2Short | [CreateDeploymentV2Short](../../csm-sdk/pkg/csmclient/deployment_v2/deployment_v2_client.go) | [CreateDeploymentV2Short](../../services-api/pkg/service/csm/deploymentV2.go) | [CreateDeploymentV2Short](../../samples/cli/cmd/csm/deploymentV2/createDeploymentV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/deployments` | POST | GetListOfDeploymentV2Short | [GetListOfDeploymentV2Short](../../csm-sdk/pkg/csmclient/deployment_v2/deployment_v2_client.go) | [GetListOfDeploymentV2Short](../../services-api/pkg/service/csm/deploymentV2.go) | [GetListOfDeploymentV2Short](../../samples/cli/cmd/csm/deploymentV2/getListOfDeploymentV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}` | GET | GetDeploymentV2Short | [GetDeploymentV2Short](../../csm-sdk/pkg/csmclient/deployment_v2/deployment_v2_client.go) | [GetDeploymentV2Short](../../services-api/pkg/service/csm/deploymentV2.go) | [GetDeploymentV2Short](../../samples/cli/cmd/csm/deploymentV2/getDeploymentV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId}` | DELETE | DeleteDeploymentV2Short | [DeleteDeploymentV2Short](../../csm-sdk/pkg/csmclient/deployment_v2/deployment_v2_client.go) | [DeleteDeploymentV2Short](../../services-api/pkg/service/csm/deploymentV2.go) | [DeleteDeploymentV2Short](../../samples/cli/cmd/csm/deploymentV2/deleteDeploymentV2.go) |

### Image V2 Wrapper:  [ImageV2](../../services-api/pkg/service/csm/imageV2.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/images` | GET | GetAppImageListV2Short | [GetAppImageListV2Short](../../csm-sdk/pkg/csmclient/image_v2/image_v2_client.go) | [GetAppImageListV2Short](../../services-api/pkg/service/csm/imageV2.go) | [GetAppImageListV2Short](../../samples/cli/cmd/csm/imageV2/getAppImageListV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/images` | DELETE | DeleteAppImagesV2Short | [DeleteAppImagesV2Short](../../csm-sdk/pkg/csmclient/image_v2/image_v2_client.go) | [DeleteAppImagesV2Short](../../services-api/pkg/service/csm/imageV2.go) | [DeleteAppImagesV2Short](../../samples/cli/cmd/csm/imageV2/deleteAppImagesV2.go) |

### Configuration V2 Wrapper:  [ConfigurationV2](../../services-api/pkg/service/csm/configurationV2.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets` | GET | GetListOfSecretsV2Short | [GetListOfSecretsV2Short](../../csm-sdk/pkg/csmclient/configuration_v2/configuration_v2_client.go) | [GetListOfSecretsV2Short](../../services-api/pkg/service/csm/configurationV2.go) | [GetListOfSecretsV2Short](../../samples/cli/cmd/csm/configurationV2/getListOfSecretsV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets` | POST | SaveSecretV2Short | [SaveSecretV2Short](../../csm-sdk/pkg/csmclient/configuration_v2/configuration_v2_client.go) | [SaveSecretV2Short](../../services-api/pkg/service/csm/configurationV2.go) | [SaveSecretV2Short](../../samples/cli/cmd/csm/configurationV2/saveSecretV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}` | PUT | UpdateSecretV2Short | [UpdateSecretV2Short](../../csm-sdk/pkg/csmclient/configuration_v2/configuration_v2_client.go) | [UpdateSecretV2Short](../../services-api/pkg/service/csm/configurationV2.go) | [UpdateSecretV2Short](../../samples/cli/cmd/csm/configurationV2/updateSecretV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId}` | DELETE | DeleteSecretV2Short | [DeleteSecretV2Short](../../csm-sdk/pkg/csmclient/configuration_v2/configuration_v2_client.go) | [DeleteSecretV2Short](../../services-api/pkg/service/csm/configurationV2.go) | [DeleteSecretV2Short](../../samples/cli/cmd/csm/configurationV2/deleteSecretV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables` | GET | GetListOfVariablesV2Short | [GetListOfVariablesV2Short](../../csm-sdk/pkg/csmclient/configuration_v2/configuration_v2_client.go) | [GetListOfVariablesV2Short](../../services-api/pkg/service/csm/configurationV2.go) | [GetListOfVariablesV2Short](../../samples/cli/cmd/csm/configurationV2/getListOfVariablesV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables` | POST | SaveVariableV2Short | [SaveVariableV2Short](../../csm-sdk/pkg/csmclient/configuration_v2/configuration_v2_client.go) | [SaveVariableV2Short](../../services-api/pkg/service/csm/configurationV2.go) | [SaveVariableV2Short](../../samples/cli/cmd/csm/configurationV2/saveVariableV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}` | PUT | UpdateVariableV2Short | [UpdateVariableV2Short](../../csm-sdk/pkg/csmclient/configuration_v2/configuration_v2_client.go) | [UpdateVariableV2Short](../../services-api/pkg/service/csm/configurationV2.go) | [UpdateVariableV2Short](../../samples/cli/cmd/csm/configurationV2/updateVariableV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId}` | DELETE | DeleteVariableV2Short | [DeleteVariableV2Short](../../csm-sdk/pkg/csmclient/configuration_v2/configuration_v2_client.go) | [DeleteVariableV2Short](../../services-api/pkg/service/csm/configurationV2.go) | [DeleteVariableV2Short](../../samples/cli/cmd/csm/configurationV2/deleteVariableV2.go) |

### Notification Subscription Wrapper:  [NotificationSubscription](../../services-api/pkg/service/csm/notificationSubscription.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions` | GET | GetNotificationSubscriberListV2Short | [GetNotificationSubscriberListV2Short](../../csm-sdk/pkg/csmclient/notification_subscription/notification_subscription_client.go) | [GetNotificationSubscriberListV2Short](../../services-api/pkg/service/csm/notificationSubscription.go) | [GetNotificationSubscriberListV2Short](../../samples/cli/cmd/csm/notificationSubscription/getNotificationSubscriberListV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions` | PUT | BulkSaveSubscriptionAppNotificationV2Short | [BulkSaveSubscriptionAppNotificationV2Short](../../csm-sdk/pkg/csmclient/notification_subscription/notification_subscription_client.go) | [BulkSaveSubscriptionAppNotificationV2Short](../../services-api/pkg/service/csm/notificationSubscription.go) | [BulkSaveSubscriptionAppNotificationV2Short](../../samples/cli/cmd/csm/notificationSubscription/bulkSaveSubscriptionAppNotificationV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions` | POST | SubscribeAppNotificationV2Short | [SubscribeAppNotificationV2Short](../../csm-sdk/pkg/csmclient/notification_subscription/notification_subscription_client.go) | [SubscribeAppNotificationV2Short](../../services-api/pkg/service/csm/notificationSubscription.go) | [SubscribeAppNotificationV2Short](../../samples/cli/cmd/csm/notificationSubscription/subscribeAppNotificationV2.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me` | GET | GetSubscriptionV2HandlerShort | [GetSubscriptionV2HandlerShort](../../csm-sdk/pkg/csmclient/notification_subscription/notification_subscription_client.go) | [GetSubscriptionV2HandlerShort](../../services-api/pkg/service/csm/notificationSubscription.go) | [GetSubscriptionV2HandlerShort](../../samples/cli/cmd/csm/notificationSubscription/getSubscriptionV2Handler.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me` | POST | SubscribeV2HandlerShort | [SubscribeV2HandlerShort](../../csm-sdk/pkg/csmclient/notification_subscription/notification_subscription_client.go) | [SubscribeV2HandlerShort](../../services-api/pkg/service/csm/notificationSubscription.go) | [SubscribeV2HandlerShort](../../samples/cli/cmd/csm/notificationSubscription/subscribeV2Handler.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me` | DELETE | UnsubscribeV2HandlerShort | [UnsubscribeV2HandlerShort](../../csm-sdk/pkg/csmclient/notification_subscription/notification_subscription_client.go) | [UnsubscribeV2HandlerShort](../../services-api/pkg/service/csm/notificationSubscription.go) | [UnsubscribeV2HandlerShort](../../samples/cli/cmd/csm/notificationSubscription/unsubscribeV2Handler.go) |
| `/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId}` | DELETE | DeleteSubscriptionAppNotificationByUserIDV2Short | [DeleteSubscriptionAppNotificationByUserIDV2Short](../../csm-sdk/pkg/csmclient/notification_subscription/notification_subscription_client.go) | [DeleteSubscriptionAppNotificationByUserIDV2Short](../../services-api/pkg/service/csm/notificationSubscription.go) | [DeleteSubscriptionAppNotificationByUserIDV2Short](../../samples/cli/cmd/csm/notificationSubscription/deleteSubscriptionAppNotificationByUserIDV2.go) |
| [DEPRECATED] `/csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId}` | DELETE | DeleteSubscriptionAppNotificationV2Short | [DeleteSubscriptionAppNotificationV2Short](../../csm-sdk/pkg/csmclient/notification_subscription/notification_subscription_client.go) | [DeleteSubscriptionAppNotificationV2Short](../../services-api/pkg/service/csm/notificationSubscription.go) | [DeleteSubscriptionAppNotificationV2Short](../../samples/cli/cmd/csm/notificationSubscription/deleteSubscriptionAppNotificationV2.go) |

### Resources Limits Wrapper:  [ResourcesLimits](../../services-api/pkg/service/csm/resourcesLimits.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/csm/v2/admin/namespaces/{namespace}/resources/limits` | GET | GetResourcesLimitsShort | [GetResourcesLimitsShort](../../csm-sdk/pkg/csmclient/resources_limits/resources_limits_client.go) | [GetResourcesLimitsShort](../../services-api/pkg/service/csm/resourcesLimits.go) | [GetResourcesLimitsShort](../../samples/cli/cmd/csm/resourcesLimits/getResourcesLimits.go) |

### Notification Subscription V3 Wrapper:  [NotificationSubscriptionV3](../../services-api/pkg/service/csm/notificationSubscriptionV3.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions` | GET | GetNotificationSubscriberListV3Short | [GetNotificationSubscriberListV3Short](../../csm-sdk/pkg/csmclient/notification_subscription_v3/notification_subscription_v3_client.go) | [GetNotificationSubscriberListV3Short](../../services-api/pkg/service/csm/notificationSubscriptionV3.go) | [GetNotificationSubscriberListV3Short](../../samples/cli/cmd/csm/notificationSubscriptionV3/getNotificationSubscriberListV3.go) |
| `/csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions` | DELETE | DeleteSubscriptionAppNotificationV3Short | [DeleteSubscriptionAppNotificationV3Short](../../csm-sdk/pkg/csmclient/notification_subscription_v3/notification_subscription_v3_client.go) | [DeleteSubscriptionAppNotificationV3Short](../../services-api/pkg/service/csm/notificationSubscriptionV3.go) | [DeleteSubscriptionAppNotificationV3Short](../../samples/cli/cmd/csm/notificationSubscriptionV3/deleteSubscriptionAppNotificationV3.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `apimodel.AppItem` | [ApimodelAppItem ](../../csm-sdk/pkg/csmclientmodels/apimodel_app_item.go) |
| `apimodel.AutoscalingRequest` | [ApimodelAutoscalingRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_autoscaling_request.go) |
| `apimodel.AutoscalingResponse` | [ApimodelAutoscalingResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_autoscaling_response.go) |
| `apimodel.BulkSubscribeItem` | [ApimodelBulkSubscribeItem ](../../csm-sdk/pkg/csmclientmodels/apimodel_bulk_subscribe_item.go) |
| `apimodel.BulkSubscribeRequest` | [ApimodelBulkSubscribeRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_bulk_subscribe_request.go) |
| `apimodel.CPURequest` | [ApimodelCPURequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_cpu_request.go) |
| `apimodel.CPUResponse` | [ApimodelCPUResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_cpu_response.go) |
| `apimodel.CSMAppLimitsResponse` | [ApimodelCSMAppLimitsResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_c_s_m_app_limits_response.go) |
| `apimodel.CreateAppV2Request` | [ApimodelCreateAppV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_create_app_v2_request.go) |
| `apimodel.CreateDeploymentV2Request` | [ApimodelCreateDeploymentV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_create_deployment_v2_request.go) |
| `apimodel.CreateDeploymentV2Response` | [ApimodelCreateDeploymentV2Response ](../../csm-sdk/pkg/csmclientmodels/apimodel_create_deployment_v2_response.go) |
| `apimodel.GetAppImageListV2DataItem` | [ApimodelGetAppImageListV2DataItem ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_app_image_list_v2_data_item.go) |
| `apimodel.GetAppImageListV2DataItemImageScanResult` | [ApimodelGetAppImageListV2DataItemImageScanResult ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_app_image_list_v2_data_item_image_scan_result.go) |
| `apimodel.GetAppImageListV2DataItemImageScanStatus` | [ApimodelGetAppImageListV2DataItemImageScanStatus ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_app_image_list_v2_data_item_image_scan_status.go) |
| `apimodel.GetAppImageListV2Response` | [ApimodelGetAppImageListV2Response ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_app_image_list_v2_response.go) |
| `apimodel.GetAppListV2Request` | [ApimodelGetAppListV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_app_list_v2_request.go) |
| `apimodel.GetAppListV2Response` | [ApimodelGetAppListV2Response ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_app_list_v2_response.go) |
| `apimodel.GetDeploymentListV2DataItem` | [ApimodelGetDeploymentListV2DataItem ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_deployment_list_v2_data_item.go) |
| `apimodel.GetDeploymentListV2Request` | [ApimodelGetDeploymentListV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_deployment_list_v2_request.go) |
| `apimodel.GetDeploymentListV2Response` | [ApimodelGetDeploymentListV2Response ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_deployment_list_v2_response.go) |
| `apimodel.GetListOfConfigurationsV2DataItem` | [ApimodelGetListOfConfigurationsV2DataItem ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_list_of_configurations_v2_data_item.go) |
| `apimodel.GetListOfConfigurationsV2Response` | [ApimodelGetListOfConfigurationsV2Response ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_list_of_configurations_v2_response.go) |
| `apimodel.GetNotificationSubscriberItem` | [ApimodelGetNotificationSubscriberItem ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_notification_subscriber_item.go) |
| `apimodel.GetNotificationSubscriberItemV2` | [ApimodelGetNotificationSubscriberItemV2 ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_notification_subscriber_item_v2.go) |
| `apimodel.GetNotificationSubscriberListResponse` | [ApimodelGetNotificationSubscriberListResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_notification_subscriber_list_response.go) |
| `apimodel.GetNotificationSubscriberListResponseV2` | [ApimodelGetNotificationSubscriberListResponseV2 ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_notification_subscriber_list_response_v2.go) |
| `apimodel.GetNotificationSubscriberStatusResponse` | [ApimodelGetNotificationSubscriberStatusResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_get_notification_subscriber_status_response.go) |
| `apimodel.IncreaseLimitFormRequest` | [ApimodelIncreaseLimitFormRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_increase_limit_form_request.go) |
| `apimodel.MemoryRequest` | [ApimodelMemoryRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_memory_request.go) |
| `apimodel.MemoryResponse` | [ApimodelMemoryResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_memory_response.go) |
| `apimodel.NotificationType` | [ApimodelNotificationType ](../../csm-sdk/pkg/csmclientmodels/apimodel_notification_type.go) |
| `apimodel.ReplicaRequest` | [ApimodelReplicaRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_replica_request.go) |
| `apimodel.ReplicaResponse` | [ApimodelReplicaResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_replica_response.go) |
| `apimodel.SaveConfigurationV2Request` | [ApimodelSaveConfigurationV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_save_configuration_v2_request.go) |
| `apimodel.SaveConfigurationV2Response` | [ApimodelSaveConfigurationV2Response ](../../csm-sdk/pkg/csmclientmodels/apimodel_save_configuration_v2_response.go) |
| `apimodel.SaveSecretConfigurationV2Request` | [ApimodelSaveSecretConfigurationV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_save_secret_configuration_v2_request.go) |
| `apimodel.SelfSubscribeNotificationRequest` | [ApimodelSelfSubscribeNotificationRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_self_subscribe_notification_request.go) |
| `apimodel.SubscribeNotificationRequest` | [ApimodelSubscribeNotificationRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_subscribe_notification_request.go) |
| `apimodel.SubscribeNotificationResponse` | [ApimodelSubscribeNotificationResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_subscribe_notification_response.go) |
| `apimodel.SubscriberItemRequest` | [ApimodelSubscriberItemRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_subscriber_item_request.go) |
| `apimodel.SubscriberItemResponse` | [ApimodelSubscriberItemResponse ](../../csm-sdk/pkg/csmclientmodels/apimodel_subscriber_item_response.go) |
| `apimodel.UpdateAppResourceRequest` | [ApimodelUpdateAppResourceRequest ](../../csm-sdk/pkg/csmclientmodels/apimodel_update_app_resource_request.go) |
| `apimodel.UpdateAppV2Request` | [ApimodelUpdateAppV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_update_app_v2_request.go) |
| `apimodel.UpdateConfigurationV2Request` | [ApimodelUpdateConfigurationV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_update_configuration_v2_request.go) |
| `apimodel.UpdateConfigurationV2Response` | [ApimodelUpdateConfigurationV2Response ](../../csm-sdk/pkg/csmclientmodels/apimodel_update_configuration_v2_response.go) |
| `apimodel.UpdateSecretConfigurationV2Request` | [ApimodelUpdateSecretConfigurationV2Request ](../../csm-sdk/pkg/csmclientmodels/apimodel_update_secret_configuration_v2_request.go) |
| `generated.CreateAppV1Request` | [GeneratedCreateAppV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_create_app_v1_request.go) |
| `generated.CreateAppV1Response` | [GeneratedCreateAppV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_create_app_v1_response.go) |
| `generated.CreateDeploymentV1Request` | [GeneratedCreateDeploymentV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_create_deployment_v1_request.go) |
| `generated.CreateDeploymentV1Response` | [GeneratedCreateDeploymentV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_create_deployment_v1_response.go) |
| `generated.DeleteAppImagesV1Request` | [GeneratedDeleteAppImagesV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_delete_app_images_v1_request.go) |
| `generated.GetAppImageListV1DataItem` | [GeneratedGetAppImageListV1DataItem ](../../csm-sdk/pkg/csmclientmodels/generated_get_app_image_list_v1_data_item.go) |
| `generated.GetAppImageListV1DataItemImageScanStatus` | [GeneratedGetAppImageListV1DataItemImageScanStatus ](../../csm-sdk/pkg/csmclientmodels/generated_get_app_image_list_v1_data_item_image_scan_status.go) |
| `generated.GetAppImageListV1Response` | [GeneratedGetAppImageListV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_get_app_image_list_v1_response.go) |
| `generated.GetAppListV1DataItem` | [GeneratedGetAppListV1DataItem ](../../csm-sdk/pkg/csmclientmodels/generated_get_app_list_v1_data_item.go) |
| `generated.GetAppListV1Request` | [GeneratedGetAppListV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_get_app_list_v1_request.go) |
| `generated.GetAppListV1Response` | [GeneratedGetAppListV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_get_app_list_v1_response.go) |
| `generated.GetAppReleaseV1Response` | [GeneratedGetAppReleaseV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_get_app_release_v1_response.go) |
| `generated.GetAppV1Response` | [GeneratedGetAppV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_get_app_v1_response.go) |
| `generated.GetDeploymentListV1DataItem` | [GeneratedGetDeploymentListV1DataItem ](../../csm-sdk/pkg/csmclientmodels/generated_get_deployment_list_v1_data_item.go) |
| `generated.GetDeploymentListV1Request` | [GeneratedGetDeploymentListV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_get_deployment_list_v1_request.go) |
| `generated.GetDeploymentListV1Response` | [GeneratedGetDeploymentListV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_get_deployment_list_v1_response.go) |
| `generated.GetDeploymentV1Response` | [GeneratedGetDeploymentV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_get_deployment_v1_response.go) |
| `generated.GetListOfConfigurationsV1DataItem` | [GeneratedGetListOfConfigurationsV1DataItem ](../../csm-sdk/pkg/csmclientmodels/generated_get_list_of_configurations_v1_data_item.go) |
| `generated.GetListOfConfigurationsV1Response` | [GeneratedGetListOfConfigurationsV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_get_list_of_configurations_v1_response.go) |
| `generated.Pagination` | [GeneratedPagination ](../../csm-sdk/pkg/csmclientmodels/generated_pagination.go) |
| `generated.SaveConfigurationV1Request` | [GeneratedSaveConfigurationV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_save_configuration_v1_request.go) |
| `generated.SaveConfigurationV1Response` | [GeneratedSaveConfigurationV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_save_configuration_v1_response.go) |
| `generated.StartAppV1Request` | [GeneratedStartAppV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_start_app_v1_request.go) |
| `generated.StartAppV1Response` | [GeneratedStartAppV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_start_app_v1_response.go) |
| `generated.StopAppV1Request` | [GeneratedStopAppV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_stop_app_v1_request.go) |
| `generated.StopAppV1Response` | [GeneratedStopAppV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_stop_app_v1_response.go) |
| `generated.UpdateAppV1Request` | [GeneratedUpdateAppV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_update_app_v1_request.go) |
| `generated.UpdateAppV1Response` | [GeneratedUpdateAppV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_update_app_v1_response.go) |
| `generated.UpdateConfigurationV1Request` | [GeneratedUpdateConfigurationV1Request ](../../csm-sdk/pkg/csmclientmodels/generated_update_configuration_v1_request.go) |
| `generated.UpdateConfigurationV1Response` | [GeneratedUpdateConfigurationV1Response ](../../csm-sdk/pkg/csmclientmodels/generated_update_configuration_v1_response.go) |
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../../csm-sdk/pkg/csmclientmodels/log_app_message_declaration.go) |
| `model.CSMAutoscalingDefaults` | [ModelCSMAutoscalingDefaults ](../../csm-sdk/pkg/csmclientmodels/model_c_s_m_autoscaling_defaults.go) |
| `model.ImageScanFinding` | [ModelImageScanFinding ](../../csm-sdk/pkg/csmclientmodels/model_image_scan_finding.go) |
| `response.ErrorResponse` | [ResponseErrorResponse ](../../csm-sdk/pkg/csmclientmodels/response_error_response.go) |
