# [v0.75.0]

## BREAKING CHANGE

### AMS

- Model `ApiFleetArtifactsSampleRules`
  - field `Coredumps ` type changed from `ApiArtifactTypeSamplingRules` to `ApiCoredumpSamplingRules`.
- Model `ApiAvailableInstanceType`
  - Renamed to `ApiInstanceTypeForNamespaceResponse`.
- Model `ApiAvailableInstanceTypesResponse`
  - Renamed to `ApiInstanceTypesForNamespaceResponse`.

The following operation(s) has been updated.
- Operation `InfoSupportedInstances`
  - response type changed from `ApiAvailableInstanceTypesResponse` to `ApiInstanceTypesForNamespaceResponse`.
- Operation `AdminAccountLinkTokenPost`
  - Renamed to `AdminAccountLink`.

### Session

- Model `ApimodelsPutPlatformCredentialsRequest`
  - field `Psn` type changed from `ModelsPSNAppServerCredentials` to `ApimodelsPSNAppServerCredentialRecord`.

The following operation(s) has been updated.
- Operation `HandleUploadXboxPFXCertificate`
  - Renamed to `AdminUploadXBoxCertificate`.
  - It is marked as deprecated.

[v0.75.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.74.0..v0.75.0