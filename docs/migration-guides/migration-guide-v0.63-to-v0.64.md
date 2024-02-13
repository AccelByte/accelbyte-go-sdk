# [v0.64.0]

### BREAKING CHANGE

### AMS
The following model(s) has been updated.
- Model `ApiDSHistoryEvent`
- field `GameSession` is removed

The following operation(s) has been updated.
- Operation `ArtifactGet`
  - Return type changed from `[]*amsclientmodels.APIArtifactResponse` to `*amsclientmodels.APIArtifactListResponse`

### Cloudsave
The following operation(s) has been updated.
- Operation `AdminGetGameBinaryRecordV1`
  - Return type changed from `*cloudsaveclientmodels.{ ModelsGameBinaryRecordResponse -> ModelsGameBinaryRecordAdminResponse }`
- Operation `AdminListGameBinaryRecordsV1`
  - Return type changed from `*cloudsaveclientmodels.{ ModelsListGameBinaryRecordsResponse -> ModelsListGameBinaryRecordsAdminResponse }`
- Operation `AdminPutGameBinaryRecordV1`
  - Return type changed from `*cloudsaveclientmodels.{ ModelsGameBinaryRecordResponse -> ModelsGameBinaryRecordAdminResponse }`
- Operation `AdminPutGameBinaryRecorMetadataV1`
  - Return type changed from `*cloudsaveclientmodels.{ ModelsGameBinaryRecordResponse -> ModelsGameBinaryRecordAdminResponse }`
- Operation `AdminGetGameRecordHandlerV1`
  - Return type changed from `*cloudsaveclientmodels.{ ModelsGameRecordResponse -> ModelsGameRecordAdminResponse }`
- Operation `AdminPostGameRecordHandlerV1`
  - Return type changed from `*cloudsaveclientmodels.{ ModelsGameRecordResponse -> ModelsGameRecordAdminResponse }`
- Operation `AdminPutGameRecordHandlerV1`
  - Return type changed from `*cloudsaveclientmodels.{ ModelsGameRecordResponse -> ModelsGameRecordAdminResponse }`

### IAM
- Operation `CreateUserFromInvitationV3`
  - body type changed from `*iamclientmodels.{ ModelUserCreateFromInvitationRequestV3 -> ModelUserCreateRequestV3 }`
- Operation `CreateUserFromInvitationV4`
  - body type changed from `*iamclientmodels.{ ModelUserCreateFromInvitationRequestV4 -> AccountCreateUserRequestV4 }`

  
[v0.64.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.63.0..v0.64.0