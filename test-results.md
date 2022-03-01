# Test Results

```tap
tests/sh/run-go-cli-dsmc-unit-test.sh

1..67
ok 1 listConfig
ok 2 saveConfig (skipped deprecated)
ok 3 updateImage
ok 4 createImage
ok 5 importImages
ok 6 createImagePatch
ok 7 getConfig
ok 8 createConfig
ok 9 deleteConfig
ok 10 updateConfig
ok 11 clearCache
ok 12 getAllDeployment
ok 13 getDeployment
ok 14 createDeployment
ok 15 deleteDeployment
ok 16 updateDeployment
ok 17 createRootRegionOverride
ok 18 deleteRootRegionOverride
ok 19 updateRootRegionOverride
ok 20 createDeploymentOverride
ok 21 deleteDeploymentOverride
ok 22 updateDeploymentOverride
ok 23 createOverrideRegionOverride
ok 24 deleteOverrideRegionOverride
ok 25 updateOverrideRegionOverride
ok 26 getAllPodConfig
ok 27 getPodConfig
ok 28 createPodConfig
ok 29 deletePodConfig
ok 30 updatePodConfig
ok 31 addPort
ok 32 deletePort
ok 33 updatePort
ok 34 listImages
ok 35 deleteImage
ok 36 exportImages
ok 37 getImageLimit
ok 38 deleteImagePatch
ok 39 getImageDetail
ok 40 getImagePatches
ok 41 getImagePatchDetail
ok 42 listServer
ok 43 countServer
ok 44 countServerDetailed
ok 45 listLocalServer
ok 46 deleteLocalServer
ok 47 getServer
ok 48 deleteServer
ok 49 getServerLogs
ok 50 listSession
ok 51 countSession
ok 52 deleteSession
ok 53 exportConfigV1
ok 54 importConfigV1
ok 55 imageDetailClient
ok 56 deregisterLocalServer
ok 57 registerLocalServer
ok 58 registerServer
ok 59 shutdownServer
ok 60 getServerSession
ok 61 createSession
ok 62 claimServer
ok 63 getSession
ok 64 getDefaultProvider
ok 65 listProviders
ok 66 listProvidersByRegion
ok 67 publicGetMessages
```

```tap
tests/sh/run-go-cli-achievement-unit-test.sh

1..14
ok 1 adminListAchievements
ok 2 adminCreateNewAchievement
ok 3 exportAchievements
ok 4 importAchievements
ok 5 adminGetAchievement
ok 6 adminUpdateAchievement
ok 7 adminDeleteAchievement
ok 8 adminUpdateAchievementListOrder
ok 9 adminListUserAchievements
ok 10 adminUnlockAchievement
ok 11 publicListAchievements
ok 12 publicGetAchievement
ok 13 publicListUserAchievements
ok 14 publicUnlockAchievement
```

```tap
tests/sh/run-go-cli-iam-unit-test.sh

1..270
ok 1 getBansType
ok 2 getListBanReason
ok 3 getClients (skipped deprecated)
ok 4 createClient (skipped deprecated)
ok 5 getClient
ok 6 updateClient
ok 7 deleteClient (skipped deprecated)
ok 8 updateClientPermission
ok 9 addClientPermission
ok 10 deleteClientPermission
ok 11 updateClientSecret
ok 12 getClientsbyNamespace
ok 13 createClientByNamespace
ok 14 deleteClientByNamespace
ok 15 createUser
ok 16 getAdminUsersByRoleID
ok 17 getUserByLoginID
ok 18 getUserByPlatformUserID
ok 19 forgotPassword
ok 20 getUsersByLoginIds
ok 21 resetPassword
ok 22 searchUser (skipped deprecated)
ok 23 getUserByUserID
ok 24 updateUser
ok 25 deleteUser
ok 26 banUser
ok 27 getUserBanHistory
ok 28 disableUserBan
ok 29 enableUserBan
ok 30 listCrossNamespaceAccountLink (skipped deprecated)
ok 31 disableUser (skipped deprecated)
ok 32 enableUser (skipped deprecated)
ok 33 getUserInformation
ok 34 deleteUserInformation
ok 35 getUserLoginHistories
ok 36 updatePassword (skipped deprecated)
ok 37 saveUserPermission
ok 38 addUserPermission
ok 39 deleteUserPermission
ok 40 getUserPlatformAccounts
ok 41 getUserMapping
ok 42 getUserJusticePlatformAccount (skipped deprecated)
ok 43 platformLink
ok 44 platformUnlink
ok 45 getPublisherUser
ok 46 saveUserRoles
ok 47 addUserRole
ok 48 deleteUserRole
ok 49 upgradeHeadlessAccount
ok 50 upgradeHeadlessAccountWithVerificationCode
ok 51 userVerification
ok 52 sendVerificationCode
ok 53 authorization
ok 54 getJWKS
ok 55 platformTokenRequestHandler (skipped deprecated)
ok 56 revokeUser
ok 57 getRevocationList
ok 58 revokeToken (skipped deprecated)
ok 59 revokeAUser (skipped deprecated)
ok 60 tokenGrant
ok 61 verifyToken
ok 62 getRoles
ok 63 createRole
ok 64 getRole
ok 65 updateRole
ok 66 deleteRole
ok 67 getRoleAdminStatus
ok 68 setRoleAsAdmin
ok 69 removeRoleAdmin
ok 70 getRoleManagers
ok 71 addRoleManagers
ok 72 removeRoleManagers
ok 73 getRoleMembers
ok 74 addRoleMembers
ok 75 removeRoleMembers
ok 76 updateRolePermissions
ok 77 addRolePermission
ok 78 deleteRolePermission
ok 79 adminGetAgeRestrictionStatusV2
ok 80 adminUpdateAgeRestrictionConfigV2
ok 81 getListCountryAgeRestriction
ok 82 updateCountryAgeRestriction
ok 83 adminSearchUsersV2
ok 84 adminGetUserByUserIdV2
ok 85 adminUpdateUserV2
ok 86 adminBanUserV2
ok 87 adminGetUserBanV2
ok 88 adminDisableUserV2
ok 89 adminEnableUserV2
ok 90 adminResetPasswordV2
ok 91 adminDeletePlatformLinkV2
ok 92 adminPutUserRolesV2
ok 93 adminCreateUserRolesV2
ok 94 publicCreateUserV2
ok 95 publicForgotPasswordV2
ok 96 publicResetPasswordV2
ok 97 publicGetUserByUserIDV2
ok 98 publicUpdateUserV2
ok 99 publicGetUserBan
ok 100 publicUpdatePasswordV2
ok 101 getListJusticePlatformAccounts
ok 102 publicPlatformLinkV2
ok 103 publicDeletePlatformLinkV2
ok 104 adminGetBansTypeV3
ok 105 adminGetListBanReasonV3
ok 106 adminGetInputValidations
ok 107 adminUpdateInputValidations
ok 108 adminResetInputValidations
ok 109 listAdminsV3
ok 110 adminGetAgeRestrictionStatusV3
ok 111 adminUpdateAgeRestrictionConfigV3
ok 112 adminGetListCountryAgeRestrictionV3
ok 113 adminUpdateCountryAgeRestrictionV3
ok 114 adminGetBannedUsersV3
ok 115 adminGetBansTypeWithNamespaceV3
ok 116 adminGetClientsByNamespaceV3
ok 117 adminCreateClientV3
ok 118 adminGetClientsbyNamespacebyIDV3
ok 119 adminDeleteClientV3
ok 120 adminUpdateClientV3
ok 121 adminUpdateClientPermissionV3
ok 122 adminAddClientPermissionsV3
ok 123 adminDeleteClientPermissionV3
ok 124 retrieveAllThirdPartyLoginPlatformCredentialV3
ok 125 retrieveAllActiveThirdPartyLoginPlatformCredentialV3
ok 126 retrieveAllSSOLoginPlatformCredentialV3
ok 127 retrieveThirdPartyLoginPlatformCredentialV3
ok 128 addThirdPartyLoginPlatformCredentialV3
ok 129 deleteThirdPartyLoginPlatformCredentialV3
ok 130 updateThirdPartyLoginPlatformCredentialV3
ok 131 updateThirdPartyLoginPlatformDomainV3
ok 132 deleteThirdPartyLoginPlatformDomainV3
ok 133 retrieveSSOLoginPlatformCredential
ok 134 addSSOLoginPlatformCredential
ok 135 deleteSSOLoginPlatformCredentialV3
ok 136 updateSSOPlatformCredential
ok 137 adminGetUserByPlatformUserIDV3
ok 138 getAdminUsersByRoleIdV3
ok 139 adminGetUserByEmailAddressV3
ok 140 adminListUserIDByUserIDsV3
ok 141 adminInviteUserV3
ok 142 adminListUsersV3
ok 143 adminSearchUserV3
ok 144 adminGetBulkUserByEmailAddressV3
ok 145 adminGetUserByUserIdV3
ok 146 adminUpdateUserV3
ok 147 adminGetUserBanV3
ok 148 adminBanUserV3
ok 149 adminUpdateUserBanV3
ok 150 adminSendVerificationCodeV3
ok 151 adminVerifyAccountV3
ok 152 getUserVerificationCode
ok 153 adminGetUserDeletionStatusV3
ok 154 adminUpdateUserDeletionStatusV3
ok 155 adminUpgradeHeadlessAccountV3
ok 156 adminDeleteUserInformationV3
ok 157 adminGetUserLoginHistoriesV3
ok 158 adminUpdateUserPermissionV3
ok 159 adminAddUserPermissionsV3
ok 160 adminDeleteUserPermissionBulkV3
ok 161 adminDeleteUserPermissionV3
ok 162 adminGetUserPlatformAccountsV3
ok 163 adminGetListJusticePlatformAccounts
ok 164 adminCreateJusticeUser
ok 165 adminLinkPlatformAccount
ok 166 adminPlatformUnlinkV3
ok 167 adminPlatformLinkV3
ok 168 adminDeleteUserRolesV3
ok 169 adminSaveUserRoleV3
ok 170 adminAddUserRoleV3
ok 171 adminDeleteUserRoleV3
ok 172 adminUpdateUserStatusV3
ok 173 adminVerifyUserWithoutVerificationCodeV3
ok 174 adminGetRolesV3
ok 175 adminCreateRoleV3
ok 176 adminGetRoleV3
ok 177 adminDeleteRoleV3
ok 178 adminUpdateRoleV3
ok 179 adminGetRoleAdminStatusV3
ok 180 adminUpdateAdminRoleStatusV3
ok 181 adminRemoveRoleAdminV3
ok 182 adminGetRoleManagersV3
ok 183 adminAddRoleManagersV3
ok 184 adminRemoveRoleManagersV3
ok 185 adminGetRoleMembersV3
ok 186 adminAddRoleMembersV3
ok 187 adminRemoveRoleMembersV3
ok 188 adminUpdateRolePermissionsV3
ok 189 adminAddRolePermissionsV3
ok 190 adminDeleteRolePermissionsV3
ok 191 adminDeleteRolePermissionV3
ok 192 adminGetMyUserV3
ok 193 userAuthenticationV3
ok 194 getCountryLocationV3
ok 195 logout
ok 196 adminRetrieveUserThirdPartyPlatformTokenV3
ok 197 revokeUserV3
ok 198 authorizeV3
ok 199 tokenIntrospectionV3
ok 200 getJWKSV3
ok 201 retrieveUserThirdPartyPlatformTokenV3
ok 202 authCodeRequestV3
ok 203 platformTokenGrantV3
ok 204 getRevocationListV3
ok 205 tokenRevocationV3
ok 206 tokenGrantV3
ok 207 platformAuthenticationV3
ok 208 publicGetInputValidations
ok 209 retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
ok 210 publicListUserIDByPlatformUserIDsV3
ok 211 publicGetUserByPlatformUserIDV3
ok 212 publicGetAsyncStatus
ok 213 publicSearchUserV3
ok 214 publicCreateUserV3
ok 215 checkUserAvailability
ok 216 publicBulkGetUsers
ok 217 publicForgotPasswordV3
ok 218 getAdminInvitationV3
ok 219 createUserFromInvitationV3
ok 220 updateUserV3
ok 221 publicUpdateUserV3
ok 222 publicSendVerificationCodeV3
ok 223 publicUserVerificationV3
ok 224 publicUpgradeHeadlessAccountV3
ok 225 publicVerifyHeadlessAccountV3
ok 226 publicUpdatePasswordV3
ok 227 publicCreateJusticeUser
ok 228 publicPlatformLinkV3
ok 229 publicPlatformUnlinkV3
ok 230 publicWebLinkPlatform
ok 231 publicWebLinkPlatformEstablish
ok 232 resetPasswordV3
ok 233 publicGetUserByUserIdV3
ok 234 publicGetUserBanHistoryV3
ok 235 publicGetUserLoginHistoriesV3
ok 236 publicGetUserPlatformAccountsV3
ok 237 publicLinkPlatformAccount
ok 238 publicValidateUserByUserIDAndPasswordV3
ok 239 publicGetRolesV3
ok 240 publicGetRoleV3
ok 241 publicGetMyUserV3
ok 242 platformAuthenticateSAMLV3Handler
ok 243 loginSSOClient
ok 244 logoutSSOClient
ok 245 adminUpdateUserV4
ok 246 adminUpdateUserEmailAddressV4
ok 247 adminListUserRolesV4
ok 248 adminUpdateUserRoleV4
ok 249 adminAddUserRoleV4
ok 250 adminRemoveUserRoleV4
ok 251 adminGetRolesV4
ok 252 adminCreateRoleV4
ok 253 adminGetRoleV4
ok 254 adminDeleteRoleV4
ok 255 adminUpdateRoleV4
ok 256 adminUpdateRolePermissionsV4
ok 257 adminAddRolePermissionsV4
ok 258 adminDeleteRolePermissionsV4
ok 259 adminListAssignedUsersV4
ok 260 adminAssignUserToRoleV4
ok 261 adminRevokeUserFromRoleV4
ok 262 adminUpdateMyUserV4
ok 263 adminInviteUserV4
ok 264 publicCreateTestUserV4
ok 265 publicCreateUserV4
ok 266 createUserFromInvitationV4
ok 267 publicUpdateUserV4
ok 268 publicUpdateUserEmailAddressV4
ok 269 publicUpgradeHeadlessAccountWithVerificationCodeV4
ok 270 publicUpgradeHeadlessAccountV4
```

```tap
tests/sh/run-go-cli-seasonpass-unit-test.sh

1..39
ok 1 querySeasons
ok 2 createSeason
ok 3 getCurrentSeason
ok 4 getSeason
ok 5 deleteSeason
ok 6 updateSeason
ok 7 cloneSeason
ok 8 queryPasses
ok 9 createPass
ok 10 getPass
ok 11 deletePass
ok 12 updatePass
ok 13 publishSeason
ok 14 retireSeason
ok 15 queryRewards
ok 16 createReward
ok 17 getReward
ok 18 deleteReward
ok 19 updateReward
ok 20 queryTiers
ok 21 createTier
ok 22 updateTier
ok 23 deleteTier
ok 24 reorderTier
ok 25 unpublishSeason
ok 26 getUserParticipatedSeasons
ok 27 grantUserExp
ok 28 grantUserPass
ok 29 existsAnyPassByPassCodes
ok 30 getCurrentUserSeasonProgression
ok 31 checkSeasonPurchasable
ok 32 resetUserSeason
ok 33 grantUserTier
ok 34 getUserSeason
ok 35 publicGetCurrentSeason
ok 36 publicGetCurrentUserSeason
ok 37 publicClaimUserReward
ok 38 publicBulkClaimUserRewards
ok 39 publicGetUserSeason
```

```tap
tests/sh/run-go-cli-lobby-unit-test.sh

1..90
ok 1 getUserFriendsUpdated
ok 2 getUserIncomingFriends
ok 3 getUserOutgoingFriends
ok 4 userRequestFriend
ok 5 userAcceptFriendRequest
ok 6 userCancelFriendRequest
ok 7 userRejectFriendRequest
ok 8 userGetFriendshipStatus
ok 9 userUnfriendRequest
ok 10 addFriendsWithoutConfirmation
ok 11 personalChatHistory
ok 12 adminChatHistory
ok 13 adminGetAllConfigV1
ok 14 adminGetConfigV1
ok 15 adminUpdateConfigV1
ok 16 exportConfig
ok 17 importConfig
ok 18 getListOfFriends
ok 19 sendMultipleUsersFreeformNotificationV1Admin
ok 20 sendUsersFreeformNotificationV1Admin
ok 21 sendPartyFreeformNotificationV1Admin
ok 22 sendPartyTemplatedNotificationV1Admin
ok 23 getAllNotificationTemplatesV1Admin
ok 24 createNotificationTemplateV1Admin
ok 25 sendUsersTemplatedNotificationV1Admin
ok 26 getTemplateSlugLocalizationsTemplateV1Admin
ok 27 deleteNotificationTemplateSlugV1Admin
ok 28 getSingleTemplateLocalizationV1Admin
ok 29 updateTemplateLocalizationV1Admin
ok 30 deleteTemplateLocalizationV1Admin
ok 31 publishTemplateLocalizationV1Admin
ok 32 getAllNotificationTopicsV1Admin
ok 33 createNotificationTopicV1Admin
ok 34 getNotificationTopicV1Admin
ok 35 updateNotificationTopicV1Admin
ok 36 deleteNotificationTopicV1Admin
ok 37 sendSpecificUserFreeformNotificationV1Admin
ok 38 sendSpecificUserTemplatedNotificationV1Admin
ok 39 adminGetPartyDataV1
ok 40 adminUpdatePartyAttributesV1
ok 41 adminJoinPartyV1
ok 42 adminGetUserPartyV1
ok 43 adminGetLobbyCCU
ok 44 adminGetAllPlayerSessionAttribute
ok 45 adminSetPlayerSessionAttribute
ok 46 adminGetPlayerSessionAttribute
ok 47 adminGetPlayerBlockedPlayersV1
ok 48 adminGetPlayerBlockedByPlayersV1
ok 49 adminBulkBlockPlayersV1
ok 50 adminDebugProfanityFilters
ok 51 adminGetProfanityListFiltersV1
ok 52 adminAddProfanityFilterIntoList
ok 53 adminAddProfanityFilters
ok 54 adminImportProfanityFiltersFromFile
ok 55 adminDeleteProfanityFilter
ok 56 adminGetProfanityLists
ok 57 adminCreateProfanityList
ok 58 adminUpdateProfanityList
ok 59 adminDeleteProfanityList
ok 60 adminGetProfanityRule
ok 61 adminSetProfanityRuleForNamespace
ok 62 adminVerifyMessageProfanityResponse
ok 63 adminGetThirdPartyConfig
ok 64 adminUpdateThirdPartyConfig
ok 65 adminCreateThirdPartyConfig
ok 66 adminDeleteThirdPartyConfig
ok 67 publicGetMessages
ok 68 getPersonalChatHistoryV1Public
ok 69 publicGetPartyDataV1
ok 70 publicUpdatePartyAttributesV1
ok 71 publicGetPlayerBlockedPlayersV1
ok 72 publicGetPlayerBlockedByPlayersV1
ok 73 usersPresenceHandlerV1
ok 74 freeFormNotification
ok 75 notificationWithTemplate
ok 76 getGameTemplate
ok 77 createTemplate
ok 78 getSlugTemplate
ok 79 deleteTemplateSlug
ok 80 getLocalizationTemplate
ok 81 updateLocalizationTemplate
ok 82 deleteTemplateLocalization
ok 83 publishTemplate
ok 84 getTopicByNamespace
ok 85 createTopic
ok 86 getTopicByTopicName
ok 87 updateTopicByTopicName
ok 88 deleteTopicByTopicName
ok 89 freeFormNotificationByUserID
ok 90 notificationWithTemplateByUserID
```

```tap
tests/sh/run-go-cli-gdpr-unit-test.sh

1..20
ok 1 adminGetListDeletionDataRequest
ok 2 getAdminEmailConfiguration
ok 3 updateAdminEmailConfiguration
ok 4 saveAdminEmailConfiguration
ok 5 deleteAdminEmailConfiguration
ok 6 adminGetListPersonalDataRequest
ok 7 adminGetUserAccountDeletionRequest
ok 8 adminSubmitUserAccountDeletionRequest
ok 9 adminCancelUserAccountDeletionRequest
ok 10 adminGetUserPersonalDataRequests
ok 11 adminRequestDataRetrieval
ok 12 adminCancelUserPersonalDataRequest
ok 13 adminGeneratePersonalDataURL
ok 14 publicSubmitUserAccountDeletionRequest
ok 15 publicCancelUserAccountDeletionRequest
ok 16 publicGetUserAccountDeletionStatus
ok 17 publicGetUserPersonalDataRequests
ok 18 publicRequestDataRetrieval
ok 19 publicCancelUserPersonalDataRequest
ok 20 publicGeneratePersonalDataURL
```

```tap
tests/sh/run-go-cli-social-unit-test.sh

1..69
ok 1 getNamespaceSlotConfig
ok 2 updateNamespaceSlotConfig
ok 3 deleteNamespaceSlotConfig
ok 4 getUserSlotConfig
ok 5 updateUserSlotConfig
ok 6 deleteUserSlotConfig
ok 7 getUserProfiles
ok 8 getProfile
ok 9 getUserNamespaceSlots
ok 10 getSlotData
ok 11 publicGetUserGameProfiles
ok 12 publicGetUserProfiles
ok 13 publicCreateProfile
ok 14 publicGetProfile
ok 15 publicUpdateProfile
ok 16 publicDeleteProfile
ok 17 publicGetProfileAttribute
ok 18 publicUpdateAttribute
ok 19 publicGetUserNamespaceSlots
ok 20 publicCreateUserNamespaceSlot
ok 21 publicGetSlotData
ok 22 publicUpdateUserNamespaceSlot
ok 23 publicDeleteUserNamespaceSlot
ok 24 publicUpdateUserNamespaceSlotMetadata
ok 25 getGlobalStatItems
ok 26 bulkFetchStatItems
ok 27 bulkIncUserStatItem
ok 28 bulkIncUserStatItemValue
ok 29 bulkResetUserStatItem
ok 30 getStats
ok 31 createStat
ok 32 exportStats
ok 33 importStats
ok 34 queryStats
ok 35 getStat
ok 36 deleteStat
ok 37 updateStat
ok 38 getUserStatItems
ok 39 bulkCreateUserStatItems
ok 40 bulkIncUserStatItem1
ok 41 bulkIncUserStatItemValue1
ok 42 bulkResetUserStatItem1
ok 43 createUserStatItem
ok 44 deleteUserStatItems
ok 45 incUserStatItemValue
ok 46 resetUserStatItemValue
ok 47 bulkFetchStatItems1
ok 48 publicBulkIncUserStatItem
ok 49 publicBulkIncUserStatItemValue
ok 50 bulkResetUserStatItem2
ok 51 createStat1
ok 52 publicQueryUserStatItems
ok 53 publicBulkCreateUserStatItems
ok 54 publicBulkIncUserStatItem1
ok 55 bulkIncUserStatItemValue2
ok 56 bulkResetUserStatItem3
ok 57 publicCreateUserStatItem
ok 58 deleteUserStatItems1
ok 59 publicIncUserStatItem
ok 60 publicIncUserStatItemValue
ok 61 resetUserStatItemValue1
ok 62 bulkUpdateUserStatItemV2
ok 63 bulkUpdateUserStatItem
ok 64 bulkResetUserStatItemValues
ok 65 deleteUserStatItems2
ok 66 updateUserStatItemValue
ok 67 bulkUpdateUserStatItem1
ok 68 bulkUpdateUserStatItem2
ok 69 updateUserStatItemValue1
```

```tap
tests/sh/run-go-cli-platform-unit-test.sh

1..320
ok 1 listFulfillmentScripts
ok 2 testFulfillmentScriptEval
ok 3 getFulfillmentScript
ok 4 createFulfillmentScript
ok 5 deleteFulfillmentScript
ok 6 updateFulfillmentScript
ok 7 queryCampaigns
ok 8 createCampaign
ok 9 getCampaign
ok 10 updateCampaign
ok 11 getCampaignDynamic
ok 12 getRootCategories
ok 13 createCategory
ok 14 listCategoriesBasic
ok 15 getCategory
ok 16 updateCategory
ok 17 deleteCategory
ok 18 getChildCategories
ok 19 getDescendantCategories
ok 20 queryCodes
ok 21 createCodes
ok 22 download
ok 23 bulkDisableCodes
ok 24 bulkEnableCodes
ok 25 queryRedeemHistory
ok 26 getCode
ok 27 disableCode
ok 28 enableCode
ok 29 listCurrencies
ok 30 createCurrency
ok 31 updateCurrency
ok 32 deleteCurrency
ok 33 getCurrencyConfig
ok 34 getCurrencySummary
ok 35 getDLCItemConfig
ok 36 updateDLCItemConfig
ok 37 deleteDLCItemConfig
ok 38 getPlatformDLCConfig
ok 39 updatePlatformDLCConfig
ok 40 deletePlatformDLCConfig
ok 41 queryEntitlements
ok 42 getEntitlement
ok 43 queryFulfillmentHistories
ok 44 getAppleIAPConfig
ok 45 updateAppleIAPConfig
ok 46 deleteAppleIAPConfig
ok 47 getEpicGamesIAPConfig
ok 48 updateEpicGamesIAPConfig
ok 49 deleteEpicGamesIAPConfig
ok 50 getGoogleIAPConfig
ok 51 updateGoogleIAPConfig
ok 52 deleteGoogleIAPConfig
ok 53 updateGoogleP12File
ok 54 getIAPItemConfig
ok 55 updateIAPItemConfig
ok 56 deleteIAPItemConfig
ok 57 getPlayStationIAPConfig
ok 58 updatePlaystationIAPConfig
ok 59 deletePlaystationIAPConfig
ok 60 getStadiaIAPConfig
ok 61 deleteStadiaIAPConfig
ok 62 updateStadiaJsonConfigFile
ok 63 getSteamIAPConfig
ok 64 updateSteamIAPConfig
ok 65 deleteSteamIAPConfig
ok 66 getTwitchIAPConfig
ok 67 updateTwitchIAPConfig
ok 68 deleteTwitchIAPConfig
ok 69 getXblIAPConfig
ok 70 updateXblIAPConfig
ok 71 deleteXblAPConfig
ok 72 updateXblBPCertFile
ok 73 syncInGameItem
ok 74 createItem
ok 75 getItemByAppId
ok 76 queryItems
ok 77 listBasicItemsByFeatures
ok 78 getItemBySku
ok 79 getLocaleItemBySku
ok 80 getItemIdBySku
ok 81 bulkGetLocaleItems
ok 82 searchItems
ok 83 queryUncategorizedItems
ok 84 getItem
ok 85 updateItem
ok 86 deleteItem
ok 87 acquireItem
ok 88 getApp
ok 89 updateApp
ok 90 disableItem
ok 91 getItemDynamicData
ok 92 enableItem
ok 93 featureItem
ok 94 defeatureItem
ok 95 getLocaleItem
ok 96 returnItem
ok 97 queryKeyGroups
ok 98 createKeyGroup
ok 99 getKeyGroup
ok 100 updateKeyGroup
ok 101 getKeyGroupDynamic
ok 102 listKeys
ok 103 uploadKeys
ok 104 queryOrders
ok 105 getOrderStatistics
ok 106 getOrder
ok 107 refundOrder
ok 108 getPaymentCallbackConfig
ok 109 updatePaymentCallbackConfig
ok 110 queryPaymentNotifications
ok 111 queryPaymentOrders
ok 112 createPaymentOrderByDedicated
ok 113 listExtOrderNoByExtTxId
ok 114 getPaymentOrder
ok 115 chargePaymentOrder
ok 116 refundPaymentOrderByDedicated
ok 117 simulatePaymentOrderNotification
ok 118 getPaymentOrderChargeStatus
ok 119 createReward
ok 120 queryRewards
ok 121 exportRewards
ok 122 importRewards
ok 123 getReward
ok 124 updateReward
ok 125 deleteReward
ok 126 checkEventCondition
ok 127 listStores
ok 128 createStore
ok 129 importStore
ok 130 getPublishedStore
ok 131 deletePublishedStore
ok 132 getPublishedStoreBackup
ok 133 rollbackPublishedStore
ok 134 getStore
ok 135 updateStore
ok 136 deleteStore
ok 137 cloneStore
ok 138 exportStore
ok 139 querySubscriptions
ok 140 recurringChargeSubscription
ok 141 getTicketDynamic
ok 142 decreaseTicketSale
ok 143 getTicketBoothID
ok 144 increaseTicketSale
ok 145 anonymizeCampaign
ok 146 anonymizeEntitlement
ok 147 anonymizeFulfillment
ok 148 anonymizeIntegration
ok 149 anonymizeOrder
ok 150 anonymizePayment
ok 151 anonymizeSubscription
ok 152 anonymizeWallet
ok 153 queryUserEntitlements
ok 154 grantUserEntitlement
ok 155 getUserAppEntitlementByAppId
ok 156 queryUserEntitlementsByAppType
ok 157 getUserEntitlementByItemId
ok 158 getUserEntitlementBySku
ok 159 existsAnyUserActiveEntitlement
ok 160 existsAnyUserActiveEntitlementByItemIds
ok 161 getUserAppEntitlementOwnershipByAppId
ok 162 getUserEntitlementOwnershipByItemId
ok 163 getUserEntitlementOwnershipBySku
ok 164 revokeUserEntitlements
ok 165 getUserEntitlement
ok 166 updateUserEntitlement
ok 167 consumeUserEntitlement
ok 168 disableUserEntitlement
ok 169 enableUserEntitlement
ok 170 getUserEntitlementHistories
ok 171 revokeUserEntitlement
ok 172 fulfillItem
ok 173 redeemCode
ok 174 fulfillRewards
ok 175 queryUserIAPOrders
ok 176 queryAllUserIAPOrders
ok 177 mockFulfillIAPItem
ok 178 queryUserOrders
ok 179 countOfPurchasedItem
ok 180 getUserOrder
ok 181 updateUserOrderStatus
ok 182 fulfillUserOrder
ok 183 getUserOrderGrant
ok 184 getUserOrderHistories
ok 185 processUserOrderNotification
ok 186 downloadUserOrderReceipt
ok 187 createUserPaymentOrder
ok 188 refundUserPaymentOrder
ok 189 applyUserRedemption
ok 190 queryUserSubscriptions
ok 191 getUserSubscriptionActivities
ok 192 platformSubscribeSubscription
ok 193 checkUserSubscriptionSubscribableByItemId
ok 194 getUserSubscription
ok 195 deleteUserSubscription
ok 196 cancelSubscription
ok 197 grantDaysToSubscription
ok 198 getUserSubscriptionBillingHistories
ok 199 processUserSubscriptionNotification
ok 200 acquireUserTicket
ok 201 checkWallet
ok 202 creditUserWallet
ok 203 payWithUserWallet
ok 204 getUserWallet
ok 205 debitUserWallet
ok 206 disableUserWallet
ok 207 enableUserWallet
ok 208 listUserWalletTransactions
ok 209 queryWallets
ok 210 getWallet
ok 211 syncOrders
ok 212 testAdyenConfig
ok 213 testAliPayConfig
ok 214 testCheckoutConfig
ok 215 debugMatchedPaymentMerchantConfig
ok 216 testPayPalConfig
ok 217 testStripeConfig
ok 218 testWxPayConfig
ok 219 testXsollaConfig
ok 220 getPaymentMerchantConfig
ok 221 updateAdyenConfig
ok 222 testAdyenConfigById
ok 223 updateAliPayConfig
ok 224 testAliPayConfigById
ok 225 updateCheckoutConfig
ok 226 testCheckoutConfigById
ok 227 updatePayPalConfig
ok 228 testPayPalConfigById
ok 229 updateStripeConfig
ok 230 testStripeConfigById
ok 231 updateWxPayConfig
ok 232 updateWxPayConfigCert
ok 233 testWxPayConfigById
ok 234 updateXsollaConfig
ok 235 testXsollaConfigById
ok 236 updateXsollaUIConfig
ok 237 queryPaymentProviderConfig
ok 238 createPaymentProviderConfig
ok 239 getAggregatePaymentProviders
ok 240 debugMatchedPaymentProviderConfig
ok 241 getSpecialPaymentProviders
ok 242 updatePaymentProviderConfig
ok 243 deletePaymentProviderConfig
ok 244 getPaymentTaxConfig
ok 245 updatePaymentTaxConfig
ok 246 syncPaymentOrders
ok 247 publicGetRootCategories
ok 248 downloadCategories
ok 249 publicGetCategory
ok 250 publicGetChildCategories
ok 251 publicGetDescendantCategories
ok 252 publicListCurrencies
ok 253 publicGetItemByAppId
ok 254 publicQueryItems
ok 255 publicGetItemBySku
ok 256 publicBulkGetItems
ok 257 publicSearchItems
ok 258 publicGetApp
ok 259 publicGetItemDynamicData
ok 260 publicGetItem
ok 261 getPaymentCustomization
ok 262 publicGetPaymentUrl
ok 263 publicGetPaymentMethods
ok 264 publicGetUnpaidPaymentOrder
ok 265 pay
ok 266 publicCheckPaymentOrderPaidStatus
ok 267 getPaymentPublicConfig
ok 268 publicGetQRCode
ok 269 publicNormalizePaymentReturnUrl
ok 270 getPaymentTaxValue
ok 271 getRewardByCode
ok 272 queryRewards1
ok 273 getReward1
ok 274 publicListStores
ok 275 publicExistsAnyMyActiveEntitlement
ok 276 publicGetMyAppEntitlementOwnershipByAppId
ok 277 publicGetMyEntitlementOwnershipByItemId
ok 278 publicGetMyEntitlementOwnershipBySku
ok 279 publicGetEntitlementOwnershipToken
ok 280 publicGetMyWallet
ok 281 publicSyncPsnDlcInventory
ok 282 syncSteamDLC
ok 283 syncXboxDLC
ok 284 publicQueryUserEntitlements
ok 285 publicGetUserAppEntitlementByAppId
ok 286 publicQueryUserEntitlementsByAppType
ok 287 publicGetUserEntitlementByItemId
ok 288 publicGetUserEntitlementBySku
ok 289 publicExistsAnyUserActiveEntitlement
ok 290 publicGetUserAppEntitlementOwnershipByAppId
ok 291 publicGetUserEntitlementOwnershipByItemId
ok 292 publicGetUserEntitlementOwnershipBySku
ok 293 publicGetUserEntitlement
ok 294 publicConsumeUserEntitlement
ok 295 publicRedeemCode
ok 296 publicFulfillAppleIAPItem
ok 297 syncEpicGamesInventory
ok 298 publicFulfillGoogleIAPItem
ok 299 publicReconcilePlayStationStore
ok 300 syncStadiaEntitlement
ok 301 syncSteamInventory
ok 302 syncTwitchDropsEntitlement
ok 303 syncXboxInventory
ok 304 publicQueryUserOrders
ok 305 publicCreateUserOrder
ok 306 publicGetUserOrder
ok 307 publicCancelUserOrder
ok 308 publicGetUserOrderHistories
ok 309 publicDownloadUserOrderReceipt
ok 310 publicGetPaymentAccounts
ok 311 publicDeletePaymentAccount
ok 312 publicQueryUserSubscriptions
ok 313 publicSubscribeSubscription
ok 314 publicCheckUserSubscriptionSubscribableByItemId
ok 315 publicGetUserSubscription
ok 316 publicChangeSubscriptionBillingAccount
ok 317 publicCancelSubscription
ok 318 publicGetUserSubscriptionBillingHistories
ok 319 publicGetWallet
ok 320 publicListUserWalletTransactions
```

```tap
tests/sh/run-go-cli-sessionbrowser-unit-test.sh

1..15
ok 1 getTotalActiveSession
ok 2 getActiveCustomGameSessions
ok 3 getActiveMatchmakingGameSessions
ok 4 adminGetSession
ok 5 querySession
ok 6 createSession
ok 7 getSessionByUserIDs
ok 8 getSession
ok 9 updateSession
ok 10 deleteSession
ok 11 joinSession
ok 12 deleteSessionLocalDS
ok 13 addPlayerToSession
ok 14 removePlayerFromSession
ok 15 getRecentPlayer
```

```tap
tests/sh/run-go-cli-leaderboard-unit-test.sh

1..34
ok 1 getLeaderboardConfigurationsAdminV1
ok 2 createLeaderboardConfigurationAdminV1
ok 3 adminGetArchivedLeaderboardRankingDataV1Handler
ok 4 createArchivedLeaderboardRankingDataV1Handler
ok 5 deleteBulkLeaderboardConfigurationAdminV1
ok 6 getLeaderboardConfigurationAdminV1
ok 7 updateLeaderboardConfigurationAdminV1
ok 8 deleteLeaderboardConfigurationAdminV1
ok 9 getAllTimeLeaderboardRankingAdminV1
ok 10 getCurrentMonthLeaderboardRankingAdminV1
ok 11 getCurrentSeasonLeaderboardRankingAdminV1
ok 12 getTodayLeaderboardRankingAdminV1
ok 13 getUserRankingAdminV1
ok 14 updateUserPointAdminV1
ok 15 deleteUserRankingAdminV1
ok 16 getCurrentWeekLeaderboardRankingAdminV1
ok 17 deleteUserRankingsAdminV1
ok 18 getUserLeaderboardRankingsAdminV1
ok 19 getLeaderboardConfigurationsPublicV1
ok 20 createLeaderboardConfigurationPublicV1
ok 21 getAllTimeLeaderboardRankingPublicV1
ok 22 getArchivedLeaderboardRankingDataV1Handler
ok 23 getCurrentMonthLeaderboardRankingPublicV1
ok 24 getCurrentSeasonLeaderboardRankingPublicV1
ok 25 getTodayLeaderboardRankingPublicV1
ok 26 getUserRankingPublicV1
ok 27 deleteUserRankingPublicV1
ok 28 getCurrentWeekLeaderboardRankingPublicV1
ok 29 getHiddenUsersV2
ok 30 getUserVisibilityStatusV2
ok 31 setUserLeaderboardVisibilityStatusV2
ok 32 setUserVisibilityStatusV2
ok 33 getLeaderboardConfigurationsPublicV2
ok 34 getAllTimeLeaderboardRankingPublicV2
```

```tap
tests/sh/run-go-cli-eventlog-unit-test.sh

1..32
ok 1 agentTypeDescriptionHandler (skipped deprecated)
ok 2 specificAgentTypeDescriptionHandler (skipped deprecated)
ok 3 eventIDDescriptionHandler (skipped deprecated)
ok 4 specificEventIDDescriptionHandler (skipped deprecated)
ok 5 eventLevelDescriptionHandler (skipped deprecated)
ok 6 specificEventLevelDescriptionHandler (skipped deprecated)
ok 7 eventTypeDescriptionHandler (skipped deprecated)
ok 8 specificEventTypeDescriptionHandler (skipped deprecated)
ok 9 uxNameDescriptionHandler (skipped deprecated)
ok 10 specificUXDescriptionHandler (skipped deprecated)
ok 11 getEventByNamespaceHandler (skipped deprecated)
ok 12 postEventHandler (skipped deprecated)
ok 13 getEventByEventIDHandler (skipped deprecated)
ok 14 getEventByEventTypeHandler (skipped deprecated)
ok 15 getEventByEventTypeAndEventIDHandler (skipped deprecated)
ok 16 getEventByUserIDHandler (skipped deprecated)
ok 17 getUserActivitiesHandler (skipped deprecated)
ok 18 deleteUserActivitiesHandler (skipped deprecated)
ok 19 getEventByUserIDAndEventIDHandler (skipped deprecated)
ok 20 getEventByUserIDAndEventTypeHandler (skipped deprecated)
ok 21 getEventByUserEventIDAndEventTypeHandler (skipped deprecated)
ok 22 lastUserActivityTimeHandler (skipped deprecated)
ok 23 getRegisteredEventsHandler (skipped deprecated)
ok 24 registerEventHandler (skipped deprecated)
ok 25 getRegisteredEventIDHandler (skipped deprecated)
ok 26 updateEventRegistryHandler (skipped deprecated)
ok 27 unregisterEventIDHandler (skipped deprecated)
ok 28 getRegisteredEventsByEventTypeHandler (skipped deprecated)
ok 29 queryEventStreamHandler
ok 30 getEventSpecificUserV2Handler
ok 31 getPublicEditHistory
ok 32 getUserEventsV2Public
```

```tap
tests/sh/run-go-cli-ugc-unit-test.sh

1..84
ok 1 singleAdminGetChannel
ok 2 adminCreateChannel
ok 3 singleAdminUpdateChannel
ok 4 singleAdminDeleteChannel
ok 5 adminUploadContentDirect (skipped deprecated)
ok 6 adminUploadContentS3
ok 7 singleAdminUpdateContentS3
ok 8 adminSearchChannelSpecificContent
ok 9 singleAdminUpdateContentDirect (skipped deprecated)
ok 10 singleAdminDeleteContent
ok 11 singleAdminGetContent
ok 12 adminSearchContent
ok 13 adminGetSpecificContent
ok 14 adminDownloadContentPreview
ok 15 adminUpdateScreenshots
ok 16 adminUploadContentScreenshot
ok 17 adminDeleteContentScreenshot
ok 18 singleAdminGetAllGroups
ok 19 adminCreateGroup
ok 20 singleAdminGetGroup
ok 21 singleAdminUpdateGroup
ok 22 singleAdminDeleteGroup
ok 23 singleAdminGetGroupContents
ok 24 adminGetTag
ok 25 adminCreateTag
ok 26 adminUpdateTag
ok 27 adminDeleteTag
ok 28 adminGetType
ok 29 adminCreateType
ok 30 adminUpdateType
ok 31 adminDeleteType
ok 32 adminGetChannel
ok 33 adminDeleteAllUserChannels
ok 34 adminUpdateChannel
ok 35 adminDeleteChannel
ok 36 adminUpdateContentS3
ok 37 adminUpdateContentDirect (skipped deprecated)
ok 38 adminDeleteContent
ok 39 adminGetContent
ok 40 adminDeleteAllUserContents
ok 41 adminHideUserContent
ok 42 adminGetAllGroups
ok 43 adminDeleteAllUserGroup
ok 44 adminGetGroup
ok 45 adminUpdateGroup
ok 46 adminDeleteGroup
ok 47 adminGetGroupContents
ok 48 adminDeleteAllUserStates
ok 49 searchChannelSpecificContent
ok 50 publicSearchContent
ok 51 getFollowedContent
ok 52 getLikedContent
ok 53 downloadContentByShareCode
ok 54 publicDownloadContentByContentID
ok 55 addDownloadCount
ok 56 updateContentLikeStatus
ok 57 publicDownloadContentPreview
ok 58 getTag
ok 59 getType
ok 60 getFollowedUsers
ok 61 getChannels
ok 62 createChannel
ok 63 deleteAllUserChannel
ok 64 updateChannel
ok 65 deleteChannel
ok 66 createContentDirect (skipped deprecated)
ok 67 createContentS3
ok 68 updateContentS3
ok 69 updateContentDirect (skipped deprecated)
ok 70 deleteContent
ok 71 publicGetUserContent
ok 72 deleteAllUserContents
ok 73 updateScreenshots
ok 74 uploadContentScreenshot
ok 75 deleteContentScreenshot
ok 76 updateUserFollowStatus
ok 77 getGroups
ok 78 createGroup
ok 79 deleteAllUserGroup
ok 80 getGroup
ok 81 updateGroup
ok 82 deleteGroup
ok 83 getGroupContent
ok 84 deleteAllUserStates
```

```tap
tests/sh/run-go-cli-group-unit-test.sh

1..44
ok 1 listGroupConfigurationAdminV1
ok 2 createGroupConfigurationAdminV1
ok 3 initiateGroupConfigurationAdminV1
ok 4 getGroupConfigurationAdminV1
ok 5 deleteGroupConfigurationV1
ok 6 updateGroupConfigurationAdminV1
ok 7 updateGroupConfigurationGlobalRuleAdminV1
ok 8 deleteGroupConfigurationGlobalRuleAdminV1
ok 9 getGroupListAdminV1
ok 10 getSingleGroupAdminV1
ok 11 deleteGroupAdminV1
ok 12 getGroupMembersListAdminV1
ok 13 getMemberRolesListAdminV1
ok 14 createMemberRoleAdminV1
ok 15 getSingleMemberRoleAdminV1
ok 16 deleteMemberRoleAdminV1
ok 17 updateMemberRoleAdminV1
ok 18 updateMemberRolePermissionAdminV1
ok 19 getGroupListPublicV1
ok 20 createNewGroupPublicV1
ok 21 getSingleGroupPublicV1
ok 22 updateSingleGroupV1
ok 23 deleteGroupPublicV1
ok 24 updatePatchSingleGroupPublicV1
ok 25 updateGroupCustomAttributesPublicV1
ok 26 acceptGroupInvitationPublicV1
ok 27 rejectGroupInvitationPublicV1
ok 28 joinGroupV1
ok 29 cancelGroupJoinRequestV1
ok 30 getGroupJoinRequestPublicV1
ok 31 getGroupMembersListPublicV1
ok 32 updateGroupCustomRulePublicV1
ok 33 updateGroupPredefinedRulePublicV1
ok 34 deleteGroupPredefinedRulePublicV1
ok 35 leaveGroupPublicV1
ok 36 getMemberRolesListPublicV1
ok 37 updateMemberRolePublicV1
ok 38 deleteMemberRolePublicV1
ok 39 getGroupInvitationRequestPublicV1
ok 40 getUserGroupInformationPublicV1
ok 41 inviteGroupPublicV1
ok 42 acceptGroupJoinRequestPublicV1
ok 43 rejectGroupJoinRequestPublicV1
ok 44 kickGroupMemberPublicV1
```

```tap
tests/sh/run-go-cli-qosm-unit-test.sh

1..4
ok 1 deleteServer
ok 2 setServerAlias
ok 3 listServer
ok 4 heartbeat
```

```tap
tests/sh/run-go-cli-legal-unit-test.sh

1..41
ok 1 retrieveAcceptedAgreements
ok 2 retrieveAllUsersByPolicyVersion
ok 3 retrieveAllLegalPolicies
ok 4 createPolicy
ok 5 retrieveSinglePolicy
ok 6 partialUpdatePolicy
ok 7 retrievePolicyCountry
ok 8 retrieveLocalizedPolicyVersions
ok 9 createLocalizedPolicyVersion
ok 10 retrieveSingleLocalizedPolicyVersion
ok 11 updateLocalizedPolicyVersion
ok 12 requestPresignedURL
ok 13 setDefaultPolicy
ok 14 indirectBulkAcceptVersionedPolicy
ok 15 adminRetrieveEligibilities
ok 16 retrievePolicies
ok 17 updatePolicyVersion
ok 18 publishPolicyVersion
ok 19 updatePolicy
ok 20 setDefaultPolicy1
ok 21 retrieveSinglePolicyVersion
ok 22 createPolicyVersion
ok 23 retrieveAllPolicyTypes
ok 24 getUserInfoStatus
ok 25 syncUserInfo
ok 26 invalidateUserInfoCache
ok 27 anonymizeUserAgreement
ok 28 changePreferenceConsent
ok 29 acceptVersionedPolicy
ok 30 retrieveAgreementsPublic
ok 31 bulkAcceptVersionedPolicy
ok 32 indirectBulkAcceptVersionedPolicyV2
ok 33 indirectBulkAcceptVersionedPolicy1
ok 34 retrieveEligibilitiesPublic
ok 35 retrieveEligibilitiesPublicIndirect
ok 36 retrieveSingleLocalizedPolicyVersion1
ok 37 retrievePolicyVersions
ok 38 retrieveLatestPolicies
ok 39 retrieveLatestPoliciesPublic
ok 40 retrieveLatestPoliciesByNamespaceAndCountryPublic
ok 41 checkReadiness
```

```tap
tests/sh/run-go-cli-matchmaking-unit-test.sh

1..28
ok 1 getHealthcheckInfo
ok 2 handlerV3Healthz
ok 3 getAllChannelsHandler
ok 4 createChannelHandler
ok 5 deleteChannelHandler
ok 6 storeMatchResults
ok 7 queueSessionHandler
ok 8 dequeueSessionHandler
ok 9 querySessionHandler
ok 10 updatePlayTimeWeight
ok 11 getAllPartyInAllChannel
ok 12 bulkGetSessions
ok 13 exportChannels
ok 14 importChannels
ok 15 getSingleMatchmakingChannel
ok 16 updateMatchmakingChannel
ok 17 getAllPartyInChannel
ok 18 getAllSessionsInChannel
ok 19 addUserIntoSessionInChannel
ok 20 deleteSessionInChannel
ok 21 deleteUserFromSessionInChannel
ok 22 searchSessions
ok 23 getSessionHistoryDetailed
ok 24 publicGetMessages
ok 25 publicGetAllMatchmakingChannel
ok 26 publicGetSingleMatchmakingChannel
ok 27 searchSessionsV2
ok 28 versionCheckHandler
```

```tap
tests/sh/run-go-cli-cloudsave-unit-test.sh

1..30
ok 1 listGameRecordsHandlerV1
ok 2 adminGetGameRecordHandlerV1
ok 3 adminPutGameRecordHandlerV1
ok 4 adminPostGameRecordHandlerV1
ok 5 adminDeleteGameRecordHandlerV1
ok 6 listPlayerRecordHandlerV1 (skipped deprecated)
ok 7 adminRetrievePlayerRecords
ok 8 adminGetPlayerRecordHandlerV1
ok 9 adminPutPlayerRecordHandlerV1
ok 10 adminPostPlayerRecordHandlerV1
ok 11 adminDeletePlayerRecordHandlerV1
ok 12 adminGetPlayerPublicRecordHandlerV1
ok 13 adminPutPlayerPublicRecordHandlerV1
ok 14 adminPostPlayerPublicRecordHandlerV1
ok 15 adminDeletePlayerPublicRecordHandlerV1
ok 16 putGameRecordConcurrentHandlerV1
ok 17 getGameRecordHandlerV1
ok 18 putGameRecordHandlerV1
ok 19 postGameRecordHandlerV1
ok 20 deleteGameRecordHandlerV1
ok 21 bulkGetPlayerPublicRecordHandlerV1
ok 22 publicDeletePlayerPublicRecordHandlerV1
ok 23 putPlayerPublicRecordConcurrentHandlerV1
ok 24 getPlayerRecordHandlerV1
ok 25 putPlayerRecordHandlerV1
ok 26 postPlayerRecordHandlerV1
ok 27 deletePlayerRecordHandlerV1
ok 28 getPlayerPublicRecordHandlerV1
ok 29 putPlayerPublicRecordHandlerV1
ok 30 postPlayerPublicRecordHandlerV1
```

```tap
tests/sh/run-go-cli-dslogmanager-unit-test.sh

1..6
ok 1 listTerminatedServers
ok 2 downloadServerLogs
ok 3 checkServerLogs
ok 4 batchDownloadServerLogs
ok 5 listAllTerminatedServers
ok 6 publicGetMessages
```

```tap
tests/sh/run-go-cli-basic-unit-test.sh

1..57
ok 1 getNamespaces
ok 2 createNamespace
ok 3 getNamespace
ok 4 deleteNamespace
ok 5 getActions
ok 6 getBannedUsers
ok 7 getUserStatus
ok 8 updateNamespace
ok 9 getConfig
ok 10 deleteConfig
ok 11 updateConfig
ok 12 generatedUploadUrl
ok 13 getCountries
ok 14 getCountryGroups
ok 15 addCountryGroup
ok 16 updateCountryGroup
ok 17 deleteCountryGroup
ok 18 getLanguages
ok 19 getTimeZones
ok 20 adminGetUserProfilePublicInfoByIds
ok 21 getNamespacePublisher
ok 22 changeNamespaceStatus
ok 23 anonymizeUserProfile
ok 24 generatedUserUploadContentUrl
ok 25 getUserProfileInfo
ok 26 updateUserProfile
ok 27 deleteUserProfile
ok 28 getCustomAttributesInfo
ok 29 updateCustomAttributesPartially
ok 30 getPrivateCustomAttributesInfo
ok 31 updatePrivateCustomAttributesPartially
ok 32 updateUserProfileStatus
ok 33 publicGetTime
ok 34 publicGetNamespaces
ok 35 publicGeneratedUploadUrl
ok 36 publicGetCountries
ok 37 publicGetLanguages
ok 38 publicGetTimeZones
ok 39 publicGetUserProfilePublicInfoByIds
ok 40 publicGetNamespacePublisher
ok 41 getMyProfileInfo
ok 42 updateMyProfile
ok 43 createMyProfile
ok 44 getMyZipCode
ok 45 updateMyZipCode
ok 46 publicGeneratedUserUploadContentUrl
ok 47 publicGetUserProfileInfo
ok 48 publicUpdateUserProfile
ok 49 publicCreateUserProfile
ok 50 publicGetCustomAttributesInfo
ok 51 publicUpdateCustomAttributesPartially
ok 52 publicGetUserProfilePublicInfo
ok 53 publicUpdateUserProfileStatus
```

```tap
tests/sh/run-go-cli-gametelemetry-unit-test.sh

1..3
ok 1 protectedSaveEventsGameTelemetryV1ProtectedEventsPost
ok 2 protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
ok 3 protectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
```

