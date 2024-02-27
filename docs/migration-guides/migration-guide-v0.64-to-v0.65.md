# [v0.65.0]

### BREAKING CHANGE

### Cloudsave

Some operations are moved to different package due to OpenAPI spec tag renaming.

- Package `github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/ { tags → admin_tags }`
    - Operation `AdminDeleteTagHandlerV1`
    - Operation `AdminListTagsHandlerV1`
    - Operation `AdminPostTagHandlerV1`
- Package `github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/ { tags → public_tags }`
    - Operation `PublicListTagsHandlerV1`

### IAM

The following operation(s) has been updated.

- Operation `PublicPartialUpdateUserV3`
    - body type changed from `*iamclientmodels.{ ModelUserUpdateRequestV3 -> ModelPublicUserUpdateRequestV3 }`
- Operation `UpdateUserV3`
    - body type changed from `*iamclientmodels.{ ModelUserUpdateRequestV3 -> ModelPublicUserUpdateRequestV3 }`
- Operation `PublicUpdateUserV4`
    - body type changed from `*iamclientmodels.{ ModelUserUpdateRequestV3 -> ModelPublicUserUpdateRequestV3 }`

[v0.65.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.64.0..v0.65.0