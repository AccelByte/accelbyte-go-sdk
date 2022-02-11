# Test Results

```tap
tests/sh/run-go-cli-dsmc-unit-test.sh

1..63
ok 1 listConfig
ok 2 saveConfig (skipped deprecated)
ok 3 updateImage
ok 4 createImage
ok 5 importImages
ok 6 getConfig
ok 7 createConfig
ok 8 deleteConfig
ok 9 updateConfig
ok 10 clearCache
ok 11 getAllDeployment
ok 12 getDeployment
ok 13 createDeployment
ok 14 deleteDeployment
ok 15 updateDeployment
ok 16 createRootRegionOverride
ok 17 deleteRootRegionOverride
ok 18 updateRootRegionOverride
ok 19 createDeploymentOverride
ok 20 deleteDeploymentOverride
ok 21 updateDeploymentOverride
ok 22 createOverrideRegionOverride
ok 23 deleteOverrideRegionOverride
ok 24 updateOverrideRegionOverride
ok 25 getAllPodConfig
ok 26 getPodConfig
ok 27 createPodConfig
ok 28 deletePodConfig
ok 29 updatePodConfig
ok 30 addPort
ok 31 deletePort
ok 32 updatePort
ok 33 listImages
ok 34 deleteImage
ok 35 exportImages
ok 36 getImageLimit
ok 37 getImageDetail
ok 38 listServer
ok 39 countServer
ok 40 countServerDetailed
ok 41 listLocalServer
ok 42 deleteLocalServer
ok 43 getServer
ok 44 deleteServer
ok 45 getServerLogs
ok 46 listSession
ok 47 countSession
ok 48 deleteSession
ok 49 exportConfigV1
ok 50 importConfigV1
ok 51 imageDetailClient
ok 52 deregisterLocalServer
ok 53 registerLocalServer
ok 54 registerServer
ok 55 shutdownServer
ok 56 getServerSession
ok 57 createSession
ok 58 claimServer
ok 59 getSession
ok 60 getDefaultProvider
ok 61 listProviders
ok 62 listProvidersByRegion
ok 63 publicGetMessages
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

1..38
ok 1 getPass
ok 2 deletePass
ok 3 updatePass
ok 4 queryPasses
ok 5 createPass
ok 6 getReward
ok 7 deleteReward
ok 8 updateReward
ok 9 queryRewards
ok 10 createReward
ok 11 unpublishSeason
ok 12 getSeason
ok 13 deleteSeason
ok 14 updateSeason
ok 15 cloneSeason
ok 16 querySeasons
ok 17 createSeason
ok 18 retireSeason
ok 19 publishSeason
ok 20 getCurrentSeason
ok 21 updateTier
ok 22 deleteTier
ok 23 queryTiers
ok 24 createTier
ok 25 existsAnyPassByPassCodes
ok 26 grantUserTier
ok 27 getUserSeason
ok 28 checkSeasonPurchasable
ok 29 getCurrentUserSeasonProgression
ok 30 resetUserSeason
ok 31 grantUserPass
ok 32 getUserParticipatedSeasons
ok 33 grantUserExp
ok 34 publicGetCurrentSeason
ok 35 publicClaimUserReward
ok 36 publicGetCurrentUserSeason
ok 37 publicBulkClaimUserRewards
ok 38 publicGetUserSeason
```

```tap
tests/sh/run-go-cli-lobby-unit-test.sh

1..89
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
ok 41 adminGetUserPartyV1
ok 42 adminGetLobbyCCU
ok 43 adminGetAllPlayerSessionAttribute
ok 44 adminSetPlayerSessionAttribute
ok 45 adminGetPlayerSessionAttribute
ok 46 adminGetPlayerBlockedPlayersV1
ok 47 adminGetPlayerBlockedByPlayersV1
ok 48 adminBulkBlockPlayersV1
ok 49 adminDebugProfanityFilters
ok 50 adminGetProfanityListFiltersV1
ok 51 adminAddProfanityFilterIntoList
ok 52 adminAddProfanityFilters
ok 53 adminImportProfanityFiltersFromFile
ok 54 adminDeleteProfanityFilter
ok 55 adminGetProfanityLists
ok 56 adminCreateProfanityList
ok 57 adminUpdateProfanityList
ok 58 adminDeleteProfanityList
ok 59 adminGetProfanityRule
ok 60 adminSetProfanityRuleForNamespace
ok 61 adminVerifyMessageProfanityResponse
ok 62 adminGetThirdPartyConfig
ok 63 adminUpdateThirdPartyConfig
ok 64 adminCreateThirdPartyConfig
ok 65 adminDeleteThirdPartyConfig
ok 66 publicGetMessages
ok 67 getPersonalChatHistoryV1Public
ok 68 publicGetPartyDataV1
ok 69 publicUpdatePartyAttributesV1
ok 70 publicGetPlayerBlockedPlayersV1
ok 71 publicGetPlayerBlockedByPlayersV1
ok 72 usersPresenceHandlerV1
ok 73 freeFormNotification
ok 74 notificationWithTemplate
ok 75 getGameTemplate
ok 76 createTemplate
ok 77 getSlugTemplate
ok 78 deleteTemplateSlug
ok 79 getLocalizationTemplate
ok 80 updateLocalizationTemplate
ok 81 deleteTemplateLocalization
ok 82 publishTemplate
ok 83 getTopicByNamespace
ok 84 createTopic
ok 85 getTopicByTopicName
ok 86 updateTopicByTopicName
ok 87 deleteTopicByTopicName
ok 88 freeFormNotificationByUserID
ok 89 notificationWithTemplateByUserID
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

1..68
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
ok 64 deleteUserStatItems2
ok 65 updateUserStatItemValue
ok 66 bulkUpdateUserStatItem1
ok 67 bulkUpdateUserStatItem2
ok 68 updateUserStatItemValue1
```

```tap
tests/sh/run-go-cli-platform-unit-test.sh

1..316
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
ok 66 getXblIAPConfig
ok 67 updateXblIAPConfig
ok 68 deleteXblAPConfig
ok 69 updateXblBPCertFile
ok 70 syncInGameItem
ok 71 createItem
ok 72 getItemByAppId
ok 73 queryItems
ok 74 listBasicItemsByFeatures
ok 75 getItemBySku
ok 76 getLocaleItemBySku
ok 77 getItemIdBySku
ok 78 bulkGetLocaleItems
ok 79 searchItems
ok 80 queryUncategorizedItems
ok 81 getItem
ok 82 updateItem
ok 83 deleteItem
ok 84 acquireItem
ok 85 getApp
ok 86 updateApp
ok 87 disableItem
ok 88 getItemDynamicData
ok 89 enableItem
ok 90 featureItem
ok 91 defeatureItem
ok 92 getLocaleItem
ok 93 returnItem
ok 94 queryKeyGroups
ok 95 createKeyGroup
ok 96 getKeyGroup
ok 97 updateKeyGroup
ok 98 getKeyGroupDynamic
ok 99 listKeys
ok 100 uploadKeys
ok 101 queryOrders
ok 102 getOrderStatistics
ok 103 getOrder
ok 104 refundOrder
ok 105 getPaymentCallbackConfig
ok 106 updatePaymentCallbackConfig
ok 107 queryPaymentNotifications
ok 108 queryPaymentOrders
ok 109 createPaymentOrderByDedicated
ok 110 listExtOrderNoByExtTxId
ok 111 getPaymentOrder
ok 112 chargePaymentOrder
ok 113 refundPaymentOrderByDedicated
ok 114 simulatePaymentOrderNotification
ok 115 getPaymentOrderChargeStatus
ok 116 createReward
ok 117 queryRewards
ok 118 exportRewards
ok 119 importRewards
ok 120 getReward
ok 121 updateReward
ok 122 deleteReward
ok 123 checkEventCondition
ok 124 listStores
ok 125 createStore
ok 126 importStore
ok 127 getPublishedStore
ok 128 deletePublishedStore
ok 129 getPublishedStoreBackup
ok 130 rollbackPublishedStore
ok 131 getStore
ok 132 updateStore
ok 133 deleteStore
ok 134 cloneStore
ok 135 exportStore
ok 136 querySubscriptions
ok 137 recurringChargeSubscription
ok 138 getTicketDynamic
ok 139 decreaseTicketSale
ok 140 getTicketBoothID
ok 141 increaseTicketSale
ok 142 anonymizeCampaign
ok 143 anonymizeEntitlement
ok 144 anonymizeFulfillment
ok 145 anonymizeIntegration
ok 146 anonymizeOrder
ok 147 anonymizePayment
ok 148 anonymizeSubscription
ok 149 anonymizeWallet
ok 150 queryUserEntitlements
ok 151 grantUserEntitlement
ok 152 getUserAppEntitlementByAppId
ok 153 queryUserEntitlementsByAppType
ok 154 getUserEntitlementByItemId
ok 155 getUserEntitlementBySku
ok 156 existsAnyUserActiveEntitlement
ok 157 existsAnyUserActiveEntitlementByItemIds
ok 158 getUserAppEntitlementOwnershipByAppId
ok 159 getUserEntitlementOwnershipByItemId
ok 160 getUserEntitlementOwnershipBySku
ok 161 revokeUserEntitlements
ok 162 getUserEntitlement
ok 163 updateUserEntitlement
ok 164 consumeUserEntitlement
ok 165 disableUserEntitlement
ok 166 enableUserEntitlement
ok 167 getUserEntitlementHistories
ok 168 revokeUserEntitlement
ok 169 fulfillItem
ok 170 redeemCode
ok 171 fulfillRewards
ok 172 queryUserIAPOrders
ok 173 queryAllUserIAPOrders
ok 174 mockFulfillIAPItem
ok 175 queryUserOrders
ok 176 countOfPurchasedItem
ok 177 getUserOrder
ok 178 updateUserOrderStatus
ok 179 fulfillUserOrder
ok 180 getUserOrderGrant
ok 181 getUserOrderHistories
ok 182 processUserOrderNotification
ok 183 downloadUserOrderReceipt
ok 184 createUserPaymentOrder
ok 185 refundUserPaymentOrder
ok 186 applyUserRedemption
ok 187 queryUserSubscriptions
ok 188 getUserSubscriptionActivities
ok 189 platformSubscribeSubscription
ok 190 checkUserSubscriptionSubscribableByItemId
ok 191 getUserSubscription
ok 192 deleteUserSubscription
ok 193 cancelSubscription
ok 194 grantDaysToSubscription
ok 195 getUserSubscriptionBillingHistories
ok 196 processUserSubscriptionNotification
ok 197 acquireUserTicket
ok 198 checkWallet
ok 199 creditUserWallet
ok 200 payWithUserWallet
ok 201 getUserWallet
ok 202 debitUserWallet
ok 203 disableUserWallet
ok 204 enableUserWallet
ok 205 listUserWalletTransactions
ok 206 queryWallets
ok 207 getWallet
ok 208 syncOrders
ok 209 testAdyenConfig
ok 210 testAliPayConfig
ok 211 testCheckoutConfig
ok 212 debugMatchedPaymentMerchantConfig
ok 213 testPayPalConfig
ok 214 testStripeConfig
ok 215 testWxPayConfig
ok 216 testXsollaConfig
ok 217 getPaymentMerchantConfig
ok 218 updateAdyenConfig
ok 219 testAdyenConfigById
ok 220 updateAliPayConfig
ok 221 testAliPayConfigById
ok 222 updateCheckoutConfig
ok 223 testCheckoutConfigById
ok 224 updatePayPalConfig
ok 225 testPayPalConfigById
ok 226 updateStripeConfig
ok 227 testStripeConfigById
ok 228 updateWxPayConfig
ok 229 updateWxPayConfigCert
ok 230 testWxPayConfigById
ok 231 updateXsollaConfig
ok 232 testXsollaConfigById
ok 233 updateXsollaUIConfig
ok 234 queryPaymentProviderConfig
ok 235 createPaymentProviderConfig
ok 236 getAggregatePaymentProviders
ok 237 debugMatchedPaymentProviderConfig
ok 238 getSpecialPaymentProviders
ok 239 updatePaymentProviderConfig
ok 240 deletePaymentProviderConfig
ok 241 getPaymentTaxConfig
ok 242 updatePaymentTaxConfig
ok 243 syncPaymentOrders
ok 244 publicGetRootCategories
ok 245 downloadCategories
ok 246 publicGetCategory
ok 247 publicGetChildCategories
ok 248 publicGetDescendantCategories
ok 249 publicListCurrencies
ok 250 publicGetItemByAppId
ok 251 publicQueryItems
ok 252 publicGetItemBySku
ok 253 publicBulkGetItems
ok 254 publicSearchItems
ok 255 publicGetApp
ok 256 publicGetItemDynamicData
ok 257 publicGetItem
ok 258 getPaymentCustomization
ok 259 publicGetPaymentUrl
ok 260 publicGetPaymentMethods
ok 261 publicGetUnpaidPaymentOrder
ok 262 pay
ok 263 publicCheckPaymentOrderPaidStatus
ok 264 getPaymentPublicConfig
ok 265 publicGetQRCode
ok 266 publicNormalizePaymentReturnUrl
ok 267 getPaymentTaxValue
ok 268 getRewardByCode
ok 269 queryRewards1
ok 270 getReward1
ok 271 publicListStores
ok 272 publicExistsAnyMyActiveEntitlement
ok 273 publicGetMyAppEntitlementOwnershipByAppId
ok 274 publicGetMyEntitlementOwnershipByItemId
ok 275 publicGetMyEntitlementOwnershipBySku
ok 276 publicGetEntitlementOwnershipToken
ok 277 publicGetMyWallet
ok 278 publicSyncPsnDlcInventory
ok 279 syncSteamDLC
ok 280 syncXboxDLC
ok 281 publicQueryUserEntitlements
ok 282 publicGetUserAppEntitlementByAppId
ok 283 publicQueryUserEntitlementsByAppType
ok 284 publicGetUserEntitlementByItemId
ok 285 publicGetUserEntitlementBySku
ok 286 publicExistsAnyUserActiveEntitlement
ok 287 publicGetUserAppEntitlementOwnershipByAppId
ok 288 publicGetUserEntitlementOwnershipByItemId
ok 289 publicGetUserEntitlementOwnershipBySku
ok 290 publicGetUserEntitlement
ok 291 publicConsumeUserEntitlement
ok 292 publicRedeemCode
ok 293 publicFulfillAppleIAPItem
ok 294 syncEpicGamesInventory
ok 295 publicFulfillGoogleIAPItem
ok 296 publicReconcilePlayStationStore
ok 297 syncStadiaEntitlement
ok 298 syncSteamInventory
ok 299 syncXboxInventory
ok 300 publicQueryUserOrders
ok 301 publicCreateUserOrder
ok 302 publicGetUserOrder
ok 303 publicCancelUserOrder
ok 304 publicGetUserOrderHistories
ok 305 publicDownloadUserOrderReceipt
ok 306 publicGetPaymentAccounts
ok 307 publicDeletePaymentAccount
ok 308 publicQueryUserSubscriptions
ok 309 publicSubscribeSubscription
ok 310 publicCheckUserSubscriptionSubscribableByItemId
ok 311 publicGetUserSubscription
ok 312 publicChangeSubscriptionBillingAccount
ok 313 publicCancelSubscription
ok 314 publicGetUserSubscriptionBillingHistories
ok 315 publicGetWallet
ok 316 publicListUserWalletTransactions
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

