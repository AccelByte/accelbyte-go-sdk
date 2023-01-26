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
    --body '[{"field": "aHF7JCgF", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["JrKf92QJ", "V4KnKQZO", "8HN9soDF"], "description": [{"language": "tQNbHhBs", "message": ["ygzai9op", "SYUu5sRk", "imXUtsMM"]}, {"language": "qGdbavWS", "message": ["aIL4vhUs", "AWvxpeU9", "E9I3Mpg0"]}, {"language": "zTApZZA1", "message": ["hSLy5i5k", "XOaan7iZ", "4DOFMiMq"]}], "isCustomRegex": false, "letterCase": "Zbcc3dJa", "maxLength": 26, "maxRepeatingAlphaNum": 70, "maxRepeatingSpecialCharacter": 80, "minCharType": 37, "minLength": 1, "regex": "frpt5CDP", "specialCharacterLocation": "OxT5FVyU", "specialCharacters": ["UCpp0VvM", "Aj6j9RxS", "BAckl2X1"]}}, {"field": "BOkDUMYT", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["XGh7Ahfm", "kCWXKJCI", "KhAXh0IJ"], "description": [{"language": "WXDMj9Ts", "message": ["gw60thi6", "WAGOHBqv", "siCMOB7P"]}, {"language": "McDwbErE", "message": ["lo0gt5Ku", "djT1ZH6x", "FKIxwcH4"]}, {"language": "7GnqpEVa", "message": ["lvvuDI2x", "bMN1VWIG", "DQ6AffAj"]}], "isCustomRegex": false, "letterCase": "kolUFzEU", "maxLength": 68, "maxRepeatingAlphaNum": 89, "maxRepeatingSpecialCharacter": 39, "minCharType": 36, "minLength": 7, "regex": "yMdxWx82", "specialCharacterLocation": "2L0B1tep", "specialCharacters": ["SsqiZZGK", "icnHbliv", "14SqDEVy"]}}, {"field": "gU8Fup16", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["zm6jM0a5", "wZAsTw0C", "xrpoljx8"], "description": [{"language": "yUPgRIm9", "message": ["m9F7e4ZD", "KK5h2SiG", "1pOjNXFz"]}, {"language": "DZEMUEOd", "message": ["8Z0BPM8A", "pywHOsa9", "MsvP676a"]}, {"language": "vssmgN3T", "message": ["M1kvRWRC", "wRCJGjQO", "JrWeyCkn"]}], "isCustomRegex": true, "letterCase": "3SqWxQvi", "maxLength": 79, "maxRepeatingAlphaNum": 88, "maxRepeatingSpecialCharacter": 50, "minCharType": 6, "minLength": 71, "regex": "8hm1jLHw", "specialCharacterLocation": "Ayr6UX2X", "specialCharacters": ["tn2PR8wa", "8vXIIcXs", "rNmg5N1o"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'JDRECABq' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'TSVI8UDC' \
    --before 'jW8lRiWy' \
    --limit '25' \
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
    --body '{"ageRestriction": 2, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'SbaxM82B' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 80}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'Rzns2as9' \
    --limit '21' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "qZTN5X6v", "comment": "ppNnB8x9", "endDate": "tXqeiBoA", "reason": "kee821Cm", "skipNotif": true, "userIds": ["X37EFjki", "KqK38Wje", "1rtQdtm2"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "tvMkzMb3", "userId": "bMNdgTWZ"}, {"banId": "MSSwWhs5", "userId": "uCIGWtmf"}, {"banId": "tRTqzYxF", "userId": "SX1mxwPA"}]}' \
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
    --clientId 'mPf9SYml' \
    --clientName 'nQ4ItsTa' \
    --clientType 'kol0sTp5' \
    --limit '42' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["V7GpSXYO", "ZobBWvwu", "IVLICuhW"], "baseUri": "g4uyW08y", "clientId": "3gvzrg9b", "clientName": "lFrrVcSh", "clientPermissions": [{"action": 32, "resource": "Ab6yREEb", "schedAction": 31, "schedCron": "lj6nWff6", "schedRange": ["bArokXIX", "vO71lZLF", "MyyR9KZu"]}, {"action": 72, "resource": "AMfVPDv0", "schedAction": 98, "schedCron": "MNKUMeAP", "schedRange": ["nkbwN5uy", "sJ9jc0cp", "xbgXGfQM"]}, {"action": 27, "resource": "2VYRN1p6", "schedAction": 92, "schedCron": "31fXQZwo", "schedRange": ["j76r3YxW", "gQbEl6ab", "dxj2iRKa"]}], "clientPlatform": "6xRZvJgu", "deletable": false, "description": "ILwrsmS7", "namespace": "CUCosIsm", "oauthAccessTokenExpiration": 99, "oauthAccessTokenExpirationTimeUnit": "M2U7bHpe", "oauthClientType": "6ZwYHijB", "oauthRefreshTokenExpiration": 35, "oauthRefreshTokenExpirationTimeUnit": "dWkYPpKn", "parentNamespace": "4O7EIiwk", "redirectUri": "XfYIC12L", "scopes": ["BOrUGeOI", "gPJOH0ep", "nWnHN8rx"], "secret": "UNztWVPB", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'twyOi31w' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'tAW9ICkV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'wtKB2zDR' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["89canSJv", "nQb7Pi7R", "uZRcEhSS"], "baseUri": "oLgJAtzK", "clientName": "u6zkBK0z", "clientPermissions": [{"action": 91, "resource": "kosjka4G", "schedAction": 80, "schedCron": "SHaQ1CpN", "schedRange": ["1RRYdUaS", "1vafLNgd", "xQtRRjcq"]}, {"action": 52, "resource": "F7Ygs9NV", "schedAction": 44, "schedCron": "oocd8pLa", "schedRange": ["BPvIqIw7", "VKZUfOH6", "LCkxkzW7"]}, {"action": 64, "resource": "tvTdj3FI", "schedAction": 66, "schedCron": "FX5QbtL1", "schedRange": ["VnTEWv14", "k47c54v2", "MN5QC8QP"]}], "clientPlatform": "YWtB73sV", "deletable": true, "description": "OYKuTgrJ", "namespace": "RSXYXXXt", "oauthAccessTokenExpiration": 36, "oauthAccessTokenExpirationTimeUnit": "wJIcMGn2", "oauthRefreshTokenExpiration": 51, "oauthRefreshTokenExpirationTimeUnit": "v4VjdTsq", "redirectUri": "DVpudtI0", "scopes": ["mgs8fqa8", "Ti25tIjz", "gy4lHhrc"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'x44m5Zoh' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 30, "resource": "gUirfLaG"}, {"action": 59, "resource": "J6Bu1ACH"}, {"action": 8, "resource": "ZVu3DWwz"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'g1JEVlua' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 58, "resource": "rxF6af0h"}, {"action": 12, "resource": "Y4Z9gQ5r"}, {"action": 26, "resource": "o2hZ7VO5"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '65' \
    --clientId '4c7FOCKy' \
    --namespace $AB_NAMESPACE \
    --resource 'mmlonXRz' \
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
    --limit '67' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A99hd9VE' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xg0ZuDvI' \
    --body '{"ACSURL": "zDAzW17y", "AWSCognitoRegion": "h7BBwZq5", "AWSCognitoUserPool": "sFqRzzAI", "AllowedClients": ["npAjrn52", "OaUt72Sf", "YcnLsSit"], "AppId": "M3LDY1uJ", "AuthorizationEndpoint": "qoAV0smP", "ClientId": "S85tUoFa", "Environment": "SOTKrBoH", "FederationMetadataURL": "moZdctAG", "GenericOauthFlow": true, "IsActive": false, "Issuer": "ZGNhaMqJ", "JWKSEndpoint": "My2Bpsjb", "KeyID": "p6zOeMuG", "NetflixCertificates": {"encryptedPrivateKey": "Ad2ZeKch", "encryptedPrivateKeyName": "tTlB79dq", "publicCertificate": "0aFae1JP", "publicCertificateName": "6OCESdtF", "rootCertificate": "m77563RE", "rootCertificateName": "UQwuIv25"}, "OrganizationId": "ixg73RKG", "PlatformName": "7bBpaBjZ", "RedirectUri": "qgSmr75U", "RegisteredDomains": [{"affectedClientIDs": ["J5a7tAQO", "Eu6oVbjy", "4JxGSBFh"], "domain": "kaxUUMwg", "namespaces": ["ySJWlyXT", "a9BPcKy2", "8yjD5qeY"], "roleId": "ya8VJ71l"}, {"affectedClientIDs": ["7qffI4gG", "eK3OB8pd", "EJIzSSBD"], "domain": "6jgLrbgX", "namespaces": ["OY6uZ6We", "kQsp5i8i", "oym7Fs96"], "roleId": "Sy3baF7Q"}, {"affectedClientIDs": ["5nlYHZvY", "o90xiilE", "6FZcqXWD"], "domain": "E6zrFc48", "namespaces": ["qytQAoDc", "yHQnUnu1", "XG0CLwMv"], "roleId": "kCgRVCxG"}], "Secret": "YBVoiejJ", "TeamID": "ziz4tiJj", "TokenAuthenticationType": "PRj0KCK2", "TokenClaimsMapping": {"2VB5Zjdx": "7Cv8iI6h", "jCYEHHox": "tFZjRuuh", "6Dco9gfy": "sRbwE5hN"}, "TokenEndpoint": "xo3CCTGu", "scopes": ["IOwCEzAK", "UOxLZAtv", "ISG535sY"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yI3MgvPv' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A6eEC4B8' \
    --body '{"ACSURL": "GD9iRYhK", "AWSCognitoRegion": "GkI5Xo3l", "AWSCognitoUserPool": "QWSLALHQ", "AllowedClients": ["bgsRoKk4", "WumOnaGX", "MtJQyV9H"], "AppId": "O9a3aPnK", "AuthorizationEndpoint": "nT2Y3P6T", "ClientId": "AUdXrD0a", "Environment": "TysyRrlX", "FederationMetadataURL": "oAJ2SXBS", "GenericOauthFlow": false, "IsActive": false, "Issuer": "jyrQwccj", "JWKSEndpoint": "tzPYTPlx", "KeyID": "0zUBB6JU", "NetflixCertificates": {"encryptedPrivateKey": "OeAaQYBD", "encryptedPrivateKeyName": "dHSb6bfP", "publicCertificate": "AYbvh8XM", "publicCertificateName": "Al87Y76P", "rootCertificate": "xfOFqejs", "rootCertificateName": "fsQfgEv1"}, "OrganizationId": "gahsfhhs", "PlatformName": "lXS9vRyD", "RedirectUri": "KyioVkUH", "RegisteredDomains": [{"affectedClientIDs": ["DoRxeo0D", "lVJz0jV5", "00HPs2B3"], "domain": "yt2cQUe3", "namespaces": ["9d1kJZEX", "X5TUWSdd", "EWZgJus0"], "roleId": "LAoDClev"}, {"affectedClientIDs": ["jcXHU0mM", "sCty5cyd", "SMuThACK"], "domain": "rtEoEuWN", "namespaces": ["EAi0Bu8C", "CW7oi7HU", "7hb6Dtmq"], "roleId": "Q0xvVJQc"}, {"affectedClientIDs": ["bAYsSxXz", "nOgVuJLB", "xrc1MwhI"], "domain": "jGBUoGQk", "namespaces": ["pV7PzsUf", "YQj3oC0F", "1sds7flX"], "roleId": "siK3VIMy"}], "Secret": "fmLjA1el", "TeamID": "3FtREWnl", "TokenAuthenticationType": "CjzsQHlx", "TokenClaimsMapping": {"swTC9aYq": "XYMLYVb0", "b2SNeG9U": "BmU3eW9b", "EUY62PRp": "fu0Dpq2j"}, "TokenEndpoint": "5PzUDqNZ", "scopes": ["OGW2O8zM", "5RYJIpdD", "6PAk8wFQ"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'birQg3kC' \
    --body '{"affectedClientIDs": ["GTbhjfx0", "k8DSx6AE", "FXoDsxLA"], "assignedNamespaces": ["mfQEQezg", "VLBcp4mR", "yvCUS4QC"], "domain": "oh9RoCDk", "roleId": "7VEaVF6K"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'J27Frcq1' \
    --body '{"domain": "AoRHqkyK"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'JZvRxEpT' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'b2Lgv8fz' \
    --body '{"acsUrl": "xo9wwM44", "apiKey": "JbD66VVD", "appId": "Sgnin4ZT", "federationMetadataUrl": "CCNzpQHA", "isActive": false, "redirectUri": "eXQgsfLR", "secret": "hTxITOi5", "ssoUrl": "m7ckJWNj"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AAMp15xx' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'gvbzH2i9' \
    --body '{"acsUrl": "5P4wW2tq", "apiKey": "63blRf6K", "appId": "O90JJqXb", "federationMetadataUrl": "anBHA8mx", "isActive": false, "redirectUri": "JWrp7O3C", "secret": "rYRaz0bM", "ssoUrl": "VunHAoyV"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VTWOcT1d' \
    --platformUserId 'fGqahYKO' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'vflztDSw' \
    --after '88' \
    --before '41' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '1cl6JJBl' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["REX6thYg", "rlzBQV2q", "wtK6dahK"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["GbSvkw09", "APSe5ADK", "B6b1QNbp"], "isAdmin": false, "namespace": "e1hjBrDL", "roles": ["34bsacpB", "zNsdbURI", "X6NMgjk9"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '50' \
    --offset '100' \
    --platformUserId '2gQiBnZE' \
    --platformId 'sY4Mb53b' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '13' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ginVtYKz' \
    --endDate '6YgrHRTG' \
    --limit '94' \
    --offset '44' \
    --platformBy 'UrEVT8Ii' \
    --platformId '2sXJ2K7V' \
    --query 'd4nBP5Iq' \
    --startDate 'kMWiX5w2' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["keLUDqK8", "dIzFU95V", "hT79Hrwe"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '4Wa2x0vE' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '1hRRSuK0' \
    --body '{"avatarUrl": "6mkI9fB7", "country": "AtaYL0dV", "dateOfBirth": "rFrjjpBk", "displayName": "kz8hjm6j", "languageTag": "yyp7SfxT", "userName": "4Rm2Ikkm"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xlhViOYx' \
    --activeOnly 'false' \
    --after 'vDoKfhjA' \
    --before 'mvaV81Oo' \
    --limit '21' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TO4paQ7B' \
    --body '{"ban": "JAYnIfaO", "comment": "ZiqnvPfL", "endDate": "buCg45RR", "reason": "DSu1V0H9", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'vcQLg1GO' \
    --namespace $AB_NAMESPACE \
    --userId 'gRbklHZJ' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '8nZYvFc8' \
    --body '{"context": "c72dQxwm", "emailAddress": "jVhvc96y", "languageTag": "HrUtXAIH"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u6KfnVMX' \
    --body '{"Code": "96F2XU1R", "ContactType": "orYuq6ZD", "LanguageTag": "FlX2UfcR", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'wVFPApU1' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vkPPebnO' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0iMqmF7U' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YqAVZ605' \
    --body '{"code": "qkqT2cMF", "country": "np5VEpAr", "dateOfBirth": "4JFn5FoS", "displayName": "xuKNGcyT", "emailAddress": "0DrmnHnF", "password": "VI1zBXPv", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NunqNdHK' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DA2Nctdh' \
    --after '0.8222210190279104' \
    --before '0.692191492301005' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Kk7zCUcc' \
    --body '{"languageTag": "ZT0XIzVo", "newPassword": "NuRsnXzC", "oldPassword": "Sn5I21iq"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yQIACsqb' \
    --body '{"Permissions": [{"Action": 0, "Resource": "PAsVaINP", "SchedAction": 63, "SchedCron": "27uQCKcZ", "SchedRange": ["eTdGkG2e", "jLczsjQT", "2aEJQIZT"]}, {"Action": 62, "Resource": "nlO8esrC", "SchedAction": 78, "SchedCron": "T50cZnzL", "SchedRange": ["l1kfhpk1", "tIaobFf2", "Qrmjr8cU"]}, {"Action": 27, "Resource": "cNRwhpK3", "SchedAction": 31, "SchedCron": "h9muxH8r", "SchedRange": ["dSOr6FCQ", "mxeIm6Mq", "QUpxkW3p"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IvJKXwZD' \
    --body '{"Permissions": [{"Action": 92, "Resource": "jFurCUnW", "SchedAction": 22, "SchedCron": "YJCkS5n7", "SchedRange": ["kL5Q2LNt", "13MPrSDa", "pfyVTSQ6"]}, {"Action": 86, "Resource": "yFbO1GWA", "SchedAction": 91, "SchedCron": "g1FrEbCM", "SchedRange": ["7o0wkAuz", "0t4gahid", "rcb0CqSY"]}, {"Action": 0, "Resource": "z2F9Ix19", "SchedAction": 33, "SchedCron": "KyhNsQwN", "SchedRange": ["q3XWdTXa", "m8HcW23h", "iF1bPaB1"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EZzdVpkW' \
    --body '[{"Action": 94, "Resource": "o2BPSmN7"}, {"Action": 2, "Resource": "eMvqM8dO"}, {"Action": 15, "Resource": "4aqLJKj8"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '17' \
    --namespace $AB_NAMESPACE \
    --resource '1QgVVznX' \
    --userId 'Zuggp4f4' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o7P3UDme' \
    --after '0d1Gb0Ig' \
    --before 'cQcz7Xyr' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '6G7p6oTP' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'VkMNnuzU' \
    --userId 'HEBGp1uC' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '2HbSiPmH' \
    --userId 'X0ySQ8wC' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Cp6Hlai1' \
    --body '{"platformId": "QVSFgg7A", "platformUserId": "1BpYnWhW"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2dqKZ0aV' \
    --userId 'XKHqSy79' \
    --body '{"platformNamespace": "nQW1ZqDL"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KAXtu2Xo' \
    --userId 'wF1YwMuo' \
    --ticket 'nZZMAGlw' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UBMfLoGx' \
    --userId 'WKYxreLN' \
    --platformToken 'ovbWjsXB' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CwOt5LoF' \
    --body '["1akq9H6c", "XIQRs03X", "MNmDljMR"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '9hGZr1Uq' \
    --body '[{"namespace": "AtEN1sra", "roleId": "UbqcZAIV"}, {"namespace": "pRDeUPrs", "roleId": "D9gSlgot"}, {"namespace": "uFxxHfTH", "roleId": "lI4uIO5G"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kxXc5nY1' \
    --userId '2Xi6AYYm' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'zeSd4XFK' \
    --userId 'n38wzDeh' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BI883KW6' \
    --body '{"enabled": true, "reason": "QINk6C07"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UtPWz3XW' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '2JwPm2CY' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "QxT005ye"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'sm1T4b77' \
    --before '6Zq29bQH' \
    --isWildcard 'false' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "CAlYGgoa", "namespace": "ZsYRixbe", "userId": "aK2Y0g5k"}, {"displayName": "V7cSvYH0", "namespace": "w71a4MFv", "userId": "jhZliAd5"}, {"displayName": "kRklQrsu", "namespace": "38m2mVjm", "userId": "CfnpcNDN"}], "members": [{"displayName": "MagNfQXi", "namespace": "5Wj7DTi6", "userId": "FRzTIdQO"}, {"displayName": "928KjrBV", "namespace": "epiW6gX5", "userId": "8fxF0K16"}, {"displayName": "d8FjqH0S", "namespace": "8FZXGN1I", "userId": "W46RTROH"}], "permissions": [{"action": 70, "resource": "0hMspNbw", "schedAction": 91, "schedCron": "TLrkc05u", "schedRange": ["j6dSvVC5", "GKBaoxGE", "3HhBn2Mv"]}, {"action": 48, "resource": "hOF9WJ6N", "schedAction": 17, "schedCron": "OVmo7i6o", "schedRange": ["VJBUEKDc", "sqXVvXTE", "VH2idvs8"]}, {"action": 97, "resource": "MHMOBaQf", "schedAction": 89, "schedCron": "5wXOcxiQ", "schedRange": ["oAlN1UHd", "yWixBvdp", "QeZiTYkR"]}], "roleName": "iRjCfpHk"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '3tJm85bz' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '14WFLR1S' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'goqlVj6h' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "xFzRDtgm"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'M7CQay7J' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'GhwNrumy' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'HEOh5C2R' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'rb5wfpT2' \
    --after 'RvQ8KLmy' \
    --before 'uECF9EEB' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'HF6qyDml' \
    --body '{"managers": [{"displayName": "mkMa2FuD", "namespace": "2FaCXTqp", "userId": "CFDZX11o"}, {"displayName": "LoKWnKm2", "namespace": "Fy4Cg4z2", "userId": "EendpI8C"}, {"displayName": "54mlcLIa", "namespace": "PoR817LK", "userId": "fZHchiJX"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'HYV7jMFu' \
    --body '{"managers": [{"displayName": "1GF6HLvN", "namespace": "110vZ3Xr", "userId": "1TzHj4m3"}, {"displayName": "Fscp0A4X", "namespace": "vy513fAK", "userId": "ZwaV0krO"}, {"displayName": "PBS6sz3l", "namespace": "NInZYED4", "userId": "K4PRNvkW"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'LBajPOzH' \
    --after 'PbuWKOrV' \
    --before 'bE5TB1Tm' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'zFpsV2lU' \
    --body '{"members": [{"displayName": "Y1hR34fk", "namespace": "orT0Kabq", "userId": "MI3KJ4jF"}, {"displayName": "PQdHKcvS", "namespace": "qvzAzVsB", "userId": "ImrMlD7J"}, {"displayName": "dBD8oGyZ", "namespace": "X1VcLh9o", "userId": "5SGBiCp3"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'DjaZb7ki' \
    --body '{"members": [{"displayName": "rYnbkZCc", "namespace": "Z8VIUGZP", "userId": "rLboNgY6"}, {"displayName": "5qsCcj2R", "namespace": "qnDOKFCL", "userId": "6bBlxhhX"}, {"displayName": "l0OsUgtS", "namespace": "C6btZ8vB", "userId": "auHyeYNp"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'ziH9ouqY' \
    --body '{"permissions": [{"action": 84, "resource": "QkmDbnaG", "schedAction": 35, "schedCron": "fAkqr9CE", "schedRange": ["sTQTWvbq", "Zyq3Izq1", "ROrSGo7I"]}, {"action": 38, "resource": "TRmem2qh", "schedAction": 53, "schedCron": "INOgZjii", "schedRange": ["YbJJlQuc", "rsUBsGDs", "79CBGx47"]}, {"action": 82, "resource": "fIaxzNqU", "schedAction": 51, "schedCron": "5dKzGW76", "schedRange": ["R1TqcU6y", "PW8ITv7K", "7toJr2vk"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '1NOpUsn8' \
    --body '{"permissions": [{"action": 0, "resource": "ZjVQxlW6", "schedAction": 66, "schedCron": "csLcdox5", "schedRange": ["XpY0xWgz", "ncciKJwG", "BdAtzPE1"]}, {"action": 90, "resource": "7Cl4zdoI", "schedAction": 39, "schedCron": "3LnD61pb", "schedRange": ["li4snKPf", "SdElBJko", "Qz4UHbOP"]}, {"action": 22, "resource": "2mVZzRUg", "schedAction": 19, "schedCron": "Bczfq0I6", "schedRange": ["4i7pGayn", "iJcWbOjQ", "yRoXoyli"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'aW2n8eSM' \
    --body '["PyeiMth1", "NSCgc6hL", "l0Cti8t1"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '69' \
    --resource 'FYejQTe0' \
    --roleId 'b7Ulj4xB' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'DMxDwRFP' \
    --extendExp 'false' \
    --redirectUri 'a6wUHTPx' \
    --password 'zl2EAok7' \
    --requestId 'OiZiMtF9' \
    --userName 'grLG1o5z' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'nueTTKWZ' \
    --linkingToken 'DycZw5Xk' \
    --password 'G0XI2w48' \
    --username 'wBMJyUrV' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'OcEPFG9R' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '1S7xuFHB' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'dLFBsCnH' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId '04HobCW5' \
    --oneTimeLinkCode 'z7V2x0r2' \
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
    --clientId 'g2XXMqoj' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1pLUHoaa' \
    --userId '4KwujjHi' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OnwO2D6p' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'kl2MGcYz' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'txYmaKdE' \
    --redirectUri 'b5CaKrma' \
    --scope 'vcTKZrJa' \
    --state '8AzLhruV' \
    --targetAuthPage 'ydWBYjDJ' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'KcoBigM8' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '8Ag1fVia' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'cHI1upRa' \
    --factor 't30ok68X' \
    --mfaToken 'XzorualF' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '3SzXK2O0' \
    --mfaToken 'NCqIJmdG' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'vdLfQhno' \
    --factor 'AFCXZc5s' \
    --mfaToken 'JH8lcxDq' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GcfqRxr9' \
    --userId 'QzIh8axV' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'GyQB73T5' \
    --clientId 'J9p1mBb2' \
    --redirectUri 'YSaF3NFt' \
    --requestId 'gBHOUeAA' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'sRXB0HVA' \
    --clientId '02TnLuQR' \
    --createHeadless 'false' \
    --deviceId 'qDIxKgTD' \
    --macAddress '7a3MKMDD' \
    --platformToken '3JRAswR6' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'KvwLd2Gj' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'fPyCFoM2' \
    --code 'lwpjbqH9' \
    --codeVerifier 'D5OccjU8' \
    --extendExp 'false' \
    --password 'RjLCVlKp' \
    --redirectUri 'MtWOjhPV' \
    --refreshToken 'jtCgeRDj' \
    --username 'k6lH6fYG' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'sLfCEEAA' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'eL8TOVIC' \
    --code 'b3fZlxEh' \
    --error '2OpJ10TQ' \
    --openidAssocHandle 'vLbwYlwr' \
    --openidClaimedId 'WB0zwGpH' \
    --openidIdentity 'lPBlLHJm' \
    --openidMode 'FqUhC876' \
    --openidNs 'BRgzFpVJ' \
    --openidOpEndpoint '4IiVcF7R' \
    --openidResponseNonce '79c26yDH' \
    --openidReturnTo 'FMTPdedI' \
    --openidSig 'MbLRQQRb' \
    --openidSigned '3fzp43OJ' \
    --state 'L5qoNQLI' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'EbtYr3XZ' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'FJ1qpGwq' \
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
    --clientId 'l3qUbuQA' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HWqDWX6H' \
    --body '{"platformUserIds": ["nVq7JFsL", "vQpYtEKV", "A6i65Txx"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bOycg7t2' \
    --platformUserId 'NZFxcgtx' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'OUxaXU6d' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'gBtaw0pw' \
    --limit '55' \
    --offset '0' \
    --query 'Q8XFxWci' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "CsYZkZuN", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "IBCwpnRP", "policyId": "4DhHbe2t", "policyVersionId": "0Cw5f9SD"}, {"isAccepted": false, "localizedPolicyVersionId": "WOivguYq", "policyId": "YFQylgE4", "policyVersionId": "6mj9Lmlu"}, {"isAccepted": false, "localizedPolicyVersionId": "cWU8s4Fl", "policyId": "IWKfclMe", "policyVersionId": "Nc3V9C8k"}], "authType": "KHGe4Ful", "code": "T3IwPwi7", "country": "uj8ykdCC", "dateOfBirth": "66PQK5CV", "displayName": "7kvCEPDx", "emailAddress": "Et0CkvYN", "password": "G74fSxhJ", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'C5z448ku' \
    --query 'jwCCdfyN' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["eFCis8gz", "iUQ0mkrd", "QH1Se4Dl"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "tmjiEKOW", "languageTag": "PoyqzQ9l"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Yyckno2O", "emailAddress": "RwXC8OhP"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "VSRkvu1Q", "languageTag": "yC7TGXk6"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '5B7haLSD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'gfuGB9Ob' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "SOqkChr8", "policyId": "1MopXvMK", "policyVersionId": "bOHVl9Io"}, {"isAccepted": false, "localizedPolicyVersionId": "I5IBHhBy", "policyId": "RO9VUAc1", "policyVersionId": "MwR6NA8f"}, {"isAccepted": false, "localizedPolicyVersionId": "Wdu7y05o", "policyId": "IiMGp0bh", "policyVersionId": "DQWLrshI"}], "authType": "EMAILPASSWD", "country": "5pVvJnsp", "dateOfBirth": "EEUiRISK", "displayName": "mxjMLIe1", "password": "manxF6av", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "mNHmmsXP", "country": "nI9zZaik", "dateOfBirth": "ExbafnOz", "displayName": "3HZy6JfD", "languageTag": "L3tXgfyl", "userName": "frcQER1r"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "vCDceSlm", "country": "6SDeVlR6", "dateOfBirth": "oI3SwYF9", "displayName": "UksuGhXF", "languageTag": "NkGicPye", "userName": "eTQ353sT"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "bEh1lD5T", "emailAddress": "XnJO0aif", "languageTag": "KLYIdPDu"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3K1BzzFI", "contactType": "ffwpUYi5", "languageTag": "vrdtcXXV", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "r8vokmF7", "country": "G5nWS81z", "dateOfBirth": "JOUGGFsA", "displayName": "i4BwyNc0", "emailAddress": "94ZSGCXR", "password": "P5aYn6tc", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "2AOkq6Pd", "password": "Xcog703b"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "vuLLiAZT", "newPassword": "rt0I5zTu", "oldPassword": "nEf2PkIX"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'u1mmj4wg' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OrIciLmr' \
    --redirectUri 'kduQMBgX' \
    --ticket 'eaUyMK3P' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'glgHoC1D' \
    --body '{"platformNamespace": "TVN4pLUL"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1voWT0mN' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tLgeePfY' \
    --ticket 'N5lXcFnS' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'CMYD0IN0' \
    --clientId 'hCmahcHe' \
    --redirectUri 'YiQLijUb' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Mvu6xBwX' \
    --state 'hkcxJJ1t' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "F2hJYcwC", "emailAddress": "mENNNXIG", "newPassword": "Tg82c1Fl"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qds8nm2Y' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tXe5p7kR' \
    --activeOnly 'false' \
    --after 'LZqweWdf' \
    --before 'XBOCin6J' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fKTyxtYo' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o3CjfRYK' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xGBp1sC6' \
    --after '0.9083057627905652' \
    --before '0.256226348886445' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A4oZAM5L' \
    --after 'yaLJBRWj' \
    --before 'enkxqPcy' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LoWaACFB' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'tXo5477p' \
    --body '{"platformId": "869IriZb", "platformUserId": "0dBht76D"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '08LGp0Hz' \
    --body '{"chosenNamespaces": ["7fzmxtSf", "Bn6PUXxB", "U33J5qXW"], "requestId": "rV9T2GK3"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yZfFaCYD' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OEvO1fRc' \
    --password '8aLyUIYI' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'YccyRhZS' \
    --before 'cWeTICAG' \
    --isWildcard 'false' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'h8RIBwWI' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'kfQ54RTI' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["BOAJ4q6H", "a7tlAG30", "AVdzm268"], "oneTimeLinkCode": "UzAdVXpP"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "5q4NpeyQ"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'CeLCJa5O' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'rT3nnV7F' \
    --code 'WvcFco1d' \
    --error 'Imc4HIXp' \
    --state 'YGk5ZjAN' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'v5KBipFh' \
    --payload 'aUsj4g9Y' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '8E47xVRb' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'C45NPt1W' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zIQztwde' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'ohD7KZoG' \
    --endDate 'oofM6HlK' \
    --limit '82' \
    --offset '25' \
    --startDate 'jdfLXcmS' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'bLuFm5ES' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "bKPovSoF", "deviceId": "sceARExq", "deviceType": "lGNQe8AV", "enabled": false, "endDate": "hYKdB9A2", "ext": {"HcslCaSd": {}, "87EPtdeN": {}, "4DPOGHJI": {}}, "reason": "pUq6z4vM"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'l4icIIxM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'tTP8uGd6' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'KYXdLKTe' \
    --startDate 'm7aI4dj0' \
    --deviceType 'O5EaAsjR' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'g6OBA1iK' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'hqF3hmny' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'hu3V9B2m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'fBBbxHGM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 23}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TuESDik8", "mI0IVCwz", "uVZAp0RL"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wrZvrlew' \
    --body '{"avatarUrl": "OAIuB1rC", "country": "MHtAbkFm", "dateOfBirth": "RwwbzuNC", "displayName": "msENxuWe", "languageTag": "Yzc2AEvd", "userName": "eT9xyeSw"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '46U2kGta' \
    --body '{"code": "eGi5ZRPo", "emailAddress": "yHXoT2xn"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kd8QYE5q' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ze4Sbli0' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'csa118bJ' \
    --body '{"assignedNamespaces": ["oYPkH0lv", "9lA13TYd", "HqcHKekB"], "roleId": "WNGd34eS"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Z4rXywGX' \
    --body '{"assignedNamespaces": ["iHpbfkWO", "9FjQfBgn", "I0aJ8qwP"], "roleId": "oGCuemwH"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'TnR1pLwE' \
    --body '{"assignedNamespaces": ["5cPtvSss", "9e0zjbRF", "ucC1PR2U"], "roleId": "UyDh7sv4"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '57' \
    --offset '44' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "syD077dU"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'kJVUOcGK' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '5d4Kd0FU' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '1TGkemWc' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "BU37bX2B"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'YVIWChKP' \
    --body '{"permissions": [{"action": 38, "resource": "NEXd31e6", "schedAction": 59, "schedCron": "HFBCgz36", "schedRange": ["UOroDc6p", "AFTEKD3a", "1t0Uju1t"]}, {"action": 79, "resource": "DrBGzwkU", "schedAction": 60, "schedCron": "ipg749Fm", "schedRange": ["WGoAdY9W", "lcQbPM6J", "M3zpe6iv"]}, {"action": 23, "resource": "saAul3SU", "schedAction": 41, "schedCron": "8I3E2J7t", "schedRange": ["AMjys9le", "cKDSuvlM", "wlEKNzBU"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'JN04Rx0E' \
    --body '{"permissions": [{"action": 88, "resource": "oLGDUVaK", "schedAction": 32, "schedCron": "0nvprE0x", "schedRange": ["ecz3YrnV", "AOam1ghM", "GBwSZHMB"]}, {"action": 23, "resource": "c8iaTgfR", "schedAction": 14, "schedCron": "Deur9NBp", "schedRange": ["BvecRpw0", "reerFWfE", "qnRAC1Om"]}, {"action": 0, "resource": "O0FZ1nDR", "schedAction": 71, "schedCron": "JPrtORtn", "schedRange": ["RzU9dJRk", "OAWLi5ZU", "ZPtYbSWn"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'TkPxOxMj' \
    --body '["0X74DfrK", "0XzYqVX2", "jrLnWiZk"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '93sn0EoP' \
    --after 'Le4jrqKV' \
    --before 'rh8k2xvM' \
    --limit '59' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'kIPiQSQB' \
    --body '{"assignedNamespaces": ["i0eXjmjn", "t4osGD6q", "wM2EE2br"], "namespace": "ml8GoIcB", "userId": "L8kt4sEq"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'j3rVp7OZ' \
    --body '{"namespace": "AmRjDs06", "userId": "HFmXtRiq"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "i2m6lhe1", "country": "r67zL1Nh", "dateOfBirth": "FWbo5oP4", "displayName": "v6l1AMMT", "languageTag": "rdLYoWQ8", "userName": "B77rz630"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'OoKQCzo8' \
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
    --code 'G9wCERL9' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'iYicirCw' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["J2sZqwEf", "0n1uJw0x", "Qb8pUSiw"], "emailAddresses": ["Zn8IKXWC", "GjV9glLf", "BeFTLifn"], "isAdmin": true, "namespace": "zEOEq6eB", "roleId": "yHhh3f3w"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "9BcFD5IP", "policyId": "JCoQ2L1J", "policyVersionId": "ZxwOpTd5"}, {"isAccepted": false, "localizedPolicyVersionId": "sotB1xj7", "policyId": "PVS2AC7s", "policyVersionId": "TFArQrv0"}, {"isAccepted": false, "localizedPolicyVersionId": "RbSJJzPb", "policyId": "rB5eCPRb", "policyVersionId": "wnsv4OBW"}], "authType": "EMAILPASSWD", "country": "WUTnl44j", "dateOfBirth": "Cpk7BLop", "displayName": "pBtH5X06", "emailAddress": "7AMZKAY4", "password": "QkhJBrgw", "passwordMD5Sum": "okkHjNKP", "username": "XQPOOGlZ", "verified": false}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8wZWEvLt", "policyId": "lKIW5MGn", "policyVersionId": "gygjn50m"}, {"isAccepted": true, "localizedPolicyVersionId": "P7ne0Qm0", "policyId": "pnfO0HyY", "policyVersionId": "FW6gESVC"}, {"isAccepted": false, "localizedPolicyVersionId": "g1YynMXR", "policyId": "PhmILqo2", "policyVersionId": "5dtTzDTR"}], "authType": "EMAILPASSWD", "code": "yRbqOHiX", "country": "ML6XKbYz", "dateOfBirth": "99u2ibjg", "displayName": "3QveFaam", "emailAddress": "FDNt6QZy", "password": "qQZWg1lr", "passwordMD5Sum": "W5tvLhae", "reachMinimumAge": true, "username": "Ry3CkrUZ"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'RiUbUAd4' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "LzexyKZ1", "policyId": "1NEMkron", "policyVersionId": "XgVUlmL0"}, {"isAccepted": false, "localizedPolicyVersionId": "2HIOoqWJ", "policyId": "9nQSocQX", "policyVersionId": "fQpgWNTr"}, {"isAccepted": true, "localizedPolicyVersionId": "HfBjooh5", "policyId": "nlNNz1P2", "policyVersionId": "W4Wc7Zyq"}], "authType": "EMAILPASSWD", "country": "9dqAWUz7", "dateOfBirth": "D3xSFUrG", "displayName": "1QDbUO5S", "password": "DI3YDO4l", "reachMinimumAge": true, "username": "YpXlzo4u"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "9O3JxhZF", "country": "abTsPwr0", "dateOfBirth": "WPCu5sUH", "displayName": "Q72qiWiK", "languageTag": "Ml1enArQ", "userName": "9GKAVMPK"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fdwLctzY", "emailAddress": "5mSHS42A"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "H2homkWS", "country": "JiX5uCZ2", "dateOfBirth": "pgX6Nz4F", "displayName": "W8pFB4ug", "emailAddress": "min3vxJR", "password": "zDo5Vvor", "reachMinimumAge": true, "username": "fz9iLXOS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "tB0Da9Q3", "password": "WwOawAzj", "username": "kzRKp7o8"}' \
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
    --code 'eDrthLws' \
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
    --code 'n2NRmlBH' \
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
    --factor '60Y9w0fA' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE