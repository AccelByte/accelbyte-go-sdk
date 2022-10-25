#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# Code generated. DO NOT EDIT.

# Meta:
# - random seed: 256
# - template file: cli_test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..333"

#- 1 Login
samples/cli/sample-apps login \
    -u 'admin' \
    -p 'admin' \
    > test.out 2>&1
eval_tap $? 1 'Login' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 GetBansType
eval_tap 0 2 'GetBansType # SKIP deprecated' test.out

#- 3 GetListBanReason
eval_tap 0 3 'GetListBanReason # SKIP deprecated' test.out

#- 4 GetClients
eval_tap 0 4 'GetClients # SKIP deprecated' test.out

#- 5 CreateClient
eval_tap 0 5 'CreateClient # SKIP deprecated' test.out

#- 6 GetClient
eval_tap 0 6 'GetClient # SKIP deprecated' test.out

#- 7 UpdateClient
eval_tap 0 7 'UpdateClient # SKIP deprecated' test.out

#- 8 DeleteClient
eval_tap 0 8 'DeleteClient # SKIP deprecated' test.out

#- 9 UpdateClientPermission
eval_tap 0 9 'UpdateClientPermission # SKIP deprecated' test.out

#- 10 AddClientPermission
eval_tap 0 10 'AddClientPermission # SKIP deprecated' test.out

#- 11 DeleteClientPermission
eval_tap 0 11 'DeleteClientPermission # SKIP deprecated' test.out

#- 12 UpdateClientSecret
eval_tap 0 12 'UpdateClientSecret # SKIP deprecated' test.out

#- 13 GetClientsbyNamespace
eval_tap 0 13 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 14 CreateClientByNamespace
eval_tap 0 14 'CreateClientByNamespace # SKIP deprecated' test.out

#- 15 DeleteClientByNamespace
eval_tap 0 15 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 16 CreateUser
eval_tap 0 16 'CreateUser # SKIP deprecated' test.out

#- 17 GetAdminUsersByRoleID
eval_tap 0 17 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 18 GetUserByLoginID
eval_tap 0 18 'GetUserByLoginID # SKIP deprecated' test.out

#- 19 GetUserByPlatformUserID
eval_tap 0 19 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 20 ForgotPassword
eval_tap 0 20 'ForgotPassword # SKIP deprecated' test.out

#- 21 GetUsersByLoginIds
eval_tap 0 21 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 22 ResetPassword
eval_tap 0 22 'ResetPassword # SKIP deprecated' test.out

#- 23 SearchUser
eval_tap 0 23 'SearchUser # SKIP deprecated' test.out

#- 24 GetUserByUserID
eval_tap 0 24 'GetUserByUserID # SKIP deprecated' test.out

#- 25 UpdateUser
eval_tap 0 25 'UpdateUser # SKIP deprecated' test.out

#- 26 DeleteUser
eval_tap 0 26 'DeleteUser # SKIP deprecated' test.out

#- 27 BanUser
eval_tap 0 27 'BanUser # SKIP deprecated' test.out

#- 28 GetUserBanHistory
eval_tap 0 28 'GetUserBanHistory # SKIP deprecated' test.out

#- 29 DisableUserBan
eval_tap 0 29 'DisableUserBan # SKIP deprecated' test.out

#- 30 EnableUserBan
eval_tap 0 30 'EnableUserBan # SKIP deprecated' test.out

#- 31 ListCrossNamespaceAccountLink
eval_tap 0 31 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 32 DisableUser
eval_tap 0 32 'DisableUser # SKIP deprecated' test.out

#- 33 EnableUser
eval_tap 0 33 'EnableUser # SKIP deprecated' test.out

#- 34 GetUserInformation
eval_tap 0 34 'GetUserInformation # SKIP deprecated' test.out

#- 35 DeleteUserInformation
eval_tap 0 35 'DeleteUserInformation # SKIP deprecated' test.out

#- 36 GetUserLoginHistories
eval_tap 0 36 'GetUserLoginHistories # SKIP deprecated' test.out

#- 37 UpdatePassword
eval_tap 0 37 'UpdatePassword # SKIP deprecated' test.out

#- 38 SaveUserPermission
eval_tap 0 38 'SaveUserPermission # SKIP deprecated' test.out

#- 39 AddUserPermission
eval_tap 0 39 'AddUserPermission # SKIP deprecated' test.out

#- 40 DeleteUserPermission
eval_tap 0 40 'DeleteUserPermission # SKIP deprecated' test.out

#- 41 GetUserPlatformAccounts
eval_tap 0 41 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 42 GetUserMapping
eval_tap 0 42 'GetUserMapping # SKIP deprecated' test.out

#- 43 GetUserJusticePlatformAccount
eval_tap 0 43 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 44 PlatformLink
eval_tap 0 44 'PlatformLink # SKIP deprecated' test.out

#- 45 PlatformUnlink
eval_tap 0 45 'PlatformUnlink # SKIP deprecated' test.out

#- 46 GetPublisherUser
eval_tap 0 46 'GetPublisherUser # SKIP deprecated' test.out

#- 47 SaveUserRoles
eval_tap 0 47 'SaveUserRoles # SKIP deprecated' test.out

#- 48 AddUserRole
eval_tap 0 48 'AddUserRole # SKIP deprecated' test.out

#- 49 DeleteUserRole
eval_tap 0 49 'DeleteUserRole # SKIP deprecated' test.out

#- 50 UpgradeHeadlessAccount
eval_tap 0 50 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 51 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 52 UserVerification
eval_tap 0 52 'UserVerification # SKIP deprecated' test.out

#- 53 SendVerificationCode
eval_tap 0 53 'SendVerificationCode # SKIP deprecated' test.out

#- 54 Authorization
eval_tap 0 54 'Authorization # SKIP deprecated' test.out

#- 55 GetJWKS
eval_tap 0 55 'GetJWKS # SKIP deprecated' test.out

#- 56 PlatformTokenRequestHandler
eval_tap 0 56 'PlatformTokenRequestHandler # SKIP deprecated' test.out

#- 57 RevokeUser
eval_tap 0 57 'RevokeUser # SKIP deprecated' test.out

#- 58 GetRevocationList
eval_tap 0 58 'GetRevocationList # SKIP deprecated' test.out

#- 59 RevokeToken
eval_tap 0 59 'RevokeToken # SKIP deprecated' test.out

#- 60 RevokeAUser
eval_tap 0 60 'RevokeAUser # SKIP deprecated' test.out

#- 61 TokenGrant
eval_tap 0 61 'TokenGrant # SKIP deprecated' test.out

#- 62 VerifyToken
eval_tap 0 62 'VerifyToken # SKIP deprecated' test.out

#- 63 GetRoles
eval_tap 0 63 'GetRoles # SKIP deprecated' test.out

#- 64 CreateRole
eval_tap 0 64 'CreateRole # SKIP deprecated' test.out

#- 65 GetRole
eval_tap 0 65 'GetRole # SKIP deprecated' test.out

#- 66 UpdateRole
eval_tap 0 66 'UpdateRole # SKIP deprecated' test.out

#- 67 DeleteRole
eval_tap 0 67 'DeleteRole # SKIP deprecated' test.out

#- 68 GetRoleAdminStatus
eval_tap 0 68 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 69 SetRoleAsAdmin
eval_tap 0 69 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 70 RemoveRoleAdmin
eval_tap 0 70 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 71 GetRoleManagers
eval_tap 0 71 'GetRoleManagers # SKIP deprecated' test.out

#- 72 AddRoleManagers
eval_tap 0 72 'AddRoleManagers # SKIP deprecated' test.out

#- 73 RemoveRoleManagers
eval_tap 0 73 'RemoveRoleManagers # SKIP deprecated' test.out

#- 74 GetRoleMembers
eval_tap 0 74 'GetRoleMembers # SKIP deprecated' test.out

#- 75 AddRoleMembers
eval_tap 0 75 'AddRoleMembers # SKIP deprecated' test.out

#- 76 RemoveRoleMembers
eval_tap 0 76 'RemoveRoleMembers # SKIP deprecated' test.out

#- 77 UpdateRolePermissions
eval_tap 0 77 'UpdateRolePermissions # SKIP deprecated' test.out

#- 78 AddRolePermission
eval_tap 0 78 'AddRolePermission # SKIP deprecated' test.out

#- 79 DeleteRolePermission
eval_tap 0 79 'DeleteRolePermission # SKIP deprecated' test.out

#- 80 AdminGetAgeRestrictionStatusV2
eval_tap 0 80 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 81 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 81 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 82 GetListCountryAgeRestriction
eval_tap 0 82 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 83 UpdateCountryAgeRestriction
eval_tap 0 83 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 84 AdminSearchUsersV2
eval_tap 0 84 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 85 AdminGetUserByUserIdV2
eval_tap 0 85 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 86 AdminUpdateUserV2
eval_tap 0 86 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 87 AdminBanUserV2
eval_tap 0 87 'AdminBanUserV2 # SKIP deprecated' test.out

#- 88 AdminGetUserBanV2
eval_tap 0 88 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 89 AdminDisableUserV2
eval_tap 0 89 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 90 AdminEnableUserV2
eval_tap 0 90 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 91 AdminResetPasswordV2
eval_tap 0 91 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 92 AdminDeletePlatformLinkV2
eval_tap 0 92 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 93 AdminPutUserRolesV2
eval_tap 0 93 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 94 AdminCreateUserRolesV2
eval_tap 0 94 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 95 PublicGetCountryAgeRestriction
eval_tap 0 95 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 96 PublicCreateUserV2
eval_tap 0 96 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 97 PublicForgotPasswordV2
eval_tap 0 97 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 98 PublicResetPasswordV2
eval_tap 0 98 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 99 PublicGetUserByUserIDV2
eval_tap 0 99 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 100 PublicUpdateUserV2
eval_tap 0 100 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 101 PublicGetUserBan
eval_tap 0 101 'PublicGetUserBan # SKIP deprecated' test.out

#- 102 PublicUpdatePasswordV2
eval_tap 0 102 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 103 GetListJusticePlatformAccounts
eval_tap 0 103 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 104 PublicPlatformLinkV2
eval_tap 0 104 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 105 PublicDeletePlatformLinkV2
eval_tap 0 105 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 106 AdminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > test.out 2>&1
eval_tap $? 106 'AdminGetBansTypeV3' test.out

#- 107 AdminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > test.out 2>&1
eval_tap $? 107 'AdminGetListBanReasonV3' test.out

#- 108 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 108 'AdminGetInputValidations' test.out

#- 109 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "wiIOH72p", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["gSpt6EpD", "7yLdfL83", "sgNmMLPb"], "description": [{"language": "lLBfdeQ0", "message": ["MzqeQ3dr", "fwl9t5Mp", "WEcpykOM"]}, {"language": "jgkgiU9n", "message": ["JlVRN8VC", "7EepJLYR", "GLTBwA0b"]}, {"language": "BJsj0aF1", "message": ["hdSrpiLe", "9evsAExO", "lDp2OqAN"]}], "isCustomRegex": false, "letterCase": "o0i7JUNn", "maxLength": 21, "maxRepeatingAlphaNum": 62, "maxRepeatingSpecialCharacter": 10, "minCharType": 10, "minLength": 10, "regex": "J75h1Iv3", "specialCharacterLocation": "VbAX4Ggj", "specialCharacters": ["njuRkohv", "SU3PFg84", "4DaAr8iT"]}}, {"field": "Vv26AMcF", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["Ncp8JL0D", "V4HeuIp7", "riDYOvH6"], "description": [{"language": "eijj8sa7", "message": ["U8e7IiqQ", "f4vIAJnM", "WQXIIfOu"]}, {"language": "1RQUCpNR", "message": ["TbDbuqpK", "Gzs1tfm6", "VvLhtzP7"]}, {"language": "sf3lFfB3", "message": ["RwIezDzd", "wKqUBhzA", "t0XM79hz"]}], "isCustomRegex": false, "letterCase": "JrI87u22", "maxLength": 45, "maxRepeatingAlphaNum": 98, "maxRepeatingSpecialCharacter": 2, "minCharType": 28, "minLength": 38, "regex": "Z8cpl3S4", "specialCharacterLocation": "QLVCh8VS", "specialCharacters": ["HPZUh6gN", "aJYc7jLC", "msxzKwmO"]}}, {"field": "zSt1JXX2", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["zSOkeYUJ", "UHZ5xDRc", "s2JehbqF"], "description": [{"language": "gUlQ7QQD", "message": ["ngj4k5qh", "Iy1BQV2y", "keijMDa4"]}, {"language": "YZlXEoXg", "message": ["jPSPPAxs", "n4R5ivgl", "I6pZtKsh"]}, {"language": "OxWhtK5V", "message": ["HVGLtMH1", "ld0Fdaje", "D5Kje3a8"]}], "isCustomRegex": false, "letterCase": "Qig6g35f", "maxLength": 71, "maxRepeatingAlphaNum": 47, "maxRepeatingSpecialCharacter": 76, "minCharType": 73, "minLength": 75, "regex": "CrDDtAeh", "specialCharacterLocation": "uiHRX9i6", "specialCharacters": ["OlMNaFew", "IVfuvA5d", "QsoH4pJs"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'wOZf9iMy' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '1qqRY3bw' \
    --before '6I98JqWz' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 111 'ListAdminsV3' test.out

#- 112 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 112 'AdminGetAgeRestrictionStatusV3' test.out

#- 113 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 8, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Y8AInG94' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 81}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'rIsodODU' \
    --limit '93' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "Shp4AYmt", "comment": "HBu971Vp", "endDate": "IN1q9oIw", "reason": "1xedrcxA", "skipNotif": true, "userIds": ["iXd3ps0A", "k00NqFNq", "6m9tof7K"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "wJqcKICK", "userId": "CJy2MkGN"}, {"banId": "wPoXXF1l", "userId": "IEnz86q4"}, {"banId": "lLpHdQvo", "userId": "WNzUQBjJ"}]}' \
    > test.out 2>&1
eval_tap $? 118 'AdminUnbanUserBulkV3' test.out

#- 119 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 119 'AdminGetBansTypeWithNamespaceV3' test.out

#- 120 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --limit '47' \
    --offset '96' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["FRMp0iuH", "us6si21q", "81JNAveV"], "baseUri": "WIh4mB8K", "clientId": "n9l4oOJC", "clientName": "wmNmeJDg", "clientPermissions": [{"action": 28, "resource": "NysnVGOO", "schedAction": 95, "schedCron": "OhkbYwpv", "schedRange": ["aHab5ABP", "Nbdtq9Z6", "zkyv4vb3"]}, {"action": 33, "resource": "7T3XbT6E", "schedAction": 30, "schedCron": "ZWRPIaNr", "schedRange": ["KJMkIB6C", "Pf78xLvA", "BOvoWAfu"]}, {"action": 31, "resource": "ZnQROR7h", "schedAction": 35, "schedCron": "7Y4w4dmv", "schedRange": ["meamV67V", "MXdglKpX", "tsTI8xFg"]}], "clientPlatform": "YlFmUqft", "deletable": true, "namespace": "Ajdo7Gyx", "oauthAccessTokenExpiration": 61, "oauthClientType": "9AJadKWj", "oauthRefreshTokenExpiration": 23, "redirectUri": "WahMydRV", "secret": "zhrMdGYe", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'Jzm9LuqV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'ajSvT6ZV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'E9SBVunZ' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["pYAWQOUu", "LgCu2f7P", "yUu7EZRf"], "baseUri": "v6LhtWif", "clientName": "ucJCoVqf", "clientPermissions": [{"action": 28, "resource": "MmsKJU06", "schedAction": 86, "schedCron": "1FpeLWud", "schedRange": ["GZWUKhHi", "aUOOvxi9", "3TFxaH5y"]}, {"action": 79, "resource": "qMndsEKW", "schedAction": 36, "schedCron": "FLSwLLbr", "schedRange": ["voTDLvoW", "44WrGKqK", "Q0QTHIQP"]}, {"action": 32, "resource": "eSZ9CH2k", "schedAction": 81, "schedCron": "of8kb5Dl", "schedRange": ["fBWibKfv", "6ZWtNzq2", "Ajxnhg5g"]}], "clientPlatform": "byIxiFKA", "deletable": false, "namespace": "I1KH89RQ", "oauthAccessTokenExpiration": 46, "oauthRefreshTokenExpiration": 63, "redirectUri": "t7HBrCTc", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'WstMGO9l' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 46, "resource": "ufvcExFM"}, {"action": 10, "resource": "7C4YbiWx"}, {"action": 10, "resource": "1mOqFd1q"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '6CbsRzrk' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 75, "resource": "M03RQSAJ"}, {"action": 61, "resource": "OfAnuo3u"}, {"action": 24, "resource": "SqtEp4hY"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '75' \
    --clientId 'kRi9hUAh' \
    --namespace $AB_NAMESPACE \
    --resource 'bfLohwJB' \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientPermissionV3' test.out

#- 128 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 129 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 130 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '92' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'E1QtvMal' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Z1m4KQ3u' \
    --body '{"ACSURL": "c0Z7zISs", "AWSCognitoRegion": "pqtJD2e3", "AWSCognitoUserPool": "Cfl8hkWZ", "AllowedClients": ["YW4XM77c", "K5QmgU7j", "igmCCYPM"], "AppId": "d7DGYV8Y", "AuthorizationEndpoint": "XnwwHOBy", "ClientId": "AATmicg1", "Environment": "4o6lLRva", "FederationMetadataURL": "QvLQDimB", "GenericOauthFlow": false, "IsActive": false, "Issuer": "ZNZVQRu9", "JWKSEndpoint": "4tvI5jrf", "KeyID": "g9pt3YF4", "NetflixCertificates": {"encryptedPrivateKey": "XoVWmnpV", "encryptedPrivateKeyName": "XXi439oK", "publicCertificate": "ar7FGK32", "publicCertificateName": "UolWco3a", "rootCertificate": "xMaV995y", "rootCertificateName": "DxOvxotK"}, "OrganizationId": "ENeWH4Gk", "PlatformName": "W09EIGi2", "RedirectUri": "xWaSlUyH", "RegisteredDomains": [{"affectedClientIDs": ["obk1jyEu", "P0gFPzyf", "B8f2M7k6"], "domain": "xi8wC2nP", "namespaces": ["8wIBPdlf", "5GUuvj5w", "VSYFzUTj"], "roleId": "w9tY17w6"}, {"affectedClientIDs": ["p4QHO4kx", "ZQzMQKiv", "iYWr57K6"], "domain": "s47j9Hmn", "namespaces": ["O9i3EoMp", "wIVStXW9", "6uXfhlSI"], "roleId": "VDOKiXXN"}, {"affectedClientIDs": ["oiqT32SC", "I3GSIfiO", "zGtsfi0q"], "domain": "QbtnFaaV", "namespaces": ["yhUJYAJ6", "tUPqHNT3", "OqgS0wVE"], "roleId": "oR0oJWuX"}], "Secret": "jxOlOy5u", "TeamID": "O2DGSBko", "TokenAuthenticationType": "BuNh8zFM", "TokenClaimsMapping": {"2DKO4WeP": "I9s5rhwG", "b3j7Trvh": "rrqNIUHz", "9WK1e2X0": "A1sjEmNC"}, "TokenEndpoint": "JailPZVT"}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5Q9OqFox' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZS3NZJxY' \
    --body '{"ACSURL": "Jvi8l8W0", "AWSCognitoRegion": "xIJ5fJcl", "AWSCognitoUserPool": "gDb702aw", "AllowedClients": ["StxHaFhc", "ssmrcIr5", "Ltg3qSNb"], "AppId": "L4dz0hbb", "AuthorizationEndpoint": "er3utK0t", "ClientId": "WAbpdkuW", "Environment": "gLpeGljo", "FederationMetadataURL": "S79eFUce", "GenericOauthFlow": false, "IsActive": true, "Issuer": "8UY706au", "JWKSEndpoint": "zP2ycABx", "KeyID": "uYPCNWVl", "NetflixCertificates": {"encryptedPrivateKey": "h8dUdqbp", "encryptedPrivateKeyName": "ShzsxxuY", "publicCertificate": "iTF8fMbJ", "publicCertificateName": "U2ib2u6E", "rootCertificate": "2vQm6Jj7", "rootCertificateName": "gskG5fWV"}, "OrganizationId": "DcJLkzsQ", "PlatformName": "p1eIB4cH", "RedirectUri": "SHVd7Fl4", "RegisteredDomains": [{"affectedClientIDs": ["rXYZgrGF", "k1IjwKTL", "GzApTTeP"], "domain": "Cd5O9BNa", "namespaces": ["3OepJqJp", "UWcXJO3o", "XHiXQmh5"], "roleId": "udfPRcCT"}, {"affectedClientIDs": ["PbODP9jR", "h8YlFJm7", "rfkFQr6O"], "domain": "zCRC5c5x", "namespaces": ["oicqHq6Z", "XVpnxKqA", "9vt8Ik8a"], "roleId": "DQ3Tni6q"}, {"affectedClientIDs": ["94u50bD1", "DtAIGk7a", "ymupkz6t"], "domain": "8VUtPiVl", "namespaces": ["10zBeV2r", "fbaVXvvT", "Tken8aKf"], "roleId": "uu7LBBrl"}], "Secret": "JaRt6YVa", "TeamID": "VGUV7sNI", "TokenAuthenticationType": "ALrZzM3V", "TokenClaimsMapping": {"qZBvQB3t": "WCqQyNKp", "FYqDyYsW": "kMDF9K0g", "3kF1iVM9": "sb56IcdS"}, "TokenEndpoint": "jjw8uxVY"}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rp9o8X7X' \
    --body '{"affectedClientIDs": ["5KpM4DcM", "GZSw69CC", "kckrpB8C"], "assignedNamespaces": ["KIF6dsZa", "GCrn5tLl", "ngNqTp3Y"], "domain": "vDiAODqi", "roleId": "owNZYB0h"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SqigDibH' \
    --body '{"domain": "Mxru5ZEC"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'A8brxw1A' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'z9JuseUu' \
    --body '{"acsUrl": "wejxdffG", "apiKey": "VA62RMj3", "appId": "8V5bGB9r", "federationMetadataUrl": "IKpiZqsN", "isActive": false, "redirectUri": "428weDqf", "secret": "cgO55RVm", "ssoUrl": "OCLIiyyC"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9eXGhIQZ' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'w7FIRLJX' \
    --body '{"acsUrl": "BN8ImmW6", "apiKey": "UJ4oxe6W", "appId": "9IYxihwR", "federationMetadataUrl": "Dcd7NGxm", "isActive": false, "redirectUri": "sG80OX1o", "secret": "zNdIvZCS", "ssoUrl": "qdVYRPss"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dYDhycVc' \
    --platformUserId '7Q1QNcd9' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'iyhawtum' \
    --after '72' \
    --before '93' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'u6zU1dUI' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["v1NbTFhu", "sW7UuCk7", "bh8q7t16"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["nhUmOxeC", "gE9bk5W9", "FQ0T8Mz2"], "isAdmin": true, "roles": ["ZIp09OkH", "8QLjePgk", "GjbfO2I2"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '12' \
    --offset '99' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUsersV3' test.out

#- 147 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'HLY6q6RG' \
    --endDate 'QNlwaAyL' \
    --limit '62' \
    --offset '64' \
    --platformBy 'E0vuBd6F' \
    --platformId '7hk86CPE' \
    --query 'NbuvnQya' \
    --startDate 'eq0VSKtA' \
    > test.out 2>&1
eval_tap $? 147 'AdminSearchUserV3' test.out

#- 148 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["8jnVm0yd", "UtOf7dWV", "Z08yD2Pr"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'osb69Y4r' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kiPf60Bj' \
    --body '{"avatarUrl": "cMtNO69o", "country": "KrbRwjRs", "dateOfBirth": "GvZv8kAj", "displayName": "ONvJzP9h", "languageTag": "Pz4ypah0", "userName": "0C12au1O"}' \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rUCnbgPD' \
    --activeOnly 'true' \
    --after '6lugbZr6' \
    --before 'LvSwn3wr' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '9sCsmBdE' \
    --body '{"ban": "6Q35tTYI", "comment": "BgEmDQ1x", "endDate": "xHwd3qUO", "reason": "mjbuBZPw", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'L5zUMEpI' \
    --namespace $AB_NAMESPACE \
    --userId 'T3zyB8DM' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '8AJeMQAk' \
    --body '{"context": "kUMseflA", "emailAddress": "hwZlRUHB", "languageTag": "bKpKndmM"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'M9uHV0xy' \
    --body '{"Code": "zBHLjMzB", "ContactType": "ENCFTAU1", "LanguageTag": "fXa1XE4U", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'FyrXxPRL' \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gqaXHfuH' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oBQxRfrt' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Az5F2UHI' \
    --body '{"code": "qqVa5CNS", "country": "jRYIwJEL", "dateOfBirth": "AFXqshbN", "displayName": "fiaKU5Ui", "emailAddress": "7XHIOsGl", "password": "y4aODkTj", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uej2kgTH' \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HcnDQ9QE' \
    --after '0.08850812743043213' \
    --before '0.567690223729534' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fjoNFVzf' \
    --body '{"languageTag": "NuOlR7J1", "newPassword": "6nIff4jW", "oldPassword": "e4SdTgo1"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OsZoGlhw' \
    --body '{"Permissions": [{"Action": 96, "Resource": "EA0IxyAT", "SchedAction": 39, "SchedCron": "64rgzCen", "SchedRange": ["62grvlSz", "yM6AL13t", "ltZgg7ol"]}, {"Action": 35, "Resource": "ymxhKt6P", "SchedAction": 85, "SchedCron": "BKTq33R8", "SchedRange": ["ojj7svQh", "DFkK0nPs", "cXbWfF3p"]}, {"Action": 2, "Resource": "N9AlKao3", "SchedAction": 59, "SchedCron": "mmyeMKKO", "SchedRange": ["ICMw6ogl", "eUaGfrlb", "8kEtC2O6"]}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Wf931rW3' \
    --body '{"Permissions": [{"Action": 2, "Resource": "uuuOc7MF", "SchedAction": 95, "SchedCron": "FAmeV2Id", "SchedRange": ["csVYPsBk", "nvXNOqvE", "WH9RL8Fq"]}, {"Action": 28, "Resource": "TtKGLZNg", "SchedAction": 60, "SchedCron": "T11LVXAz", "SchedRange": ["ecDLvSRd", "dVreHCiQ", "z1HqxvXz"]}, {"Action": 9, "Resource": "FWsTXx4s", "SchedAction": 79, "SchedCron": "na6Oe9NZ", "SchedRange": ["sIhCEFw9", "NPmauNHB", "v5Ev93Fd"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BGp88gnD' \
    --body '[{"Action": 73, "Resource": "iMhBrA45"}, {"Action": 73, "Resource": "2iRwrxRY"}, {"Action": 33, "Resource": "fUpJy1pS"}]' \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '100' \
    --namespace $AB_NAMESPACE \
    --resource 'BGIAnkVq' \
    --userId 'EwD9H44b' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qbU1CRT9' \
    --after 'b3InfKkK' \
    --before 'XnOMOH3P' \
    --limit '25' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'GHrvhSWN' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'btUdwPFf' \
    --userId '3bhfb633' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'VXcJEHAO' \
    --userId 'wlluxEuZ' \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'L0hz7MhX' \
    --body '{"platformId": "we3gvRde", "platformUserId": "j7urzEIU"}' \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jaj1859x' \
    --userId 'mIOSryDt' \
    --body '{"platformNamespace": "7KUFKH34"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KplqFtiA' \
    --userId '4OYs6iFu' \
    --ticket 'gtHBHhMP' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xGIrIYPC' \
    --body '["BUdyaxix", "lWTaS0sT", "jBT8VZV8"]' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'G1bV2Nd5' \
    --body '[{"namespace": "AsH0Da0o", "roleId": "3bEScwXl"}, {"namespace": "F4SOArMj", "roleId": "xVr0RsQl"}, {"namespace": "yeLiXwZx", "roleId": "yphr8blJ"}]' \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'SenJzDgT' \
    --userId 'acODcpgx' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'sujtHAob' \
    --userId 'neGQ3d0d' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '5n0G06x0' \
    --body '{"enabled": true, "reason": "ZTPIzRWv"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rpNXpoHx' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'MfRa1eEV' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "7bJSMmbY"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateClientSecretV3' test.out

#- 181 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'LcHmAQxI' \
    --before 'CKqiBARD' \
    --isWildcard 'true' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRolesV3' test.out

#- 182 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "Zi5qx1wr", "namespace": "RNEefv6n", "userId": "RTvfmUi8"}, {"displayName": "K3lAwOem", "namespace": "Up4zt7ZO", "userId": "VGNWXWlt"}, {"displayName": "jHF2E69L", "namespace": "RqKKBqFC", "userId": "42q6IYgA"}], "members": [{"displayName": "Fl5UD3RB", "namespace": "nszlhzbu", "userId": "ryINNy0E"}, {"displayName": "ppK6iJvd", "namespace": "BLkXEelb", "userId": "Z1E6FCzX"}, {"displayName": "kp2Re0K1", "namespace": "Byye2pCr", "userId": "xE8V5Qqh"}], "permissions": [{"action": 29, "resource": "escZfmJu", "schedAction": 71, "schedCron": "lMky1ZhD", "schedRange": ["OgBUrbyF", "FLH1xpn0", "7f49B8jW"]}, {"action": 92, "resource": "Vb32YRbn", "schedAction": 72, "schedCron": "AIzyglY7", "schedRange": ["yCSDXAkS", "VgAIxHen", "C2ssbF2m"]}, {"action": 25, "resource": "77TP2kE2", "schedAction": 2, "schedCron": "um4kOrjX", "schedRange": ["rsvF4XHX", "Eillnau5", "GLdmJE9G"]}], "roleName": "391e2Q2J"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'viwlnDdo' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'HNkKbbhg' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'VyaiXw0y' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "pRX1iE8h"}' \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'RNxnO2Lx' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'KW7AFjnv' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'pPq9tucN' \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'E9KXXY9W' \
    --after 'TwBpq5xS' \
    --before 'R8YfxdfV' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'NTZDdm5p' \
    --body '{"managers": [{"displayName": "7P6u1bwf", "namespace": "Q5fZZgmQ", "userId": "3kEfEKAw"}, {"displayName": "bSTQQyF8", "namespace": "WXg6DsPD", "userId": "SOIBy9g9"}, {"displayName": "zNJyPrO6", "namespace": "LXgTWfEG", "userId": "bcZSjce9"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'ZWIkstYS' \
    --body '{"managers": [{"displayName": "JLQDHVRB", "namespace": "8LcclotO", "userId": "VRrD2d5v"}, {"displayName": "F5PDOUwS", "namespace": "iA4RHfpL", "userId": "rZpMpAi7"}, {"displayName": "s5vlf3wN", "namespace": "RyTu4Cbv", "userId": "NzEhne2I"}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'cZKFrRK6' \
    --after 'Po9YRgV4' \
    --before 'FUCs2MN0' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'qx0KEKYc' \
    --body '{"members": [{"displayName": "H6a7l6Y7", "namespace": "Ns7nbr3k", "userId": "p5cnGyvT"}, {"displayName": "jyZ2IZ6h", "namespace": "sITjEEZ4", "userId": "ENsuIMmM"}, {"displayName": "nzWDirq9", "namespace": "NaUY8vuo", "userId": "UZ2BXfCt"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'cEmGx1ZZ' \
    --body '{"members": [{"displayName": "sT07c7pZ", "namespace": "x8OxEAcg", "userId": "WLj7cOaD"}, {"displayName": "uelqwlqG", "namespace": "fK3U2c2p", "userId": "Dw0tjmjf"}, {"displayName": "LNWsSJLq", "namespace": "nruZ43um", "userId": "d3gmdayj"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'x9fhG0rs' \
    --body '{"permissions": [{"action": 10, "resource": "qx2ebcFv", "schedAction": 69, "schedCron": "6vcqwta0", "schedRange": ["Fv0Qwta8", "tIBL7QQo", "SeXY81do"]}, {"action": 25, "resource": "PnAzUq1b", "schedAction": 12, "schedCron": "oTT9GMFV", "schedRange": ["yWc5BgvA", "6oTTu7Y4", "4sAsNrye"]}, {"action": 45, "resource": "XUSJQsuc", "schedAction": 67, "schedCron": "GtyYDtJs", "schedRange": ["hX9CISfP", "6vrksDI0", "xURQya2u"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'EsbbgsZG' \
    --body '{"permissions": [{"action": 23, "resource": "6gYjAYn9", "schedAction": 22, "schedCron": "CkvHuoXm", "schedRange": ["EVSBIlKS", "oHmq8Ww1", "AkhySzS4"]}, {"action": 37, "resource": "WWhuIF9k", "schedAction": 63, "schedCron": "d1RGcfI4", "schedRange": ["rxxCX8Ow", "EzonFfMz", "ySrJ9JJu"]}, {"action": 80, "resource": "kpRbfNEd", "schedAction": 22, "schedCron": "k7V5OL8f", "schedRange": ["AlhvlzfU", "HnIQb8sf", "LZYoWYF4"]}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'hnVW2WIv' \
    --body '["HQkPviI9", "pUQqlGSn", "WCL1OadC"]' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '47' \
    --resource 'epTGjDKh' \
    --roleId 'ZolrxLQm' \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionV3' test.out

#- 199 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 199 'AdminGetMyUserV3' test.out

#- 200 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '7p5NSQWd' \
    --extendExp 'true' \
    --redirectUri 'L26Ya7G9' \
    --password 'KRFycNCI' \
    --requestId 'ZWuBVErG' \
    --userName 'mbFRP63P' \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'yLhc3iwk' \
    --linkingToken 'UR9RXmuw' \
    --password 'vEkVpepo' \
    --username 'YxOFMssm' \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'WUnjljpa' \
    > test.out 2>&1
eval_tap $? 202 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 203 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 203 'GetCountryLocationV3' test.out

#- 204 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 204 'Logout' test.out

#- 205 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'C0XnST2J' \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MKFa3CN0' \
    --userId 'Qck9GL5p' \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '253sDEBU' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'Nh7xF29E' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --redirectUri 'plMUXWPo' \
    --scope 'OCOkk5eS' \
    --state 'j6FLuVy8' \
    --targetAuthPage 'x1N3oAIs' \
    --clientId '8zygNWGr' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'vQkjfUo1' \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'cTu0g3Kn' \
    --mfaToken 'e5xfwDGu' \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'UoRlRIz2' \
    --factor 'LBKahOZf' \
    --mfaToken 'lwvlny7v' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OIIA4jv1' \
    --userId 'wo0KCOQU' \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '2FgnKCh4' \
    --clientId 'q9hVwcBb' \
    --redirectUri 'EauihkKf' \
    --requestId 'ZnUZyCtg' \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'ewhhAIyU' \
    --clientId 'BnglPukC' \
    --createHeadless 'true' \
    --deviceId 'B7JhwOnX' \
    --macAddress 'lW9X9r43' \
    --platformToken 'mMSnBj88' \
    > test.out 2>&1
eval_tap $? 215 'PlatformTokenGrantV3' test.out

#- 216 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 216 'GetRevocationListV3' test.out

#- 217 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'g2KLma6S' \
    > test.out 2>&1
eval_tap $? 217 'TokenRevocationV3' test.out

#- 218 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'n1ZfHY0Q' \
    --code 'gppLroi4' \
    --codeVerifier 'NHTLvTpL' \
    --extendExp 'true' \
    --password 'QqXXYbsh' \
    --redirectUri '69RUNHKQ' \
    --refreshToken 'FPpvPCfU' \
    --username 'c7EGUf6J' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 218 'TokenGrantV3' test.out

#- 219 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'SCCGGvHJ' \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'Nxa0B1Va' \
    --code 'MsMtlwtk' \
    --error 'bWvNNKvi' \
    --openidAssocHandle 'ffwrQfcB' \
    --openidClaimedId 'RLAElCJh' \
    --openidIdentity '5z0QTP0n' \
    --openidMode 'MXdzWEje' \
    --openidNs '8RyLpiPx' \
    --openidOpEndpoint 'K58KdG6z' \
    --openidResponseNonce 'n1DBHirg' \
    --openidReturnTo 'EQIhP5W5' \
    --openidSig 'Pb6ywJF7' \
    --openidSigned 'pRExqB3Z' \
    --state 'TW1IdTiH' \
    > test.out 2>&1
eval_tap $? 220 'PlatformAuthenticationV3' test.out

#- 221 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode '5c7cYCBe' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetInputValidations' test.out

#- 222 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'tjJoJrU1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 222 'PublicGetCountryAgeRestrictionV3' test.out

#- 223 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 223 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 224 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'xthGYVZr' \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RFaQjxMh' \
    --body '{"platformUserIds": ["lp7zoywF", "AVFtyjK7", "F2PISBQs"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fBG52Gws' \
    --platformUserId 'N1axKEAB' \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '2r2lS2p4' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetAsyncStatus' test.out

#- 228 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'nzcxGRZT' \
    --limit '92' \
    --offset '54' \
    --query '5moKsTKf' \
    > test.out 2>&1
eval_tap $? 228 'PublicSearchUserV3' test.out

#- 229 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "3Vp3kVo7", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ghRQXmUp", "policyId": "vWkkAn6t", "policyVersionId": "klL0UtKh"}, {"isAccepted": false, "localizedPolicyVersionId": "DT0Zjkjz", "policyId": "b3ulc939", "policyVersionId": "Cful57bE"}, {"isAccepted": false, "localizedPolicyVersionId": "7hplzGMN", "policyId": "RXdC2dFX", "policyVersionId": "bt3J18b5"}], "authType": "k1gT16HC", "code": "ZlFyxK0s", "country": "qtpVUrHn", "dateOfBirth": "A6IrfzLw", "displayName": "iDNE9Lmt", "emailAddress": "rs2AAziy", "password": "gmUheYCx", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'UMlD4E9f' \
    --query 'KtoXvCcV' \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["NYKP3poC", "6AnvmE75", "3OyKGn9Z"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "iHC2d97V", "languageTag": "mOxQy2V8"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "oFYZcXAC", "emailAddress": "j3MuAxBZ"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "3vpM3gTP", "languageTag": "ZgiPUK5h"}' \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Qnivp6b6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'IZUBV7FB' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yEIkUYWS", "policyId": "5NPyK2Dx", "policyVersionId": "Iq6zIVg6"}, {"isAccepted": true, "localizedPolicyVersionId": "zXvzXAp4", "policyId": "Zjc6lInV", "policyVersionId": "giFZkkyK"}, {"isAccepted": false, "localizedPolicyVersionId": "ISABf2pF", "policyId": "zOrY2ICT", "policyVersionId": "FShAq1Zm"}], "authType": "EMAILPASSWD", "country": "NXQ1mgcO", "dateOfBirth": "PB3CT0qf", "displayName": "sz2Qz2cN", "password": "0SnNanW0", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "1SEGy50h", "country": "kidesVPS", "dateOfBirth": "sdTKMInQ", "displayName": "ZqMUxEEs", "languageTag": "BZeMELr2", "userName": "YfYRU6FC"}' \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "bEsJJayg", "country": "XcZMpXO9", "dateOfBirth": "Jm2Lx6El", "displayName": "SiTab5MY", "languageTag": "boqgJEQ6", "userName": "pLzPkNTC"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "5aM5nNBu", "emailAddress": "6vcWGuaC", "languageTag": "chYjqQbF"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Ru0gWo8y", "contactType": "KOxeyfQo", "languageTag": "hmRbl6SF", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Wkyoz9Vz", "country": "vCY54yGL", "dateOfBirth": "UKnWvPPK", "displayName": "htyuk6n2", "emailAddress": "p7WAk9L3", "password": "agW5mCX9", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "551rTa7I", "password": "Q8UP0FY4"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "lZCYE0QH", "newPassword": "JHP6WaDI", "oldPassword": "c9yEFHWM"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '0m7voIbi' \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Msi36Lfk' \
    --redirectUri 'HQ9p2JSZ' \
    --ticket 'FEARuH9V' \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GZsnNvuf' \
    --body '{"platformNamespace": "V2AYtsLR"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fOBd6Ciu' \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Zg0TYa5A' \
    --ticket 'wXBCwTRv' \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'UndyBWvI' \
    --clientId 'EElH98Ug' \
    --redirectUri 'f7jsYd17' \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'qPFyJldi' \
    --state 'gNPbfD5N' \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "eyHGkjcU", "emailAddress": "dwB9quRA", "newPassword": "XhyVKpUU"}' \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '3Q0XlNI6' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b9QDP3Ly' \
    --activeOnly 'false' \
    --after 'eVNpwUmv' \
    --before 'd1Xo4qA4' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '7GByhypP' \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '3Jwpw4B4' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kQwQtBtY' \
    --after '0.7032920639004683' \
    --before '0.23631059651041364' \
    --limit '26' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'voubFHbs' \
    --after 'BfkZLh0f' \
    --before 'wpV5MQkF' \
    --limit '81' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Bbmq7Gv6' \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'H2nHHbs2' \
    --body '{"platformId": "DLU18clV", "platformUserId": "9FXCa55U"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'NtaboDVF' \
    --body '{"chosenNamespaces": ["1KUNxAU9", "JsxLq1XF", "jASo1Er6"], "requestId": "0QsoPQjb"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '9oO8UH8q' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lIWl4DxY' \
    --password 'oubOePR3' \
    > test.out 2>&1
eval_tap $? 262 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 263 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'OcbM1Mcw' \
    --before 'WXcV5H5q' \
    --isWildcard 'true' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetRolesV3' test.out

#- 264 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'sIekRGLD' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRoleV3' test.out

#- 265 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 265 'PublicGetMyUserV3' test.out

#- 266 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "KolJ7OtT"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicSendVerificationLinkV3' test.out

#- 267 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'QemtJVUI' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyUserByLinkV3' test.out

#- 268 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'jR9UBw6D' \
    --code 'ew6XJkpg' \
    --error 'qYEkDhSi' \
    --state 'CC9WpoeC' \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'g7B5rsFV' \
    --payload 'F6e4N06V' \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'OWRTL1Br' \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'yBuYB4F7' \
    > test.out 2>&1
eval_tap $? 271 'RequestGameTokenResponseV3' test.out

#- 272 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'mx2sETCV' \
    > test.out 2>&1
eval_tap $? 272 'AdminGetDevicesByUserV4' test.out

#- 273 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'WbZ6vRbI' \
    --endDate 'T76wj0h9' \
    --limit '38' \
    --offset '9' \
    --startDate '7kdwOdOt' \
    > test.out 2>&1
eval_tap $? 273 'AdminGetBannedDevicesV4' test.out

#- 274 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hxfsLXNC' \
    > test.out 2>&1
eval_tap $? 274 'AdminGetUserDeviceBansV4' test.out

#- 275 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "KDNVL3Lx", "deviceId": "ycNF4B5f", "deviceType": "nmo9Benn", "enabled": false, "endDate": "ovaiWNmk", "ext": {"wXVkA7tG": {}, "rZYdOcx3": {}, "Pai12KKH": {}}, "reason": "n5LMX3bD"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminBanDeviceV4' test.out

#- 276 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ixzPfywY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 276 'AdminGetDeviceBanV4' test.out

#- 277 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '7IXe8Qe0' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 277 'AdminUpdateDeviceBanV4' test.out

#- 278 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '6yUcCOfD' \
    --startDate 'IGCzrWGK' \
    --deviceType 'lcVGznuA' \
    > test.out 2>&1
eval_tap $? 278 'AdminGenerateReportV4' test.out

#- 279 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 279 'AdminGetDeviceTypesV4' test.out

#- 280 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'N8UAijG8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDeviceBansV4' test.out

#- 281 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '1i3xDjLl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 281 'AdminDecryptDeviceV4' test.out

#- 282 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'Wy2CW1gL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'AdminUnbanDeviceV4' test.out

#- 283 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'V50XeMSX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUsersByDeviceV4' test.out

#- 284 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 13}' \
    > test.out 2>&1
eval_tap $? 284 'AdminCreateTestUsersV4' test.out

#- 285 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8uYeWXT8", "X6jQkrDp", "uRUO7enT"]}' \
    > test.out 2>&1
eval_tap $? 285 'AdminBulkCheckValidUserIDV4' test.out

#- 286 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'T823kTuG' \
    --body '{"avatarUrl": "2wBjfDrf", "country": "EeV1mvfp", "dateOfBirth": "TXxDwQZ9", "displayName": "xmsOhUhJ", "languageTag": "ur2ErgbT", "userName": "1Vb5T891"}' \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateUserV4' test.out

#- 287 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aMcjzopL' \
    --body '{"code": "utrBlGVZ", "emailAddress": "PxmoUj5O"}' \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserEmailAddressV4' test.out

#- 288 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vzZHDVqL' \
    > test.out 2>&1
eval_tap $? 288 'AdminDisableUserMFAV4' test.out

#- 289 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'mvN0xdWN' \
    > test.out 2>&1
eval_tap $? 289 'AdminListUserRolesV4' test.out

#- 290 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uAfmTpVJ' \
    --body '{"assignedNamespaces": ["PVH4ivYE", "bqcb5G7P", "vCeIvIpD"], "roleId": "dlnOZlIX"}' \
    > test.out 2>&1
eval_tap $? 290 'AdminUpdateUserRoleV4' test.out

#- 291 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '3ZSJNTj6' \
    --body '{"assignedNamespaces": ["Wb0gRClq", "xn94Yw1c", "f2NL1FxP"], "roleId": "6tMZ9zrV"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminAddUserRoleV4' test.out

#- 292 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'quJSnkZN' \
    --body '{"assignedNamespaces": ["7osAjPSj", "lOWfxlmM", "fwyRI1BB"], "roleId": "dc9yhGKD"}' \
    > test.out 2>&1
eval_tap $? 292 'AdminRemoveUserRoleV4' test.out

#- 293 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '39' \
    --offset '8' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetRolesV4' test.out

#- 294 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "a5wwzhQP"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminCreateRoleV4' test.out

#- 295 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '2p1ZRqYj' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetRoleV4' test.out

#- 296 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'h5sygtTd' \
    > test.out 2>&1
eval_tap $? 296 'AdminDeleteRoleV4' test.out

#- 297 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'ca3IRivc' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "5ESRcjKH"}' \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateRoleV4' test.out

#- 298 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '1fGcc0Be' \
    --body '{"permissions": [{"action": 14, "resource": "rNo3Lku5", "schedAction": 100, "schedCron": "ofcLXVwl", "schedRange": ["JHuZ49sp", "31JgLWrA", "rE6DZx9h"]}, {"action": 19, "resource": "Fkpyu754", "schedAction": 50, "schedCron": "442Bf8PD", "schedRange": ["NpvA19Mq", "7e8FDmcC", "8iqaH9Xs"]}, {"action": 38, "resource": "uuBcAEpQ", "schedAction": 55, "schedCron": "FAOWR4A3", "schedRange": ["J1qlIcOH", "ZjQ8jaDs", "QyYk3msx"]}]}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRolePermissionsV4' test.out

#- 299 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'WmDRL8wI' \
    --body '{"permissions": [{"action": 59, "resource": "h84R3S5E", "schedAction": 66, "schedCron": "3eha02Sk", "schedRange": ["x1phppBr", "RwaP26oz", "COZoWSBG"]}, {"action": 4, "resource": "er6LzMsk", "schedAction": 95, "schedCron": "ZmjDmPoj", "schedRange": ["CZUJeWEq", "85qsYkmB", "D9YUjRE3"]}, {"action": 38, "resource": "5Vyklgzj", "schedAction": 5, "schedCron": "cTct7NIJ", "schedRange": ["4MlSJS3x", "yqkbcrlY", "63WEiyFb"]}]}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddRolePermissionsV4' test.out

#- 300 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'HotdYIgt' \
    --body '["KeCJNekO", "xouJ8Mpc", "gz5vhS16"]' \
    > test.out 2>&1
eval_tap $? 300 'AdminDeleteRolePermissionsV4' test.out

#- 301 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '4ZTmR8WQ' \
    --after '9JybzEkQ' \
    --before 'X2KIVUED' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 301 'AdminListAssignedUsersV4' test.out

#- 302 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'YhzsUYjY' \
    --body '{"assignedNamespaces": ["G3ktlqm0", "BFPl9l7D", "bOzAkS7e"], "namespace": "qjeMzVZd", "userId": "k5S5Wc1C"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminAssignUserToRoleV4' test.out

#- 303 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'AdC2X9Ft' \
    --body '{"namespace": "H7FYtMpC", "userId": "Fm2hg54z"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminRevokeUserFromRoleV4' test.out

#- 304 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "QIy4tAZO", "country": "YMX0Liqn", "dateOfBirth": "8NY4YKcI", "displayName": "otiNsoVi", "languageTag": "VgFwMyrk", "userName": "slLcElse"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminUpdateMyUserV4' test.out

#- 305 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 305 'AdminDisableMyAuthenticatorV4' test.out

#- 306 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'EhhkAoFq' \
    > test.out 2>&1
eval_tap $? 306 'AdminEnableMyAuthenticatorV4' test.out

#- 307 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 307 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 308 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 308 'AdminGetMyBackupCodesV4' test.out

#- 309 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 309 'AdminGenerateMyBackupCodesV4' test.out

#- 310 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 310 'AdminDisableMyBackupCodesV4' test.out

#- 311 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 311 'AdminDownloadMyBackupCodesV4' test.out

#- 312 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 312 'AdminEnableMyBackupCodesV4' test.out

#- 313 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminGetMyEnabledFactorsV4' test.out

#- 314 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '1fTlSYpr' \
    > test.out 2>&1
eval_tap $? 314 'AdminMakeFactorMyDefaultV4' test.out

#- 315 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["4B49OHOS", "R7s2NjWd", "HLGqge1x"], "emailAddresses": ["B9NLfLTx", "uZrluu6p", "sz24MfNb"], "isAdmin": false, "roleId": "J2aQph2r"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserV4' test.out

#- 316 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ySGmDibj", "policyId": "VBfxppy4", "policyVersionId": "WvFy6Wyn"}, {"isAccepted": false, "localizedPolicyVersionId": "XkD3ilNa", "policyId": "s4ng8OPC", "policyVersionId": "cF4ssBpq"}, {"isAccepted": true, "localizedPolicyVersionId": "5OD1GEDN", "policyId": "Ptk3WAi4", "policyVersionId": "IKXreBmE"}], "authType": "EMAILPASSWD", "country": "oNOpiIpn", "dateOfBirth": "zaWrxlg1", "displayName": "avUICej8", "emailAddress": "QTbgUCpf", "password": "BKYVtoFC", "passwordMD5Sum": "3fMg3DfV", "username": "RABlfGmq", "verified": true}' \
    > test.out 2>&1
eval_tap $? 316 'PublicCreateTestUserV4' test.out

#- 317 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yWvqWVMF", "policyId": "sGtxA1eD", "policyVersionId": "Do7xospq"}, {"isAccepted": false, "localizedPolicyVersionId": "cDpxNwXs", "policyId": "DEXaTlMs", "policyVersionId": "0O0ktd7u"}, {"isAccepted": true, "localizedPolicyVersionId": "zHLpP6IL", "policyId": "PJpeRdVi", "policyVersionId": "jw3c2Zq5"}], "authType": "EMAILPASSWD", "code": "9odW7swR", "country": "jgPZb9dN", "dateOfBirth": "PnDOBegf", "displayName": "eamhUg1D", "emailAddress": "rOkLK4uT", "password": "bgW8iaPn", "passwordMD5Sum": "wYgx8Blx", "reachMinimumAge": false, "username": "AFYLKoJi"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicCreateUserV4' test.out

#- 318 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'E6hzr2ov' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "slEfXxpA", "policyId": "ziacHQiq", "policyVersionId": "GFmBvbt5"}, {"isAccepted": false, "localizedPolicyVersionId": "jDJS9Vfl", "policyId": "DlO73qFG", "policyVersionId": "4Au48zOx"}, {"isAccepted": false, "localizedPolicyVersionId": "MHmPpBEk", "policyId": "pzoJzqXK", "policyVersionId": "h9e8Jxhj"}], "authType": "EMAILPASSWD", "country": "tX7xxE87", "dateOfBirth": "0DXdpgJl", "displayName": "tXtFPcxo", "password": "mTwc5aYC", "reachMinimumAge": false, "username": "mjQY0JSJ"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserFromInvitationV4' test.out

#- 319 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "XfJ3URNs", "country": "8V6AYQN1", "dateOfBirth": "OshOFGvu", "displayName": "ZqWzdbyw", "languageTag": "g4sPCCBj", "userName": "VDq0j9VR"}' \
    > test.out 2>&1
eval_tap $? 319 'PublicUpdateUserV4' test.out

#- 320 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "kJhtqUtR", "emailAddress": "1l3ngLi9"}' \
    > test.out 2>&1
eval_tap $? 320 'PublicUpdateUserEmailAddressV4' test.out

#- 321 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "VNFqOkws", "country": "h5rEhSj8", "dateOfBirth": "L9VWEUan", "displayName": "VWzMeno1", "emailAddress": "U1QHVUAw", "password": "ZriESPjw", "reachMinimumAge": false, "username": "Laheh1rr", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 321 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 322 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ACIYqPMf", "password": "GootZBCx", "username": "Nj1t8lPO"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicUpgradeHeadlessAccountV4' test.out

#- 323 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 323 'PublicDisableMyAuthenticatorV4' test.out

#- 324 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'cdNipnDa' \
    > test.out 2>&1
eval_tap $? 324 'PublicEnableMyAuthenticatorV4' test.out

#- 325 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 325 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 326 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 326 'PublicGetMyBackupCodesV4' test.out

#- 327 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'PublicGenerateMyBackupCodesV4' test.out

#- 328 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 328 'PublicDisableMyBackupCodesV4' test.out

#- 329 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 329 'PublicDownloadMyBackupCodesV4' test.out

#- 330 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'PublicEnableMyBackupCodesV4' test.out

#- 331 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 331 'PublicRemoveTrustedDeviceV4' test.out

#- 332 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 332 'PublicGetMyEnabledFactorsV4' test.out

#- 333 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'ATvUVLLR' \
    > test.out 2>&1
eval_tap $? 333 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE