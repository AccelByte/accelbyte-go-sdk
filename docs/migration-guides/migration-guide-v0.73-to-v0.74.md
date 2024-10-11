# [v0.74.0]

## BREAKING CHANGE

### AMS

- Model `amsclientmodels.ApiInstanceTypeDescriptionResponse`
  - Renamed to `amsclientmodels.ApiAvailableInstanceType`.
- Model `amsclientmodels.ApiFleetParameters`
  - field `DsHostConfiguration` type changed from `ApiDSHostConfiguration` to `ApiDSHostConfigurationParameters`.

The following operation(s) has been updated.
- Operation `AccelByte.Sdk/Api/Ams/Operation/Fleets/FleetServers`
  - parameter `Count ` type change from `*string` to `*int64`.

### Challenge

- Model `challengeclientmodels.ModelUserReward`
  - String enum value `CLAIM` renamed to `CLAIMED` in `ModelUserRewardStatus`.

### Cloudsave

- Model `cloudsaveclientmodels.ModelsAdminConcurrentRecordRequest`
  - field `UpdatedAt` type changed from `*string` to `strfmt.DateTime`.
- Model `cloudsaveclientmodels.ModelsAdminGameConcurrentRecordRequest`
  - field `UpdatedAt` type changed from `*string` to `strfmt.DateTime`.
- Model `cloudsaveclientmodels.ModelsAdminPlayerConcurrentRecordRequest`
  - field `UpdatedAt` type changed from `*string` to `strfmt.DateTime`.
- Model `cloudsaveclientmodels.ModelsConcurrentRecordRequest`
  - field `UpdatedAt` type changed from `*string` to `strfmt.DateTime`.

### Legal

- Model `legalclientmodels.RetrieveUserEligibilitiesResponse`
  - field `HiddenPublic` is removed.

### Platform

The following operation(s) has been updated.
- Operation `QueryEntitlements`
  - is switched with `QueryEntitlements1`.
- Operation `QueryFulfillments`
  - response type changed from `*platformclientmodels.FulfillmentHistoryPagingSlicedResult` to `*platformclientmodels.FulfillmentPagingSlicedResult`.
- Operation `PublicGetQRCode`
  - response type changed from `io.Writer` to `*platformclientmodels.BinarySchema`.

### Session
 
These operation(s) in `services-api/pkg/service/session/operations.go` have been removed.
- Operation `PprofHandler`
- Operation `AllocsHandler`
- Operation `BlockHandler`
- Operation `CmdlineHandler`
- Operation `GoroutineHandler`
- Operation `HeapHandler`
- Operation `MutexHandler`
- Operation `Profile`
- Operation `SymbolHandler`
- Operation `ThreadcreateHandler`
- Operation `TraceHandler`

### Session History

- Model `sessionhistoryclientmodels.ApimodelsXRayTicketObservabilityRequest`
  - field `PartyID` is removed.

[v0.74.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.73.0..v0.74.0