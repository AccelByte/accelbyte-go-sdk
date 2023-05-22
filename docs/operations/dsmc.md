# Dsmc Service Index

&nbsp;

## Operations

### Config Wrapper:  [Config](../../services-api/pkg/service/dsmc/config.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/admin/configs` | GET | ListConfigShort | [ListConfigShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [ListConfigShort](../../services-api/pkg/service/dsmc/config.go) | [ListConfigShort](../../samples/cli/cmd/dsmc/config/listConfig.go) |
| [DEPRECATED] `/dsmcontroller/admin/configs` | POST | SaveConfigShort | [SaveConfigShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [SaveConfigShort](../../services-api/pkg/service/dsmc/config.go) | [SaveConfigShort](../../samples/cli/cmd/dsmc/config/saveConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs` | GET | GetConfigShort | [GetConfigShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [GetConfigShort](../../services-api/pkg/service/dsmc/config.go) | [GetConfigShort](../../samples/cli/cmd/dsmc/config/getConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs` | POST | CreateConfigShort | [CreateConfigShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [CreateConfigShort](../../services-api/pkg/service/dsmc/config.go) | [CreateConfigShort](../../samples/cli/cmd/dsmc/config/createConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs` | DELETE | DeleteConfigShort | [DeleteConfigShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [DeleteConfigShort](../../services-api/pkg/service/dsmc/config.go) | [DeleteConfigShort](../../samples/cli/cmd/dsmc/config/deleteConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs` | PATCH | UpdateConfigShort | [UpdateConfigShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [UpdateConfigShort](../../services-api/pkg/service/dsmc/config.go) | [UpdateConfigShort](../../samples/cli/cmd/dsmc/config/updateConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/cache` | DELETE | ClearCacheShort | [ClearCacheShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [ClearCacheShort](../../services-api/pkg/service/dsmc/config.go) | [ClearCacheShort](../../samples/cli/cmd/dsmc/config/clearCache.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}` | POST | AddPortShort | [AddPortShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [AddPortShort](../../services-api/pkg/service/dsmc/config.go) | [AddPortShort](../../samples/cli/cmd/dsmc/config/addPort.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}` | DELETE | DeletePortShort | [DeletePortShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [DeletePortShort](../../services-api/pkg/service/dsmc/config.go) | [DeletePortShort](../../samples/cli/cmd/dsmc/config/deletePort.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}` | PATCH | UpdatePortShort | [UpdatePortShort](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [UpdatePortShort](../../services-api/pkg/service/dsmc/config.go) | [UpdatePortShort](../../samples/cli/cmd/dsmc/config/updatePort.go) |
| `/dsmcontroller/admin/v1/namespaces/{namespace}/configs/export` | GET | ExportConfigV1Short | [ExportConfigV1Short](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [ExportConfigV1Short](../../services-api/pkg/service/dsmc/config.go) | [ExportConfigV1Short](../../samples/cli/cmd/dsmc/config/exportConfigV1.go) |
| `/dsmcontroller/admin/v1/namespaces/{namespace}/configs/import` | POST | ImportConfigV1Short | [ImportConfigV1Short](../../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [ImportConfigV1Short](../../services-api/pkg/service/dsmc/config.go) | [ImportConfigV1Short](../../samples/cli/cmd/dsmc/config/importConfigV1.go) |

### Image Config Wrapper:  [ImageConfig](../../services-api/pkg/service/dsmc/imageConfig.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/admin/images` | PUT | UpdateImageShort | [UpdateImageShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [UpdateImageShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [UpdateImageShort](../../samples/cli/cmd/dsmc/imageConfig/updateImage.go) |
| `/dsmcontroller/admin/images` | POST | CreateImageShort | [CreateImageShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [CreateImageShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [CreateImageShort](../../samples/cli/cmd/dsmc/imageConfig/createImage.go) |
| `/dsmcontroller/admin/images/import` | POST | ImportImagesShort | [ImportImagesShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ImportImagesShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [ImportImagesShort](../../samples/cli/cmd/dsmc/imageConfig/importImages.go) |
| `/dsmcontroller/admin/images/patches` | POST | CreateImagePatchShort | [CreateImagePatchShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [CreateImagePatchShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [CreateImagePatchShort](../../samples/cli/cmd/dsmc/imageConfig/createImagePatch.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images` | GET | ListImagesShort | [ListImagesShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ListImagesShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [ListImagesShort](../../samples/cli/cmd/dsmc/imageConfig/listImages.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images` | DELETE | DeleteImageShort | [DeleteImageShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [DeleteImageShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [DeleteImageShort](../../samples/cli/cmd/dsmc/imageConfig/deleteImage.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/export` | GET | ExportImagesShort | [ExportImagesShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ExportImagesShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [ExportImagesShort](../../samples/cli/cmd/dsmc/imageConfig/exportImages.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/limit` | GET | GetImageLimitShort | [GetImageLimitShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetImageLimitShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [GetImageLimitShort](../../samples/cli/cmd/dsmc/imageConfig/getImageLimit.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/patches` | DELETE | DeleteImagePatchShort | [DeleteImagePatchShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [DeleteImagePatchShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [DeleteImagePatchShort](../../samples/cli/cmd/dsmc/imageConfig/deleteImagePatch.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}` | GET | GetImageDetailShort | [GetImageDetailShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetImageDetailShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [GetImageDetailShort](../../samples/cli/cmd/dsmc/imageConfig/getImageDetail.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches` | GET | GetImagePatchesShort | [GetImagePatchesShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetImagePatchesShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [GetImagePatchesShort](../../samples/cli/cmd/dsmc/imageConfig/getImagePatches.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}` | GET | GetImagePatchDetailShort | [GetImagePatchDetailShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetImagePatchDetailShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [GetImagePatchDetailShort](../../samples/cli/cmd/dsmc/imageConfig/getImagePatchDetail.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/repository` | GET | GetRepositoryShort | [GetRepositoryShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetRepositoryShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [GetRepositoryShort](../../samples/cli/cmd/dsmc/imageConfig/getRepository.go) |
| `/dsmcontroller/admin/repository` | POST | CreateRepositoryShort | [CreateRepositoryShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [CreateRepositoryShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [CreateRepositoryShort](../../samples/cli/cmd/dsmc/imageConfig/createRepository.go) |
| `/dsmcontroller/namespaces/{namespace}/images/limit` | GET | ImageLimitClientShort | [ImageLimitClientShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ImageLimitClientShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [ImageLimitClientShort](../../samples/cli/cmd/dsmc/imageConfig/imageLimitClient.go) |
| `/dsmcontroller/namespaces/{namespace}/images/versions/{version}` | GET | ImageDetailClientShort | [ImageDetailClientShort](../../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ImageDetailClientShort](../../services-api/pkg/service/dsmc/imageConfig.go) | [ImageDetailClientShort](../../samples/cli/cmd/dsmc/imageConfig/imageDetailClient.go) |

### Pod Config Wrapper:  [PodConfig](../../services-api/pkg/service/dsmc/podConfig.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/admin/instances/spec/lowest` | GET | GetLowestInstanceSpecShort | [GetLowestInstanceSpecShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [GetLowestInstanceSpecShort](../../services-api/pkg/service/dsmc/podConfig.go) | [GetLowestInstanceSpecShort](../../samples/cli/cmd/dsmc/podConfig/getLowestInstanceSpec.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods` | GET | GetAllPodConfigShort | [GetAllPodConfigShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [GetAllPodConfigShort](../../services-api/pkg/service/dsmc/podConfig.go) | [GetAllPodConfigShort](../../samples/cli/cmd/dsmc/podConfig/getAllPodConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}` | GET | GetPodConfigShort | [GetPodConfigShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [GetPodConfigShort](../../services-api/pkg/service/dsmc/podConfig.go) | [GetPodConfigShort](../../samples/cli/cmd/dsmc/podConfig/getPodConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}` | POST | CreatePodConfigShort | [CreatePodConfigShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [CreatePodConfigShort](../../services-api/pkg/service/dsmc/podConfig.go) | [CreatePodConfigShort](../../samples/cli/cmd/dsmc/podConfig/createPodConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}` | DELETE | DeletePodConfigShort | [DeletePodConfigShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [DeletePodConfigShort](../../services-api/pkg/service/dsmc/podConfig.go) | [DeletePodConfigShort](../../samples/cli/cmd/dsmc/podConfig/deletePodConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}` | PATCH | UpdatePodConfigShort | [UpdatePodConfigShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [UpdatePodConfigShort](../../services-api/pkg/service/dsmc/podConfig.go) | [UpdatePodConfigShort](../../samples/cli/cmd/dsmc/podConfig/updatePodConfig.go) |
| `/dsmcontroller/namespaces/{namespace}/configs/pods` | GET | GetAllPodConfigClientShort | [GetAllPodConfigClientShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [GetAllPodConfigClientShort](../../services-api/pkg/service/dsmc/podConfig.go) | [GetAllPodConfigClientShort](../../samples/cli/cmd/dsmc/podConfig/getAllPodConfigClient.go) |
| `/dsmcontroller/namespaces/{namespace}/configs/pods/{name}` | POST | CreatePodConfigClientShort | [CreatePodConfigClientShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [CreatePodConfigClientShort](../../services-api/pkg/service/dsmc/podConfig.go) | [CreatePodConfigClientShort](../../samples/cli/cmd/dsmc/podConfig/createPodConfigClient.go) |
| `/dsmcontroller/namespaces/{namespace}/configs/pods/{name}` | DELETE | DeletePodConfigClientShort | [DeletePodConfigClientShort](../../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [DeletePodConfigClientShort](../../services-api/pkg/service/dsmc/podConfig.go) | [DeletePodConfigClientShort](../../samples/cli/cmd/dsmc/podConfig/deletePodConfigClient.go) |

### Deployment Config Wrapper:  [DeploymentConfig](../../services-api/pkg/service/dsmc/deploymentConfig.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments` | GET | GetAllDeploymentShort | [GetAllDeploymentShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [GetAllDeploymentShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [GetAllDeploymentShort](../../samples/cli/cmd/dsmc/deploymentConfig/getAllDeployment.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}` | GET | GetDeploymentShort | [GetDeploymentShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [GetDeploymentShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [GetDeploymentShort](../../samples/cli/cmd/dsmc/deploymentConfig/getDeployment.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}` | POST | CreateDeploymentShort | [CreateDeploymentShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateDeploymentShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [CreateDeploymentShort](../../samples/cli/cmd/dsmc/deploymentConfig/createDeployment.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}` | DELETE | DeleteDeploymentShort | [DeleteDeploymentShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteDeploymentShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [DeleteDeploymentShort](../../samples/cli/cmd/dsmc/deploymentConfig/deleteDeployment.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}` | PATCH | UpdateDeploymentShort | [UpdateDeploymentShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [UpdateDeploymentShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [UpdateDeploymentShort](../../samples/cli/cmd/dsmc/deploymentConfig/updateDeployment.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}` | POST | CreateRootRegionOverrideShort | [CreateRootRegionOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateRootRegionOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [CreateRootRegionOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/createRootRegionOverride.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}` | DELETE | DeleteRootRegionOverrideShort | [DeleteRootRegionOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteRootRegionOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [DeleteRootRegionOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/deleteRootRegionOverride.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}` | PATCH | UpdateRootRegionOverrideShort | [UpdateRootRegionOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [UpdateRootRegionOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [UpdateRootRegionOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/updateRootRegionOverride.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}` | POST | CreateDeploymentOverrideShort | [CreateDeploymentOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateDeploymentOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [CreateDeploymentOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/createDeploymentOverride.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}` | DELETE | DeleteDeploymentOverrideShort | [DeleteDeploymentOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteDeploymentOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [DeleteDeploymentOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/deleteDeploymentOverride.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}` | PATCH | UpdateDeploymentOverrideShort | [UpdateDeploymentOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [UpdateDeploymentOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [UpdateDeploymentOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/updateDeploymentOverride.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}` | POST | CreateOverrideRegionOverrideShort | [CreateOverrideRegionOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateOverrideRegionOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [CreateOverrideRegionOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/createOverrideRegionOverride.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}` | DELETE | DeleteOverrideRegionOverrideShort | [DeleteOverrideRegionOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteOverrideRegionOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [DeleteOverrideRegionOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/deleteOverrideRegionOverride.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}` | PATCH | UpdateOverrideRegionOverrideShort | [UpdateOverrideRegionOverrideShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [UpdateOverrideRegionOverrideShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [UpdateOverrideRegionOverrideShort](../../samples/cli/cmd/dsmc/deploymentConfig/updateOverrideRegionOverride.go) |
| `/dsmcontroller/namespaces/{namespace}/configs/deployments` | GET | GetAllDeploymentClientShort | [GetAllDeploymentClientShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [GetAllDeploymentClientShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [GetAllDeploymentClientShort](../../samples/cli/cmd/dsmc/deploymentConfig/getAllDeploymentClient.go) |
| `/dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}` | POST | CreateDeploymentClientShort | [CreateDeploymentClientShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateDeploymentClientShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [CreateDeploymentClientShort](../../samples/cli/cmd/dsmc/deploymentConfig/createDeploymentClient.go) |
| `/dsmcontroller/namespaces/{namespace}/configs/deployments/{deployment}` | DELETE | DeleteDeploymentClientShort | [DeleteDeploymentClientShort](../../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteDeploymentClientShort](../../services-api/pkg/service/dsmc/deploymentConfig.go) | [DeleteDeploymentClientShort](../../samples/cli/cmd/dsmc/deploymentConfig/deleteDeploymentClient.go) |

### Admin Wrapper:  [Admin](../../services-api/pkg/service/dsmc/admin.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/admin/namespaces/{namespace}/servers` | GET | ListServerShort | [ListServerShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [ListServerShort](../../services-api/pkg/service/dsmc/admin.go) | [ListServerShort](../../samples/cli/cmd/dsmc/admin/listServer.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/count` | GET | CountServerShort | [CountServerShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [CountServerShort](../../services-api/pkg/service/dsmc/admin.go) | [CountServerShort](../../samples/cli/cmd/dsmc/admin/countServer.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed` | GET | CountServerDetailedShort | [CountServerDetailedShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [CountServerDetailedShort](../../services-api/pkg/service/dsmc/admin.go) | [CountServerDetailedShort](../../samples/cli/cmd/dsmc/admin/countServerDetailed.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/local` | GET | ListLocalServerShort | [ListLocalServerShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [ListLocalServerShort](../../services-api/pkg/service/dsmc/admin.go) | [ListLocalServerShort](../../samples/cli/cmd/dsmc/admin/listLocalServer.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/local/{name}` | DELETE | DeleteLocalServerShort | [DeleteLocalServerShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [DeleteLocalServerShort](../../services-api/pkg/service/dsmc/admin.go) | [DeleteLocalServerShort](../../samples/cli/cmd/dsmc/admin/deleteLocalServer.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}` | GET | GetServerShort | [GetServerShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [GetServerShort](../../services-api/pkg/service/dsmc/admin.go) | [GetServerShort](../../samples/cli/cmd/dsmc/admin/getServer.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}` | DELETE | DeleteServerShort | [DeleteServerShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [DeleteServerShort](../../services-api/pkg/service/dsmc/admin.go) | [DeleteServerShort](../../samples/cli/cmd/dsmc/admin/deleteServer.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/sessions` | GET | ListSessionShort | [ListSessionShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [ListSessionShort](../../services-api/pkg/service/dsmc/admin.go) | [ListSessionShort](../../samples/cli/cmd/dsmc/admin/listSession.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/sessions/count` | GET | CountSessionShort | [CountSessionShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [CountSessionShort](../../services-api/pkg/service/dsmc/admin.go) | [CountSessionShort](../../samples/cli/cmd/dsmc/admin/countSession.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}` | DELETE | DeleteSessionShort | [DeleteSessionShort](../../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [DeleteSessionShort](../../services-api/pkg/service/dsmc/admin.go) | [DeleteSessionShort](../../samples/cli/cmd/dsmc/admin/deleteSession.go) |

### Server Wrapper:  [Server](../../services-api/pkg/service/dsmc/server.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/namespaces/{namespace}/servers` | GET | ListServerClientShort | [ListServerClientShort](../../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [ListServerClientShort](../../services-api/pkg/service/dsmc/server.go) | [ListServerClientShort](../../samples/cli/cmd/dsmc/server/listServerClient.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/heartbeat` | PUT | ServerHeartbeatShort | [ServerHeartbeatShort](../../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [ServerHeartbeatShort](../../services-api/pkg/service/dsmc/server.go) | [ServerHeartbeatShort](../../samples/cli/cmd/dsmc/server/serverHeartbeat.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/local/deregister` | POST | DeregisterLocalServerShort | [DeregisterLocalServerShort](../../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [DeregisterLocalServerShort](../../services-api/pkg/service/dsmc/server.go) | [DeregisterLocalServerShort](../../samples/cli/cmd/dsmc/server/deregisterLocalServer.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/local/register` | POST | RegisterLocalServerShort | [RegisterLocalServerShort](../../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [RegisterLocalServerShort](../../services-api/pkg/service/dsmc/server.go) | [RegisterLocalServerShort](../../samples/cli/cmd/dsmc/server/registerLocalServer.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/register` | POST | RegisterServerShort | [RegisterServerShort](../../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [RegisterServerShort](../../services-api/pkg/service/dsmc/server.go) | [RegisterServerShort](../../samples/cli/cmd/dsmc/server/registerServer.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/shutdown` | POST | ShutdownServerShort | [ShutdownServerShort](../../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [ShutdownServerShort](../../services-api/pkg/service/dsmc/server.go) | [ShutdownServerShort](../../samples/cli/cmd/dsmc/server/shutdownServer.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout` | GET | GetServerSessionTimeoutShort | [GetServerSessionTimeoutShort](../../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [GetServerSessionTimeoutShort](../../services-api/pkg/service/dsmc/server.go) | [GetServerSessionTimeoutShort](../../samples/cli/cmd/dsmc/server/getServerSessionTimeout.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/{podName}/session` | GET | GetServerSessionShort | [GetServerSessionShort](../../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [GetServerSessionShort](../../services-api/pkg/service/dsmc/server.go) | [GetServerSessionShort](../../samples/cli/cmd/dsmc/server/getServerSession.go) |

### Session Wrapper:  [Session](../../services-api/pkg/service/dsmc/session.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/namespaces/{namespace}/sessions` | POST | CreateSessionShort | [CreateSessionShort](../../dsmc-sdk/pkg/dsmcclient/session/session_client.go) | [CreateSessionShort](../../services-api/pkg/service/dsmc/session.go) | [CreateSessionShort](../../samples/cli/cmd/dsmc/session/createSession.go) |
| `/dsmcontroller/namespaces/{namespace}/sessions/claim` | POST | ClaimServerShort | [ClaimServerShort](../../dsmc-sdk/pkg/dsmcclient/session/session_client.go) | [ClaimServerShort](../../services-api/pkg/service/dsmc/session.go) | [ClaimServerShort](../../samples/cli/cmd/dsmc/session/claimServer.go) |
| `/dsmcontroller/namespaces/{namespace}/sessions/{sessionID}` | GET | GetSessionShort | [GetSessionShort](../../dsmc-sdk/pkg/dsmcclient/session/session_client.go) | [GetSessionShort](../../services-api/pkg/service/dsmc/session.go) | [GetSessionShort](../../samples/cli/cmd/dsmc/session/getSession.go) |
| `/dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel` | DELETE | CancelSessionShort | [CancelSessionShort](../../dsmc-sdk/pkg/dsmcclient/session/session_client.go) | [CancelSessionShort](../../services-api/pkg/service/dsmc/session.go) | [CancelSessionShort](../../samples/cli/cmd/dsmc/session/cancelSession.go) |

### Public Wrapper:  [Public](../../services-api/pkg/service/dsmc/public.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/public/provider/default` | GET | GetDefaultProviderShort | [GetDefaultProviderShort](../../dsmc-sdk/pkg/dsmcclient/public/public_client.go) | [GetDefaultProviderShort](../../services-api/pkg/service/dsmc/public.go) | [GetDefaultProviderShort](../../samples/cli/cmd/dsmc/public/getDefaultProvider.go) |
| `/dsmcontroller/public/providers` | GET | ListProvidersShort | [ListProvidersShort](../../dsmc-sdk/pkg/dsmcclient/public/public_client.go) | [ListProvidersShort](../../services-api/pkg/service/dsmc/public.go) | [ListProvidersShort](../../samples/cli/cmd/dsmc/public/listProviders.go) |
| `/dsmcontroller/public/providers/regions/{region}` | GET | ListProvidersByRegionShort | [ListProvidersByRegionShort](../../dsmc-sdk/pkg/dsmcclient/public/public_client.go) | [ListProvidersByRegionShort](../../services-api/pkg/service/dsmc/public.go) | [ListProvidersByRegionShort](../../samples/cli/cmd/dsmc/public/listProvidersByRegion.go) |

### Dsmc Operations Wrapper:  [DsmcOperations](../../services-api/pkg/service/dsmc/dsmcOperations.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/dsmcontroller/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../../dsmc-sdk/pkg/dsmcclient/dsmc_operations/dsmc_operations_client.go) | [PublicGetMessagesShort](../../services-api/pkg/service/dsmc/dsmcOperations.go) | [PublicGetMessagesShort](../../samples/cli/cmd/dsmc/dsmcOperations/publicGetMessages.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../../dsmc-sdk/pkg/dsmcclientmodels/log_app_message_declaration.go) |
| `models.AllocationEvent` | [ModelsAllocationEvent ](../../dsmc-sdk/pkg/dsmcclientmodels/models_allocation_event.go) |
| `models.ClaimSessionRequest` | [ModelsClaimSessionRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_claim_session_request.go) |
| `models.CountServerResponse` | [ModelsCountServerResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_count_server_response.go) |
| `models.CountSessionResponse` | [ModelsCountSessionResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_count_session_response.go) |
| `models.CreateDSMConfigRequest` | [ModelsCreateDSMConfigRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_d_s_m_config_request.go) |
| `models.CreateDeploymentOverrideRequest` | [ModelsCreateDeploymentOverrideRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_deployment_override_request.go) |
| `models.CreateDeploymentRequest` | [ModelsCreateDeploymentRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_deployment_request.go) |
| `models.CreateImagePatchRequest` | [ModelsCreateImagePatchRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_image_patch_request.go) |
| `models.CreateImageRequest` | [ModelsCreateImageRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_image_request.go) |
| `models.CreatePodConfigRequest` | [ModelsCreatePodConfigRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_pod_config_request.go) |
| `models.CreatePortRequest` | [ModelsCreatePortRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_port_request.go) |
| `models.CreateRegionOverrideRequest` | [ModelsCreateRegionOverrideRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_region_override_request.go) |
| `models.CreateRepositoryRequest` | [ModelsCreateRepositoryRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_repository_request.go) |
| `models.CreateSessionRequest` | [ModelsCreateSessionRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_create_session_request.go) |
| `models.DSHeartbeatRequest` | [ModelsDSHeartbeatRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_d_s_heartbeat_request.go) |
| `models.DSMConfigRecord` | [ModelsDSMConfigRecord ](../../dsmc-sdk/pkg/dsmcclientmodels/models_d_s_m_config_record.go) |
| `models.DefaultProvider` | [ModelsDefaultProvider ](../../dsmc-sdk/pkg/dsmcclientmodels/models_default_provider.go) |
| `models.DeploymentConfigOverride` | [ModelsDeploymentConfigOverride ](../../dsmc-sdk/pkg/dsmcclientmodels/models_deployment_config_override.go) |
| `models.DeploymentWithOverride` | [ModelsDeploymentWithOverride ](../../dsmc-sdk/pkg/dsmcclientmodels/models_deployment_with_override.go) |
| `models.DeregisterLocalServerRequest` | [ModelsDeregisterLocalServerRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_deregister_local_server_request.go) |
| `models.DetailedCountServerResponse` | [ModelsDetailedCountServerResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_detailed_count_server_response.go) |
| `models.GetImageDetailResponse` | [ModelsGetImageDetailResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_get_image_detail_response.go) |
| `models.GetImageLimitResponse` | [ModelsGetImageLimitResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_get_image_limit_response.go) |
| `models.GetImageLimitResponseData` | [ModelsGetImageLimitResponseData ](../../dsmc-sdk/pkg/dsmcclientmodels/models_get_image_limit_response_data.go) |
| `models.GetImagePatchDetailResponse` | [ModelsGetImagePatchDetailResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_get_image_patch_detail_response.go) |
| `models.ImageRecord` | [ModelsImageRecord ](../../dsmc-sdk/pkg/dsmcclientmodels/models_image_record.go) |
| `models.ImageRecordUpdate` | [ModelsImageRecordUpdate ](../../dsmc-sdk/pkg/dsmcclientmodels/models_image_record_update.go) |
| `models.ImportResponse` | [ModelsImportResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_import_response.go) |
| `models.InstanceSpec` | [ModelsInstanceSpec ](../../dsmc-sdk/pkg/dsmcclientmodels/models_instance_spec.go) |
| `models.ListConfigResponse` | [ModelsListConfigResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_list_config_response.go) |
| `models.ListDeploymentResponse` | [ModelsListDeploymentResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_list_deployment_response.go) |
| `models.ListImagePatchesResponse` | [ModelsListImagePatchesResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_list_image_patches_response.go) |
| `models.ListImageResponse` | [ModelsListImageResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_list_image_response.go) |
| `models.ListPodConfigResponse` | [ModelsListPodConfigResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_list_pod_config_response.go) |
| `models.ListServerResponse` | [ModelsListServerResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_list_server_response.go) |
| `models.ListSessionResponse` | [ModelsListSessionResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_list_session_response.go) |
| `models.MatchResult.notification_payload` | [ModelsMatchResultNotificationPayload ](../../dsmc-sdk/pkg/dsmcclientmodels/models_match_result_notification_payload.go) |
| `models.PagingCursor` | [ModelsPagingCursor ](../../dsmc-sdk/pkg/dsmcclientmodels/models_paging_cursor.go) |
| `models.PatchImageRecord` | [ModelsPatchImageRecord ](../../dsmc-sdk/pkg/dsmcclientmodels/models_patch_image_record.go) |
| `models.PodConfigRecord` | [ModelsPodConfigRecord ](../../dsmc-sdk/pkg/dsmcclientmodels/models_pod_config_record.go) |
| `models.PodCountConfigOverride` | [ModelsPodCountConfigOverride ](../../dsmc-sdk/pkg/dsmcclientmodels/models_pod_count_config_override.go) |
| `models.RegisterLocalServerRequest` | [ModelsRegisterLocalServerRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_register_local_server_request.go) |
| `models.RegisterServerRequest` | [ModelsRegisterServerRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_register_server_request.go) |
| `models.RepositoryRecord` | [ModelsRepositoryRecord ](../../dsmc-sdk/pkg/dsmcclientmodels/models_repository_record.go) |
| `models.RequestMatchMember` | [ModelsRequestMatchMember ](../../dsmc-sdk/pkg/dsmcclientmodels/models_request_match_member.go) |
| `models.RequestMatchParty` | [ModelsRequestMatchParty ](../../dsmc-sdk/pkg/dsmcclientmodels/models_request_match_party.go) |
| `models.RequestMatchingAlly` | [ModelsRequestMatchingAlly ](../../dsmc-sdk/pkg/dsmcclientmodels/models_request_matching_ally.go) |
| `models.Server` | [ModelsServer ](../../dsmc-sdk/pkg/dsmcclientmodels/models_server.go) |
| `models.ServerDeploymentConfigSessionTimeoutResponse` | [ModelsServerDeploymentConfigSessionTimeoutResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_server_deployment_config_session_timeout_response.go) |
| `models.ServerSessionResponse` | [ModelsServerSessionResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_server_session_response.go) |
| `models.Session` | [ModelsSession ](../../dsmc-sdk/pkg/dsmcclientmodels/models_session.go) |
| `models.SessionResponse` | [ModelsSessionResponse ](../../dsmc-sdk/pkg/dsmcclientmodels/models_session_response.go) |
| `models.ShutdownServerRequest` | [ModelsShutdownServerRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_shutdown_server_request.go) |
| `models.StatusHistory` | [ModelsStatusHistory ](../../dsmc-sdk/pkg/dsmcclientmodels/models_status_history.go) |
| `models.UpdateDSMConfigRequest` | [ModelsUpdateDSMConfigRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_update_d_s_m_config_request.go) |
| `models.UpdateDeploymentOverrideRequest` | [ModelsUpdateDeploymentOverrideRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_update_deployment_override_request.go) |
| `models.UpdateDeploymentRequest` | [ModelsUpdateDeploymentRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_update_deployment_request.go) |
| `models.UpdatePodConfigRequest` | [ModelsUpdatePodConfigRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_update_pod_config_request.go) |
| `models.UpdatePortRequest` | [ModelsUpdatePortRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_update_port_request.go) |
| `models.UpdateRegionOverrideRequest` | [ModelsUpdateRegionOverrideRequest ](../../dsmc-sdk/pkg/dsmcclientmodels/models_update_region_override_request.go) |
| `models.UploaderFlag` | [ModelsUploaderFlag ](../../dsmc-sdk/pkg/dsmcclientmodels/models_uploader_flag.go) |
| `response.Error` | [ResponseError ](../../dsmc-sdk/pkg/dsmcclientmodels/response_error.go) |
