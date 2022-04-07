# Seasonpass Service Index

&nbsp;

## Operations

### Season Wrapper:  [Season](../services-api/pkg/service/seasonpass/season.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/seasonpass/admin/namespaces/{namespace}/seasons` | GET | QuerySeasonsShort | [QuerySeasonsShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [QuerySeasonsShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons` | POST | CreateSeasonShort | [CreateSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [CreateSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/current` | GET | GetCurrentSeasonShort | [GetCurrentSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetCurrentSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}` | GET | GetSeasonShort | [GetSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}` | DELETE | DeleteSeasonShort | [DeleteSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [DeleteSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}` | PATCH | UpdateSeasonShort | [UpdateSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [UpdateSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone` | POST | CloneSeasonShort | [CloneSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [CloneSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish` | PUT | PublishSeasonShort | [PublishSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [PublishSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire` | PUT | RetireSeasonShort | [RetireSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [RetireSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish` | PUT | UnpublishSeasonShort | [UnpublishSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [UnpublishSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons` | GET | GetUserParticipatedSeasonsShort | [GetUserParticipatedSeasonsShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetUserParticipatedSeasonsShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any` | GET | ExistsAnyPassByPassCodesShort | [ExistsAnyPassByPassCodesShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [ExistsAnyPassByPassCodesShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression` | GET | GetCurrentUserSeasonProgressionShort | [GetCurrentUserSeasonProgressionShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetCurrentUserSeasonProgressionShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable` | POST | CheckSeasonPurchasableShort | [CheckSeasonPurchasableShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [CheckSeasonPurchasableShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset` | DELETE | ResetUserSeasonShort | [ResetUserSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [ResetUserSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data` | GET | GetUserSeasonShort | [GetUserSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [GetUserSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/public/namespaces/{namespace}/seasons/current` | GET | PublicGetCurrentSeasonShort | [PublicGetCurrentSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [PublicGetCurrentSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data` | GET | PublicGetCurrentUserSeasonShort | [PublicGetCurrentUserSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [PublicGetCurrentUserSeasonShort](../services-api/pkg/service/seasonpass/season.go) |
| `/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data` | GET | PublicGetUserSeasonShort | [PublicGetUserSeasonShort](../seasonpass-sdk/pkg/seasonpassclient/season/season_client.go) | [PublicGetUserSeasonShort](../services-api/pkg/service/seasonpass/season.go) |

### Pass Wrapper:  [Pass](../services-api/pkg/service/seasonpass/pass.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes` | GET | QueryPassesShort | [QueryPassesShort](../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [QueryPassesShort](../services-api/pkg/service/seasonpass/pass.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes` | POST | CreatePassShort | [CreatePassShort](../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [CreatePassShort](../services-api/pkg/service/seasonpass/pass.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}` | GET | GetPassShort | [GetPassShort](../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [GetPassShort](../services-api/pkg/service/seasonpass/pass.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}` | DELETE | DeletePassShort | [DeletePassShort](../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [DeletePassShort](../services-api/pkg/service/seasonpass/pass.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code}` | PATCH | UpdatePassShort | [UpdatePassShort](../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [UpdatePassShort](../services-api/pkg/service/seasonpass/pass.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes` | POST | GrantUserPassShort | [GrantUserPassShort](../seasonpass-sdk/pkg/seasonpassclient/pass/pass_client.go) | [GrantUserPassShort](../services-api/pkg/service/seasonpass/pass.go) |

### Reward Wrapper:  [Reward](../services-api/pkg/service/seasonpass/reward.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards` | GET | QueryRewardsShort | [QueryRewardsShort](../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [QueryRewardsShort](../services-api/pkg/service/seasonpass/reward.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards` | POST | CreateRewardShort | [CreateRewardShort](../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [CreateRewardShort](../services-api/pkg/service/seasonpass/reward.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}` | GET | GetRewardShort | [GetRewardShort](../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [GetRewardShort](../services-api/pkg/service/seasonpass/reward.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}` | DELETE | DeleteRewardShort | [DeleteRewardShort](../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [DeleteRewardShort](../services-api/pkg/service/seasonpass/reward.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code}` | PATCH | UpdateRewardShort | [UpdateRewardShort](../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [UpdateRewardShort](../services-api/pkg/service/seasonpass/reward.go) |
| `/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards` | POST | PublicClaimUserRewardShort | [PublicClaimUserRewardShort](../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [PublicClaimUserRewardShort](../services-api/pkg/service/seasonpass/reward.go) |
| `/seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk` | POST | PublicBulkClaimUserRewardsShort | [PublicBulkClaimUserRewardsShort](../seasonpass-sdk/pkg/seasonpassclient/reward/reward_client.go) | [PublicBulkClaimUserRewardsShort](../services-api/pkg/service/seasonpass/reward.go) |

### Tier Wrapper:  [Tier](../services-api/pkg/service/seasonpass/tier.go)
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers` | GET | QueryTiersShort | [QueryTiersShort](../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [QueryTiersShort](../services-api/pkg/service/seasonpass/tier.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers` | POST | CreateTierShort | [CreateTierShort](../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [CreateTierShort](../services-api/pkg/service/seasonpass/tier.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}` | PUT | UpdateTierShort | [UpdateTierShort](../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [UpdateTierShort](../services-api/pkg/service/seasonpass/tier.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}` | DELETE | DeleteTierShort | [DeleteTierShort](../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [DeleteTierShort](../services-api/pkg/service/seasonpass/tier.go) |
| `/seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder` | PUT | ReorderTierShort | [ReorderTierShort](../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [ReorderTierShort](../services-api/pkg/service/seasonpass/tier.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp` | POST | GrantUserExpShort | [GrantUserExpShort](../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [GrantUserExpShort](../services-api/pkg/service/seasonpass/tier.go) |
| `/seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers` | POST | GrantUserTierShort | [GrantUserTierShort](../seasonpass-sdk/pkg/seasonpassclient/tier/tier_client.go) | [GrantUserTierShort](../services-api/pkg/service/seasonpass/tier.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `ClaimableRewards` | [ClaimableRewards ](../seasonpass-sdk/pkg/seasonpassclientmodels/claimable_rewards.go) |
| `ClaimableUserSeasonInfo` | [ClaimableUserSeasonInfo ](../seasonpass-sdk/pkg/seasonpassclientmodels/claimable_user_season_info.go) |
| `ErrorEntity` | [ErrorEntity ](../seasonpass-sdk/pkg/seasonpassclientmodels/error_entity.go) |
| `ExcessStrategy` | [ExcessStrategy ](../seasonpass-sdk/pkg/seasonpassclientmodels/excess_strategy.go) |
| `FieldValidationError` | [FieldValidationError ](../seasonpass-sdk/pkg/seasonpassclientmodels/field_validation_error.go) |
| `Image` | [Image ](../seasonpass-sdk/pkg/seasonpassclientmodels/image.go) |
| `ListSeasonInfo` | [ListSeasonInfo ](../seasonpass-sdk/pkg/seasonpassclientmodels/list_season_info.go) |
| `ListSeasonInfoPagingSlicedResult` | [ListSeasonInfoPagingSlicedResult ](../seasonpass-sdk/pkg/seasonpassclientmodels/list_season_info_paging_sliced_result.go) |
| `ListUserSeasonInfo` | [ListUserSeasonInfo ](../seasonpass-sdk/pkg/seasonpassclientmodels/list_user_season_info.go) |
| `ListUserSeasonInfoPagingSlicedResult` | [ListUserSeasonInfoPagingSlicedResult ](../seasonpass-sdk/pkg/seasonpassclientmodels/list_user_season_info_paging_sliced_result.go) |
| `Localization` | [Localization ](../seasonpass-sdk/pkg/seasonpassclientmodels/localization.go) |
| `LocalizedPassInfo` | [LocalizedPassInfo ](../seasonpass-sdk/pkg/seasonpassclientmodels/localized_pass_info.go) |
| `LocalizedSeasonInfo` | [LocalizedSeasonInfo ](../seasonpass-sdk/pkg/seasonpassclientmodels/localized_season_info.go) |
| `Ownership` | [Ownership ](../seasonpass-sdk/pkg/seasonpassclientmodels/ownership.go) |
| `Paging` | [Paging ](../seasonpass-sdk/pkg/seasonpassclientmodels/paging.go) |
| `PassCreate` | [PassCreate ](../seasonpass-sdk/pkg/seasonpassclientmodels/pass_create.go) |
| `PassInfo` | [PassInfo ](../seasonpass-sdk/pkg/seasonpassclientmodels/pass_info.go) |
| `PassUpdate` | [PassUpdate ](../seasonpass-sdk/pkg/seasonpassclientmodels/pass_update.go) |
| `RewardCreate` | [RewardCreate ](../seasonpass-sdk/pkg/seasonpassclientmodels/reward_create.go) |
| `RewardCurrency` | [RewardCurrency ](../seasonpass-sdk/pkg/seasonpassclientmodels/reward_currency.go) |
| `RewardInfo` | [RewardInfo ](../seasonpass-sdk/pkg/seasonpassclientmodels/reward_info.go) |
| `RewardUpdate` | [RewardUpdate ](../seasonpass-sdk/pkg/seasonpassclientmodels/reward_update.go) |
| `SeasonCloneRequest` | [SeasonCloneRequest ](../seasonpass-sdk/pkg/seasonpassclientmodels/season_clone_request.go) |
| `SeasonCreate` | [SeasonCreate ](../seasonpass-sdk/pkg/seasonpassclientmodels/season_create.go) |
| `SeasonInfo` | [SeasonInfo ](../seasonpass-sdk/pkg/seasonpassclientmodels/season_info.go) |
| `SeasonSummary` | [SeasonSummary ](../seasonpass-sdk/pkg/seasonpassclientmodels/season_summary.go) |
| `SeasonUpdate` | [SeasonUpdate ](../seasonpass-sdk/pkg/seasonpassclientmodels/season_update.go) |
| `Tier` | [Tier ](../seasonpass-sdk/pkg/seasonpassclientmodels/tier.go) |
| `TierCreate` | [TierCreate ](../seasonpass-sdk/pkg/seasonpassclientmodels/tier_create.go) |
| `TierInput` | [TierInput ](../seasonpass-sdk/pkg/seasonpassclientmodels/tier_input.go) |
| `TierPagingSlicedResult` | [TierPagingSlicedResult ](../seasonpass-sdk/pkg/seasonpassclientmodels/tier_paging_sliced_result.go) |
| `TierReorder` | [TierReorder ](../seasonpass-sdk/pkg/seasonpassclientmodels/tier_reorder.go) |
| `UserExpGrant` | [UserExpGrant ](../seasonpass-sdk/pkg/seasonpassclientmodels/user_exp_grant.go) |
| `UserPassGrant` | [UserPassGrant ](../seasonpass-sdk/pkg/seasonpassclientmodels/user_pass_grant.go) |
| `UserPurchasable` | [UserPurchasable ](../seasonpass-sdk/pkg/seasonpassclientmodels/user_purchasable.go) |
| `UserRewardClaim` | [UserRewardClaim ](../seasonpass-sdk/pkg/seasonpassclientmodels/user_reward_claim.go) |
| `UserSeasonSummary` | [UserSeasonSummary ](../seasonpass-sdk/pkg/seasonpassclientmodels/user_season_summary.go) |
| `UserTierGrant` | [UserTierGrant ](../seasonpass-sdk/pkg/seasonpassclientmodels/user_tier_grant.go) |
| `ValidationErrorEntity` | [ValidationErrorEntity ](../seasonpass-sdk/pkg/seasonpassclientmodels/validation_error_entity.go) |
