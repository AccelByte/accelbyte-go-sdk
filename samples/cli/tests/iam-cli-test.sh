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
    --body '[{"field": "f0PcBohN", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["bK0Cmpff", "1zWhEljl", "6nMZEUuu"], "description": [{"language": "eAMU2dAd", "message": ["JQCz2tS3", "cffBauRJ", "6X71drFE"]}, {"language": "XlKeoA2X", "message": ["91JVu3aE", "wRSh2cAz", "oheCYMoN"]}, {"language": "Mnig0uMF", "message": ["cuCflOeJ", "NlFdNX5n", "cBKu40yw"]}], "isCustomRegex": true, "letterCase": "4cpSybDI", "maxLength": 68, "maxRepeatingAlphaNum": 94, "maxRepeatingSpecialCharacter": 43, "minCharType": 85, "minLength": 98, "regex": "cL21h5yb", "specialCharacterLocation": "Lq4MAs1t", "specialCharacters": ["Cv7uE6PP", "TjqTRKDP", "Sv8qXCE5"]}}, {"field": "wexBcJog", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["l5jdEbUD", "A5PTIcDv", "fxYUIC9Z"], "description": [{"language": "l6BnEdgU", "message": ["XnhnhTOb", "epfBl6J8", "aE6rxfY7"]}, {"language": "Kn6Z72MP", "message": ["dqXfUdQw", "RUUl09FV", "0PQ1MZdS"]}, {"language": "9qpGhv6e", "message": ["OlE4UpJg", "oxKvkePx", "miFMxTh2"]}], "isCustomRegex": true, "letterCase": "cP8HwNPQ", "maxLength": 30, "maxRepeatingAlphaNum": 78, "maxRepeatingSpecialCharacter": 10, "minCharType": 10, "minLength": 28, "regex": "YQgbIQ14", "specialCharacterLocation": "ZfBxUwjk", "specialCharacters": ["My69VRL0", "nnYeHrwL", "GBK0pWqH"]}}, {"field": "iko4E9s6", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["mXI7ZMQs", "Ic1bdc6c", "5XlmKbMq"], "description": [{"language": "OYcUckaj", "message": ["FKnA6bdT", "J2KXUsjo", "FI83Lv7c"]}, {"language": "RgShZdv6", "message": ["9gjcOJJG", "9eV8O7tk", "wNycCCZr"]}, {"language": "IjnCnKVj", "message": ["h7JERAhu", "K0wcDP8l", "PYDwgKR5"]}], "isCustomRegex": true, "letterCase": "9CqAxCQ8", "maxLength": 7, "maxRepeatingAlphaNum": 28, "maxRepeatingSpecialCharacter": 100, "minCharType": 28, "minLength": 87, "regex": "rG2LLcE4", "specialCharacterLocation": "VSdjtM2O", "specialCharacters": ["6Pu1W4OH", "0nGSIkbs", "mUN32F0w"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field '62GwwHGb' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'hhs0cgGO' \
    --before 'YpaEfWuF' \
    --limit '67' \
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
    --body '{"ageRestriction": 41, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '1xbBbDq8' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 22}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'iB5F5qG3' \
    --limit '82' \
    --offset '67' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "0Nx8S08n", "comment": "Jgo6KvVm", "endDate": "k2euYUvz", "reason": "eRXdwXJJ", "skipNotif": true, "userIds": ["jtP5bp3V", "jaWynagU", "ClDOBGl5"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "46iQYq54", "userId": "ZVOodM52"}, {"banId": "H1ToBBox", "userId": "GhTSSW2T"}, {"banId": "qE9sWVvo", "userId": "VbdBhEVJ"}]}' \
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
    --clientId 'BlzByHLq' \
    --clientName 'qeYyfIhf' \
    --clientType '1kVbnSqg' \
    --limit '4' \
    --offset '22' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["vThxSKuB", "CZxBMcj7", "qYwMYSBe"], "baseUri": "x407AM7p", "clientId": "4T2oTXqj", "clientName": "GNC9mUYW", "clientPermissions": [{"action": 76, "resource": "VBDosUx7", "schedAction": 29, "schedCron": "wL0IPL4i", "schedRange": ["7jNl8xQO", "IWTuBAdQ", "CNe19e9J"]}, {"action": 81, "resource": "eis6wB7U", "schedAction": 87, "schedCron": "HtZloKNR", "schedRange": ["CIcufLmb", "rmjqTu85", "PKWNmyV8"]}, {"action": 90, "resource": "X1XqzDwP", "schedAction": 73, "schedCron": "aEfGtlTG", "schedRange": ["Vev6oiSN", "IG9Ojw5N", "5CmSoizm"]}], "clientPlatform": "idvSyr7r", "deletable": false, "description": "wMC9dQf1", "namespace": "TtswIq9W", "oauthAccessTokenExpiration": 74, "oauthAccessTokenExpirationTimeUnit": "ccAvhDRJ", "oauthClientType": "0wlg21u3", "oauthRefreshTokenExpiration": 78, "oauthRefreshTokenExpirationTimeUnit": "dywlSWxR", "parentNamespace": "dBfgqaPF", "redirectUri": "bjJvAHOF", "scopes": ["UIRQbxm8", "Kc4zudeH", "GGOXWe8p"], "secret": "mGzIN9cE", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'GqgAZbYX' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'zJHFzJzx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'QQD5iIWo' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["iNAhX7tI", "6kqt3cyq", "pIFelcbD"], "baseUri": "t29P2vT2", "clientName": "isfce0zb", "clientPermissions": [{"action": 41, "resource": "rv0SPtmP", "schedAction": 43, "schedCron": "iLp9qEy2", "schedRange": ["gRH74Nfu", "qUQ2EcyO", "h2ZQJHPj"]}, {"action": 96, "resource": "u6bbSR7s", "schedAction": 89, "schedCron": "WPMtSq42", "schedRange": ["5HkAWeWo", "CGwoPrS3", "Y8eci11X"]}, {"action": 42, "resource": "KIcbhEiC", "schedAction": 45, "schedCron": "0FaMln9d", "schedRange": ["pLXrv8jd", "wk1OTvQq", "Fv6OkMne"]}], "clientPlatform": "S516oSKK", "deletable": false, "description": "TRtOqT3n", "namespace": "PH3GdijA", "oauthAccessTokenExpiration": 90, "oauthAccessTokenExpirationTimeUnit": "VIi8z0MC", "oauthRefreshTokenExpiration": 64, "oauthRefreshTokenExpirationTimeUnit": "7KcZvXdT", "redirectUri": "FSG6YyGb", "scopes": ["9dV0f2eO", "DyQFwvfF", "uX8ONziZ"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'RRdfpWCz' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 61, "resource": "H4lEUsL7"}, {"action": 2, "resource": "tTAy9N9n"}, {"action": 92, "resource": "eykRouhf"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'ldsOqtl2' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 63, "resource": "8m9kilYH"}, {"action": 9, "resource": "qSxEEtCe"}, {"action": 46, "resource": "ScECF1lA"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '45' \
    --clientId 'isDovLUE' \
    --namespace $AB_NAMESPACE \
    --resource 'Uw9xkbRE' \
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
    --limit '31' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GaHBuXJ3' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jXrYoQo3' \
    --body '{"ACSURL": "RghmE4uT", "AWSCognitoRegion": "9VYTD9fl", "AWSCognitoUserPool": "Mk6524Ek", "AllowedClients": ["OjFgfMe4", "2ZgCxGVH", "ELLpkXS3"], "AppId": "ref81z8N", "AuthorizationEndpoint": "rtz0rIbI", "ClientId": "BrUuZUUg", "Environment": "A3knjM96", "FederationMetadataURL": "pV6hd5Ox", "GenericOauthFlow": true, "IsActive": false, "Issuer": "cyZ8z7rA", "JWKSEndpoint": "Jk75PzuB", "KeyID": "nmLeoCzi", "NetflixCertificates": {"encryptedPrivateKey": "JCrDUPH9", "encryptedPrivateKeyName": "skUQ0OQc", "publicCertificate": "Gw3CUYrB", "publicCertificateName": "SeuQbnCy", "rootCertificate": "yTxXGxd6", "rootCertificateName": "QUH7Vt9e"}, "OrganizationId": "1m2xcD5C", "PlatformName": "yQJZeu5l", "RedirectUri": "5g17MAZZ", "RegisteredDomains": [{"affectedClientIDs": ["WjCW8hQ3", "G3P1mHRQ", "MjOorouc"], "domain": "DQCF9xPc", "namespaces": ["1zdiW0UQ", "5HcDsy7C", "rd3XfkKw"], "roleId": "fq8r016l"}, {"affectedClientIDs": ["dbJJD9j7", "NI3BnHy1", "bXOrfTMV"], "domain": "uu7WO5VI", "namespaces": ["MgrnoQic", "h3KD1DUv", "3wYM37rR"], "roleId": "SYJLBNI7"}, {"affectedClientIDs": ["8LON0G1h", "FSaIqSNj", "MBsnmvPl"], "domain": "GE1ShK5y", "namespaces": ["3F5kfaxa", "GPHDMO3s", "IGCAxLg0"], "roleId": "enQWot5r"}], "Secret": "ETL1mdHB", "TeamID": "Ae86arM5", "TokenAuthenticationType": "mZIeATvE", "TokenClaimsMapping": {"ro0mR45K": "W9hlXf6D", "sPeyy5Je": "GainBopX", "GjZyee9f": "iGGtBN7W"}, "TokenEndpoint": "hiMi3Llr", "scopes": ["f2Luv376", "D8UNLIWJ", "ZJuzQrZd"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2VE6hUE6' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IxwA0ezL' \
    --body '{"ACSURL": "zY3FM2y6", "AWSCognitoRegion": "fQXYo6Ng", "AWSCognitoUserPool": "NUxIl4ZS", "AllowedClients": ["76xXmUmq", "2mH9ZYnP", "X6TI9TGo"], "AppId": "DLDjBd9H", "AuthorizationEndpoint": "dKq4nltq", "ClientId": "W0Cs7ivA", "Environment": "2rWOAm7Y", "FederationMetadataURL": "0La0w9xv", "GenericOauthFlow": false, "IsActive": false, "Issuer": "C9DyfswZ", "JWKSEndpoint": "702yNHCR", "KeyID": "ZfR70sfU", "NetflixCertificates": {"encryptedPrivateKey": "Wti2PnwB", "encryptedPrivateKeyName": "tMhVy3wk", "publicCertificate": "jwBBn34F", "publicCertificateName": "Ox4er3i8", "rootCertificate": "Pb8vH7ct", "rootCertificateName": "1Gcwd252"}, "OrganizationId": "uBELVog5", "PlatformName": "F87EZcrS", "RedirectUri": "mIH1SBE8", "RegisteredDomains": [{"affectedClientIDs": ["rW0hO75s", "RVF3aehm", "E3c6UPZ9"], "domain": "XLmtBSMT", "namespaces": ["a5dtwHSQ", "N2yydALo", "3ymxFYOZ"], "roleId": "APWsHDS8"}, {"affectedClientIDs": ["4FwS6Izv", "4AvBVtAo", "V746C2Rm"], "domain": "OCLRGFg5", "namespaces": ["5pmMdsCb", "kr6Po3Mc", "a0qQYXUG"], "roleId": "DYu3Owyw"}, {"affectedClientIDs": ["5xy63Lrf", "bWjB9iB8", "ZO1FE1ol"], "domain": "ZclXHUoP", "namespaces": ["w4AprQI7", "sz9ZlSms", "lwKBVb3M"], "roleId": "TW8NkbbK"}], "Secret": "4YTvpzMH", "TeamID": "NBhVFffr", "TokenAuthenticationType": "AAjgVk7w", "TokenClaimsMapping": {"bOFxBpkv": "cBRBZtaI", "yZy9nRCg": "ijFaiyLu", "JLBNP9TC": "0nBL2sCc"}, "TokenEndpoint": "jc36JW4B", "scopes": ["soL8upo8", "ZmQmIYJQ", "rkiL4U7q"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'VUhjbXoX' \
    --body '{"affectedClientIDs": ["xyv3jK3h", "6zt4qNfH", "URQu6FZI"], "assignedNamespaces": ["k4TDtDba", "DrPUqaO8", "E9Kj6PcF"], "domain": "xir3L2eG", "roleId": "Fb3Mthfc"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YrfQvXOZ' \
    --body '{"domain": "CEO6Ad2s"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'v9zo9I0e' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'MlqefY11' \
    --body '{"acsUrl": "vFDGX4ab", "apiKey": "a4MuexfB", "appId": "4UD8yjkm", "federationMetadataUrl": "EF7f0T0h", "isActive": false, "redirectUri": "rIUxLShq", "secret": "wM9q0Zyt", "ssoUrl": "rljZiXry"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oEIgoKMZ' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'kjbuFQye' \
    --body '{"acsUrl": "BAYjIDmB", "apiKey": "NKgMGqRc", "appId": "U9Tv7h79", "federationMetadataUrl": "ZwSm6YeA", "isActive": true, "redirectUri": "TUPvJWUZ", "secret": "CLD9rcyH", "ssoUrl": "nAbTWDk6"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'zvBS9s9x' \
    --platformUserId '3dSLZQXq' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'pkwfl7EN' \
    --after '9' \
    --before '84' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'w6Hr96BK' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["P0pW9YYX", "A8MYVvvc", "UFHLcZ5P"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["UsvjA9k7", "q4BaJlOn", "iVKGAakz"], "isAdmin": true, "namespace": "cbANNzIL", "roles": ["IxDBVL6W", "A2V03rrr", "dYz00yEP"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '48' \
    --platformUserId 'z0PfjS2Y' \
    --platformId 'j7sah0b0' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '42' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'JK2FnQTe' \
    --endDate '8U43iowY' \
    --limit '4' \
    --offset '30' \
    --platformBy 'nV1hB216' \
    --platformId 'b8cyudiA' \
    --query 'z5XSAurs' \
    --startDate '4ri3v9Ml' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["tXezDK4H", "c5rh9AyU", "tZfiBioG"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HJInJjad' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fWZtnH7p' \
    --body '{"avatarUrl": "L28cX6sk", "country": "0m8khuuM", "dateOfBirth": "UjzsmHCE", "displayName": "1vZL2RQI", "languageTag": "Xql01H6U", "userName": "SyfYCxS3"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LVhjF6wm' \
    --activeOnly 'false' \
    --after 'r6TSXVaA' \
    --before 'kNpruNX2' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FI9MxVrn' \
    --body '{"ban": "VPYqwUtJ", "comment": "jQf0TIWp", "endDate": "jrUDT8Wg", "reason": "9otNgp0a", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'Yt604tzI' \
    --namespace $AB_NAMESPACE \
    --userId 'qxzjnBAq' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '09iN6Ptt' \
    --body '{"context": "unBJVWqg", "emailAddress": "KKWkbHdV", "languageTag": "P9TRLqGC"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm7DJToCO' \
    --body '{"Code": "d8QCr3Yg", "ContactType": "PevIHoAS", "LanguageTag": "AOamUpPY", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'A16Kdvqv' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sLfAuekI' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 't61jtFiD' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yfaGV4Wz' \
    --body '{"code": "MlUgDoY7", "country": "0VtYetQu", "dateOfBirth": "cBMBdUnC", "displayName": "M7tUoOSf", "emailAddress": "er0rjClG", "password": "4AXA1Aqp", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'idIq3ovH' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'C4j1l7mF' \
    --after '0.1952817382053419' \
    --before '0.767655504386626' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '5OS8CFcz' \
    --body '{"languageTag": "MAf3mPgN", "newPassword": "L6kNdymp", "oldPassword": "yol7XOFf"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '5QenZPtF' \
    --body '{"Permissions": [{"Action": 83, "Resource": "OMONP0ok", "SchedAction": 49, "SchedCron": "Jb0m8U65", "SchedRange": ["sTW0Dc2e", "dtu9mEUS", "mSeBuaVe"]}, {"Action": 35, "Resource": "IDq9c6xC", "SchedAction": 0, "SchedCron": "WwmTCJY2", "SchedRange": ["PpAjDUHk", "K95WvuZa", "ErNO4kRa"]}, {"Action": 1, "Resource": "tQNtLNsX", "SchedAction": 4, "SchedCron": "X4x0jaNq", "SchedRange": ["VCbtsgZO", "u1ImMUVl", "Sa8mN4vO"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Lm5uM5Ys' \
    --body '{"Permissions": [{"Action": 98, "Resource": "rmvBtomb", "SchedAction": 20, "SchedCron": "LxNOwlUa", "SchedRange": ["vFu0yYZU", "p6miQ75R", "Qd0KgSah"]}, {"Action": 10, "Resource": "FS27NqOT", "SchedAction": 97, "SchedCron": "ur9Ez8he", "SchedRange": ["vfY1NldH", "xMylCbJs", "vdrufsq4"]}, {"Action": 43, "Resource": "SXUbQhEx", "SchedAction": 3, "SchedCron": "47JpuBnV", "SchedRange": ["lx9LT5i4", "0XIKuYEW", "LaQvdgIZ"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dbJJazPc' \
    --body '[{"Action": 98, "Resource": "UkeP6Ofv"}, {"Action": 38, "Resource": "1AQbt66x"}, {"Action": 100, "Resource": "ur5iYzXK"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '49' \
    --namespace $AB_NAMESPACE \
    --resource 'akZl5fsF' \
    --userId 'nW2lWY2d' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X1keYuvB' \
    --after 'REhGiYcg' \
    --before 'iUTJ6o71' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '7g8AVjjk' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'cP7mhTla' \
    --userId 'bdn6Xuax' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'bEU2vpUu' \
    --userId 'wgGnEtq9' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'XqZytYDM' \
    --body '{"platformId": "9hrshWca", "platformUserId": "xGi8xJco"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QhvqRFKZ' \
    --userId 'ejzRQKny' \
    --body '{"platformNamespace": "A7r7SWkT"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RMzcE9oe' \
    --userId 'LLJXkqFg' \
    --ticket '0oieuthS' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rs5c6Z6v' \
    --userId 'AW0EqRVo' \
    --platformToken 'ENjXTDJV' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CTMUZjPo' \
    --body '["UKIqxLTr", "jamNi2Yk", "QvJZvwVH"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j6i1Zke7' \
    --body '[{"namespace": "TJuGv1VM", "roleId": "j0Li9ZVI"}, {"namespace": "0zMrR5vN", "roleId": "Ih8wP3lb"}, {"namespace": "rZl6P0kk", "roleId": "CeuNL0tZ"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'GIL3HSgj' \
    --userId 'dBCPCWF3' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'Ejymir0r' \
    --userId 'CqYRXqsI' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KX9ZfLAN' \
    --body '{"enabled": true, "reason": "9DorIjM8"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fpqfnfGT' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '7K6x9Vvu' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "NO8svpKT"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after '5Ch5Wzac' \
    --before 'JuR0NSIb' \
    --isWildcard 'true' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "Zof45YKC", "namespace": "rn2qDcMk", "userId": "jVbvLmgf"}, {"displayName": "nMyWoSm4", "namespace": "bsQpOCjh", "userId": "kx1rGgZ9"}, {"displayName": "kFZwFZ0s", "namespace": "bSKMpun5", "userId": "sUrtqdte"}], "members": [{"displayName": "g8A8lltM", "namespace": "4Czu5IGl", "userId": "WVEUn7m0"}, {"displayName": "XQpkhllX", "namespace": "h19RBqH7", "userId": "2HLn9oL7"}, {"displayName": "7vMEyits", "namespace": "58TAlGq5", "userId": "k14ARnVQ"}], "permissions": [{"action": 87, "resource": "8jNmo9sB", "schedAction": 73, "schedCron": "0DHRZ5jo", "schedRange": ["m1zRzlQr", "ic7loyU1", "wY3yCQrn"]}, {"action": 49, "resource": "oaNktmc5", "schedAction": 98, "schedCron": "FDtToT0R", "schedRange": ["zLiiY1mE", "pcRFeFwY", "NblvsLJ3"]}, {"action": 14, "resource": "4mfNvdES", "schedAction": 83, "schedCron": "hgLQd3iv", "schedRange": ["7D66ynIy", "nb9rpLpt", "zOREwPTG"]}], "roleName": "ueUQ8yYF"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'd4uhrj8x' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '0pDDEIeu' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'WoRjZdJj' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "fUHXnlQX"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'jpY13AVa' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'j2UPe4JX' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'P4oOv7ao' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'nkkdfPn4' \
    --after 'LhJJGUiK' \
    --before 'axf4Og1L' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '1rJxPQ7O' \
    --body '{"managers": [{"displayName": "4dVFpF6k", "namespace": "rh7NyUwe", "userId": "vCDPEAlR"}, {"displayName": "YVaLHziV", "namespace": "PmCCKbW7", "userId": "CWmLmwPD"}, {"displayName": "SNINHQoh", "namespace": "hk9Db6Mu", "userId": "4Mtomgom"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'X7qoeoih' \
    --body '{"managers": [{"displayName": "x62lzfN7", "namespace": "uZBNE1Mk", "userId": "MxjxPgjW"}, {"displayName": "CyNgwY1n", "namespace": "PlATRgs5", "userId": "WmluLx5T"}, {"displayName": "qvZllRya", "namespace": "CNmeDFEC", "userId": "7CNW9xD7"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'XSJzbPqz' \
    --after 'Tm032BQj' \
    --before 'gCbuwBBn' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'SIuv71EU' \
    --body '{"members": [{"displayName": "ub24zKB7", "namespace": "i7rftMA6", "userId": "zOi72SWo"}, {"displayName": "96ZbnP1b", "namespace": "F0sibSp0", "userId": "PFvW4XdL"}, {"displayName": "JI0IfLuQ", "namespace": "kZcVQt8Q", "userId": "WhLAiZ2W"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'xSpg9iJ7' \
    --body '{"members": [{"displayName": "jwDbGPjU", "namespace": "Y9uWOdLe", "userId": "wpfuqWm3"}, {"displayName": "1kyGbGsm", "namespace": "ahmg2SKe", "userId": "ZVE8ddfN"}, {"displayName": "5SRntdzz", "namespace": "43TwppGU", "userId": "ZNXupDvG"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'nr7OopPN' \
    --body '{"permissions": [{"action": 79, "resource": "uwc2Kdnm", "schedAction": 95, "schedCron": "dFV0wKU6", "schedRange": ["XO33Xgch", "gjBmzCXv", "yu0pEZUH"]}, {"action": 5, "resource": "SulmQcWA", "schedAction": 66, "schedCron": "JbIoXetq", "schedRange": ["fBpb7rUV", "7ocEN4ig", "3TXKhr0Q"]}, {"action": 68, "resource": "fxk8VAOP", "schedAction": 51, "schedCron": "16wdq4Yb", "schedRange": ["8TzUWZM1", "4Ls9PmH4", "6FoGjpTb"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'U5ClTZSW' \
    --body '{"permissions": [{"action": 74, "resource": "Syp8PGqz", "schedAction": 49, "schedCron": "bje3Jz3i", "schedRange": ["zMajWcmB", "qvI8byIn", "MvbykKjK"]}, {"action": 33, "resource": "5WsJSU7A", "schedAction": 50, "schedCron": "sSwnr5g9", "schedRange": ["dzFiKCgK", "mKIYXM8P", "6FM9IovQ"]}, {"action": 59, "resource": "roXY3QHn", "schedAction": 29, "schedCron": "vYzhbb5M", "schedRange": ["GYee9qPU", "rZ6wvfPU", "9eOPOvHB"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'pqo7hEFx' \
    --body '["oX46by47", "9akkkwNF", "9vhHudAy"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '67' \
    --resource 'pMJ5oWyE' \
    --roleId 'NHhNGX1e' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'lwC7YIfc' \
    --extendExp 'false' \
    --redirectUri 'lvJPvEA5' \
    --password '9s9KjR1S' \
    --requestId 'u5hglNHB' \
    --userName 'm05mMb8a' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'wJ2z7Zlr' \
    --linkingToken '5yFuek5n' \
    --password '5YxQsW4J' \
    --username 'roaBcNkc' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'Rdsf9RvN' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '4rrzgSZb' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'JfU4seHH' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'jQyaFrvw' \
    --oneTimeLinkCode '29FM3dur' \
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
    --clientId 'uL5EL6H6' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YPTBbrMj' \
    --userId 'UJ1mDojp' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'THotJToz' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '1s05s5qz' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'XANIkZbp' \
    --redirectUri 'kQmw3KmP' \
    --scope 'zGhZj9qq' \
    --state 'CWgRj53v' \
    --targetAuthPage 'HwtlcgjL' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'yQAovhVI' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'Cvl6iK8q' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '1Tn5QUVR' \
    --factor 'R14qVLTL' \
    --mfaToken 'SuJdrmI0' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '9zyT3jJH' \
    --mfaToken 'F4uxik5l' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'OWNEgp69' \
    --factor 'QIYg8sip' \
    --mfaToken 'DCmMPAl9' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lY7VwMgi' \
    --userId 'cJ1jyj8O' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'MDo3bgfJ' \
    --clientId 'lQrrpsfB' \
    --redirectUri 'bM5zD9rT' \
    --requestId '7Kt8OK95' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'SlJ0ienR' \
    --clientId 'tkS7MJ5G' \
    --createHeadless 'true' \
    --deviceId 'TYjDl6CG' \
    --macAddress 'p8vzI0l6' \
    --platformToken 'K6vdT4Rw' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'hmdQra55' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'CcbSV8ck' \
    --code '81kg9Dxa' \
    --codeVerifier 'iBsXcJI8' \
    --extendExp 'false' \
    --password 'T4npk97q' \
    --redirectUri 'rQ4DcXOK' \
    --refreshToken 'dLERpqgQ' \
    --username 'C0JEqyWe' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'rV0WQnU9' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'BJJc8lvF' \
    --code 'vjuoV0TL' \
    --error 'HnFzKSzh' \
    --openidAssocHandle 'a4CNUAAy' \
    --openidClaimedId 'IVmIvzZA' \
    --openidIdentity 'On72Grd3' \
    --openidMode '8kQzvgUc' \
    --openidNs 'U1dAHaCJ' \
    --openidOpEndpoint '9pIm3W7c' \
    --openidResponseNonce 'jrLTX7OT' \
    --openidReturnTo 'HjxAw0MW' \
    --openidSig 'FzLBwbnI' \
    --openidSigned 'lotpoeCt' \
    --state 'NmivXHto' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'mwhWoEfi' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'TYCNsxGa' \
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
    --clientId 'vDahDDdh' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'owp4QOts' \
    --body '{"platformUserIds": ["OAM6ap0f", "7hxBqv2p", "OdBgeSa7"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pAq6pltI' \
    --platformUserId 'CcAyK02W' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'tdEIBxzL' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'oTHH9cFb' \
    --limit '8' \
    --offset '48' \
    --query 'u7Jm113y' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "UsX51QIm", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "7CmCuUMd", "policyId": "Evzck0og", "policyVersionId": "sVyjfcfc"}, {"isAccepted": false, "localizedPolicyVersionId": "lBBiqVSx", "policyId": "kVeK0pe7", "policyVersionId": "ucX6yfmH"}, {"isAccepted": false, "localizedPolicyVersionId": "v6YgPX4g", "policyId": "uCKJBeSL", "policyVersionId": "sd3wacLX"}], "authType": "azBPCMJP", "code": "Tqx22caY", "country": "UnM17SKV", "dateOfBirth": "aWAlcCJY", "displayName": "Fzxc3v1S", "emailAddress": "pgJ3N4S0", "password": "nwTbIACT", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'o5Q6FhLu' \
    --query 'sHgW0JdN' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xwRSGRhT", "ynQBcwjm", "6LNCb4XH"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "HCpNeu5z", "languageTag": "vOeQpURW"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "NIomKNGt", "emailAddress": "W5oyYH3h"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "SSrb4Ess", "languageTag": "sxAC5RIg"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '65YIAwj8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'IAuIZlig' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "86k4wxP0", "policyId": "wmx7iLyu", "policyVersionId": "SIE6n02z"}, {"isAccepted": true, "localizedPolicyVersionId": "4N5zPCeq", "policyId": "M9M3LGdH", "policyVersionId": "UrF91Rdc"}, {"isAccepted": true, "localizedPolicyVersionId": "EUejE841", "policyId": "CpDeDm25", "policyVersionId": "edCXygCI"}], "authType": "EMAILPASSWD", "country": "Hb03J5rH", "dateOfBirth": "njndgOo4", "displayName": "NkSeaVxE", "password": "6nbQdC2N", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "xmKOg1Yg", "country": "q4sn69Ye", "dateOfBirth": "aip6N4kK", "displayName": "oMyACn8n", "languageTag": "i3HzV0Y2", "userName": "Xc1HY4yp"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "P9tffmta", "country": "4U2mrfnF", "dateOfBirth": "soEhaMtH", "displayName": "KNSC18ci", "languageTag": "aLgIFi6K", "userName": "sTGu5PxT"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "kvkGgVxq", "emailAddress": "ERVyp3EF", "languageTag": "D4u38ceU"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SJbvGY3Z", "contactType": "8FDFCByr", "languageTag": "4bChc3yo", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0YTqML08", "country": "2Jb9QjuZ", "dateOfBirth": "VvddnIWL", "displayName": "GG2P4aIW", "emailAddress": "J5EkdwKs", "password": "IPs3xJNq", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "GuTRPI04", "password": "WnzH0t9y"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "nxjOOfl3", "newPassword": "RbRY0ezG", "oldPassword": "3W1OArkX"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'THuXxjEy' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Xt3IWCUT' \
    --redirectUri 'lIHWa96z' \
    --ticket 'j4vVB2Xo' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'E6dg2Fum' \
    --body '{"platformNamespace": "wkBbhCIG"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uZw30ujr' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dcSics9f' \
    --ticket 'xySVCCU2' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'K5YWDEQZ' \
    --clientId 'kA6HuCbD' \
    --redirectUri 'cC5cVxVX' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Jiovzmvl' \
    --state 'jjMTFrFU' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "r0ZY2q25", "emailAddress": "KyhIHmNE", "newPassword": "RfvE6Lye"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VfhjEWtg' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'd21dHcv7' \
    --activeOnly 'false' \
    --after 'ZReKXQdf' \
    --before '5ECznmTx' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '08xAL4PI' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CySlr8SQ' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '3Dd3BgCf' \
    --after '0.6456852430777275' \
    --before '0.3408765875037443' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5YmrIvaz' \
    --after '9ZU4b7Io' \
    --before 'JPmEgLRk' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Sav65uzE' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'FX6jeYbi' \
    --body '{"platformId": "9TGBfj70", "platformUserId": "bwvZbIDn"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'MmlCg2S3' \
    --body '{"chosenNamespaces": ["Al6vLmca", "IlHEYOmu", "a3ZL2UIH"], "requestId": "KFpUU33H"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BmOj9Ueb' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LoKZ2f0E' \
    --password 'm2Zbn3aL' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'ZSnKIpIR' \
    --before 'qlTuba7C' \
    --isWildcard 'false' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'm1ppfhxw' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '76VYxgnX' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["bZBLKQJ7", "Y6TZoD7V", "mXJSmL08"], "oneTimeLinkCode": "HCD5Qp0a"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "IbEECzEW"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'YHWKQxSd' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'Yhoe1u8T' \
    --code '23EtOeyl' \
    --error 'btA0FMfh' \
    --state 'Ik9jTx3X' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'LR0df3Lc' \
    --payload 'xuspEnlS' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'oXw0ftun' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'oty9yO1d' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tVxyBaBJ' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'PF8SFequ' \
    --endDate 'RnW1LIQM' \
    --limit '82' \
    --offset '20' \
    --startDate 'yM3UhIXK' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Qrdpmf50' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "yqMeNkZo", "deviceId": "QfkVgkGD", "deviceType": "jftAv2jp", "enabled": false, "endDate": "KqEpdUaj", "ext": {"hl48lVyj": {}, "nM0wv2Yg": {}, "CMAb5FJz": {}}, "reason": "Rjd12j5D"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '4pUExskI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'LYLliwWK' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'V5TG4L5y' \
    --startDate 'Z4tIKDcN' \
    --deviceType 'T2jD1WcF' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'kEykJtgV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'WMeCalJf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'PIMiTHOT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'nQSyM6Ab' \
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
    --body '{"userIds": ["jSD0pzMU", "LXkKersI", "vISASuYY"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Qiqmcryo' \
    --body '{"avatarUrl": "QbWSF7F5", "country": "DXELbWfL", "dateOfBirth": "qWYEdhMX", "displayName": "4plxrtZq", "languageTag": "73r8xkan", "userName": "GIKBDIpL"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ey3LMtRf' \
    --body '{"code": "QGT3YPx0", "emailAddress": "nniq66Lu"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LesxcMaq' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '6ipBjh4P' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'tJhGspJR' \
    --body '{"assignedNamespaces": ["tM8qlbse", "l6cXzgkK", "y9qFZPLZ"], "roleId": "zWpPBAJJ"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HaWHMhFp' \
    --body '{"assignedNamespaces": ["DIF0Kuqi", "tVjquDTi", "irDMw1AI"], "roleId": "DZ2ue8Ja"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '76IgbLfn' \
    --body '{"assignedNamespaces": ["7LbXgWV9", "yAtw8IlA", "GZxNLLIl"], "roleId": "uzoHL0Qe"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '6' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "K7u8kkf3"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'xwFyC0oS' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'p9R7FhnQ' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'trpsOXMK' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "1vqUzsw0"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'hBeri4Ji' \
    --body '{"permissions": [{"action": 35, "resource": "RdjnrcUd", "schedAction": 96, "schedCron": "o96P5You", "schedRange": ["Ujq492CT", "4drmETWk", "6t0KjKlh"]}, {"action": 52, "resource": "F4uOsydw", "schedAction": 76, "schedCron": "iaAW2t9I", "schedRange": ["iDRBGv0i", "KhtBmYsH", "J27QJe0g"]}, {"action": 65, "resource": "0MVyJxOy", "schedAction": 69, "schedCron": "yG4KnZeR", "schedRange": ["jihv9EMW", "mRIEa5ax", "2PBMZzwe"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'oMofY4a9' \
    --body '{"permissions": [{"action": 75, "resource": "gPOsXVR9", "schedAction": 4, "schedCron": "YnuPziZ1", "schedRange": ["YiGK22qR", "FsZA71Rx", "MVAPD8eP"]}, {"action": 93, "resource": "H1fOrp8F", "schedAction": 8, "schedCron": "R7aKSPZ2", "schedRange": ["junQRIBi", "e6uY5dQh", "oBQuUZWB"]}, {"action": 16, "resource": "lJVlI5X1", "schedAction": 55, "schedCron": "xEXGWgA7", "schedRange": ["A3vi8N8A", "3MeyCOJs", "EZ9qmcRT"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'j9JcKPbi' \
    --body '["uY4kZTl8", "0sLkAR5M", "93yCs3xq"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'G4CIjRVo' \
    --after 'TDF2wwCU' \
    --before 'UlziLcrS' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'T52K512f' \
    --body '{"assignedNamespaces": ["HOM0ueXo", "oSKBfALq", "5NU4k3mL"], "namespace": "7xToPlUz", "userId": "i5yAyhYS"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '4QhrTXsm' \
    --body '{"namespace": "XLnvhzv3", "userId": "awcdvJmC"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "HnH9QZBQ", "country": "AjkkZSqA", "dateOfBirth": "pd6bmN8y", "displayName": "bn7Do5wa", "languageTag": "Pb2EjkLk", "userName": "K8IiOCVH"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '71G3xnxL' \
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
    --code 'mVqglQkC' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'ZKWzkIXJ' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["0X6Dm3Qk", "5TUMxAdK", "lIbLUoyN"], "emailAddresses": ["ioUDrtiJ", "Y3WJhN5A", "ic25kVQ1"], "isAdmin": false, "namespace": "fC7xM1MX", "roleId": "pXl9wLR8"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hUcXNpC4", "policyId": "JXnspYzq", "policyVersionId": "Dv7Wg9UN"}, {"isAccepted": true, "localizedPolicyVersionId": "bvA4YJKV", "policyId": "xxrBa2Ux", "policyVersionId": "g9bnEGvk"}, {"isAccepted": false, "localizedPolicyVersionId": "nVAAhx0L", "policyId": "JOhtOwpw", "policyVersionId": "7eHjIHpl"}], "authType": "EMAILPASSWD", "country": "tNdl4lMX", "dateOfBirth": "bRYQTwHV", "displayName": "8Iczswc8", "emailAddress": "1gwKJGvq", "password": "2Tr8qdjC", "passwordMD5Sum": "N7FFVCLI", "username": "3JGlQv5j", "verified": false}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "TSjejnIF", "policyId": "tTus4hpa", "policyVersionId": "bHS1tCtp"}, {"isAccepted": false, "localizedPolicyVersionId": "rJccyGrU", "policyId": "W6zy4r9r", "policyVersionId": "OOYgoW2Z"}, {"isAccepted": false, "localizedPolicyVersionId": "cNTGEMeX", "policyId": "9blbBFFp", "policyVersionId": "hPp1AtFh"}], "authType": "EMAILPASSWD", "code": "DVvAmhUs", "country": "GyVhBf8J", "dateOfBirth": "xYeOjU6B", "displayName": "5NM9CxkL", "emailAddress": "p34g849F", "password": "pZrCNAyX", "passwordMD5Sum": "8KUZDfk7", "reachMinimumAge": false, "username": "UeeVXW1P"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'l1rvDtTa' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "aLto4uZr", "policyId": "ClaccoFX", "policyVersionId": "NeIgtH3T"}, {"isAccepted": false, "localizedPolicyVersionId": "OQnK2B1L", "policyId": "L36NnjXp", "policyVersionId": "4RYoKocW"}, {"isAccepted": false, "localizedPolicyVersionId": "eKxlmDrw", "policyId": "ln2aqzLT", "policyVersionId": "U2B7sksj"}], "authType": "EMAILPASSWD", "country": "DZBw6OZw", "dateOfBirth": "OENIbNji", "displayName": "CNe49NkE", "password": "kiLC3Wyp", "reachMinimumAge": true, "username": "ehV69Inh"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "6D4lS9Wl", "country": "Z6Wcirxo", "dateOfBirth": "zgPCWEdo", "displayName": "gwtdzQcq", "languageTag": "LxSGObgm", "userName": "6M9O45m4"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "x1EA14nX", "emailAddress": "wcheb3fB"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "RydVcHRE", "country": "D6eCto5O", "dateOfBirth": "fQVilMrc", "displayName": "Omf8NrGg", "emailAddress": "zWX6X0qN", "password": "NLEFuOrI", "reachMinimumAge": false, "username": "HPxHSSpv", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "oFbFAr39", "password": "l0hnXnFe", "username": "Uc5tQPbZ"}' \
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
    --code 'iv1sB6yR' \
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
    --code 'XV5FTuoy' \
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
    --factor 'bPBKuWPM' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE