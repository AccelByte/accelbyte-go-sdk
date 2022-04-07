# Gdpr Service Index

&nbsp;

## Operations

### Data Deletion Wrapper:  [DataDeletion](../services-api/pkg/service/gdpr/dataDeletion.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/gdpr/admin/namespaces/{namespace}/deletions` | GET | AdminGetListDeletionDataRequestShort | [AdminGetListDeletionDataRequestShort](../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [AdminGetListDeletionDataRequestShort](../services-api/pkg/service/gdpr/dataDeletion.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions` | GET | AdminGetUserAccountDeletionRequestShort | [AdminGetUserAccountDeletionRequestShort](../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [AdminGetUserAccountDeletionRequestShort](../services-api/pkg/service/gdpr/dataDeletion.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions` | POST | AdminSubmitUserAccountDeletionRequestShort | [AdminSubmitUserAccountDeletionRequestShort](../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [AdminSubmitUserAccountDeletionRequestShort](../services-api/pkg/service/gdpr/dataDeletion.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/deletions` | DELETE | AdminCancelUserAccountDeletionRequestShort | [AdminCancelUserAccountDeletionRequestShort](../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [AdminCancelUserAccountDeletionRequestShort](../services-api/pkg/service/gdpr/dataDeletion.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/deletions` | POST | PublicSubmitUserAccountDeletionRequestShort | [PublicSubmitUserAccountDeletionRequestShort](../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicSubmitUserAccountDeletionRequestShort](../services-api/pkg/service/gdpr/dataDeletion.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/deletions` | DELETE | PublicCancelUserAccountDeletionRequestShort | [PublicCancelUserAccountDeletionRequestShort](../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicCancelUserAccountDeletionRequestShort](../services-api/pkg/service/gdpr/dataDeletion.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/deletions/status` | GET | PublicGetUserAccountDeletionStatusShort | [PublicGetUserAccountDeletionStatusShort](../gdpr-sdk/pkg/gdprclient/data_deletion/data_deletion_client.go) | [PublicGetUserAccountDeletionStatusShort](../services-api/pkg/service/gdpr/dataDeletion.go) |

### Data Retrieval Wrapper:  [DataRetrieval](../services-api/pkg/service/gdpr/dataRetrieval.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/gdpr/admin/namespaces/{namespace}/emails/configurations` | GET | GetAdminEmailConfigurationShort | [GetAdminEmailConfigurationShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [GetAdminEmailConfigurationShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/emails/configurations` | PUT | UpdateAdminEmailConfigurationShort | [UpdateAdminEmailConfigurationShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [UpdateAdminEmailConfigurationShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/emails/configurations` | POST | SaveAdminEmailConfigurationShort | [SaveAdminEmailConfigurationShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [SaveAdminEmailConfigurationShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/emails/configurations` | DELETE | DeleteAdminEmailConfigurationShort | [DeleteAdminEmailConfigurationShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [DeleteAdminEmailConfigurationShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/requests` | GET | AdminGetListPersonalDataRequestShort | [AdminGetListPersonalDataRequestShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminGetListPersonalDataRequestShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/requests` | GET | AdminGetUserPersonalDataRequestsShort | [AdminGetUserPersonalDataRequestsShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminGetUserPersonalDataRequestsShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/requests` | POST | AdminRequestDataRetrievalShort | [AdminRequestDataRetrievalShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminRequestDataRetrievalShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}` | DELETE | AdminCancelUserPersonalDataRequestShort | [AdminCancelUserPersonalDataRequestShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminCancelUserPersonalDataRequestShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` | POST | AdminGeneratePersonalDataURLShort | [AdminGeneratePersonalDataURLShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [AdminGeneratePersonalDataURLShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/requests` | GET | PublicGetUserPersonalDataRequestsShort | [PublicGetUserPersonalDataRequestsShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [PublicGetUserPersonalDataRequestsShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/requests` | POST | PublicRequestDataRetrievalShort | [PublicRequestDataRetrievalShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [PublicRequestDataRetrievalShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}` | DELETE | PublicCancelUserPersonalDataRequestShort | [PublicCancelUserPersonalDataRequestShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [PublicCancelUserPersonalDataRequestShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |
| `/gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}/generate` | POST | PublicGeneratePersonalDataURLShort | [PublicGeneratePersonalDataURLShort](../gdpr-sdk/pkg/gdprclient/data_retrieval/data_retrieval_client.go) | [PublicGeneratePersonalDataURLShort](../services-api/pkg/service/gdpr/dataRetrieval.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `models.DataRetrievalResponse` | [ModelsDataRetrievalResponse ](../gdpr-sdk/pkg/gdprclientmodels/models_data_retrieval_response.go) |
| `models.DeletionData` | [ModelsDeletionData ](../gdpr-sdk/pkg/gdprclientmodels/models_deletion_data.go) |
| `models.DeletionStatus` | [ModelsDeletionStatus ](../gdpr-sdk/pkg/gdprclientmodels/models_deletion_status.go) |
| `models.ListDeletionDataResponse` | [ModelsListDeletionDataResponse ](../gdpr-sdk/pkg/gdprclientmodels/models_list_deletion_data_response.go) |
| `models.ListPersonalDataResponse` | [ModelsListPersonalDataResponse ](../gdpr-sdk/pkg/gdprclientmodels/models_list_personal_data_response.go) |
| `models.Pagination` | [ModelsPagination ](../gdpr-sdk/pkg/gdprclientmodels/models_pagination.go) |
| `models.PersonalData` | [ModelsPersonalData ](../gdpr-sdk/pkg/gdprclientmodels/models_personal_data.go) |
| `models.RequestDeleteResponse` | [ModelsRequestDeleteResponse ](../gdpr-sdk/pkg/gdprclientmodels/models_request_delete_response.go) |
| `models.UserDataURL` | [ModelsUserDataURL ](../gdpr-sdk/pkg/gdprclientmodels/models_user_data_url.go) |
| `models.UserPersonalData` | [ModelsUserPersonalData ](../gdpr-sdk/pkg/gdprclientmodels/models_user_personal_data.go) |
| `models.UserPersonalDataResponse` | [ModelsUserPersonalDataResponse ](../gdpr-sdk/pkg/gdprclientmodels/models_user_personal_data_response.go) |
| `response.Error` | [ResponseError ](../gdpr-sdk/pkg/gdprclientmodels/response_error.go) |
