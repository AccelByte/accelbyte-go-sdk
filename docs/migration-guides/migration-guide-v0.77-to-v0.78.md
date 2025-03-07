# [v0.78.0]

### BREAKING CHANGE

### ams

- Model `ApiFleetServerConnectionInfoResponse`
  - field `ExpiresAt` type changed from `ApiTime` to `*string`.
- Model `ApiTime` is removed.
- Model `TimeLocation` is removed.
- Model `TimeZone` is removed.
- Model `TimeZoneTrans` is removed.
- Operation `FleetList`
  - parameter `Desc` is removed.
  - new parameter `SortDirection` is introduced.
  
### social
- Operation `PublicQueryUserStatItems`
  - is switched with `PublicQueryUserStatItems1`

### platform
- Operation `DisableItem`
  - request body is now required.

### session
- Model `ApimodelsUpdateGamesessionDSInformationRequest`
  - field `ClientVersion` is removed.
  - field `GameMode` is removed.

[v0.78.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.77.0..v0.78.0