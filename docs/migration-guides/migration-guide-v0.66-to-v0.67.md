# [v0.66.0]

### BREAKING CHANGE

### AMS

The following operation(s) has been updated.

- New required property `active` on `api.FleetListItemResponse` model.

### Challenge

The following operation(s) has been updated.

- Operation `GetScheduledGoals` now returns `[]*challengeclientmodels.ModelGoalResponse` instead of `*challengeclientmodels.ModelGetGoalsResponse`.

### Chat

The following operation(s) has been updated.

- `models.CategoryHook` params changed from `string` to `object`

### IAM

The following operation(s) has been updated.

- New required property `platformGroup` on `accountcommon.DistinctLinkedPlatformV3` model.

### Match2

The following operation(s) has been updated.

- New required property `IsFull` on `models.GameSession` model.
- New required property `PlatformID` on `player.PlayerData` model.

### Matchmaking

The following operation(s) has been updated.

- Some enums are removed from the selection.

### Session

The following operation(s) has been updated.

- New required property `simultaneousPlatform` on `apimodels.PlayerAttributesRequestBody` model.
- New required property `previousStatus` on `apimodels.UserResponse` model.
