# [v0.61.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

### Platform
The following operation(s) has been updated.
- Operation `ConsumeUserEntitlement`
  - The request params `ConsumeUserEntitlementParams` body type changed from `EntitlementDecrement` to `AdminEntitlementDecrement`
- Operation `SellUserEntitlement`
  - The request params `SellUserEntitlementParams` body type changed from `EntitlementSoldRequest` to `AdminEntitlementSoldRequest`.

### Session
The following model(s) are renamed.
```
- sessionclientmodels.{ ModelsUserInfo -> ModelsUserInfoResponse }
```

[v0.61.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.60.0..v0.61.0