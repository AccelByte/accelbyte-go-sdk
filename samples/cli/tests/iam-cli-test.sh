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
echo "1..347"

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
    --body '[{"field": "dZ1B9MOT", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["1HSddOQy", "gIdniTMR", "GgKvmeox"], "description": [{"language": "kmuCfOo6", "message": ["15eoeM2J", "tWwFTQFl", "6FCu946K"]}, {"language": "XpEFRdVO", "message": ["RHsJveno", "cnO09t9C", "lL1YPc51"]}, {"language": "w8KLkkc1", "message": ["bRdnr1tz", "BKPFU4Rq", "ONC56Hxo"]}], "isCustomRegex": true, "letterCase": "HHfYZqzO", "maxLength": 61, "maxRepeatingAlphaNum": 36, "maxRepeatingSpecialCharacter": 23, "minCharType": 6, "minLength": 39, "regex": "3P4Bdn3u", "specialCharacterLocation": "bYdvj87C", "specialCharacters": ["pwm5LaXY", "1zWFAGFC", "OhrJ082X"]}}, {"field": "ut6sN4Mw", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["vUy987iy", "Rc2VGhvv", "gjcYPcKs"], "description": [{"language": "GtXEn7Vl", "message": ["SM3HOahs", "vbmFqmpz", "JnpqdmnI"]}, {"language": "vffikUfA", "message": ["I1JYJTKt", "U4WUo785", "tLidUrdk"]}, {"language": "2DgTr8sa", "message": ["S5QCJp9Q", "WCt1cRMx", "MYx1paWZ"]}], "isCustomRegex": true, "letterCase": "vCHCgGdL", "maxLength": 49, "maxRepeatingAlphaNum": 40, "maxRepeatingSpecialCharacter": 58, "minCharType": 27, "minLength": 65, "regex": "bGaZvKuY", "specialCharacterLocation": "km9qAQMG", "specialCharacters": ["IUjzMGSs", "RXjP98On", "tDJPYFZY"]}}, {"field": "J3gCaq0U", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["pWBdcWdk", "OJ4NPyqs", "SFh2KGij"], "description": [{"language": "3vqRpG2y", "message": ["M1qbzl3t", "2xMkGxSo", "G51YJ1Vo"]}, {"language": "iLOVsmQ6", "message": ["DZIrvxCG", "9wBLEeDU", "D4Cq1hPt"]}, {"language": "2WooTCm5", "message": ["6pXhXWEJ", "emyPgKLQ", "RnMQaHuL"]}], "isCustomRegex": true, "letterCase": "N4u8wQmO", "maxLength": 67, "maxRepeatingAlphaNum": 95, "maxRepeatingSpecialCharacter": 22, "minCharType": 20, "minLength": 82, "regex": "Q3lo0SOR", "specialCharacterLocation": "VVJ5ItFk", "specialCharacters": ["p5S6ba57", "FTZF3qPu", "qAPmr9b5"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'f8aEamgG' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'P6vWsLV0' \
    --before 'ELHe12Px' \
    --limit '45' \
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
    --body '{"ageRestriction": 95, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'UbTyY2VZ' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 25}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'OaLWAIx1' \
    --limit '6' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "IOmVAWCd", "comment": "XK9uvtb6", "endDate": "qf7sT665", "reason": "nMVtB1kG", "skipNotif": false, "userIds": ["xhp1DD7v", "yzOZtYD3", "F9qPQ6Jb"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "sEKu3wFU", "userId": "IjKrmFOF"}, {"banId": "ZeZStJ9O", "userId": "2MJoFBdI"}, {"banId": "CpFX1HOp", "userId": "ihplHD3P"}]}' \
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
    --clientId 'gomKa4mV' \
    --clientName 'lJ8thz2F' \
    --clientType '52kgDdys' \
    --limit '56' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["IWei4oqs", "960BMFDf", "PC5Bfd4P"], "baseUri": "GODi0mIl", "clientId": "V3iXnhw1", "clientName": "ux9PsAhn", "clientPermissions": [{"action": 57, "resource": "sYGL5VRq", "schedAction": 58, "schedCron": "31XghXSb", "schedRange": ["cfUEhSkT", "A9D70hyN", "D1Ov0GTv"]}, {"action": 95, "resource": "FJ0ssjKK", "schedAction": 48, "schedCron": "xCcJl2d3", "schedRange": ["r0hhL782", "Fj84gnzu", "hINpGNVO"]}, {"action": 58, "resource": "BNgiUiWC", "schedAction": 28, "schedCron": "8opfO0pu", "schedRange": ["fgxlctgn", "P0TI7z5o", "l4XoYBz6"]}], "clientPlatform": "gkGScwSJ", "deletable": true, "description": "TIZFetgJ", "namespace": "hZK7HZkw", "oauthAccessTokenExpiration": 79, "oauthAccessTokenExpirationTimeUnit": "5KSMtG0K", "oauthClientType": "F5gPYl4l", "oauthRefreshTokenExpiration": 22, "oauthRefreshTokenExpirationTimeUnit": "EZwlmcmo", "parentNamespace": "iZTU6P4X", "redirectUri": "GtkXzgq6", "scopes": ["nNsAfHFE", "7B5lBBnm", "wSnI9hr6"], "secret": "eGE1dZaf", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'rK2wUAd2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'LvoamWOs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'lZZvMO9I' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["APMJZxD9", "rFydgFjI", "gJJIaNB8"], "baseUri": "caJXXdHd", "clientName": "d5DqaZa5", "clientPermissions": [{"action": 14, "resource": "USaEDbmf", "schedAction": 16, "schedCron": "n4kN4hGG", "schedRange": ["R7QS6w7V", "aWPXoh3H", "UhlqISe2"]}, {"action": 54, "resource": "v3moEn9O", "schedAction": 43, "schedCron": "7zzlROd7", "schedRange": ["i6F4oiEo", "2anTuAeq", "XdtYAyWi"]}, {"action": 22, "resource": "qbcXzpg6", "schedAction": 16, "schedCron": "BVzoYuAA", "schedRange": ["aWbtZI0f", "LYhmUBtX", "MxRi9WVw"]}], "clientPlatform": "kY9IYIOD", "deletable": true, "description": "T2s1ySur", "namespace": "TLC62MVQ", "oauthAccessTokenExpiration": 35, "oauthAccessTokenExpirationTimeUnit": "StfRLXk5", "oauthRefreshTokenExpiration": 25, "oauthRefreshTokenExpirationTimeUnit": "HKlqwE86", "redirectUri": "ThpHnfEQ", "scopes": ["pTFSdZIi", "Ra9dMjHt", "yyNUVKs2"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'Pk5QuPQz' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 57, "resource": "UK56J2Id"}, {"action": 50, "resource": "KbqxqXMX"}, {"action": 59, "resource": "Y12Box2X"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'F2xJt2IE' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 23, "resource": "EeU5lSLG"}, {"action": 45, "resource": "xS2O9dpo"}, {"action": 38, "resource": "HZV5yBiC"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '32' \
    --clientId 'peBouzCp' \
    --namespace $AB_NAMESPACE \
    --resource 'wMjuHgRX' \
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
    --limit '91' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Rc9AL8xI' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iGpUny4G' \
    --body '{"ACSURL": "1KWGzYPg", "AWSCognitoRegion": "Hr9XNc1y", "AWSCognitoUserPool": "iuPUnn7M", "AllowedClients": ["w9AJNvbj", "8YpeFuwV", "3osxVDgU"], "AppId": "rH7n0FiS", "AuthorizationEndpoint": "XghrUI1M", "ClientId": "LHh8Ut3o", "Environment": "xl4GgD1e", "FederationMetadataURL": "ZxqRjspW", "GenericOauthFlow": false, "IsActive": false, "Issuer": "SEvvdMRP", "JWKSEndpoint": "VBvmmX8R", "KeyID": "v3tgxWs6", "NetflixCertificates": {"encryptedPrivateKey": "VzTpLNOg", "encryptedPrivateKeyName": "EN1jiPak", "publicCertificate": "M2Qleb6w", "publicCertificateName": "wf24m3yg", "rootCertificate": "bWYNw97B", "rootCertificateName": "ZidIm9hK"}, "OrganizationId": "w7hDkJMJ", "PlatformName": "U62Ri3cj", "RedirectUri": "EiMeU0M5", "RegisteredDomains": [{"affectedClientIDs": ["bppmZv9x", "s3L7yGFr", "974be70B"], "domain": "ftUZ8udU", "namespaces": ["OZIXmRlj", "WMi3E7In", "gxF4ypjT"], "roleId": "QfzWF4dx"}, {"affectedClientIDs": ["jwn73wLc", "cS9jkJug", "nNFRjvSU"], "domain": "Fa2nX7qs", "namespaces": ["fXzYVVA3", "TprwjKyr", "sYlimUEr"], "roleId": "4YCZgXUQ"}, {"affectedClientIDs": ["lUPPTs2h", "YJWQ3Mv4", "ltaX0TpP"], "domain": "mAMkl3JV", "namespaces": ["70m2Mu15", "nQOAm2LP", "n619KPPv"], "roleId": "dVdQDP5n"}], "Secret": "1tsXL7Zp", "TeamID": "oWfZDQpr", "TokenAuthenticationType": "t6bebIx6", "TokenClaimsMapping": {"gbs5WMkr": "WsyEbtCY", "3k4SzDhe": "eTVgiIMY", "DzRq84yi": "fFnwCyft"}, "TokenEndpoint": "hmbhKZE8", "scopes": ["5wFl7eFK", "zlijg6DH", "Labokc6U"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'E2WoHdXs' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jeWjcIv4' \
    --body '{"ACSURL": "NtNS1fG1", "AWSCognitoRegion": "kRhalZ2C", "AWSCognitoUserPool": "gA2tQrC8", "AllowedClients": ["nunAdelT", "lDfLA8Y8", "iUv7VnK1"], "AppId": "Xz2ZhRqX", "AuthorizationEndpoint": "lgp36aBq", "ClientId": "nNq7fEfD", "Environment": "hdIjdenT", "FederationMetadataURL": "iUa01LOJ", "GenericOauthFlow": false, "IsActive": false, "Issuer": "YR8g7bNe", "JWKSEndpoint": "CzqpbuJW", "KeyID": "AB2nrv8r", "NetflixCertificates": {"encryptedPrivateKey": "Mc0hVm1Y", "encryptedPrivateKeyName": "RSy6WEhr", "publicCertificate": "xT4lNBLD", "publicCertificateName": "l6NC5yyf", "rootCertificate": "zTZEbHXK", "rootCertificateName": "xNlYdQkg"}, "OrganizationId": "F0kAmBRV", "PlatformName": "dL68ZAe3", "RedirectUri": "l9L6PaSs", "RegisteredDomains": [{"affectedClientIDs": ["4JDBF9U3", "WnjTGym3", "KMPfjJTG"], "domain": "XO1onbUi", "namespaces": ["Ydkj3g1j", "jvTrS6hK", "QMD3jwgq"], "roleId": "NENOR0E4"}, {"affectedClientIDs": ["oNtnMrx7", "WgYWeche", "hUMuThlM"], "domain": "FrOTHWfI", "namespaces": ["zWJb12a7", "c4aOmlDa", "EaqhnMUX"], "roleId": "gJOpQrHi"}, {"affectedClientIDs": ["I1TWq1fO", "5F3a6S1x", "k17iwh2P"], "domain": "vxcBDDOq", "namespaces": ["Y6q1TlqB", "QslAwDiF", "g681lb08"], "roleId": "9k4rdJFH"}], "Secret": "TYISTE54", "TeamID": "8iFH1IKQ", "TokenAuthenticationType": "Wc8xre2j", "TokenClaimsMapping": {"gkBlz1Et": "B6ygaS83", "z31WxfWy": "7HbMST3M", "ESdP0FIg": "mvssfPBV"}, "TokenEndpoint": "F8OJTeor", "scopes": ["5bETXobE", "EMacCQY0", "a2Q8CyeO"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XagrTGAI' \
    --body '{"affectedClientIDs": ["OxXZF92r", "qg8XQI46", "5qIszPYO"], "assignedNamespaces": ["vBzh6t73", "6svA6cpz", "WDJQgWR2"], "domain": "O6eWpT6X", "roleId": "lNmKWmkq"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JicDecri' \
    --body '{"domain": "eJPYldnX"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '17F9583j' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '0jS8SjIv' \
    --body '{"acsUrl": "lQ26MEbe", "apiKey": "KxvZ53VT", "appId": "kUUdEWeL", "federationMetadataUrl": "MmmqhBWk", "isActive": true, "redirectUri": "GmqIX75Q", "secret": "CSCjbTqS", "ssoUrl": "i076q7PY"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '25oORmfl' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'fWUCOW04' \
    --body '{"acsUrl": "IyZTT9SF", "apiKey": "7cTVLLf8", "appId": "woroX010", "federationMetadataUrl": "3TxLXbAN", "isActive": true, "redirectUri": "YCgOucIX", "secret": "lP0lWSmc", "ssoUrl": "WnAC8Rmn"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0DvgrJLc' \
    --platformUserId 'BJVn4hpi' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'sh4EXa3U' \
    --after '65' \
    --before '28' \
    --limit '41' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'w42W9yQn' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2YvuOWCJ", "yXazcH3j", "UpyhcRl3"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["NVeQm9Ag", "L7hHGs9H", "kjkE9It2"], "isAdmin": false, "namespace": "KTjJWmko", "roles": ["rmAU8R6r", "KNoh9ijP", "flPPwCHd"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '58' \
    --platformUserId 'a3oYgzfj' \
    --platformId 'Vn6leoJ6' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ZGAx6xbb' \
    --endDate 'jHawkaxC' \
    --limit '95' \
    --offset '92' \
    --platformBy 'dF3qdT30' \
    --platformId 'ZQuUE1li' \
    --query 'OSfztyZ0' \
    --startDate 'dd9C5fo0' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["LG1pnkMU", "dIE3NJX1", "iQDu7cKv"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BbrfdIRZ' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qpezqSPs' \
    --body '{"avatarUrl": "vNIrmmqm", "country": "fWns9HUb", "dateOfBirth": "pYiFHiKz", "displayName": "MEVsVpu3", "languageTag": "Du3aKd7a", "userName": "rtavkIiB"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Yzw1y1Le' \
    --activeOnly 'false' \
    --after 'HV1vWqH2' \
    --before 'VsTSVkBu' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uliRM4vh' \
    --body '{"ban": "8j6TWL3z", "comment": "hhC0ZvWM", "endDate": "YW5NbJvb", "reason": "5qN5JPQm", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'w5JXgXCB' \
    --namespace $AB_NAMESPACE \
    --userId 'mESdN6wY' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '5ZzSTeHW' \
    --body '{"context": "R6zqY9TW", "emailAddress": "eR6LOqjd", "languageTag": "uAhANQlY"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aP5nB4r7' \
    --body '{"Code": "qYipwV2d", "ContactType": "F2mRuFLm", "LanguageTag": "EBlN883g", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'WzPr0ogy' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '6f4t87L2' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c6SMqSzC' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aD8p9DSU' \
    --body '{"code": "L4jTXcP1", "country": "DVgR20ZQ", "dateOfBirth": "ibOEK6P1", "displayName": "veBQl7hs", "emailAddress": "fP8qp8jY", "password": "mOGye48Y", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '3nJXi8kV' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oXUOlBue' \
    --after '0.07092971481459232' \
    --before '0.03581035539935118' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qrx9tMwN' \
    --body '{"languageTag": "4fdfr5Ie", "newPassword": "KmMaWrib", "oldPassword": "v5AGfTKE"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VdenQLc2' \
    --body '{"Permissions": [{"Action": 5, "Resource": "rtdqTJ2f", "SchedAction": 78, "SchedCron": "PAM3cIPz", "SchedRange": ["RKRW0Adx", "Nj9VbX4r", "9PLsvAtb"]}, {"Action": 66, "Resource": "HxvPtMLH", "SchedAction": 95, "SchedCron": "KCdukZtM", "SchedRange": ["9I0URSQq", "7iwVPPTq", "AH6MyvVq"]}, {"Action": 70, "Resource": "2dPHRXXq", "SchedAction": 34, "SchedCron": "aIf9fx9m", "SchedRange": ["WZ6KFsTe", "vvydcFYC", "WhVppGWa"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z8cBJU9y' \
    --body '{"Permissions": [{"Action": 11, "Resource": "1kwWYM7L", "SchedAction": 9, "SchedCron": "c1vJUfn7", "SchedRange": ["eKatAi8u", "OH7v1GiH", "aRiRTKNa"]}, {"Action": 64, "Resource": "fDbZGHiY", "SchedAction": 46, "SchedCron": "RCxP7WRk", "SchedRange": ["j0z7uXUf", "Cy4qXWoq", "MaDpz9oJ"]}, {"Action": 35, "Resource": "uUfH1Lu5", "SchedAction": 17, "SchedCron": "TE5TP4ZJ", "SchedRange": ["p0oTg8wL", "O5CsZbHt", "y7zEvir6"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wLyl01pr' \
    --body '[{"Action": 75, "Resource": "RLlshRTS"}, {"Action": 38, "Resource": "GvuAvNih"}, {"Action": 5, "Resource": "YgOydIYX"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '71' \
    --namespace $AB_NAMESPACE \
    --resource 'hP8wu7oE' \
    --userId 'cemy0hmT' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '7hf5Kmzn' \
    --after 'cL4n4Mjm' \
    --before 'VxGGtzis' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '878xHhSW' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'jtl5erwG' \
    --userId 'xtnEngBo' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'FgoZvawi' \
    --userId 'uPAOe9XX' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'iO7TV8da' \
    --body '{"platformId": "i9OoKAvG", "platformUserId": "VNaOm56g"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RKG44I3v' \
    --userId 'yTNgyHfI' \
    --body '{"platformNamespace": "PpAb1bDa"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cTNlUCBT' \
    --userId 'dmbxya02' \
    --ticket '0e82vCxg' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mTF7wx6o' \
    --userId 'CByQ9z5O' \
    --platformToken 'R9KrfDnI' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OEKLY9tT' \
    --body '["GxrFS1wR", "dALY8ST5", "TdLX997M"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '3IElDSiv' \
    --body '[{"namespace": "geCXyQmN", "roleId": "jXHNvdCe"}, {"namespace": "Qj1MGSiF", "roleId": "s5PsmiSP"}, {"namespace": "NKQlOeMm", "roleId": "xic2XKI7"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'iZO4AyFq' \
    --userId '0Lf2wyYZ' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'xg7dfM3Z' \
    --userId 'GtzyE3KN' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WvDj7q7i' \
    --body '{"enabled": true, "reason": "6X5A8Qww"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dLgtyG5A' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'VLs7mv3I' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "EoJr2XUQ"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '3CZtmNg1' \
    --before 'lm3pjthj' \
    --isWildcard 'false' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "EZx3TG72", "namespace": "kFLfnyBV", "userId": "TTzd4KE8"}, {"displayName": "Oa3TR1UT", "namespace": "cooqkO0w", "userId": "cWQHBCZe"}, {"displayName": "d68411Dd", "namespace": "DGgrOZrW", "userId": "UnN9YFSO"}], "members": [{"displayName": "c7rTGdrr", "namespace": "VxOa6ctD", "userId": "4YUGBJM3"}, {"displayName": "Kt9m2ajr", "namespace": "9MEiPSdz", "userId": "oJUZSaRL"}, {"displayName": "JOOqiW51", "namespace": "twFgmxi7", "userId": "7WONLwBY"}], "permissions": [{"action": 42, "resource": "S3g1gb4G", "schedAction": 78, "schedCron": "P6DCqdQ3", "schedRange": ["hQIj5Ki5", "sV79Smlc", "62Lxtt5c"]}, {"action": 59, "resource": "PQIcsjFp", "schedAction": 46, "schedCron": "pYPbPxLI", "schedRange": ["x1TSu2wX", "vP7Yatf0", "oIG2Y4Yk"]}, {"action": 89, "resource": "yuKVly3C", "schedAction": 87, "schedCron": "g6WLYqMy", "schedRange": ["XF4TJQGy", "No3nrS0Z", "RiAFrrOF"]}], "roleName": "bj0D97FB"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'DETiOzVj' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'I5mHkSur' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'kgTwMoDC' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "kPfCgkze"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'EyTYbkZf' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'HPJFHOaA' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'vTQasLBr' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'VZGJAfDW' \
    --after 'EidCYK0M' \
    --before 'pM3EtrB2' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'n8SNKnHo' \
    --body '{"managers": [{"displayName": "ZSHyQsTg", "namespace": "nzg77EG5", "userId": "B4GGJrNs"}, {"displayName": "BUOf3lKJ", "namespace": "pbmqMlZU", "userId": "VMAPIWfi"}, {"displayName": "NYVpdoOC", "namespace": "rmOSBEvU", "userId": "M5k07LMB"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'upptiMX4' \
    --body '{"managers": [{"displayName": "bFlMrjJp", "namespace": "IiwyvK0D", "userId": "TsiHYAax"}, {"displayName": "XVIwNZKp", "namespace": "MSPkApMA", "userId": "uRxjUBUc"}, {"displayName": "b3SzzUAI", "namespace": "KyJgMIDk", "userId": "TtEckL3o"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'Q45yiCkp' \
    --after 'Vl20km9p' \
    --before 'RTUM7g0O' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '0mQdhTcO' \
    --body '{"members": [{"displayName": "9IzejGQb", "namespace": "MmMT8SZo", "userId": "oIzI7Cdm"}, {"displayName": "aFasMFhh", "namespace": "CmXoves4", "userId": "TbMEaP10"}, {"displayName": "5usVeFLk", "namespace": "YooYC1xH", "userId": "HJHEdv5B"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'w2YEhTGm' \
    --body '{"members": [{"displayName": "iXJkiwcs", "namespace": "s3x0J8bK", "userId": "Kyvbn3lX"}, {"displayName": "cZ3hc02i", "namespace": "0NkTXuhl", "userId": "x9Li8T6Q"}, {"displayName": "0R66Dgk4", "namespace": "ACpD7Xg9", "userId": "TUdgK0qs"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'TaZzGKLE' \
    --body '{"permissions": [{"action": 60, "resource": "UpulXg42", "schedAction": 16, "schedCron": "gbN50S2v", "schedRange": ["Qg7HaMj6", "ophc7CJR", "QDptVeqS"]}, {"action": 63, "resource": "djehkMzL", "schedAction": 17, "schedCron": "1iOxTPfs", "schedRange": ["axHVkAuk", "zevj0OAp", "SwbZaNKR"]}, {"action": 8, "resource": "Y3PBhxqk", "schedAction": 44, "schedCron": "Evy6xsxQ", "schedRange": ["0MEmV9YT", "wMguG9ZM", "B30IxDGG"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'Bo9qazeP' \
    --body '{"permissions": [{"action": 3, "resource": "7jxn8xHl", "schedAction": 73, "schedCron": "HCmS4ijy", "schedRange": ["Jhpf37UZ", "F6Tt8JAu", "tyfETHZB"]}, {"action": 9, "resource": "tQFwn1DB", "schedAction": 92, "schedCron": "eG4t7f7m", "schedRange": ["heNNHbjY", "QyZjkRje", "hYtTBwpA"]}, {"action": 93, "resource": "tUrOMpOa", "schedAction": 82, "schedCron": "JlWAvbOS", "schedRange": ["dtIIEThk", "DLy1Ba0j", "gdBF6pkT"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'tzzvyYLt' \
    --body '["mhMTZUmC", "05SX0pBz", "ROubglhw"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '35' \
    --resource 'ycbPTQju' \
    --roleId 'aSiet6xt' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '2qzlIUlE' \
    --extendExp 'false' \
    --redirectUri 'axxU0Ufb' \
    --password '9o0zAAe9' \
    --requestId 'bM87nFHa' \
    --userName 'OlsHufnN' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'm9aZATNG' \
    --linkingToken 'EQtdTM5V' \
    --password 'fQRBgryz' \
    --username 'lcPKNxXP' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'pM6HAp12' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'AWQ5fTnj' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'khJa953F' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId '1IRt8gMO' \
    --oneTimeLinkCode 'ZYpTP4Rq' \
    > test.out 2>&1
eval_tap $? 207 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 208 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 208 'GetCountryLocationV3' test.out

#- 209 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 209 'Logout' test.out

#- 210 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'Vtbf8HBv' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bgDLHh1L' \
    --userId 'KSv7EzVU' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KfcUzb8p' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'wIzPMWov' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'UPwqGeBE' \
    --redirectUri 'JvaAVzEo' \
    --scope 'V3XUWOgW' \
    --state 'q82Kmfwh' \
    --targetAuthPage '50K9eBro' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '310hCKYh' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '413unFDv' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'Nq54Q0sH' \
    --factor 'oR6ll6Bm' \
    --mfaToken 'PoLVsaPN' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '7sxaTZqi' \
    --mfaToken 'UKTHdgbu' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'kO1kjpu6' \
    --factor 'qFYcLTKu' \
    --mfaToken '2NuC6tOH' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '24uNaFXF' \
    --userId 'GsADFoU4' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Sufmw58k' \
    --clientId 'eXqdlXxs' \
    --redirectUri '6j1pkgVx' \
    --requestId '9RznC8AG' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'NgCMjgWL' \
    --clientId 'G55LgtVk' \
    --createHeadless 'false' \
    --deviceId '7sXnjj8E' \
    --macAddress 'B7iArtlM' \
    --platformToken 'dwUCYMkV' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'ORqAMfyb' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'l5UV8AKi' \
    --code 'gFn1yvyd' \
    --codeVerifier 'UKHCWcA8' \
    --extendExp 'false' \
    --password 'kfPyBvyn' \
    --redirectUri 'yr94cM2S' \
    --refreshToken '62E6NjZT' \
    --username 'FnsLQDec' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '3H5nrtLV' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'YuhpFdBa' \
    --code 'WF9qNiu5' \
    --error '6e4hmzhc' \
    --openidAssocHandle 'gXmGgVuv' \
    --openidClaimedId 'iJqZEb18' \
    --openidIdentity 'yh8VPv5L' \
    --openidMode 'r27eEbT8' \
    --openidNs 'pIureanj' \
    --openidOpEndpoint '2nTBWqK1' \
    --openidResponseNonce 'JjEAvFJk' \
    --openidReturnTo 'fkhi2qKc' \
    --openidSig 'PUy3f2TL' \
    --openidSigned 'RIVRTGcc' \
    --state 'kFrSn4hV' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'k1L4vYul' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'B9HBvgiQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 228 'PublicGetCountryAgeRestrictionV3' test.out

#- 229 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 229 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 230 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'iyMqtQ6l' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0HoggQbJ' \
    --body '{"platformUserIds": ["b28a3yLY", "30Gm5z6m", "OCbEVwwM"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SHH3iIqi' \
    --platformUserId 'jZ4i0HQF' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'AvadkXNQ' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'k2cuTjnU' \
    --limit '15' \
    --offset '67' \
    --query 'oGcgsgWW' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "EgzUCAjE", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "L1354KCI", "policyId": "Nj3lceEl", "policyVersionId": "ZVhJ7PhE"}, {"isAccepted": false, "localizedPolicyVersionId": "COjVtaxc", "policyId": "Krlnknv4", "policyVersionId": "ursC2Vpm"}, {"isAccepted": false, "localizedPolicyVersionId": "sWjw41vm", "policyId": "MeQISQYj", "policyVersionId": "mWCLVAjY"}], "authType": "w4grVHoI", "code": "vaPWnFho", "country": "1lQmW4eh", "dateOfBirth": "XbUsoUXQ", "displayName": "X4JODOLJ", "emailAddress": "GrPlx1Gy", "password": "HcbGsVKm", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'gGpvU80z' \
    --query 'NzdwZCHA' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1FAuVzTB", "TYhtiB6I", "i8BkZCcq"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "ZI6jWGM9", "languageTag": "Y0wh8rBi"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Ze1qR7mF", "emailAddress": "Lec4YCWJ"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "jPUZ2xvy", "languageTag": "vjNqlYVl"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '9LYVEuia' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'j10OHF5n' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "3f6GS2bx", "policyId": "YN0IvC8c", "policyVersionId": "m761Esrg"}, {"isAccepted": true, "localizedPolicyVersionId": "LmAE7fJg", "policyId": "jBmKDviM", "policyVersionId": "cxO8ONas"}, {"isAccepted": true, "localizedPolicyVersionId": "LR3x6itm", "policyId": "Na7YbTKF", "policyVersionId": "L3ITjqd9"}], "authType": "EMAILPASSWD", "country": "5zxk4X90", "dateOfBirth": "t3u1bFg5", "displayName": "7E5ySj33", "password": "wDBdhAsP", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "fvVo9H77", "country": "T2n82MXm", "dateOfBirth": "1CY4C3r5", "displayName": "CI4ujm7g", "languageTag": "hhAD5tdC", "userName": "kSDgUkhd"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "HtSJT1p1", "country": "upuU9PTi", "dateOfBirth": "oyp4RvD2", "displayName": "Xh6z4NGk", "languageTag": "ppR3ciLv", "userName": "fhD6G7Rp"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "p04GAmyL", "emailAddress": "FGKGkeOW", "languageTag": "zDsUP4rT"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6sGqq11z", "contactType": "eyDWgvr2", "languageTag": "oHyhV8BO", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "bhnq3cZk", "country": "VaRiWdB0", "dateOfBirth": "D5OVUlgF", "displayName": "qJa8Xubc", "emailAddress": "7s5wVXl4", "password": "ybvuTyHu", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "rmwg7n9Q", "password": "3RiC27l6"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "I8zEkScL", "newPassword": "Fgc0xXfd", "oldPassword": "6NC0XwiF"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'NgJbLi12' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Q6kVSoXC' \
    --redirectUri 'VKxbNz4O' \
    --ticket 'BoJtMpeF' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DG1vSEMH' \
    --body '{"platformNamespace": "WHYIif2o"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zKgIpUHY' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PZdY4tVc' \
    --ticket 'twXb3aUB' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'omgf7oeA' \
    --clientId 'rLBTkqXy' \
    --redirectUri 'NPvQDG5A' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'NjWqJuVC' \
    --state 'pmNRcJwe' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "rfFPEm2o", "emailAddress": "TXnJUzdh", "newPassword": "eIHfa7Rt"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'riyBTfEo' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BbbRCdnp' \
    --activeOnly 'true' \
    --after 'JHBIdIVh' \
    --before 'cfq33MJB' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aCSpTjka' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yafMl7q1' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hawSHw40' \
    --after '0.45833012747763835' \
    --before '0.56570516719325' \
    --limit '85' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ibgvGnWn' \
    --after 'qPLhE7LE' \
    --before 'QIJ360bY' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CGQxjo7S' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'xLxERUfI' \
    --body '{"platformId": "VWwuL3qu", "platformUserId": "CwfXV3lx"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'DnJBZY9G' \
    --body '{"chosenNamespaces": ["8Z7is0ZC", "moyIOwOU", "P3cF58mA"], "requestId": "cMOsodWA"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hfrsWCRZ' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NnOumwGy' \
    --password 'G9WLH5Fh' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '5VW0KOsB' \
    --before 'K2IZXQHf' \
    --isWildcard 'false' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'z3dYBDFY' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'OcmUwX2J' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["PV6x4Jsc", "5TzQCX8f", "sM0OaoFX"], "oneTimeLinkCode": "CjnTRl9o"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "uXIlDjFh"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'sFNEtmWd' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'Si0jAWmh' \
    --code 'o1XXRZpt' \
    --error '4WCpqSq3' \
    --state '6Yq578yS' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'QU348mdJ' \
    --payload 'gI79Gk2y' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '7yu9ixr4' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code '2l1NT2P8' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tVOpSTnN' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'XTH74lgn' \
    --endDate 'OOIG6WWD' \
    --limit '13' \
    --offset '100' \
    --startDate 'RvuVSz3Y' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uYyxIuYU' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "waphT25Q", "deviceId": "74XMZLv9", "deviceType": "cDVZj4uv", "enabled": false, "endDate": "bGQ04dXF", "ext": {"jGtZyskp": {}, "dJS2AlYf": {}, "FMQmeWpk": {}}, "reason": "LEc5iBZe"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'O0zeGjnl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'yeCemUOH' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'rPdXWYdL' \
    --startDate 'ghpGi2wd' \
    --deviceType 'el2E14dg' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '1uDPHsdz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'QQuj1c1D' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'VVNc6WvA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'sPmhp0k7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 0}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KWhOoJ5t", "Fc77QWqO", "JVTWWhC2"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AWLoO70d' \
    --body '{"avatarUrl": "5OtZU0QQ", "country": "UtJitnmB", "dateOfBirth": "zKF9HsVZ", "displayName": "vV4v2zbs", "languageTag": "w3wxnNWa", "userName": "cQvijLEY"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'E76z5NZS' \
    --body '{"code": "UGTWpPbE", "emailAddress": "rO8cYlHa"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'cCN6aSmF' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '557RcGjX' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AJ7mAP1C' \
    --body '{"assignedNamespaces": ["aKoaVwE7", "ht6UMWzB", "QUFPZgh7"], "roleId": "qVOS7dyj"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '93D2mwgR' \
    --body '{"assignedNamespaces": ["JQ337KgR", "gTPrUWRB", "EcOnsiIh"], "roleId": "0JwNQTZ4"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vqGjz0MU' \
    --body '{"assignedNamespaces": ["7Mi8Dist", "R9EwaPzs", "UOmvMsf9"], "roleId": "n2K15inB"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '25' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "hJZulnlX"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '1z9v0izb' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '08lfUI2c' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'M1U2gEVK' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "dToPSOq5"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'KwIU2vvu' \
    --body '{"permissions": [{"action": 3, "resource": "ozIFKMym", "schedAction": 94, "schedCron": "MBtZmtpM", "schedRange": ["l99X2k3B", "fpE2GUGM", "QcSH6ltX"]}, {"action": 90, "resource": "YDbFNlyY", "schedAction": 6, "schedCron": "5OScqZgp", "schedRange": ["La3O7pOe", "M0iVbVvq", "m8ZQbdlt"]}, {"action": 13, "resource": "cxn1KKw0", "schedAction": 34, "schedCron": "ZTdh8eiP", "schedRange": ["S12gKejW", "YjqtytBk", "2MQe838U"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'IBFNj5l4' \
    --body '{"permissions": [{"action": 67, "resource": "QEfmcioI", "schedAction": 36, "schedCron": "oUXP2BPt", "schedRange": ["jsOm49V1", "2tisxSj8", "IOgYht2s"]}, {"action": 55, "resource": "RpgFJXrA", "schedAction": 33, "schedCron": "BR0DrSmz", "schedRange": ["p7wPFFi2", "Hiv8qxzm", "Tv50aL1l"]}, {"action": 31, "resource": "PKcPq2uG", "schedAction": 37, "schedCron": "UV3GZjlB", "schedRange": ["uJ71bWTO", "JvkHeZQu", "Mq3n7slN"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '9mNW1cad' \
    --body '["X5hB4MCb", "OiqarviN", "Kt1kmlLU"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'EM8pspiO' \
    --after 'NacFfhFg' \
    --before 'Tq4vsyqx' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '1AyFa4uS' \
    --body '{"assignedNamespaces": ["QIHav8oT", "GZTp86Rf", "mui8vAwT"], "namespace": "30THaekS", "userId": "TAZRn9d4"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'VKbiYqmC' \
    --body '{"namespace": "FTe3NrOo", "userId": "8orungRR"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "ZuvRiNDv", "country": "OIw9y4UC", "dateOfBirth": "jtgKEZFs", "displayName": "G2ti6b9u", "languageTag": "R6etepfy", "userName": "NRHkGAbf"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '4Qle7PIo' \
    > test.out 2>&1
eval_tap $? 314 'AdminEnableMyAuthenticatorV4' test.out

#- 315 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 316 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminGetMyBackupCodesV4' test.out

#- 317 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 317 'AdminGenerateMyBackupCodesV4' test.out

#- 318 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminDisableMyBackupCodesV4' test.out

#- 319 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 319 'AdminDownloadMyBackupCodesV4' test.out

#- 320 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 320 'AdminEnableMyBackupCodesV4' test.out

#- 321 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 321 'AdminSendMyMFAEmailCodeV4' test.out

#- 322 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableMyEmailV4' test.out

#- 323 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'TaDRTWMj' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'DHxr8sdw' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["qeyVMyXV", "TMnzftl9", "KhS00g6v"], "emailAddresses": ["OLxPM37k", "nZ0dp9gT", "XEd3gity"], "isAdmin": false, "namespace": "l0Kl8SrI", "roleId": "jn9CWq1h"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "CkRrUXuN", "policyId": "DIkWGCe5", "policyVersionId": "HT8zVCaT"}, {"isAccepted": true, "localizedPolicyVersionId": "kfkoARMz", "policyId": "4S4HkYm7", "policyVersionId": "o9tf3JQG"}, {"isAccepted": true, "localizedPolicyVersionId": "RkIdQLAb", "policyId": "XePd6xtX", "policyVersionId": "OvUc53xd"}], "authType": "EMAILPASSWD", "country": "quOWsBxq", "dateOfBirth": "4dUAEERl", "displayName": "kBoaevXP", "emailAddress": "eA9iTiId", "password": "4C4mS77B", "passwordMD5Sum": "cKmVEjT9", "username": "n8hAYo7t", "verified": false}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "R2xvzKbE", "policyId": "DtsMdmEz", "policyVersionId": "G13kWufd"}, {"isAccepted": true, "localizedPolicyVersionId": "n6TJQS4a", "policyId": "z9uVs5tP", "policyVersionId": "dF1CtLf0"}, {"isAccepted": false, "localizedPolicyVersionId": "Lvwasjwe", "policyId": "XmTNSYRc", "policyVersionId": "VDwSoUtF"}], "authType": "EMAILPASSWD", "code": "PE4AJbhw", "country": "EMzgrIAp", "dateOfBirth": "WmZPnblq", "displayName": "bokwsse3", "emailAddress": "HZJhETon", "password": "VAqL7QT0", "passwordMD5Sum": "W1PSNy1s", "reachMinimumAge": true, "username": "RUZ6Uv7P"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'foajY7cn' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "ItJccQSd", "policyId": "b6d4sbmy", "policyVersionId": "ubQo6rPm"}, {"isAccepted": false, "localizedPolicyVersionId": "Mjl12rmW", "policyId": "Z1JtOq9O", "policyVersionId": "WMUWySyA"}, {"isAccepted": false, "localizedPolicyVersionId": "lVLa8ca7", "policyId": "e7U5ouvW", "policyVersionId": "LrA1GIjc"}], "authType": "EMAILPASSWD", "country": "VxLjEmuO", "dateOfBirth": "u8aHILVk", "displayName": "vo4aCn0F", "password": "Uptr8hFk", "reachMinimumAge": true, "username": "u0fqOeYF"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "PwN5R2Jp", "country": "Msd4AQWB", "dateOfBirth": "6qKLoePS", "displayName": "CpgrZdeG", "languageTag": "4wGvLyL1", "userName": "fyx3hAjb"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yiB1RECn", "emailAddress": "wGpAeAnr"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xH2wQsZL", "country": "Kbk3kl94", "dateOfBirth": "TSBEx7U8", "displayName": "ABf6stzX", "emailAddress": "uqZumoH8", "password": "wQu9zhJD", "reachMinimumAge": true, "username": "qquXgFqk", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "C5V2vorG", "password": "m9rnyFr2", "username": "3EHeTo2A"}' \
    > test.out 2>&1
eval_tap $? 333 'PublicUpgradeHeadlessAccountV4' test.out

#- 334 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'PublicDisableMyAuthenticatorV4' test.out

#- 335 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'J0XfJlR7' \
    > test.out 2>&1
eval_tap $? 335 'PublicEnableMyAuthenticatorV4' test.out

#- 336 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 336 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 337 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicGetMyBackupCodesV4' test.out

#- 338 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicGenerateMyBackupCodesV4' test.out

#- 339 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 339 'PublicDisableMyBackupCodesV4' test.out

#- 340 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicDownloadMyBackupCodesV4' test.out

#- 341 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 341 'PublicEnableMyBackupCodesV4' test.out

#- 342 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 342 'PublicRemoveTrustedDeviceV4' test.out

#- 343 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 343 'PublicSendMyMFAEmailCodeV4' test.out

#- 344 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 344 'PublicDisableMyEmailV4' test.out

#- 345 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'MCh2Vqna' \
    > test.out 2>&1
eval_tap $? 345 'PublicEnableMyEmailV4' test.out

#- 346 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'PublicGetMyEnabledFactorsV4' test.out

#- 347 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'VLvoneDj' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE