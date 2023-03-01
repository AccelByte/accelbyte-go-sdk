<a name="v0.39.0"></a>

## [v0.39.0] - 2023-2-28

### BREAKING CHANGE

#### Following changes in OpenAPI spec:

1. Achievement
   - in struct params `achievement-sdk/pkg/achievementclient/global_achievements/PublicListGlobalAchievementsParams`
    updated property from `AchievementCode` to `AchievementCodes`

2. Group
   - struct rename `github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group/{ModelsPublicGetGroupListRequestV2 -> GetListGroupByIDsV2Params}`

3. Lobby

    Following operations are moved into different service type name:
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.CreateTemplate()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.CreateTemplateShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.DeleteTemplateLocalization()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.DeleteTemplateLocalizationShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.DeleteTemplateSlug()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.DeleteTemplateSlugShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.FreeFormNotification()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.FreeFormNotificationShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetGameTemplate()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetGameTemplateShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetLocalizationTemplate()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetLocalizationTemplateShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetSlugTemplate()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetSlugTemplateShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.NotificationWithTemplate()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.NotificationWithTemplateShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.PublishTemplate()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.PublishTemplateShort()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.UpdateLocalizationTemplate()`
   - `services-api/pkg/service/lobby/{NotificationService -> AdminService}.UpdateLocalizationTemplateShort()`

4. Match2
   - `github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2/BackfillService.CreateBackfillShort()` func returns 2 values

5. Platform
   - renamed `github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels.{ADTOObjectForUnlockSteamAchievementAPI -> SteamAchievementUpdateRequest}`
   - renamed `github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels.{ADTOObjectForUpdateXboxAchievementCompletePercentageAPI -> XblAchievementUpdateRequest}`
   - renamed `github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels.{AvailablePredicateObject -> AvailablePredicate}`
   - renamed `github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels.{ADTOObjectForQueryingXboxUserAchievements -> XblUserAchievements}`

#### Following changes caused by refactoring:

There changes are renaming package names into more readable and accessible names.
Changes below are formatted as: `/{<previous-name> -> <new-name>}`

1. Basic
   - `github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/{e_q_u8_config -> equ8_config}`

2. IAM
   - `github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/{s_s_o_credential -> sso}`
   - `github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/{s_s_o_credential -> sso_credential}`
   - `github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/{s_s_o_s_a_m_l_2_0 -> sso_saml_2_0}`

3. Platform
   - `github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/{d_l_c -> dlc}`
   - `github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/{i_a_p -> iap}`