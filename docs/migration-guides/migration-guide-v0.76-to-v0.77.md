# [v0.77.0]

### BREAKING CHANGE

### AMS

- Model `APIInstanceTypeForNamespaceResponse`
  - Renamed to `APIInstanceType`.
- Model `APIInstanceTypesForNamespaceResponse`
  - Renamed to `APIInstanceTypesResponse`.
    The following operation(s) has been updated.
- Operation `InfoSupportedInstances`
  - response type changed from `APIInstanceTypesForNamespaceResponse` to `APIInstanceTypesResponse`.

### Challenge

- Model `ModelCreateGoalRequest`
  - field `Schedule` type changed from `ModelGoalSchedule` to `ModelGoalScheduleRequest`.
- Model `ModelUpdateGoalRequest`
  - field `Schedule` type changed from `ModelGoalSchedule` to `ModelGoalScheduleRequest`.

### Chat

The following operation(s) has been updated.
- Operation `AdminProfanityCreateBulk`
  - removed the response type changed `*chatclientmodels.ModelsDictionary`.

### GDPR

The following operation(s) has been updated.
- Operation `AdminGeneratePersonalDataURL`
  - parameter `Password` is changed from required to optional.

### IAM

The following operation(s) has been updated.
- Operation `PublicUpgradeHeadlessWithCodeV4Forward`
  - request body type changed from `AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4 ` to `AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4`.

[v0.77.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.76.0..v0.77.0