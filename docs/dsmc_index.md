# Dsmc Service Index

&nbsp;

## Operations

### Config Wrapper:  [Config](../services-api/pkg/service/dsmc/config.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/admin/configs` | GET | ListConfigShort | [ListConfigShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [ListConfigShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/configs` | POST | SaveConfigShort | [SaveConfigShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [SaveConfigShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs` | GET | GetConfigShort | [GetConfigShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [GetConfigShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs` | POST | CreateConfigShort | [CreateConfigShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [CreateConfigShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs` | DELETE | DeleteConfigShort | [DeleteConfigShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [DeleteConfigShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs` | PATCH | UpdateConfigShort | [UpdateConfigShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [UpdateConfigShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/cache` | DELETE | ClearCacheShort | [ClearCacheShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [ClearCacheShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}` | POST | AddPortShort | [AddPortShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [AddPortShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}` | DELETE | DeletePortShort | [DeletePortShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [DeletePortShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name}` | PATCH | UpdatePortShort | [UpdatePortShort](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [UpdatePortShort](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/v1/namespaces/{namespace}/configs/export` | GET | ExportConfigV1Short | [ExportConfigV1Short](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [ExportConfigV1Short](../services-api/pkg/service/dsmc/config.go) |
| `/dsmcontroller/admin/v1/namespaces/{namespace}/configs/import` | POST | ImportConfigV1Short | [ImportConfigV1Short](../dsmc-sdk/pkg/dsmcclient/config/config_client.go) | [ImportConfigV1Short](../services-api/pkg/service/dsmc/config.go) |

### Image Config Wrapper:  [ImageConfig](../services-api/pkg/service/dsmc/imageConfig.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/admin/images` | PUT | UpdateImageShort | [UpdateImageShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [UpdateImageShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/images` | POST | CreateImageShort | [CreateImageShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [CreateImageShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/images/import` | POST | ImportImagesShort | [ImportImagesShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ImportImagesShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/images/patches` | POST | CreateImagePatchShort | [CreateImagePatchShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [CreateImagePatchShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images` | GET | ListImagesShort | [ListImagesShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ListImagesShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images` | DELETE | DeleteImageShort | [DeleteImageShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [DeleteImageShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/export` | GET | ExportImagesShort | [ExportImagesShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ExportImagesShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/limit` | GET | GetImageLimitShort | [GetImageLimitShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetImageLimitShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/patches` | DELETE | DeleteImagePatchShort | [DeleteImagePatchShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [DeleteImagePatchShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}` | GET | GetImageDetailShort | [GetImageDetailShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetImageDetailShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches` | GET | GetImagePatchesShort | [GetImagePatchesShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetImagePatchesShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/images/versions/{version}/patches/{versionPatch}` | GET | GetImagePatchDetailShort | [GetImagePatchDetailShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [GetImagePatchDetailShort](../services-api/pkg/service/dsmc/imageConfig.go) |
| `/dsmcontroller/namespaces/{namespace}/images/versions/{version}` | GET | ImageDetailClientShort | [ImageDetailClientShort](../dsmc-sdk/pkg/dsmcclient/image_config/image_config_client.go) | [ImageDetailClientShort](../services-api/pkg/service/dsmc/imageConfig.go) |

### Deployment Config Wrapper:  [DeploymentConfig](../services-api/pkg/service/dsmc/deploymentConfig.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments` | GET | GetAllDeploymentShort | [GetAllDeploymentShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [GetAllDeploymentShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}` | GET | GetDeploymentShort | [GetDeploymentShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [GetDeploymentShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}` | POST | CreateDeploymentShort | [CreateDeploymentShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateDeploymentShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}` | DELETE | DeleteDeploymentShort | [DeleteDeploymentShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteDeploymentShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}` | PATCH | UpdateDeploymentShort | [UpdateDeploymentShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [UpdateDeploymentShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}` | POST | CreateRootRegionOverrideShort | [CreateRootRegionOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateRootRegionOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}` | DELETE | DeleteRootRegionOverrideShort | [DeleteRootRegionOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteRootRegionOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region}` | PATCH | UpdateRootRegionOverrideShort | [UpdateRootRegionOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [UpdateRootRegionOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version}` | POST | CreateDeploymentOverrideShort | [CreateDeploymentOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateDeploymentOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}` | DELETE | DeleteDeploymentOverrideShort | [DeleteDeploymentOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteDeploymentOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}` | PATCH | UpdateDeploymentOverrideShort | [UpdateDeploymentOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [UpdateDeploymentOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}` | POST | CreateOverrideRegionOverrideShort | [CreateOverrideRegionOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [CreateOverrideRegionOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}` | DELETE | DeleteOverrideRegionOverrideShort | [DeleteOverrideRegionOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [DeleteOverrideRegionOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region}` | PATCH | UpdateOverrideRegionOverrideShort | [UpdateOverrideRegionOverrideShort](../dsmc-sdk/pkg/dsmcclient/deployment_config/deployment_config_client.go) | [UpdateOverrideRegionOverrideShort](../services-api/pkg/service/dsmc/deploymentConfig.go) |

### Pod Config Wrapper:  [PodConfig](../services-api/pkg/service/dsmc/podConfig.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods` | GET | GetAllPodConfigShort | [GetAllPodConfigShort](../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [GetAllPodConfigShort](../services-api/pkg/service/dsmc/podConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}` | GET | GetPodConfigShort | [GetPodConfigShort](../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [GetPodConfigShort](../services-api/pkg/service/dsmc/podConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}` | POST | CreatePodConfigShort | [CreatePodConfigShort](../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [CreatePodConfigShort](../services-api/pkg/service/dsmc/podConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}` | DELETE | DeletePodConfigShort | [DeletePodConfigShort](../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [DeletePodConfigShort](../services-api/pkg/service/dsmc/podConfig.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name}` | PATCH | UpdatePodConfigShort | [UpdatePodConfigShort](../dsmc-sdk/pkg/dsmcclient/pod_config/pod_config_client.go) | [UpdatePodConfigShort](../services-api/pkg/service/dsmc/podConfig.go) |

### Admin Wrapper:  [Admin](../services-api/pkg/service/dsmc/admin.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/admin/namespaces/{namespace}/servers` | GET | ListServerShort | [ListServerShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [ListServerShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/count` | GET | CountServerShort | [CountServerShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [CountServerShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed` | GET | CountServerDetailedShort | [CountServerDetailedShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [CountServerDetailedShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/local` | GET | ListLocalServerShort | [ListLocalServerShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [ListLocalServerShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/local/{name}` | DELETE | DeleteLocalServerShort | [DeleteLocalServerShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [DeleteLocalServerShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}` | GET | GetServerShort | [GetServerShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [GetServerShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}` | DELETE | DeleteServerShort | [DeleteServerShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [DeleteServerShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/servers/{podName}/logs` | GET | GetServerLogsShort | [GetServerLogsShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [GetServerLogsShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/sessions` | GET | ListSessionShort | [ListSessionShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [ListSessionShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/sessions/count` | GET | CountSessionShort | [CountSessionShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [CountSessionShort](../services-api/pkg/service/dsmc/admin.go) |
| `/dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}` | DELETE | DeleteSessionShort | [DeleteSessionShort](../dsmc-sdk/pkg/dsmcclient/admin/admin_client.go) | [DeleteSessionShort](../services-api/pkg/service/dsmc/admin.go) |

### Server Wrapper:  [Server](../services-api/pkg/service/dsmc/server.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/namespaces/{namespace}/servers/local/deregister` | POST | DeregisterLocalServerShort | [DeregisterLocalServerShort](../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [DeregisterLocalServerShort](../services-api/pkg/service/dsmc/server.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/local/register` | POST | RegisterLocalServerShort | [RegisterLocalServerShort](../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [RegisterLocalServerShort](../services-api/pkg/service/dsmc/server.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/register` | POST | RegisterServerShort | [RegisterServerShort](../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [RegisterServerShort](../services-api/pkg/service/dsmc/server.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/shutdown` | POST | ShutdownServerShort | [ShutdownServerShort](../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [ShutdownServerShort](../services-api/pkg/service/dsmc/server.go) |
| `/dsmcontroller/namespaces/{namespace}/servers/{podName}/session` | GET | GetServerSessionShort | [GetServerSessionShort](../dsmc-sdk/pkg/dsmcclient/server/server_client.go) | [GetServerSessionShort](../services-api/pkg/service/dsmc/server.go) |

### Session Wrapper:  [Session](../services-api/pkg/service/dsmc/session.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/namespaces/{namespace}/sessions` | POST | CreateSessionShort | [CreateSessionShort](../dsmc-sdk/pkg/dsmcclient/session/session_client.go) | [CreateSessionShort](../services-api/pkg/service/dsmc/session.go) |
| `/dsmcontroller/namespaces/{namespace}/sessions/claim` | POST | ClaimServerShort | [ClaimServerShort](../dsmc-sdk/pkg/dsmcclient/session/session_client.go) | [ClaimServerShort](../services-api/pkg/service/dsmc/session.go) |
| `/dsmcontroller/namespaces/{namespace}/sessions/{sessionID}` | GET | GetSessionShort | [GetSessionShort](../dsmc-sdk/pkg/dsmcclient/session/session_client.go) | [GetSessionShort](../services-api/pkg/service/dsmc/session.go) |

### Public Wrapper:  [Public](../services-api/pkg/service/dsmc/public.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/public/provider/default` | GET | GetDefaultProviderShort | [GetDefaultProviderShort](../dsmc-sdk/pkg/dsmcclient/public/public_client.go) | [GetDefaultProviderShort](../services-api/pkg/service/dsmc/public.go) |
| `/dsmcontroller/public/providers` | GET | ListProvidersShort | [ListProvidersShort](../dsmc-sdk/pkg/dsmcclient/public/public_client.go) | [ListProvidersShort](../services-api/pkg/service/dsmc/public.go) |
| `/dsmcontroller/public/providers/regions/{region}` | GET | ListProvidersByRegionShort | [ListProvidersByRegionShort](../dsmc-sdk/pkg/dsmcclient/public/public_client.go) | [ListProvidersByRegionShort](../services-api/pkg/service/dsmc/public.go) |

### Operations Wrapper:  [Operations](../services-api/pkg/service/dsmc/operations.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/dsmcontroller/v1/messages` | GET | PublicGetMessagesShort | [PublicGetMessagesShort](../dsmc-sdk/pkg/dsmcclient/operations/operations_client.go) | [PublicGetMessagesShort](../services-api/pkg/service/dsmc/operations.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `log.AppMessageDeclaration` | [LogAppMessageDeclaration ](../dsmc-sdk/pkg/dsmcclientmodels/log_app_message_declaration.go) |
| `models.ClaimSessionRequest` | [ModelsClaimSessionRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_claim_session_request.go) |
| `models.CountServerResponse` | [ModelsCountServerResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_count_server_response.go) |
| `models.CountSessionResponse` | [ModelsCountSessionResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_count_session_response.go) |
| `models.CreateDSMConfigRequest` | [ModelsCreateDSMConfigRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_dsm_config_request.go) |
| `models.CreateDeploymentOverrideRequest` | [ModelsCreateDeploymentOverrideRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_deployment_override_request.go) |
| `models.CreateDeploymentRequest` | [ModelsCreateDeploymentRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_deployment_request.go) |
| `models.CreateImagePatchRequest` | [ModelsCreateImagePatchRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_image_patch_request.go) |
| `models.CreateImageRequest` | [ModelsCreateImageRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_image_request.go) |
| `models.CreatePodConfigRequest` | [ModelsCreatePodConfigRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_pod_config_request.go) |
| `models.CreatePortRequest` | [ModelsCreatePortRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_port_request.go) |
| `models.CreateRegionOverrideRequest` | [ModelsCreateRegionOverrideRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_region_override_request.go) |
| `models.CreateSessionRequest` | [ModelsCreateSessionRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_create_session_request.go) |
| `models.DSMConfigExport` | [ModelsDSMConfigExport ](../dsmc-sdk/pkg/dsmcclientmodels/models_dsm_config_export.go) |
| `models.DSMConfigRecord` | [ModelsDSMConfigRecord ](../dsmc-sdk/pkg/dsmcclientmodels/models_dsm_config_record.go) |
| `models.DefaultProvider` | [ModelsDefaultProvider ](../dsmc-sdk/pkg/dsmcclientmodels/models_default_provider.go) |
| `models.DeploymentConfigOverride` | [ModelsDeploymentConfigOverride ](../dsmc-sdk/pkg/dsmcclientmodels/models_deployment_config_override.go) |
| `models.DeploymentWithOverride` | [ModelsDeploymentWithOverride ](../dsmc-sdk/pkg/dsmcclientmodels/models_deployment_with_override.go) |
| `models.DeregisterLocalServerRequest` | [ModelsDeregisterLocalServerRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_deregister_local_server_request.go) |
| `models.DetailedCountServerResponse` | [ModelsDetailedCountServerResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_detailed_count_server_response.go) |
| `models.GetImageDetailResponse` | [ModelsGetImageDetailResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_get_image_detail_response.go) |
| `models.GetImageLimitResponse` | [ModelsGetImageLimitResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_get_image_limit_response.go) |
| `models.GetImageLimitResponseData` | [ModelsGetImageLimitResponseData ](../dsmc-sdk/pkg/dsmcclientmodels/models_get_image_limit_response_data.go) |
| `models.GetImagePatchDetailResponse` | [ModelsGetImagePatchDetailResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_get_image_patch_detail_response.go) |
| `models.ImageRecord` | [ModelsImageRecord ](../dsmc-sdk/pkg/dsmcclientmodels/models_image_record.go) |
| `models.ImageRecordUpdate` | [ModelsImageRecordUpdate ](../dsmc-sdk/pkg/dsmcclientmodels/models_image_record_update.go) |
| `models.ImportResponse` | [ModelsImportResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_import_response.go) |
| `models.ListConfigResponse` | [ModelsListConfigResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_list_config_response.go) |
| `models.ListDeploymentResponse` | [ModelsListDeploymentResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_list_deployment_response.go) |
| `models.ListImagePatchesResponse` | [ModelsListImagePatchesResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_list_image_patches_response.go) |
| `models.ListImageResponse` | [ModelsListImageResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_list_image_response.go) |
| `models.ListPodConfigResponse` | [ModelsListPodConfigResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_list_pod_config_response.go) |
| `models.ListServerResponse` | [ModelsListServerResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_list_server_response.go) |
| `models.ListSessionResponse` | [ModelsListSessionResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_list_session_response.go) |
| `models.MatchResult.notification_payload` | [ModelsMatchResultNotificationPayload ](../dsmc-sdk/pkg/dsmcclientmodels/models_match_result_notification_payload.go) |
| `models.PagingCursor` | [ModelsPagingCursor ](../dsmc-sdk/pkg/dsmcclientmodels/models_paging_cursor.go) |
| `models.PatchImageRecord` | [ModelsPatchImageRecord ](../dsmc-sdk/pkg/dsmcclientmodels/models_patch_image_record.go) |
| `models.PodConfigRecord` | [ModelsPodConfigRecord ](../dsmc-sdk/pkg/dsmcclientmodels/models_pod_config_record.go) |
| `models.PodCountConfigOverride` | [ModelsPodCountConfigOverride ](../dsmc-sdk/pkg/dsmcclientmodels/models_pod_count_config_override.go) |
| `models.RegisterLocalServerRequest` | [ModelsRegisterLocalServerRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_register_local_server_request.go) |
| `models.RegisterServerRequest` | [ModelsRegisterServerRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_register_server_request.go) |
| `models.RequestMatchMember` | [ModelsRequestMatchMember ](../dsmc-sdk/pkg/dsmcclientmodels/models_request_match_member.go) |
| `models.RequestMatchParty` | [ModelsRequestMatchParty ](../dsmc-sdk/pkg/dsmcclientmodels/models_request_match_party.go) |
| `models.RequestMatchingAlly` | [ModelsRequestMatchingAlly ](../dsmc-sdk/pkg/dsmcclientmodels/models_request_matching_ally.go) |
| `models.Server` | [ModelsServer ](../dsmc-sdk/pkg/dsmcclientmodels/models_server.go) |
| `models.ServerLogs` | [ModelsServerLogs ](../dsmc-sdk/pkg/dsmcclientmodels/models_server_logs.go) |
| `models.ServerSessionResponse` | [ModelsServerSessionResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_server_session_response.go) |
| `models.Session` | [ModelsSession ](../dsmc-sdk/pkg/dsmcclientmodels/models_session.go) |
| `models.SessionResponse` | [ModelsSessionResponse ](../dsmc-sdk/pkg/dsmcclientmodels/models_session_response.go) |
| `models.ShutdownServerRequest` | [ModelsShutdownServerRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_shutdown_server_request.go) |
| `models.StatusHistory` | [ModelsStatusHistory ](../dsmc-sdk/pkg/dsmcclientmodels/models_status_history.go) |
| `models.UpdateDSMConfigRequest` | [ModelsUpdateDSMConfigRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_update_dsm_config_request.go) |
| `models.UpdateDeploymentOverrideRequest` | [ModelsUpdateDeploymentOverrideRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_update_deployment_override_request.go) |
| `models.UpdateDeploymentRequest` | [ModelsUpdateDeploymentRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_update_deployment_request.go) |
| `models.UpdatePodConfigRequest` | [ModelsUpdatePodConfigRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_update_pod_config_request.go) |
| `models.UpdatePortRequest` | [ModelsUpdatePortRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_update_port_request.go) |
| `models.UpdateRegionOverrideRequest` | [ModelsUpdateRegionOverrideRequest ](../dsmc-sdk/pkg/dsmcclientmodels/models_update_region_override_request.go) |
| `response.Error` | [ResponseError ](../dsmc-sdk/pkg/dsmcclientmodels/response_error.go) |
