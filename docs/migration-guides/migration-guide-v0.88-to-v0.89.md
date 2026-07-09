# [v0.89.0]

### BREAKING CHANGE

### AMS

- Operation `Func1` renamed to `VersionInfo`
  - `ams-sdk/pkg/amsclient/fleet_commander`: `Func1Params`/`Func1OK`/`Func1Reader` renamed to `VersionInfoParams`/`VersionInfoOK`/`VersionInfoReader`
  - `services-api/pkg/service/ams`: `FleetCommanderService.Func1`/`Func1Short` renamed to `VersionInfo`/`VersionInfoShort`
- Operation `FleetCreate`
  - Low-level client method `amsclient/fleets.Client.FleetCreate` gained a new `*FleetCreateConflict` (409) return value inserted into the return tuple (only affects direct low-level client callers, not `FleetCreateShort` or the service wrapper)
- Operation `FleetUpdate`
  - Same as above: low-level `Client.FleetUpdate` gained a new `*FleetUpdateConflict` (409) return value
- New optional query parameter `IncludeInactiveRegions *bool` added to `FleetGetParams` and `FleetListParams`

### Challenge

- Operation `GetChallenges` renamed to `PublicGetChallenges`
  - `challenge-sdk/pkg/challengeclient/challenge_list`: `GetChallengesParams` renamed to `PublicGetChallengesParams` (including all `GetChallenges*` sort/status enum constants)
  - `services-api/pkg/service/challenge`: `ChallengeListService.GetChallenges`/`GetChallengesShort` renamed to `PublicGetChallenges`/`PublicGetChallengesShort`
- Operation `EvaluateMyProgress` renamed to `PublicEvaluateMyProgress`
  - `challenge-sdk/pkg/challengeclient/challenge_progression`: params/responses renamed accordingly
  - `services-api/pkg/service/challenge`: `ChallengeProgressionService.EvaluateMyProgress`/`EvaluateMyProgressShort` renamed to `PublicEvaluateMyProgress`/`PublicEvaluateMyProgressShort`

### Chat

- Model `APISendChatParams`
  - New required field `Metadata *string` added
- Model `ModelsChatMessageResponse`
  - New required field `Metadata *string` added

### CSM

- Model `ApimodelAppItem`
  - Field `RedeploymentInfo *ModelAppRedeploymentInfo` removed (models `ModelAppRedeploymentInfo`/`ModelAppRedeploymentDetail` removed from `csmclientmodels`)
  - New required field `EnableDebugMode *bool` added
- Operation `GetNoSQLAppListV2`
  - Request parameter `GetNoSQLAppListV2Params.Namespace *string` (query `namespace`) renamed to `GameNamespace *string` (query `gameNamespace`)

### GDPR

- The following operations moved from `DataDeletionService` to a new `DataDeletionHeadlessService` (method names and endpoints unchanged — only the owning service struct changed):
  - `PublicSubmitMyAccountDeletionRequest`/`PublicSubmitMyAccountDeletionRequestShort`
  - `PublicCancelMyAccountDeletionRequest`/`PublicCancelMyAccountDeletionRequestShort`
  - `PublicGetMyAccountDeletionStatus`/`PublicGetMyAccountDeletionStatusShort`

  Migration: replace `gdprService.DataDeletionService.PublicSubmitMyAccountDeletionRequest(...)` with `gdprService.DataDeletionHeadlessService.PublicSubmitMyAccountDeletionRequest(...)` (and similarly for the other two methods).
- Operation `AdminGetUserPersonalDataRequests` (data_retrieval) and `AdminGetUserPlatformAccountClosureHistories` (platform_account_closure_history)
  - Low-level (deprecated, non-`Short`) client methods gained a new `NotFound` (404) return value inserted into the return tuple

### IAM

- Operation `PlatformTokenRequestHandler` renamed to `NamespaceScopedPlatformTokenGrant`
  - `iam-sdk/pkg/iamclient/o_auth`: `PlatformTokenRequestHandlerParams`/`...OK`/`...BadRequest`/`...Unauthorized` renamed to `NamespaceScopedPlatformTokenGrant*`
  - `services-api/pkg/service/iam`: `OAuthService.PlatformTokenRequestHandler`/`PlatformTokenRequestHandlerShort` renamed to `NamespaceScopedPlatformTokenGrant`/`NamespaceScopedPlatformTokenGrantShort`
- Model `ModelLinkRequest` renamed to `ModelReAuthRequest`
  - This is the response payload type of two operations whose names did not change:
    - `UsersService.PublicGetAsyncStatus`/`PublicGetAsyncStatusShort` now returns `*iamclientmodels.ModelReAuthRequest`
    - `UsersService.PublicProcessWebLinkPlatformV3`/`PublicProcessWebLinkPlatformV3Short` now returns `*iamclientmodels.ModelReAuthRequest`
- Operation `PublicWebLinkPlatform`
  - Low-level (deprecated, non-`Short`) client method gained a new `InternalServerError` (500) return value inserted into the return tuple
- Operation `AdminUpdateAvailablePermissionsByModule`
  - Behavioral change (no Go signature change): the `groups` array in the request now represents the full desired state — any existing group previously assigned but omitted from the list is now treated as removed, instead of being merged additively

### Leaderboard

- Model `ModelsGetLeaderboardConfigRespV3`
  - New required field `EnableServerHiddenFilter *bool` added
- New optional query parameter `IncludeHiddenUsers *bool` added to `GetAllTimeLeaderboardRankingAdminV3Params` and `GetCurrentCycleLeaderboardRankingAdminV3Params`

[v0.89.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.88.0..v0.89.0
