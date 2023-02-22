<a name="v0.38.0"></a>

## [v0.39.0] - DRAFT

### BREAKING CHANGE

#### Following changes in OpenAPI spec:

services-api/pkg/service/lobby/{NotificationService -> AdminService}.CreateTemplate()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.CreateTemplateShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.DeleteTemplateLocalization()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.DeleteTemplateLocalizationShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.DeleteTemplateSlug()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.DeleteTemplateSlugShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.FreeFormNotification()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.FreeFormNotificationShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetGameTemplate()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetGameTemplateShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetLocalizationTemplate()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetLocalizationTemplateShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetSlugTemplate()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.GetSlugTemplateShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.NotificationWithTemplate()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.NotificationWithTemplateShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.PublishTemplate()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.PublishTemplateShort()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.UpdateLocalizationTemplate()
services-api/pkg/service/lobby/{NotificationService -> AdminService}.UpdateLocalizationTemplateShort()


#### Following are changes for package names in SDK API:

changes below are formatted as: /{<previous-name> -> <new-name>}

github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/{e_q_u8_config -> equ8_config}
github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/{s_s_o_credential -> sso}
github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/{s_s_o_credential -> sso_credential}
github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/{s_s_o_s_a_m_l_2_0 -> sso_saml_2_0}
github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/{d_l_c -> dlc}
github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/{i_a_p -> iap}