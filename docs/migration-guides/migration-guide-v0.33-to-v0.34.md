<a name="v0.34.0"></a>
## [v0.34.0] - 2022-12-20

### BREAKING CHANGE
```
When using the sample-app, the import pkg path changed for following operation:

- github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/ { achievements → user_achievements } /adminListUserAchievements
- github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/ { achievements → user_achievements } /adminResetAchievement
- github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/ { achievements → user_achievements } /adminUnlockAchievement
- github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/ { achievements → user_achievements } /publicListUserAchievements
- github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/ { achievements → user_achievements } /publicUnlockAchievement

Following operation and wrapper, they moved from `dsmc` to `dslogmanager`:
- github.com/AccelByte/accelbyte-go-sdk/ { dsmc → dslogmanager } -sdk/pkg/ { dsmc → dslogmanager } client/admin
- github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ { dsmc → dslogmanager }
```

[v0.34.0]: https://github.com/AccelByte/accelbyte-go-sdk/compare/v0.33.0...v0.34.0