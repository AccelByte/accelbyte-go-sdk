<a name="v0.40.0"></a>

## [v0.40.0] - 2023-03-14

### BREAKING CHANGE

#### Following changes in OpenAPI spec:

1. Platform (IAP) Service

   - removed `UserID` field from `github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/iap.SyncTwitchDropsEntitlementParams`
   - function `github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform.IAPService.SyncTwitchDropsEntitlementShort()` now return 2 values

#### Go Version Updated to 1.18

Required go version to build the project >= **go 1.18**
