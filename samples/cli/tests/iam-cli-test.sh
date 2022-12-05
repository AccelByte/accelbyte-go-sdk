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
echo "1..341"

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
    --body '[{"field": "3H0DbrSH", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["jwvDTpQP", "txDLxGc2", "qhD278OM"], "description": [{"language": "2uFMexyK", "message": ["Ut5TcnQB", "O6yaK3IL", "eUKZgrlQ"]}, {"language": "tgYonHKO", "message": ["A6aEbBrq", "0Hl0Ua2b", "t0sZFlNY"]}, {"language": "oUGN1DrX", "message": ["0vaNgdbP", "e4HnR2Lv", "c43I4KmB"]}], "isCustomRegex": true, "letterCase": "kvHY8cX8", "maxLength": 97, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 70, "minCharType": 53, "minLength": 75, "regex": "02a7ALUM", "specialCharacterLocation": "STP7b6wI", "specialCharacters": ["UfAOInD6", "rrjT3l60", "Zaoi9L9b"]}}, {"field": "wAdTAxy5", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["cgIMqgYW", "6eGhlo7f", "btMWGTZk"], "description": [{"language": "3rgz6LRD", "message": ["pzcbQ2WO", "W4k2fmMM", "M2LRS9UP"]}, {"language": "EQfqHqZy", "message": ["w9wFnjbG", "gHtWXKp9", "WO1HHKIQ"]}, {"language": "xRXwqwyC", "message": ["Sp5rxWtA", "nJUdeFnh", "mzdkxVAz"]}], "isCustomRegex": false, "letterCase": "xmcBoVvB", "maxLength": 99, "maxRepeatingAlphaNum": 41, "maxRepeatingSpecialCharacter": 6, "minCharType": 53, "minLength": 70, "regex": "2ABvabVB", "specialCharacterLocation": "vDSLqQkc", "specialCharacters": ["Q2MetBkB", "Kyz2toQf", "7pIIdl7r"]}}, {"field": "JHBsTVxP", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["bJXFXtMn", "4xIrwv6b", "23ysAu9F"], "description": [{"language": "t2PK2vuG", "message": ["2b4OvhjF", "6OcfLnDU", "xwgCmt0y"]}, {"language": "STSUE9bV", "message": ["PsQxH0Jm", "yrGDBDQk", "YpLHpVpr"]}, {"language": "FqQHdqUn", "message": ["pmZm0uA5", "ubA0MgVn", "d0pdTv5S"]}], "isCustomRegex": true, "letterCase": "UCyKS3YP", "maxLength": 38, "maxRepeatingAlphaNum": 91, "maxRepeatingSpecialCharacter": 0, "minCharType": 86, "minLength": 24, "regex": "QP2Xo9i6", "specialCharacterLocation": "IHAR2Ebd", "specialCharacters": ["ol3q3CwO", "Prhwj1hW", "IrybsAJV"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'LO9HZdjz' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'JEpUWaL7' \
    --before '2WnZIqnZ' \
    --limit '33' \
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
    --body '{"ageRestriction": 22, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '3UyBO1ui' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 20}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'a9S29IAe' \
    --limit '46' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "hBMMVBBa", "comment": "jg1AgwRY", "endDate": "eaqSXSmz", "reason": "79YKQVqV", "skipNotif": false, "userIds": ["Or2Cy8Pl", "SY2RcIGH", "p09MLuk6"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "VCKAtZjK", "userId": "ELFNYj6O"}, {"banId": "O9MTMUCY", "userId": "z69YkdV1"}, {"banId": "OSzM0qKC", "userId": "jb8cgxeh"}]}' \
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
    --clientId 'VQQ9r4fr' \
    --clientName 'jwUpT6AA' \
    --clientType 'kbz7Ysvo' \
    --limit '83' \
    --offset '90' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["mCbvpD3n", "IzaSh5Kz", "XJNTfLcN"], "baseUri": "ONnlYPNf", "clientId": "CLEpTYxC", "clientName": "lUa3ZsXi", "clientPermissions": [{"action": 58, "resource": "KUDxYGPQ", "schedAction": 74, "schedCron": "TryIbRUV", "schedRange": ["t0ezrtKw", "tpTi4LSk", "1mfaV9VC"]}, {"action": 51, "resource": "dzcu9YOU", "schedAction": 46, "schedCron": "B9lOImNK", "schedRange": ["DNLgUrbF", "aOJxEuNq", "z88nuz44"]}, {"action": 36, "resource": "XsxVYxpP", "schedAction": 64, "schedCron": "sJuZRPKi", "schedRange": ["NQdTOW0d", "yHTldubL", "aT51LoED"]}], "clientPlatform": "8PNKLg7Q", "deletable": false, "description": "qt480Haz", "namespace": "Nyyss2UV", "oauthAccessTokenExpiration": 71, "oauthAccessTokenExpirationTimeUnit": "1zHFnJOA", "oauthClientType": "eaM67FHV", "oauthRefreshTokenExpiration": 17, "oauthRefreshTokenExpirationTimeUnit": "tJWiXDy4", "redirectUri": "m0X0yiVH", "scopes": ["pUPDnjcm", "OFWd8Fex", "eJ9oJJLe"], "secret": "UhqPQ0KK", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'jLy80UOi' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'DRqy89eB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'cV1MICmm' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["JSU9sK7D", "0qUVolJ6", "6IXRACL9"], "baseUri": "dUnoz2kj", "clientName": "4xjyMIzm", "clientPermissions": [{"action": 58, "resource": "TwL9uGeJ", "schedAction": 8, "schedCron": "nB13gAxB", "schedRange": ["UTZjpVNl", "bimai4PG", "moQJhzMH"]}, {"action": 86, "resource": "LRnvGUAQ", "schedAction": 53, "schedCron": "WrO4309E", "schedRange": ["Y5owGkXy", "ZzG0cudY", "nZqao9ln"]}, {"action": 81, "resource": "EntVzbMl", "schedAction": 36, "schedCron": "ZPe0BaAg", "schedRange": ["sMX9yLyH", "ebviF1wX", "goUVGZOV"]}], "clientPlatform": "JoKTOW0Q", "deletable": false, "description": "BIis7FOK", "namespace": "nrlfCiDP", "oauthAccessTokenExpiration": 54, "oauthAccessTokenExpirationTimeUnit": "gNxRYUrq", "oauthRefreshTokenExpiration": 53, "oauthRefreshTokenExpirationTimeUnit": "zrsxMUmX", "redirectUri": "VoVuOnTi", "scopes": ["ZSK8FRyt", "oCVm08nm", "twAFt0SU"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'GlPg5cx5' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 17, "resource": "1hymgpfL"}, {"action": 18, "resource": "LsarbdNe"}, {"action": 49, "resource": "X3MOlpcZ"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'm8rVYkQ1' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 34, "resource": "wOJmVUo5"}, {"action": 87, "resource": "taNPbeqk"}, {"action": 80, "resource": "dffuEBYU"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '71' \
    --clientId 'klObSRek' \
    --namespace $AB_NAMESPACE \
    --resource 'TsQ6qIvR' \
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
    --limit '89' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9IbKkzmz' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JLYOq9YO' \
    --body '{"ACSURL": "Fki0PEqm", "AWSCognitoRegion": "nVGKFx0u", "AWSCognitoUserPool": "qqUZuPF0", "AllowedClients": ["oULX7wlT", "DEZZ2IuK", "0YtF9tUE"], "AppId": "j7iCwnuB", "AuthorizationEndpoint": "dIcnJDLU", "ClientId": "DjFAwy92", "Environment": "LAsAZHf2", "FederationMetadataURL": "VKHV420V", "GenericOauthFlow": false, "IsActive": false, "Issuer": "uKNo2u4j", "JWKSEndpoint": "Dtck8lEo", "KeyID": "cm0JDZW1", "NetflixCertificates": {"encryptedPrivateKey": "Nq1Ega3S", "encryptedPrivateKeyName": "wwquHqCr", "publicCertificate": "lqOz1zAw", "publicCertificateName": "UQLHVaAJ", "rootCertificate": "hxroUaTJ", "rootCertificateName": "zfsSP6v9"}, "OrganizationId": "3zx2jAhb", "PlatformName": "OF54lUF8", "RedirectUri": "5rcMLK7s", "RegisteredDomains": [{"affectedClientIDs": ["VzZu6r8a", "ZRmDDqtu", "S4qX3tQc"], "domain": "UPV5M0PN", "namespaces": ["FOT98C1Q", "DGNjRh8y", "1L1gueoN"], "roleId": "ALZSZejY"}, {"affectedClientIDs": ["yJrIENI7", "Nq2MdSmc", "cNNROl4s"], "domain": "sMB8cOcp", "namespaces": ["DVhkAsLE", "0yVgSTjT", "RxjxC1Ae"], "roleId": "VTgvw8ZS"}, {"affectedClientIDs": ["c2zvU3vQ", "dWMFnOS7", "YlZsnwCz"], "domain": "XzfSFdid", "namespaces": ["USU9Yb4z", "dLtyu80t", "IeSk8PE6"], "roleId": "KnxPTGKO"}], "Secret": "TZvyjchm", "TeamID": "uydKHZal", "TokenAuthenticationType": "hO0CKFnJ", "TokenClaimsMapping": {"0aJrlddo": "qdrpoeAj", "gZfe99ho": "88GAPqYo", "m41n2urT": "BszSdokZ"}, "TokenEndpoint": "PwYjCUUA", "scopes": ["RJmtuz7E", "G9ebtCLG", "hvUgDaaH"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'thEh40nK' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'z7uWNVQk' \
    --body '{"ACSURL": "FBC7HM6s", "AWSCognitoRegion": "03wUNjAq", "AWSCognitoUserPool": "MHkNsiIJ", "AllowedClients": ["ENryVSop", "YuQu33za", "iaOsurEa"], "AppId": "DT06R46u", "AuthorizationEndpoint": "3XbugDVU", "ClientId": "O4eoOtvr", "Environment": "b3MMO4qn", "FederationMetadataURL": "JCkeQvnA", "GenericOauthFlow": true, "IsActive": true, "Issuer": "cKp00WcX", "JWKSEndpoint": "a0MmTJsq", "KeyID": "pn35dbtM", "NetflixCertificates": {"encryptedPrivateKey": "KLM0mJq5", "encryptedPrivateKeyName": "6KtJ45qS", "publicCertificate": "xB9QbXc0", "publicCertificateName": "pJcKGLlR", "rootCertificate": "aeHxN3mH", "rootCertificateName": "F12alNIo"}, "OrganizationId": "9mhd3qg3", "PlatformName": "RLgwhRTf", "RedirectUri": "vvbb3O6R", "RegisteredDomains": [{"affectedClientIDs": ["tgIVt6zz", "XaHINtFB", "5ccQ7L82"], "domain": "q7MAunjF", "namespaces": ["RvdsPNy5", "7GZlyyVn", "HjzLnPTl"], "roleId": "6Z6bPKx3"}, {"affectedClientIDs": ["aUSo0EFH", "yVcICcCl", "gCJJ6CMD"], "domain": "ReRqmBwE", "namespaces": ["QJxzZoYs", "WDXBYK0C", "mxTWdVKf"], "roleId": "ACpr405p"}, {"affectedClientIDs": ["U1Bay3mL", "HoptxCUn", "8K7Gags9"], "domain": "syTtabWH", "namespaces": ["AGNjLo0w", "zgUCZq7i", "oiuYyHEL"], "roleId": "dtpPA3vT"}], "Secret": "xCNIK6qs", "TeamID": "bXIgXQJ3", "TokenAuthenticationType": "pJkdxVd7", "TokenClaimsMapping": {"AETsoKk2": "E17zrc3O", "AtT3WRHi": "FqpPUwB0", "UBtjLzNB": "Hs7l8OtA"}, "TokenEndpoint": "zzeT5Zii", "scopes": ["rdDiqXGL", "jMCzJiLb", "HEZ8ipjb"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Hi2denha' \
    --body '{"affectedClientIDs": ["hUTfx8ro", "e7PWgiKc", "2Ut4BYmz"], "assignedNamespaces": ["sJlSEQ1o", "71QSIKYU", "QnVZzZt3"], "domain": "Huv8GuNe", "roleId": "B9Ju9myq"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iFKGhuY2' \
    --body '{"domain": "o9OKo78J"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'UWWiQTSe' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'GtsY2ySg' \
    --body '{"acsUrl": "E8kFKNCL", "apiKey": "zTw1bJuD", "appId": "2QtZLFwJ", "federationMetadataUrl": "6FNnbwgZ", "isActive": false, "redirectUri": "GYAEsJ9w", "secret": "zjxClRnI", "ssoUrl": "GzgUGnYU"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CJIvEpqd' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'p6STBTAr' \
    --body '{"acsUrl": "JQGxf4Bs", "apiKey": "dFeZ5UsA", "appId": "L2G1MOHF", "federationMetadataUrl": "VO3bPaPN", "isActive": false, "redirectUri": "Dj42FQjp", "secret": "baby4b8S", "ssoUrl": "sa6r5KCj"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SIbuDXMY' \
    --platformUserId 'ZHHXIeAg' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '5PmOMcS0' \
    --after '96' \
    --before '86' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '7RqThGWF' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["L1hQlzPC", "0nWf7VDB", "EOfcLY3s"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["i9ZaFRwg", "HpAysMSc", "azZXgbas"], "isAdmin": true, "roles": ["GMf8KdfV", "wXCqmOX2", "HY5C0jXg"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '26' \
    --offset '15' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUsersV3' test.out

#- 147 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'DbTEHQ52' \
    --endDate '1xqA7zdU' \
    --limit '33' \
    --offset '95' \
    --platformBy 'BvvFxQuJ' \
    --platformId 'GgN4NRRR' \
    --query '6W6SZvo9' \
    --startDate 'PqkWLTkF' \
    > test.out 2>&1
eval_tap $? 147 'AdminSearchUserV3' test.out

#- 148 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["GIdR225r", "H2dIrlEe", "Pd88zreK"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'd2sK0fR3' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YTLX19d3' \
    --body '{"avatarUrl": "x5qW9dPY", "country": "1sgJvYnY", "dateOfBirth": "QmRdqmeS", "displayName": "TPmsbqW7", "languageTag": "ny481jWC", "userName": "43AfEgJg"}' \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'usqMcbGQ' \
    --activeOnly 'true' \
    --after 'bku4ADaw' \
    --before 'j9faRHp4' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'l2xuX3b5' \
    --body '{"ban": "XHlsgNGl", "comment": "cdBVH90L", "endDate": "1vtk3GYJ", "reason": "CWMHle6F", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '0kvIflcK' \
    --namespace $AB_NAMESPACE \
    --userId 'mN2HN0m1' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cChoMFq2' \
    --body '{"context": "qtjoIjtY", "emailAddress": "W3tTiECu", "languageTag": "w3PhkpMk"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'p5pWusL9' \
    --body '{"Code": "SAHpWBHi", "ContactType": "4nFpeXKv", "LanguageTag": "wruD2US0", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'bFYUeBKv' \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vrWZyLXz' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uT2yduIO' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '7baNqUxF' \
    --body '{"code": "TBTaK2X4", "country": "NhT9J7H6", "dateOfBirth": "94w7Oeyr", "displayName": "Pel4MtHr", "emailAddress": "fRKM35ph", "password": "a1KhhjMA", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pk9MM3RG' \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zQJ28QqD' \
    --after '0.4514034557090504' \
    --before '0.06659441806031063' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JK1VfkKV' \
    --body '{"languageTag": "10h7BICx", "newPassword": "wWkW7ejq", "oldPassword": "cS9umVTL"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Dm1eU9dR' \
    --body '{"Permissions": [{"Action": 74, "Resource": "ist0pyTb", "SchedAction": 92, "SchedCron": "P3Uo0rYV", "SchedRange": ["M0jWKktv", "5bXScqzm", "gDaOlxrY"]}, {"Action": 78, "Resource": "83q0acjq", "SchedAction": 60, "SchedCron": "AUPl4xZM", "SchedRange": ["sI8KjpaF", "Y9bOO4KK", "zcKycN4x"]}, {"Action": 48, "Resource": "xTvslS7s", "SchedAction": 77, "SchedCron": "KzHt2eii", "SchedRange": ["n83EoZcf", "JjzmkJmz", "ZjRSsvuB"]}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '9NDWx2Mu' \
    --body '{"Permissions": [{"Action": 28, "Resource": "pf7TyyuS", "SchedAction": 61, "SchedCron": "oXFGQkxi", "SchedRange": ["o8vi9RfP", "uZLK2Llx", "NmNrYNak"]}, {"Action": 46, "Resource": "R6xzNCFL", "SchedAction": 91, "SchedCron": "qEhmYPe8", "SchedRange": ["USL8E3Zi", "3MvMH607", "LIATKJQW"]}, {"Action": 72, "Resource": "ttNfAv3T", "SchedAction": 22, "SchedCron": "4HpR80ss", "SchedRange": ["CEBJ2F5U", "9UYLBJW1", "7TXJoty8"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wa5FJW19' \
    --body '[{"Action": 49, "Resource": "Sbx7s0HK"}, {"Action": 50, "Resource": "PTBF2qZL"}, {"Action": 45, "Resource": "3YOeP9Ld"}]' \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '77' \
    --namespace $AB_NAMESPACE \
    --resource 'fR8PfABk' \
    --userId 'CaERvoIu' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TRQHaEx5' \
    --after 'ke3Aulhm' \
    --before 'GMYgvMTr' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'QHdEGWvw' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'HPK8Giad' \
    --userId '8ahLuo5m' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'wJrEe7cv' \
    --userId 'ROFvtyUg' \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'KSnalaAj' \
    --body '{"platformId": "Lohan2QN", "platformUserId": "kspgAvjN"}' \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 't0eCEM9C' \
    --userId 'Ny9eGYxf' \
    --body '{"platformNamespace": "FNWjAZdv"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EtqbWmKS' \
    --userId '5IhY7HNz' \
    --ticket '9mSMGoJV' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WSprNbwl' \
    --userId 'VnEXx2E8' \
    --platformToken 'T4qEszEE' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 175 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '1xPQxDV4' \
    --body '["5hoHS5XN", "CNgQEU37", "zCjv1rMS"]' \
    > test.out 2>&1
eval_tap $? 175 'AdminDeleteUserRolesV3' test.out

#- 176 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '1hzDX7AE' \
    --body '[{"namespace": "bkk0g958", "roleId": "8ewjOpJY"}, {"namespace": "qve8riHB", "roleId": "w84nBaKn"}, {"namespace": "m4Uh2BoH", "roleId": "mXBqciew"}]' \
    > test.out 2>&1
eval_tap $? 176 'AdminSaveUserRoleV3' test.out

#- 177 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'VW50BwiS' \
    --userId 'Aw99jHZq' \
    > test.out 2>&1
eval_tap $? 177 'AdminAddUserRoleV3' test.out

#- 178 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '8AMpC4EL' \
    --userId 'rb4WVRaQ' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserRoleV3' test.out

#- 179 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LAVFrQGd' \
    --body '{"enabled": true, "reason": "X6tUX4Wh"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserStatusV3' test.out

#- 180 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dDxYOkuM' \
    > test.out 2>&1
eval_tap $? 180 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 181 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'o7rmqs4M' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "3odf6aDf"}' \
    > test.out 2>&1
eval_tap $? 181 'AdminUpdateClientSecretV3' test.out

#- 182 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'M9K2CVwo' \
    --before 'WqYpxRiN' \
    --isWildcard 'false' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetRolesV3' test.out

#- 183 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "m0VCvSvO", "namespace": "7xRPIlU1", "userId": "Vrcbm5FU"}, {"displayName": "j0tITyYr", "namespace": "dGd6d1Kg", "userId": "nbi4d6Za"}, {"displayName": "A3Av95A7", "namespace": "6lmme2zG", "userId": "iKPyF9Y1"}], "members": [{"displayName": "UGWFBnQ6", "namespace": "7eEnvJ0f", "userId": "HLMlra8n"}, {"displayName": "z9Hin4Xl", "namespace": "MhSNL25c", "userId": "tEJw8xHf"}, {"displayName": "2e0nYmzV", "namespace": "AzZkctED", "userId": "uCXdsH0b"}], "permissions": [{"action": 54, "resource": "dOpmgNWG", "schedAction": 88, "schedCron": "ydCE3hK5", "schedRange": ["Dl8msYIQ", "vAx8V2w5", "ugB6tLuj"]}, {"action": 21, "resource": "58nftc1r", "schedAction": 53, "schedCron": "RgZjOtbj", "schedRange": ["14IE8KUQ", "4ZFneELP", "a3yFeWHZ"]}, {"action": 63, "resource": "jEh83tBg", "schedAction": 3, "schedCron": "wpr7NFuU", "schedRange": ["vxSSB2Gi", "MtUOheEj", "Kl58XiV5"]}], "roleName": "VVR8VUPz"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminCreateRoleV3' test.out

#- 184 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'r0j0fnJn' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetRoleV3' test.out

#- 185 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'qAyna7P8' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteRoleV3' test.out

#- 186 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'T3YCViLi' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "2HxJggzW"}' \
    > test.out 2>&1
eval_tap $? 186 'AdminUpdateRoleV3' test.out

#- 187 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'HAO1fqYA' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetRoleAdminStatusV3' test.out

#- 188 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'ZynHrvC5' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateAdminRoleStatusV3' test.out

#- 189 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'NXr2Y3UZ' \
    > test.out 2>&1
eval_tap $? 189 'AdminRemoveRoleAdminV3' test.out

#- 190 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'Nekzzxwy' \
    --after '0hJlp9Tl' \
    --before '1IQO9HNr' \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 190 'AdminGetRoleManagersV3' test.out

#- 191 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'tyxjXG28' \
    --body '{"managers": [{"displayName": "MnV3xY0X", "namespace": "RnMYx3IP", "userId": "wKc0ORmx"}, {"displayName": "za2XAlTH", "namespace": "MOsuVbrT", "userId": "DbFoRF7m"}, {"displayName": "Nem4j5Gl", "namespace": "Zo2KsRFO", "userId": "8Ww2YdVy"}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddRoleManagersV3' test.out

#- 192 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'kYy3UBIC' \
    --body '{"managers": [{"displayName": "GHAwMx6C", "namespace": "4D6ZWfus", "userId": "kJjGinWj"}, {"displayName": "lm2RjzIy", "namespace": "b3P2h2xt", "userId": "AQDBfnGQ"}, {"displayName": "QS62VDYj", "namespace": "RhcKcp9E", "userId": "L89kzCxU"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminRemoveRoleManagersV3' test.out

#- 193 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'iASVyWXE' \
    --after 'RAMuFoZO' \
    --before 'kdmj9UaC' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetRoleMembersV3' test.out

#- 194 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '93Nk6UjU' \
    --body '{"members": [{"displayName": "xwo8qw4v", "namespace": "BjdxeGqj", "userId": "ysOZabr5"}, {"displayName": "A29eGOjQ", "namespace": "rdrTJ5Qm", "userId": "R7tU0iqF"}, {"displayName": "1ugR0dWN", "namespace": "xSKMAR4H", "userId": "fCWfR3bD"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminAddRoleMembersV3' test.out

#- 195 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'xa95PEtT' \
    --body '{"members": [{"displayName": "6ApA2wl5", "namespace": "Eiap6D5l", "userId": "S54ZGUfv"}, {"displayName": "QTcwp1G1", "namespace": "hv5Ex9pY", "userId": "scez5ng2"}, {"displayName": "kpRbKsxm", "namespace": "ceKCSFmC", "userId": "5wYwH54E"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminRemoveRoleMembersV3' test.out

#- 196 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'IlmbWtRd' \
    --body '{"permissions": [{"action": 97, "resource": "QTYt7Uj0", "schedAction": 98, "schedCron": "xkO1o5Yb", "schedRange": ["hbg6VgdA", "Mfaj2Q0P", "EsmuiunN"]}, {"action": 71, "resource": "HmakjxWR", "schedAction": 53, "schedCron": "UBFbM3AU", "schedRange": ["ZPKoY9Ow", "OIRXkcg7", "piV1CfTN"]}, {"action": 44, "resource": "z1kNK35q", "schedAction": 8, "schedCron": "KBqGMk0y", "schedRange": ["krykbGe9", "NzNgBELx", "X6uFCGQS"]}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateRolePermissionsV3' test.out

#- 197 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'BXBUh92C' \
    --body '{"permissions": [{"action": 72, "resource": "6A0nfdN2", "schedAction": 22, "schedCron": "3zPj8jz0", "schedRange": ["X8XMP4BN", "J16DkGkk", "kpvYY0V1"]}, {"action": 2, "resource": "ZuKT8ljD", "schedAction": 49, "schedCron": "hENWEse3", "schedRange": ["I3J5sYHC", "xIt6Z9jD", "sTXpodGE"]}, {"action": 35, "resource": "q91JunE4", "schedAction": 72, "schedCron": "yTlScAHt", "schedRange": ["DsGZwE8g", "RUnMshI3", "L6ggF0cq"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminAddRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '6GGS6MOK' \
    --body '["5m1O4XkP", "ILm49TZh", "Td1LlOOr"]' \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '40' \
    --resource 'p0iQAxof' \
    --roleId 'nG5PMrQ3' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionV3' test.out

#- 200 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 200 'AdminGetMyUserV3' test.out

#- 201 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'qPLdbdnB' \
    --extendExp 'false' \
    --redirectUri 'N6F0KKnl' \
    --password '7omdZ5Qg' \
    --requestId 'xWGqIr9t' \
    --userName 'NTeWecAc' \
    > test.out 2>&1
eval_tap $? 201 'UserAuthenticationV3' test.out

#- 202 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'b3gP8X6M' \
    --linkingToken 'aUxgVzw1' \
    --password 'D3Yn21rk' \
    --username 'ICPC9JKK' \
    > test.out 2>&1
eval_tap $? 202 'AuthenticationWithPlatformLinkV3' test.out

#- 203 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'zDCSH7C0' \
    > test.out 2>&1
eval_tap $? 203 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 204 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 204 'GetCountryLocationV3' test.out

#- 205 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 205 'Logout' test.out

#- 206 RequestGameTokenCodeResponseV3
samples/cli/sample-apps Iam requestGameTokenCodeResponseV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'adlR9T8W' \
    > test.out 2>&1
eval_tap $? 206 'RequestGameTokenCodeResponseV3' test.out

#- 207 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'u9pENxV7' \
    --userId 'YgRYpKus' \
    > test.out 2>&1
eval_tap $? 207 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 208 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fjMjS019' \
    > test.out 2>&1
eval_tap $? 208 'RevokeUserV3' test.out

#- 209 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '073K5Lc7' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --redirectUri 'ETo4e2Sy' \
    --scope '8u2Cjcza' \
    --state 'dl28PVeC' \
    --targetAuthPage 'Kawx1iQg' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'QuUN62BZ' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 209 'AuthorizeV3' test.out

#- 210 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'iFZiBaMv' \
    > test.out 2>&1
eval_tap $? 210 'TokenIntrospectionV3' test.out

#- 211 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 211 'GetJWKSV3' test.out

#- 212 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'hqO3FP1f' \
    --factor 'Y8hsqq81' \
    --mfaToken 'II5uOHge' \
    > test.out 2>&1
eval_tap $? 212 'SendMFAAuthenticationCode' test.out

#- 213 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'I2gNcVqF' \
    --mfaToken '3kACcgBp' \
    > test.out 2>&1
eval_tap $? 213 'Change2faMethod' test.out

#- 214 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Ap5lQ4g0' \
    --factor 'PN4yz56o' \
    --mfaToken '0gUwTaVw' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 214 'Verify2faCode' test.out

#- 215 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PhuStHY8' \
    --userId 'kyZrBVSb' \
    > test.out 2>&1
eval_tap $? 215 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 216 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'gknN10t3' \
    --clientId 'usaRF4RI' \
    --redirectUri 'HI4NwR21' \
    --requestId 'srCyVauI' \
    > test.out 2>&1
eval_tap $? 216 'AuthCodeRequestV3' test.out

#- 217 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'NOSTf4kx' \
    --clientId 'RbOwhH41' \
    --createHeadless 'true' \
    --deviceId 'B0MvHY9h' \
    --macAddress 'h4DdLrs4' \
    --platformToken 'riJPPUGm' \
    > test.out 2>&1
eval_tap $? 217 'PlatformTokenGrantV3' test.out

#- 218 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 218 'GetRevocationListV3' test.out

#- 219 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'R7fXtTsP' \
    > test.out 2>&1
eval_tap $? 219 'TokenRevocationV3' test.out

#- 220 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'ZCNNbmGT' \
    --code 'lhjlWNoW' \
    --codeVerifier 'BNAA7LHs' \
    --extendExp 'false' \
    --password '1OMA44Cx' \
    --redirectUri 'CfWXuYEr' \
    --refreshToken '2l8MLkKd' \
    --username 'XXe9b4E7' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 220 'TokenGrantV3' test.out

#- 221 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '2IsCvx8a' \
    > test.out 2>&1
eval_tap $? 221 'VerifyTokenV3' test.out

#- 222 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'GHTkvuwf' \
    --code 'EZOpBBMA' \
    --error 'EOJeV0Zt' \
    --openidAssocHandle 'fwwKzFKE' \
    --openidClaimedId 'Ck3wwWL3' \
    --openidIdentity 'YPmzfU1J' \
    --openidMode 'E33f00Fl' \
    --openidNs 'qaJoAGd0' \
    --openidOpEndpoint 'b02I3xhC' \
    --openidResponseNonce 'QETzUhjb' \
    --openidReturnTo '8Xa5LK2G' \
    --openidSig 'yrvenlMd' \
    --openidSigned '9xZ0IEHe' \
    --state 'QTAJxAVy' \
    > test.out 2>&1
eval_tap $? 222 'PlatformAuthenticationV3' test.out

#- 223 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '4zeZ5b47' \
    > test.out 2>&1
eval_tap $? 223 'PublicGetInputValidations' test.out

#- 224 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'jYRJDgJQ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 224 'PublicGetCountryAgeRestrictionV3' test.out

#- 225 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 225 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 226 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'SuYHuvQz' \
    > test.out 2>&1
eval_tap $? 226 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 227 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JxcOMGpb' \
    --body '{"platformUserIds": ["8CyHnOji", "i1SaDD1S", "9yUR9KnH"]}' \
    > test.out 2>&1
eval_tap $? 227 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 228 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EFnGoMMh' \
    --platformUserId 'DODV1LDV' \
    > test.out 2>&1
eval_tap $? 228 'PublicGetUserByPlatformUserIDV3' test.out

#- 229 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'DscAqQdq' \
    > test.out 2>&1
eval_tap $? 229 'PublicGetAsyncStatus' test.out

#- 230 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '6nHAMHcW' \
    --limit '58' \
    --offset '5' \
    --query 'WdsXCZLb' \
    > test.out 2>&1
eval_tap $? 230 'PublicSearchUserV3' test.out

#- 231 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "cx4tlivr", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9VNj2tnE", "policyId": "h9sPY8f5", "policyVersionId": "L1v3dG7h"}, {"isAccepted": true, "localizedPolicyVersionId": "bZeQ7Ms4", "policyId": "I9NJdpUR", "policyVersionId": "YTMKTg05"}, {"isAccepted": true, "localizedPolicyVersionId": "ySCT4X7p", "policyId": "haImjkKS", "policyVersionId": "CY66MYBx"}], "authType": "b1w1X4du", "code": "cMDiqrm3", "country": "PJBoCfNG", "dateOfBirth": "Hf8rk4X7", "displayName": "aLWyf8DN", "emailAddress": "ZOxvG2ku", "password": "6szS2X93", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 231 'PublicCreateUserV3' test.out

#- 232 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'z9egBszL' \
    --query 'vIUutEHB' \
    > test.out 2>&1
eval_tap $? 232 'CheckUserAvailability' test.out

#- 233 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["56diS8LG", "GrozsLkJ", "iKK9Oka4"]}' \
    > test.out 2>&1
eval_tap $? 233 'PublicBulkGetUsers' test.out

#- 234 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "tJ5Gw5Qt", "languageTag": "lzcg4Otn"}' \
    > test.out 2>&1
eval_tap $? 234 'PublicSendRegistrationCode' test.out

#- 235 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "R0K0bCEW", "emailAddress": "JXwoYXqY"}' \
    > test.out 2>&1
eval_tap $? 235 'PublicVerifyRegistrationCode' test.out

#- 236 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "OKRpcfJs", "languageTag": "IHAR4NTu"}' \
    > test.out 2>&1
eval_tap $? 236 'PublicForgotPasswordV3' test.out

#- 237 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '6Za8OG8o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 237 'GetAdminInvitationV3' test.out

#- 238 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'gv75SCIJ' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7ORUljOg", "policyId": "lJuUxtw8", "policyVersionId": "lWtRUhDH"}, {"isAccepted": false, "localizedPolicyVersionId": "OloUjk3i", "policyId": "q2F8oBfJ", "policyVersionId": "gti0gfWM"}, {"isAccepted": true, "localizedPolicyVersionId": "2C0jJ7dm", "policyId": "wr030xnl", "policyVersionId": "U9ijJ2Hp"}], "authType": "EMAILPASSWD", "country": "otlrJ3Uf", "dateOfBirth": "9yBzbNSx", "displayName": "SlEV2StO", "password": "FehaZV2Z", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 238 'CreateUserFromInvitationV3' test.out

#- 239 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "JRDkTry5", "country": "d9kpFoHA", "dateOfBirth": "wKUOcbD1", "displayName": "iaazzN6Q", "languageTag": "m3S8M41k", "userName": "BMPUrGez"}' \
    > test.out 2>&1
eval_tap $? 239 'UpdateUserV3' test.out

#- 240 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "UnrXhq5f", "country": "Y6xjsx4n", "dateOfBirth": "3s0Ds5qg", "displayName": "OJvbdt5E", "languageTag": "ZNnFV7Gj", "userName": "IfJ0SxuT"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicPartialUpdateUserV3' test.out

#- 241 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "wLy3zKJm", "emailAddress": "iXIyMeQ0", "languageTag": "N2v35wvM"}' \
    > test.out 2>&1
eval_tap $? 241 'PublicSendVerificationCodeV3' test.out

#- 242 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Ae6GGlKe", "contactType": "RYWwzA4h", "languageTag": "TbjbRceF", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 242 'PublicUserVerificationV3' test.out

#- 243 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "LvF8QoQR", "country": "Osev5G82", "dateOfBirth": "DRFsuSGq", "displayName": "TawBAK9z", "emailAddress": "3BdOqaMo", "password": "QxEmTTXn", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 243 'PublicUpgradeHeadlessAccountV3' test.out

#- 244 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "dRI1cXeC", "password": "itlQloIu"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicVerifyHeadlessAccountV3' test.out

#- 245 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "n3DlcKi5", "newPassword": "FwchfiaV", "oldPassword": "ovX7lJW2"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicUpdatePasswordV3' test.out

#- 246 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'u9Tou0Ye' \
    > test.out 2>&1
eval_tap $? 246 'PublicCreateJusticeUser' test.out

#- 247 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gujOf2Vv' \
    --redirectUri 'ADIfQftc' \
    --ticket '7qh2uC9T' \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformLinkV3' test.out

#- 248 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UIPAyUeq' \
    --body '{"platformNamespace": "ELdtEmJW"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicPlatformUnlinkV3' test.out

#- 249 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eBg899zv' \
    > test.out 2>&1
eval_tap $? 249 'PublicPlatformUnlinkAllV3' test.out

#- 250 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zXMXS9oI' \
    --ticket '9Lk5boUe' \
    > test.out 2>&1
eval_tap $? 250 'PublicForcePlatformLinkV3' test.out

#- 251 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'PBa7zg9g' \
    --clientId 'LKcQJWxO' \
    --redirectUri 'plKDL552' \
    > test.out 2>&1
eval_tap $? 251 'PublicWebLinkPlatform' test.out

#- 252 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'qaY3FBb5' \
    --state 'MTieYSLG' \
    > test.out 2>&1
eval_tap $? 252 'PublicWebLinkPlatformEstablish' test.out

#- 253 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6IMjDFUd", "emailAddress": "V75c5jRQ", "newPassword": "xWfKudAM"}' \
    > test.out 2>&1
eval_tap $? 253 'ResetPasswordV3' test.out

#- 254 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eaczmfS6' \
    > test.out 2>&1
eval_tap $? 254 'PublicGetUserByUserIdV3' test.out

#- 255 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '7k7Se9tc' \
    --activeOnly 'false' \
    --after 'fl6XMMT3' \
    --before 'TL92NDsg' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserBanHistoryV3' test.out

#- 256 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qXVXKn3Y' \
    > test.out 2>&1
eval_tap $? 256 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 257 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YwWRadbl' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserInformationV3' test.out

#- 258 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WHPVyIjg' \
    --after '0.9401009185710478' \
    --before '0.7982325566084708' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserLoginHistoriesV3' test.out

#- 259 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wxReWcEN' \
    --after 'JP3pRE8y' \
    --before 'b4a68mnJ' \
    --limit '45' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserPlatformAccountsV3' test.out

#- 260 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b7yLaeRY' \
    > test.out 2>&1
eval_tap $? 260 'PublicListJusticePlatformAccountsV3' test.out

#- 261 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'zchJT3t7' \
    --body '{"platformId": "VwWVRn6w", "platformUserId": "KYlW8TL4"}' \
    > test.out 2>&1
eval_tap $? 261 'PublicLinkPlatformAccount' test.out

#- 262 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'cX3LjL7f' \
    --body '{"chosenNamespaces": ["k7dkc5dc", "DlVN1InS", "rnFOCbDy"], "requestId": "jKySJNB3"}' \
    > test.out 2>&1
eval_tap $? 262 'PublicForceLinkPlatformWithProgression' test.out

#- 263 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c5AJ8Jbp' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetPublisherUserV3' test.out

#- 264 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vPQBCpRw' \
    --password 'M2Bf4P4n' \
    > test.out 2>&1
eval_tap $? 264 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 265 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'ARIyd1b8' \
    --before 'w6M1o4zz' \
    --isWildcard 'false' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 265 'PublicGetRolesV3' test.out

#- 266 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'mHF5OZxK' \
    > test.out 2>&1
eval_tap $? 266 'PublicGetRoleV3' test.out

#- 267 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 267 'PublicGetMyUserV3' test.out

#- 268 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "F7owxe7L"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicSendVerificationLinkV3' test.out

#- 269 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'aNJ0x1KM' \
    > test.out 2>&1
eval_tap $? 269 'PublicVerifyUserByLinkV3' test.out

#- 270 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '6fbgufhz' \
    --code '3bcbOwwN' \
    --error 'g6NAcRmb' \
    --state 'qoeNUu4A' \
    > test.out 2>&1
eval_tap $? 270 'PlatformAuthenticateSAMLV3Handler' test.out

#- 271 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'dmgcXdmc' \
    --payload 'VIkrr5QQ' \
    > test.out 2>&1
eval_tap $? 271 'LoginSSOClient' test.out

#- 272 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'qOOpanZ4' \
    > test.out 2>&1
eval_tap $? 272 'LogoutSSOClient' test.out

#- 273 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'TLC0YqOv' \
    > test.out 2>&1
eval_tap $? 273 'RequestGameTokenResponseV3' test.out

#- 274 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hLtho3AX' \
    > test.out 2>&1
eval_tap $? 274 'AdminGetDevicesByUserV4' test.out

#- 275 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'TksuQNtR' \
    --endDate 'dWIZorao' \
    --limit '100' \
    --offset '6' \
    --startDate 'FLPSa7RC' \
    > test.out 2>&1
eval_tap $? 275 'AdminGetBannedDevicesV4' test.out

#- 276 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '39hUr1lF' \
    > test.out 2>&1
eval_tap $? 276 'AdminGetUserDeviceBansV4' test.out

#- 277 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "2lg7APSN", "deviceId": "lzBCz2SD", "deviceType": "NbRt3Y11", "enabled": true, "endDate": "awBS6E96", "ext": {"aV6884w3": {}, "uTmeQgwQ": {}, "8zN6va2c": {}}, "reason": "WZouN8Tk"}' \
    > test.out 2>&1
eval_tap $? 277 'AdminBanDeviceV4' test.out

#- 278 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'XWHz9Ur4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 278 'AdminGetDeviceBanV4' test.out

#- 279 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'RZfwamoS' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 279 'AdminUpdateDeviceBanV4' test.out

#- 280 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'EJ5Dn61U' \
    --startDate 'G7O0F693' \
    --deviceType 'bEWBUe2H' \
    > test.out 2>&1
eval_tap $? 280 'AdminGenerateReportV4' test.out

#- 281 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 281 'AdminGetDeviceTypesV4' test.out

#- 282 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'tPj4W2CW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'AdminGetDeviceBansV4' test.out

#- 283 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'TWdDRoAM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 283 'AdminDecryptDeviceV4' test.out

#- 284 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'ezJdZqdL' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminUnbanDeviceV4' test.out

#- 285 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'uszsnQXl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 285 'AdminGetUsersByDeviceV4' test.out

#- 286 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 23}' \
    > test.out 2>&1
eval_tap $? 286 'AdminCreateTestUsersV4' test.out

#- 287 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["8ZN9Heov", "4Sa8R8Z6", "CIB2r8XO"]}' \
    > test.out 2>&1
eval_tap $? 287 'AdminBulkCheckValidUserIDV4' test.out

#- 288 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Dr083HsT' \
    --body '{"avatarUrl": "2KTUHJdd", "country": "0SxZ8j38", "dateOfBirth": "sJNTnVAP", "displayName": "OdUu9RWC", "languageTag": "ExDNiGg5", "userName": "TMV50mFY"}' \
    > test.out 2>&1
eval_tap $? 288 'AdminUpdateUserV4' test.out

#- 289 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bbgY3p1j' \
    --body '{"code": "0uH0sv76", "emailAddress": "XiQb5aVJ"}' \
    > test.out 2>&1
eval_tap $? 289 'AdminUpdateUserEmailAddressV4' test.out

#- 290 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '5pmWQkzN' \
    > test.out 2>&1
eval_tap $? 290 'AdminDisableUserMFAV4' test.out

#- 291 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Lu3VNjZw' \
    > test.out 2>&1
eval_tap $? 291 'AdminListUserRolesV4' test.out

#- 292 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8zOu99Jc' \
    --body '{"assignedNamespaces": ["XUkJDnD6", "dHXXI3iC", "Gk1Y1gZe"], "roleId": "0Mwhc7MC"}' \
    > test.out 2>&1
eval_tap $? 292 'AdminUpdateUserRoleV4' test.out

#- 293 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ud6DmK4P' \
    --body '{"assignedNamespaces": ["HmBzts95", "mk2QPMmd", "9c3BTucm"], "roleId": "3Yfcve4n"}' \
    > test.out 2>&1
eval_tap $? 293 'AdminAddUserRoleV4' test.out

#- 294 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vXqgpZti' \
    --body '{"assignedNamespaces": ["agjNLLXn", "nhrvULNi", "XkPe9KDp"], "roleId": "iUDZKYlL"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminRemoveUserRoleV4' test.out

#- 295 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '89' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetRolesV4' test.out

#- 296 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "Tu88JBBy"}' \
    > test.out 2>&1
eval_tap $? 296 'AdminCreateRoleV4' test.out

#- 297 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'ays059OA' \
    > test.out 2>&1
eval_tap $? 297 'AdminGetRoleV4' test.out

#- 298 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '1pUsD06L' \
    > test.out 2>&1
eval_tap $? 298 'AdminDeleteRoleV4' test.out

#- 299 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'sWPGRLZ0' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "MUPbsG1n"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminUpdateRoleV4' test.out

#- 300 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'G9pP2ede' \
    --body '{"permissions": [{"action": 78, "resource": "1lBtIrIL", "schedAction": 31, "schedCron": "SmW14P5K", "schedRange": ["g9R9qAO2", "kXBu7dPd", "Z4BH7Cel"]}, {"action": 79, "resource": "Sjzc0pRT", "schedAction": 34, "schedCron": "n4DvGY7e", "schedRange": ["uDSy6Qf2", "wYtWddIT", "4MWEhYmm"]}, {"action": 99, "resource": "b5qvMpei", "schedAction": 87, "schedCron": "2WSBGaCC", "schedRange": ["IClQYO5Z", "xg87Nllz", "sfDbTold"]}]}' \
    > test.out 2>&1
eval_tap $? 300 'AdminUpdateRolePermissionsV4' test.out

#- 301 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'Zha81rTf' \
    --body '{"permissions": [{"action": 85, "resource": "V7oXy1vp", "schedAction": 57, "schedCron": "mmk7fD87", "schedRange": ["aDnkyyjG", "d56pjiRM", "9lg2HDRO"]}, {"action": 63, "resource": "MRZZnVjN", "schedAction": 10, "schedCron": "GTgBXWua", "schedRange": ["kZP04TkW", "hlyrNfch", "H9SVhzJy"]}, {"action": 26, "resource": "y4Inyie9", "schedAction": 7, "schedCron": "MwzU95en", "schedRange": ["M9KqmzaJ", "Yz11NdVM", "7jivGGrG"]}]}' \
    > test.out 2>&1
eval_tap $? 301 'AdminAddRolePermissionsV4' test.out

#- 302 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'EJ7tbQZE' \
    --body '["znVfNz6q", "nZs1FRmp", "UxAwHzJC"]' \
    > test.out 2>&1
eval_tap $? 302 'AdminDeleteRolePermissionsV4' test.out

#- 303 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'Yopc3t2c' \
    --after 'NLjFN3vR' \
    --before 'K026ILiE' \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 303 'AdminListAssignedUsersV4' test.out

#- 304 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'KU7q8z6J' \
    --body '{"assignedNamespaces": ["S1ZGVfpi", "EVCAhaAo", "HWqOwLIt"], "namespace": "JmJH8TPG", "userId": "0mNHIsGP"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminAssignUserToRoleV4' test.out

#- 305 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'VSRDeDn2' \
    --body '{"namespace": "3D0PyVl8", "userId": "BPwdI1rG"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminRevokeUserFromRoleV4' test.out

#- 306 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "2jlpfRX2", "country": "4IzpkSBv", "dateOfBirth": "l9GcIRnH", "displayName": "QSdjBFnd", "languageTag": "DrpNliCL", "userName": "5aQRGQzS"}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateMyUserV4' test.out

#- 307 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 307 'AdminDisableMyAuthenticatorV4' test.out

#- 308 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'IVQHcNlv' \
    > test.out 2>&1
eval_tap $? 308 'AdminEnableMyAuthenticatorV4' test.out

#- 309 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 309 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 310 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 310 'AdminGetMyBackupCodesV4' test.out

#- 311 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 311 'AdminGenerateMyBackupCodesV4' test.out

#- 312 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 312 'AdminDisableMyBackupCodesV4' test.out

#- 313 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDownloadMyBackupCodesV4' test.out

#- 314 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 314 'AdminEnableMyBackupCodesV4' test.out

#- 315 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 315 'AdminSendMyMFAEmailCodeV4' test.out

#- 316 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 316 'AdminDisableMyEmailV4' test.out

#- 317 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'Aef7Ip5w' \
    > test.out 2>&1
eval_tap $? 317 'AdminEnableMyEmailV4' test.out

#- 318 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 318 'AdminGetMyEnabledFactorsV4' test.out

#- 319 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'fmRK993K' \
    > test.out 2>&1
eval_tap $? 319 'AdminMakeFactorMyDefaultV4' test.out

#- 320 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["zeKAL3hV", "3vjIICPO", "qzX5zJw0"], "emailAddresses": ["USJIscQb", "4A2bBXcZ", "SXSpSl13"], "isAdmin": true, "roleId": "Mxsz5Wbk"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminInviteUserV4' test.out

#- 321 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "KPmas5VM", "policyId": "lwLtPcgS", "policyVersionId": "KTPU38Av"}, {"isAccepted": false, "localizedPolicyVersionId": "hQSJ19Ys", "policyId": "CjkhUWhd", "policyVersionId": "tikIognK"}, {"isAccepted": false, "localizedPolicyVersionId": "89Tl8lhW", "policyId": "JXVMUzSn", "policyVersionId": "63XkVGsi"}], "authType": "EMAILPASSWD", "country": "n2Osbwie", "dateOfBirth": "8qMoE2JN", "displayName": "K4gDJl1b", "emailAddress": "70L1quXu", "password": "TjS8zgY3", "passwordMD5Sum": "eWvt12Xa", "username": "iyM0rOOe", "verified": false}' \
    > test.out 2>&1
eval_tap $? 321 'PublicCreateTestUserV4' test.out

#- 322 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YI7tJSQ8", "policyId": "duPaBqMR", "policyVersionId": "ZbUxNxdf"}, {"isAccepted": false, "localizedPolicyVersionId": "0OtT7B3r", "policyId": "jCYXsgME", "policyVersionId": "eoGCqSJy"}, {"isAccepted": false, "localizedPolicyVersionId": "N5nrUtCc", "policyId": "UQHuVNSG", "policyVersionId": "PizhBdSa"}], "authType": "EMAILPASSWD", "code": "qHp6yRRn", "country": "EwjhDJhh", "dateOfBirth": "Rq9hp3xR", "displayName": "CHvS3S5b", "emailAddress": "rUyOW20e", "password": "oKrxR9J6", "passwordMD5Sum": "VfyrlUrC", "reachMinimumAge": false, "username": "9II1mMne"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicCreateUserV4' test.out

#- 323 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId '3owtqwsQ' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "a5MK7gNZ", "policyId": "dajykpdO", "policyVersionId": "DOOcx8VA"}, {"isAccepted": false, "localizedPolicyVersionId": "YPsA0Lw1", "policyId": "ruXy4Tjx", "policyVersionId": "wG1GTzXq"}, {"isAccepted": false, "localizedPolicyVersionId": "ynMA3QLO", "policyId": "mxvF5H1y", "policyVersionId": "Yx63ldmF"}], "authType": "EMAILPASSWD", "country": "WjtHoj0H", "dateOfBirth": "2JgKGb4T", "displayName": "0Htt0sKh", "password": "BHsoFHki", "reachMinimumAge": false, "username": "uPfbuvKb"}' \
    > test.out 2>&1
eval_tap $? 323 'CreateUserFromInvitationV4' test.out

#- 324 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Ge8x1ejp", "country": "1A1xwdgH", "dateOfBirth": "4z9mN8Sj", "displayName": "bA8UqkZs", "languageTag": "avjRhqud", "userName": "V2U5z15K"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicUpdateUserV4' test.out

#- 325 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PftXsX1f", "emailAddress": "1N64bXQa"}' \
    > test.out 2>&1
eval_tap $? 325 'PublicUpdateUserEmailAddressV4' test.out

#- 326 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "wo77S2zY", "country": "JZ6DUOEM", "dateOfBirth": "sfq5eAel", "displayName": "5HWwx5nw", "emailAddress": "HWnwwqi9", "password": "TAadCkf4", "reachMinimumAge": false, "username": "vb09DU1f", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 326 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 327 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "qrFz1cXT", "password": "fhnKlTKk", "username": "0Omiaj56"}' \
    > test.out 2>&1
eval_tap $? 327 'PublicUpgradeHeadlessAccountV4' test.out

#- 328 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 328 'PublicDisableMyAuthenticatorV4' test.out

#- 329 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'wLx3Mkbe' \
    > test.out 2>&1
eval_tap $? 329 'PublicEnableMyAuthenticatorV4' test.out

#- 330 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 331 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'PublicGetMyBackupCodesV4' test.out

#- 332 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 332 'PublicGenerateMyBackupCodesV4' test.out

#- 333 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 333 'PublicDisableMyBackupCodesV4' test.out

#- 334 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'PublicDownloadMyBackupCodesV4' test.out

#- 335 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'PublicEnableMyBackupCodesV4' test.out

#- 336 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 336 'PublicRemoveTrustedDeviceV4' test.out

#- 337 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 337 'PublicSendMyMFAEmailCodeV4' test.out

#- 338 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 338 'PublicDisableMyEmailV4' test.out

#- 339 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'u0X3ufrV' \
    > test.out 2>&1
eval_tap $? 339 'PublicEnableMyEmailV4' test.out

#- 340 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 340 'PublicGetMyEnabledFactorsV4' test.out

#- 341 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'H8uAs3Rl' \
    > test.out 2>&1
eval_tap $? 341 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE