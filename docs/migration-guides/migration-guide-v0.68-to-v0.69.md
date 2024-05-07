# [v0.68.0]

## BREAKING CHANGE

### AMS

The following model(s) has been updated.

- Response property `createdAt` for `api.FleetServerInfoResponse` is now using `string` type instead of `time.Time`

### Game Telemetry

The following model(s) has been updated.

- Response property `EventTimeStamp` in `GetNamespaceEventResponse` is renamed to `EventTimestamp`

### Legal

The following model(s) has been updated.

- Add required field `exportId` for `InitiateExportAgreementsToCSVResponse`


### Platform

The following model(s) has been updated.

- Add required field `deduction` for `OrderInfo`

[v0.69.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.68.0..v0.69.0