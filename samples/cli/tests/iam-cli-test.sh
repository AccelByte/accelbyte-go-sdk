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
    --body '[{"field": "m3RXPdpO", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "blockedWord": ["ROjxNpej", "dmupurXp", "vtlEm9jF"], "description": [{"language": "4iavUIss", "message": ["iwGBmHg3", "VuCIkDhA", "gO8YDKkr"]}, {"language": "hb93wO5K", "message": ["zVmwLXRd", "n6RY1xsj", "nrTQHkzy"]}, {"language": "El9SeIRQ", "message": ["F3GIsM1g", "tzA3e0RI", "kcA9r3Rq"]}], "isCustomRegex": true, "letterCase": "WBmKZNkO", "maxLength": 40, "maxRepeatingAlphaNum": 65, "maxRepeatingSpecialCharacter": 49, "minCharType": 18, "minLength": 84, "regex": "8Y34liST", "specialCharacterLocation": "9iq1YW2u", "specialCharacters": ["5QIPcQA3", "BLNz2MXY", "05615FcP"]}}, {"field": "XvJ1WSmV", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["uSdDwG8g", "Y3cFB1XC", "lcxltcJg"], "description": [{"language": "jl4uzKZE", "message": ["VoZBdt8Q", "YZOH6IuA", "IzzPOjqG"]}, {"language": "lRCmYGK2", "message": ["qK2bgeXA", "MyD1FCxl", "Vt5Y78c7"]}, {"language": "VEwibc0n", "message": ["rXXJbG72", "TK4Ryan7", "nTdcvomh"]}], "isCustomRegex": true, "letterCase": "bD5MCiYA", "maxLength": 22, "maxRepeatingAlphaNum": 39, "maxRepeatingSpecialCharacter": 47, "minCharType": 84, "minLength": 6, "regex": "Ev5FtsSM", "specialCharacterLocation": "F7BA9Ch9", "specialCharacters": ["9Cf7wqG3", "mfHM76Sa", "W38fwNyA"]}}, {"field": "oFUT9WLm", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["CVQZGOm8", "nKfrkjTC", "EkVqoRtI"], "description": [{"language": "Y6Xv4Ce8", "message": ["9Dx1MdOU", "iHOQHrKu", "Ne0uGI1q"]}, {"language": "vo1HMLtQ", "message": ["w3LzgNuj", "QFcUcZ6R", "Ck5XiNge"]}, {"language": "Y1PPMfzO", "message": ["w4BOh9W6", "RroJ3JgL", "Bziit1QA"]}], "isCustomRegex": true, "letterCase": "D5QVPXUP", "maxLength": 1, "maxRepeatingAlphaNum": 15, "maxRepeatingSpecialCharacter": 95, "minCharType": 28, "minLength": 84, "regex": "oysngHIm", "specialCharacterLocation": "WnqVpZKO", "specialCharacters": ["1PphCQut", "ALBhA6H6", "YjHLcwWd"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'ofzN5aqj' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'kCMQoObs' \
    --before 'mKrfLxxO' \
    --limit '37' \
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
    --body '{"ageRestriction": 18, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'LBY2nIm6' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 97}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'gRDvAdxu' \
    --limit '80' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "h2vAaVIH", "comment": "OZay2dsl", "endDate": "WaJVepSw", "reason": "z0ADNJk5", "skipNotif": true, "userIds": ["88Giw6UF", "MunZZWYH", "sUKsdFTx"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "7oquyxoH", "userId": "FSkq0uxm"}, {"banId": "wmDhp4ag", "userId": "xFvbWbDK"}, {"banId": "zstGaE43", "userId": "5ueEmkPH"}]}' \
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
    --clientId 'nsfdR0xR' \
    --clientName 'zKVk9HcU' \
    --clientType 'PQLJvpyT' \
    --limit '81' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Vh8Hya8q", "YggCJeNQ", "t5JtealQ"], "baseUri": "6ve1MnL6", "clientId": "7jdyKZJw", "clientName": "ipUR3ei7", "clientPermissions": [{"action": 17, "resource": "wa23T7RX", "schedAction": 18, "schedCron": "Up8o4ooE", "schedRange": ["e9Kc6Zx2", "SzIzjftG", "8VerYUdi"]}, {"action": 3, "resource": "7v9nb05P", "schedAction": 94, "schedCron": "3k5Enwjl", "schedRange": ["b5NdUPEe", "X6IK8QCE", "VU4jnhT6"]}, {"action": 49, "resource": "0tVZlydg", "schedAction": 11, "schedCron": "83zeJyAk", "schedRange": ["dPTTnVUU", "pyz2UDzu", "Js1n5oi6"]}], "clientPlatform": "ysTjpcff", "deletable": true, "description": "L9apRAXU", "namespace": "LTQGcC2H", "oauthAccessTokenExpiration": 58, "oauthAccessTokenExpirationTimeUnit": "rhQZsSYG", "oauthClientType": "8lFfBXjF", "oauthRefreshTokenExpiration": 90, "oauthRefreshTokenExpirationTimeUnit": "tQ0z4Cah", "parentNamespace": "rtV83sxp", "redirectUri": "vqgsTtNM", "scopes": ["hzW6xEQP", "b0kDRqsH", "YRVemU3Y"], "secret": "eb6BAhGV", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'Mgu2To7g' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '7TpMSmkR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'UjhDmGTl' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["zQHE73BI", "xQotIT3I", "R64M4jDc"], "baseUri": "gFZl7Ut9", "clientName": "7gSxS1Kr", "clientPermissions": [{"action": 54, "resource": "E1xokt3n", "schedAction": 15, "schedCron": "w5HlRkLL", "schedRange": ["c20Py4AV", "GRuFkYUd", "Bi1EQB1V"]}, {"action": 15, "resource": "e9Ql50Jd", "schedAction": 35, "schedCron": "j7OPMFS0", "schedRange": ["ROIDOqNA", "PlNbZDVP", "Jxa8doTK"]}, {"action": 44, "resource": "ZkIlFlM4", "schedAction": 80, "schedCron": "VfLJ5uph", "schedRange": ["0Okd9rpW", "MeftAzqK", "qL5IpTmN"]}], "clientPlatform": "OClPhRvP", "deletable": true, "description": "IkuobLCj", "namespace": "9fZugorJ", "oauthAccessTokenExpiration": 35, "oauthAccessTokenExpirationTimeUnit": "0WxO4Gdo", "oauthRefreshTokenExpiration": 84, "oauthRefreshTokenExpirationTimeUnit": "4dnKHMKs", "redirectUri": "rk372ee0", "scopes": ["bI2kD2Ut", "5XyB4Vwg", "UPWbYRNc"], "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'm6GO1Wz6' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 13, "resource": "EBgwhaKJ"}, {"action": 56, "resource": "BRKB7nh8"}, {"action": 24, "resource": "qTICg2xK"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '7yzpQ80H' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 59, "resource": "kXd1PSoX"}, {"action": 91, "resource": "sP1T5qTA"}, {"action": 14, "resource": "uBqI1Sml"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '1' \
    --clientId 'W4pAHxTU' \
    --namespace $AB_NAMESPACE \
    --resource '2SbJ7Dxx' \
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
    --limit '57' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6P1lod3z' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UcaTqQln' \
    --body '{"ACSURL": "KiULWaXl", "AWSCognitoRegion": "LoHQ0rHT", "AWSCognitoUserPool": "sheuPati", "AllowedClients": ["H8npGKpm", "Uc2adIdY", "VVlmsD0F"], "AppId": "NfKHiXZ2", "AuthorizationEndpoint": "2G5ZTiRC", "ClientId": "QVlLwZu2", "Environment": "G8uL4IIQ", "FederationMetadataURL": "NsxiVovf", "GenericOauthFlow": false, "IsActive": true, "Issuer": "Qe45zXwn", "JWKSEndpoint": "Z5H6ZrB8", "KeyID": "8i0BUphE", "NetflixCertificates": {"encryptedPrivateKey": "xGfRUhhp", "encryptedPrivateKeyName": "W0r0VthS", "publicCertificate": "khAWFqgK", "publicCertificateName": "AvFOE1oY", "rootCertificate": "RwJOsezM", "rootCertificateName": "bJDjxTJU"}, "OrganizationId": "jouyGwMC", "PlatformName": "3VhnftHN", "RedirectUri": "TjolgmyK", "RegisteredDomains": [{"affectedClientIDs": ["x2C5D75T", "DSX1Punf", "YpYdqi5p"], "domain": "9ECaqEo4", "namespaces": ["O1AH6hW8", "h28dcy0a", "89n5906T"], "roleId": "098j3YXm"}, {"affectedClientIDs": ["xeFzJeJ7", "mgBCkfmy", "OGI85yGe"], "domain": "XhZYXIv5", "namespaces": ["Yw9BGoDX", "Vz17cuOF", "HQQPkmq1"], "roleId": "p53aN3ax"}, {"affectedClientIDs": ["sVerEc4B", "APGIGkBx", "HYogaybU"], "domain": "wSkbRjJg", "namespaces": ["Ymqdm5eY", "dSjVQaZ0", "m8c2Cx9U"], "roleId": "XeMZDs6v"}], "Secret": "f912D4bP", "TeamID": "5CCi6YLZ", "TokenAuthenticationType": "jcsuaqxz", "TokenClaimsMapping": {"jYp0VJax": "OgrLu883", "FmknVJZ7": "45qR6NET", "BUWf9B9E": "87u9G6Kz"}, "TokenEndpoint": "m2PEZGmY", "scopes": ["QL4pULQl", "he7GckTJ", "2Y6gAOAT"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'X61R82d1' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TeYyQevG' \
    --body '{"ACSURL": "FNcKH98Y", "AWSCognitoRegion": "JOFEQ6vm", "AWSCognitoUserPool": "VJwr7tWF", "AllowedClients": ["STyersEy", "avTTLVUT", "A3cacVcl"], "AppId": "NEPkIGlF", "AuthorizationEndpoint": "tMAR0Dp3", "ClientId": "ohJAyQ8M", "Environment": "FGak3XA0", "FederationMetadataURL": "kRuL6in7", "GenericOauthFlow": true, "IsActive": false, "Issuer": "wn6Pna9d", "JWKSEndpoint": "wBCUoAVP", "KeyID": "m8rahH9P", "NetflixCertificates": {"encryptedPrivateKey": "PvXpMUPG", "encryptedPrivateKeyName": "2x1caSGj", "publicCertificate": "QGCJd2pN", "publicCertificateName": "RjpVJVPU", "rootCertificate": "mVJ7QCJw", "rootCertificateName": "HmiwQGw9"}, "OrganizationId": "Jq6Z2UgG", "PlatformName": "3SPMJySu", "RedirectUri": "FBJZmM0I", "RegisteredDomains": [{"affectedClientIDs": ["evBfWjTh", "kX8Dl4Mf", "ujmFtJua"], "domain": "GZ9HV9WG", "namespaces": ["Tm025eMB", "bmVYqPl4", "Lo1uZ9yB"], "roleId": "BXx5Uyht"}, {"affectedClientIDs": ["xrySfYzv", "yyJKpmwc", "FiyoFBT6"], "domain": "oPaUR2DF", "namespaces": ["LF1ue8Vt", "gxk0oZKY", "u7Bw8roA"], "roleId": "gBW4obzE"}, {"affectedClientIDs": ["VzJYHh65", "PdYnzSUE", "UszSTU2e"], "domain": "pqDCm1S6", "namespaces": ["Yg6YFwpp", "o1z3lq8S", "skT2Kv1Y"], "roleId": "5bNwwPcs"}], "Secret": "CoJMy1gy", "TeamID": "eFrywY3o", "TokenAuthenticationType": "3hKHmw0m", "TokenClaimsMapping": {"wZv892AS": "SWpBG9XL", "O4ogHdtk": "AViDHH8C", "tBrq6L9w": "rNWkLgX7"}, "TokenEndpoint": "ZB7OsiX7", "scopes": ["W3Bx45Zx", "z8gcuHkU", "Tzb6TcGx"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'R1Eruqk0' \
    --body '{"affectedClientIDs": ["8KODuDPO", "NX3XuKrz", "rDTA3rrP"], "assignedNamespaces": ["5cJWmMg2", "TSnE2mPu", "5qFn33R7"], "domain": "q1iVfPKM", "roleId": "vlV4VLjy"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'liT1SmnZ' \
    --body '{"domain": "9xakX5lT"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'P5BAI5jw' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'GeWsuxYT' \
    --body '{"acsUrl": "mXvhHheM", "apiKey": "RVFsyErH", "appId": "NTwWHBqa", "federationMetadataUrl": "s2lrThIy", "isActive": true, "redirectUri": "JpXa7KX0", "secret": "aZRRuRLh", "ssoUrl": "wcpNGetc"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dP4OETXh' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'bEpHPIRV' \
    --body '{"acsUrl": "kFPjYU7M", "apiKey": "wn2fZqwm", "appId": "5BVGYDTt", "federationMetadataUrl": "6RMPjHIJ", "isActive": false, "redirectUri": "N7GVFgUZ", "secret": "BQcSXVY2", "ssoUrl": "TDT8nBoi"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Sgzn7xQ0' \
    --platformUserId 'LaJkntkQ' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'BIAoyody' \
    --after '7' \
    --before '14' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'YeEJhGcC' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["TXR81tZS", "zTM4eCcw", "IhV4N8E7"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["wy3Bg57I", "YBaOGrsR", "lfePZnvu"], "isAdmin": false, "namespace": "J86W9lA3", "roles": ["ZRSvN00F", "VUBANlSb", "iToB3AV2"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '51' \
    --offset '8' \
    --platformUserId 'X2bwrBdM' \
    --platformId 'YOHW1sl8' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '95' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '6j3Acgw7' \
    --endDate 'l3TGhhoM' \
    --limit '9' \
    --offset '19' \
    --platformBy 'Jr4siLpv' \
    --platformId 'GSmCKGrM' \
    --query '1R7HGCZB' \
    --startDate 'fYdzE0w2' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["bHSY2zYy", "2jyrscbF", "t9WGQJLX"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pmKOLRzU' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ornl0KqH' \
    --body '{"avatarUrl": "Cs5g5RIZ", "country": "eQXl9Svw", "dateOfBirth": "CpuH1k8O", "displayName": "yplXb2aI", "languageTag": "9wZFwNtj", "userName": "7fmyUGt9"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fQIiARYl' \
    --activeOnly 'false' \
    --after '3QUKgXlj' \
    --before 'NVcfLWhx' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RAtjiPq8' \
    --body '{"ban": "w4htGefA", "comment": "LnST6fDI", "endDate": "Gnc9zum7", "reason": "WvsuYxhk", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'xFPTVsnL' \
    --namespace $AB_NAMESPACE \
    --userId 'WEtNeDmq' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Q6fZlRIb' \
    --body '{"context": "8IXk0c1v", "emailAddress": "1nFUknoL", "languageTag": "rD0ZEbSN"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '3q08yyzE' \
    --body '{"Code": "3MNVffap", "ContactType": "E0r2GwPN", "LanguageTag": "rSRJeyZQ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'PV6jX8nJ' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DRn3Dmqy' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BT0Ng1Nh' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'I18BnYBm' \
    --body '{"code": "9ArBKRuu", "country": "0e86blgQ", "dateOfBirth": "rzUBD41X", "displayName": "sg612GOV", "emailAddress": "Jxe8oYvR", "password": "wKYeDepV", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '4Es6DDlz' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vd87v0T3' \
    --after '0.03749682226655193' \
    --before '0.33821570225339903' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZJ96gixq' \
    --body '{"languageTag": "uYniZot6", "newPassword": "2EWyuluH", "oldPassword": "jxc5Qrhu"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ejxbd5dg' \
    --body '{"Permissions": [{"Action": 70, "Resource": "KhXHZzNR", "SchedAction": 47, "SchedCron": "3Quv08oO", "SchedRange": ["JxDOpj5a", "shexnR9L", "CVp3e8DO"]}, {"Action": 54, "Resource": "jnUpCMSR", "SchedAction": 21, "SchedCron": "qpFiewBN", "SchedRange": ["iIdwQ5nU", "xwUouQ0q", "eMPPVYOC"]}, {"Action": 53, "Resource": "lPCMwTzZ", "SchedAction": 56, "SchedCron": "tXXnf5OL", "SchedRange": ["xqUBEygb", "brNQwHm7", "40qUDsHY"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ux6zi8qp' \
    --body '{"Permissions": [{"Action": 44, "Resource": "gA3gKzEZ", "SchedAction": 58, "SchedCron": "JCwtpT48", "SchedRange": ["6ZQRqrkl", "ts0U2Gsp", "9uGK0D9c"]}, {"Action": 41, "Resource": "E8QYJVg8", "SchedAction": 47, "SchedCron": "8It1fV1p", "SchedRange": ["AByDsrZG", "H4kahleH", "tqgSvAzH"]}, {"Action": 38, "Resource": "XAWi044M", "SchedAction": 52, "SchedCron": "4XoUhn0t", "SchedRange": ["ILhG1Pde", "rvA4hdqO", "zc7oqSzm"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '5ZHSdDz9' \
    --body '[{"Action": 63, "Resource": "jvQaO53w"}, {"Action": 57, "Resource": "pOYLhJfp"}, {"Action": 99, "Resource": "hec7SPYD"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '77' \
    --namespace $AB_NAMESPACE \
    --resource 'FoQqU3KY' \
    --userId 'LvXxjyNK' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TeUWC7UL' \
    --after 't82ow8UG' \
    --before 'DiSQWBQj' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'nQHWHgRl' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'fxDPkuJw' \
    --userId 'pfHB3PtI' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'mBouNu9D' \
    --userId 'R7OVKkEi' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '8IGyH7IE' \
    --body '{"platformId": "gjPnRMHe", "platformUserId": "lLNbci4r"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'p0IJQaQ6' \
    --userId 'KNgUVYBr' \
    --body '{"platformNamespace": "6Uct4Qt8"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BaObPtJz' \
    --userId 'GjyZIiBN' \
    --ticket '84MA9Zgg' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'k6lVyoxV' \
    --userId '49ldEbgN' \
    --platformToken 'TaNi5EdJ' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WaT2Qth5' \
    --body '["0vrT1Qsr", "kHTw9or4", "pdlKuzBF"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TDmHvZr5' \
    --body '[{"namespace": "Fq46tlIo", "roleId": "XXLC3Orv"}, {"namespace": "8hXMJibA", "roleId": "Kg40MmBM"}, {"namespace": "5A3rbRTY", "roleId": "H69x6tc1"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'S0wb4P8x' \
    --userId 'Wqu9vfQ3' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'c6QS8IAo' \
    --userId 'YksUhHty' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RE4Lt2oE' \
    --body '{"enabled": false, "reason": "6C6hGlT3"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EYijDRJI' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '4BOIH9lS' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "Bc6f35dB"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'nvQaUgs6' \
    --before '2O6Him5y' \
    --isWildcard 'false' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "HDPzqSlH", "namespace": "vGlP5rpn", "userId": "BKdV3tMT"}, {"displayName": "g2XdiwHw", "namespace": "3ay2FOTP", "userId": "mOnx9D6u"}, {"displayName": "abPKqftW", "namespace": "XBGHnkzZ", "userId": "ykYIIhme"}], "members": [{"displayName": "rCyrNKLx", "namespace": "NPlgzn9m", "userId": "Z0Y83QrQ"}, {"displayName": "uC8PsJL7", "namespace": "qfK6HgiK", "userId": "NIyA4lPL"}, {"displayName": "zgZMirxU", "namespace": "QICoySOg", "userId": "IGTGLOeh"}], "permissions": [{"action": 95, "resource": "oEM0AUQw", "schedAction": 59, "schedCron": "JRzkqOVb", "schedRange": ["QcIjAwj7", "11woGcUH", "Nf8w6EyS"]}, {"action": 63, "resource": "QIAzVFB4", "schedAction": 21, "schedCron": "cpydCq0l", "schedRange": ["1yt99cBC", "8567LfTe", "eP1soS5j"]}, {"action": 46, "resource": "WanMecQr", "schedAction": 10, "schedCron": "YuOFR66K", "schedRange": ["YCusKuGH", "JyDhB4NG", "jSszhobo"]}], "roleName": "wlqzI6GD"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'pulJIoNN' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'rpzJPMOL' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'ZH1Lh5sc' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "Un9rZR24"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'pqzxKW7p' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'Oucltu0Y' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'oyOeFxvq' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '01JEqK9F' \
    --after 'SduHs5L0' \
    --before 'cfPGPFmo' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'P386KGzK' \
    --body '{"managers": [{"displayName": "cpjqxPnP", "namespace": "czFbaKwj", "userId": "5Ak0IxAU"}, {"displayName": "pfCPXvG5", "namespace": "jwBYxJ76", "userId": "hui2jtz8"}, {"displayName": "dLLyBdZA", "namespace": "4GxdKRAP", "userId": "GZ1pAZAu"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'GbKU6blL' \
    --body '{"managers": [{"displayName": "Q6sqatUq", "namespace": "HRo7jAA6", "userId": "eUpyrkQS"}, {"displayName": "DO7wiT6b", "namespace": "pRRIqjGs", "userId": "jSDPnMM6"}, {"displayName": "vli4lU90", "namespace": "CThFiCOH", "userId": "VuSYnR4i"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'xlaZsUjg' \
    --after 'rZRGBBtp' \
    --before 'qGJRolvg' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'pXS5O1pA' \
    --body '{"members": [{"displayName": "08oDUguw", "namespace": "4wPWdqe1", "userId": "IJvu42K9"}, {"displayName": "nzrzR8Kx", "namespace": "rzfQQwHF", "userId": "UFhqWQlV"}, {"displayName": "I9R8Cal2", "namespace": "FfTKH1Gf", "userId": "gpJ7Rnr9"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'zvDRbW11' \
    --body '{"members": [{"displayName": "5Wab2uJ0", "namespace": "nR79SKtv", "userId": "wfJWEUdS"}, {"displayName": "Mr9cT0Vd", "namespace": "bSpZR4Qd", "userId": "gqIUnoGZ"}, {"displayName": "dBbJ5353", "namespace": "4RyJ7lBH", "userId": "UByY3lq3"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '1WZYvD3y' \
    --body '{"permissions": [{"action": 57, "resource": "gYJqDyCK", "schedAction": 79, "schedCron": "s405oFlt", "schedRange": ["9OG4Fbur", "iFRwqyQ6", "2rgaUGrX"]}, {"action": 22, "resource": "bVV1qxKX", "schedAction": 58, "schedCron": "a2Yjwh7C", "schedRange": ["dUFkp4Dw", "Cb33N4yF", "C2i6koSF"]}, {"action": 7, "resource": "tYjRJ8FH", "schedAction": 64, "schedCron": "ghB3VECt", "schedRange": ["S2ES9nlk", "m2YUk1Sw", "BjkoxQkG"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'KbSEAFD8' \
    --body '{"permissions": [{"action": 73, "resource": "2anUWIZ5", "schedAction": 40, "schedCron": "IaEigS3n", "schedRange": ["qg9R19dH", "PsM4jAi1", "qAh9EGtS"]}, {"action": 46, "resource": "rAuaTcIu", "schedAction": 92, "schedCron": "xyODWgAq", "schedRange": ["aO34oIWq", "pYWScYxF", "KgLQuQTD"]}, {"action": 65, "resource": "YZZ3aaPf", "schedAction": 75, "schedCron": "N18Xk1L8", "schedRange": ["rerMBHkx", "eSdv7XHB", "MdRYD1hl"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'p7rVXZH3' \
    --body '["NsUgcLzH", "ieMZK755", "EHPQKAV1"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '91' \
    --resource 'E9iQRr1w' \
    --roleId 'bBMsQBmC' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'I1pxvBmv' \
    --extendExp 'true' \
    --redirectUri 'd5LOxKZj' \
    --password 'Q5f0ycXk' \
    --requestId 'WPEUnaFV' \
    --userName 'UNkjvMmx' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'tqKur8ZX' \
    --linkingToken 'WEasvS7B' \
    --password 'TF0AS7Qg' \
    --username 'l8inQodb' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'E8Fm47LU' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '6g8n6XxJ' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'GwkQSWmQ' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'maK7F8rr' \
    --oneTimeLinkCode 'Gfmq7HJQ' \
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
    --clientId 'NluqlX0s' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4qOLdOmd' \
    --userId 'MkOU1NwT' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GHh1iOhN' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'nNYpKxrU' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'p5Hp4fN2' \
    --redirectUri 'rDNhTsjp' \
    --scope 'fu1y6gHc' \
    --state '0Q3BqJoe' \
    --targetAuthPage 'zVtFytcR' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'lia9qpOa' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'TX9IFgG2' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'CXmhLmWv' \
    --factor '90Lp3LHH' \
    --mfaToken 'IqFagPEU' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Ca7gyeKF' \
    --mfaToken 'nYBW43Cw' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'RU94mOLH' \
    --factor 'ltogIPRS' \
    --mfaToken 'XsZ7OwVP' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'mk7Qb15T' \
    --userId '3Du14949' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'IpucNARl' \
    --clientId '8Kx1sjiS' \
    --redirectUri 'lzq4RcxL' \
    --requestId 'mWEe6CO4' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'FqzAhExR' \
    --clientId 'bE3Yfcpm' \
    --createHeadless 'true' \
    --deviceId 'oaYKDR5X' \
    --macAddress 's6TylaXM' \
    --platformToken 'Fv3B2kZU' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'iSI9escg' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'pPa73px0' \
    --code 'BSCmxAPX' \
    --codeVerifier 'FU7C1UxD' \
    --extendExp 'false' \
    --password 'KmMM9kZj' \
    --redirectUri 'MEGuiepQ' \
    --refreshToken 'WiA1HKDL' \
    --username '1akaVOGD' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'qNb1L1Xo' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '9Qg8TqHW' \
    --code 'zEWBgI47' \
    --error 'aepYFkGw' \
    --openidAssocHandle 'zjYviISX' \
    --openidClaimedId 'YxmkoUil' \
    --openidIdentity '7B1qiedg' \
    --openidMode 'QKSlhqV6' \
    --openidNs 'FY3pw8pl' \
    --openidOpEndpoint 'hK1avRpi' \
    --openidResponseNonce 'ripEaXQq' \
    --openidReturnTo 'jYVg2FAr' \
    --openidSig 'bSbQi55c' \
    --openidSigned 'fhZkiwov' \
    --state 'sevVymTL' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'Oct6afax' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'y9jmbt8H' \
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
    --clientId '393U9tWs' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uJf9pSG0' \
    --body '{"platformUserIds": ["xtldfF1X", "6ITL4uaA", "zMgDKYXK"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LgdPxfQS' \
    --platformUserId 'cpnqp2SR' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'MUSdOuTe' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'rfNAoo9Z' \
    --limit '38' \
    --offset '51' \
    --query 'VNoloV6P' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "s7fgs3IJ", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "a5aKzzo4", "policyId": "CVgbikl5", "policyVersionId": "6XFMjL5N"}, {"isAccepted": true, "localizedPolicyVersionId": "KRQa2wLH", "policyId": "UPeZ5kzg", "policyVersionId": "TxjV2nBN"}, {"isAccepted": false, "localizedPolicyVersionId": "alSJ1taz", "policyId": "6Thac6Mj", "policyVersionId": "nC66V3WY"}], "authType": "694NBClZ", "code": "wUoKXnEu", "country": "3xhJuKXg", "dateOfBirth": "ZgqMXFOw", "displayName": "50TOI94M", "emailAddress": "YMI6eoOt", "password": "XprBu2iR", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'LaLg82ww' \
    --query '2VdNco6N' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OvHcbB3F", "CAzPLely", "YYoSJJWn"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "cSwNrwBj", "languageTag": "qBxRWadp"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "znqpmvrW", "emailAddress": "lBoqJw22"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "zsEX1TGo", "languageTag": "GaMy2tSy"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'hha6Qatx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ZGb26dfB' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "VoHkdXyZ", "policyId": "Exr5JnK0", "policyVersionId": "8rIa91Gh"}, {"isAccepted": true, "localizedPolicyVersionId": "1TMOZ5nA", "policyId": "ohlw7Xwi", "policyVersionId": "H3ErvjxH"}, {"isAccepted": false, "localizedPolicyVersionId": "M8Vxl6mS", "policyId": "Q84MzZuA", "policyVersionId": "b0RYwHlO"}], "authType": "EMAILPASSWD", "country": "t9VGjxGR", "dateOfBirth": "HxtqHoGO", "displayName": "ubtPa48x", "password": "l4gHRuJ3", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "PNT3TTfe", "country": "2LZNiZRc", "dateOfBirth": "CPajxDiZ", "displayName": "JcAn2F79", "languageTag": "xZPJLeeT", "userName": "Xp39vAVr"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "t8bFItTU", "country": "rA4sKMO5", "dateOfBirth": "L4fNN2PK", "displayName": "DemeLxtg", "languageTag": "TX8zkx0A", "userName": "dXilVZLl"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "5ULoF2Wf", "emailAddress": "iS5thmcN", "languageTag": "gJGpKcLR"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QlkDGqx6", "contactType": "bdokqSDy", "languageTag": "A9INpekS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "I3PNzfeu", "country": "j8wKVHvb", "dateOfBirth": "F3P6KzBY", "displayName": "laZEREgK", "emailAddress": "8CUXkf3E", "password": "EIAiNtis", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "St951Ds3", "password": "JAsTei1B"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "m9zGUlDF", "newPassword": "HhqjSdFV", "oldPassword": "Vsuo84of"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'SzVYWNzO' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8ib8Oka6' \
    --redirectUri '5fJZLMAn' \
    --ticket 'n5dP4Ojx' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Z3olOzAu' \
    --body '{"platformNamespace": "0GH2i7LA"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TCJowxMx' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BlGqYESK' \
    --ticket 'BxYauSVv' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'rbxJGoCc' \
    --clientId 'P7EihZ5i' \
    --redirectUri 'a2a4DJS7' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '0qdthDoa' \
    --state '6lJONgEB' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zeIJ1wPo", "emailAddress": "I4Rwejlp", "newPassword": "44Zf1VUn"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '68u1WFpz' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VS8mzWaI' \
    --activeOnly 'false' \
    --after 'bw5dlmDL' \
    --before 'STWQYYXL' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eqVluhrr' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lpXk8Eho' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P0JceRB5' \
    --after '0.42483506185862463' \
    --before '0.2069847558253609' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sE7OUVkA' \
    --after 'ccuQb6WN' \
    --before 'wuoAKI0I' \
    --limit '44' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZjMUMH5R' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'qPV8XBhe' \
    --body '{"platformId": "LuK3xD5v", "platformUserId": "Kd823Kkv"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'iyVzK8lC' \
    --body '{"chosenNamespaces": ["4x51qj9z", "CKu3WmVJ", "92woKVnM"], "requestId": "baxjRfwb"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ob3tLNtI' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o51ebgMX' \
    --password 'acj4V4a5' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'sf6XG0qV' \
    --before 'AFt3syeW' \
    --isWildcard 'true' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'dsLvz6Mh' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'vNep77g8' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["l6FZCKtS", "fATl0FXp", "ZA0jRtVW"], "oneTimeLinkCode": "hcBxYQnf"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "YyC9ZmLV"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'eKKODxSK' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'z5SdYS84' \
    --code 'EXiLad06' \
    --error 'SrfgIzUS' \
    --state 'BZ9N3VbR' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'M2aqQLXM' \
    --payload 'RcxD6ZyD' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'gcapv01m' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'jaHBUrM4' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '6YiGLLtS' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'CpXTYh7j' \
    --endDate 'KsMlZE1A' \
    --limit '70' \
    --offset '27' \
    --startDate 'pFAGfIIn' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OylGZqHj' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "x05UWubz", "deviceId": "ryvE6Wo4", "deviceType": "364qkuS6", "enabled": false, "endDate": "tT8gPewp", "ext": {"lxLWLelP": {}, "0uNWclxF": {}, "NyP7Kgd1": {}}, "reason": "bnMNugCC"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'jafEegOd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'J8PEJwnp' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'lmnly7VY' \
    --startDate 'dJpiHrfz' \
    --deviceType 'PtDxCLkn' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'fu0lpjvC' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'N6kwHOq2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'iUAoO1pV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '3kVVyDm1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 43}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["2VajB0x3", "blWdezEI", "4Bpk0uQo"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'R2tc6DtY' \
    --body '{"avatarUrl": "WFGcxBNA", "country": "emRKchZz", "dateOfBirth": "ShQNRKrC", "displayName": "kmMGRV0Q", "languageTag": "iwewUC6W", "userName": "CTGTZpuC"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'k1AYFvBs' \
    --body '{"code": "oEBe97F8", "emailAddress": "dWoEneez"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MUpDES2Q' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'cfoZg2l6' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'xW7ArlEX' \
    --body '{"assignedNamespaces": ["MOuhrpb9", "9mV0IbQW", "Mx9AmQvw"], "roleId": "uikhdWO0"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'twg5danb' \
    --body '{"assignedNamespaces": ["IosdoNcN", "5H39LdoB", "wQk6QLGq"], "roleId": "Gtg3if1c"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PPmBTY0E' \
    --body '{"assignedNamespaces": ["d4cnA90M", "E6X4TKpd", "Bvj3e95k"], "roleId": "uYhKZ2Mk"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '80' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "7NbkhF8I"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'Ft3CDRUQ' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'k0emsuY5' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'geD0HKrN' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "0C3joMsi"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'gOysi3Vr' \
    --body '{"permissions": [{"action": 45, "resource": "Zelz7GfV", "schedAction": 39, "schedCron": "KtPdlAG7", "schedRange": ["HLmBejJv", "UUN1uL32", "xFP952Fu"]}, {"action": 98, "resource": "SWGtFk3l", "schedAction": 87, "schedCron": "01EsgW1H", "schedRange": ["qPajUsZh", "qjAxnW5v", "0luXOH7I"]}, {"action": 76, "resource": "QTa7SaLk", "schedAction": 51, "schedCron": "QwNC3s1m", "schedRange": ["Z8lciFoL", "c5NmCT8t", "LprsBdZB"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'A9qX5ALl' \
    --body '{"permissions": [{"action": 58, "resource": "HNoZ9caL", "schedAction": 67, "schedCron": "1p7jIusc", "schedRange": ["IGkUboBu", "fCfOFWwz", "XhMPMb0W"]}, {"action": 76, "resource": "tnCvPFwP", "schedAction": 85, "schedCron": "qcbwIyB2", "schedRange": ["6kaqZIUK", "UdXezvCO", "zOIHTO7i"]}, {"action": 7, "resource": "bTbi6Pta", "schedAction": 97, "schedCron": "tD84JjLW", "schedRange": ["CG0wpJUz", "m4G1tMgF", "HC8BPfqm"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'p2SCLphN' \
    --body '["h0nnmSfk", "WZLWJval", "PmHkla23"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '6kEWe5D1' \
    --after 'dMWmwp8f' \
    --before 'RxZjSVgW' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'rDgDAPVS' \
    --body '{"assignedNamespaces": ["RvBQ7ba8", "bW7ygWeS", "lwsvKfea"], "namespace": "atutsA9O", "userId": "MJSHatfc"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '0V61arW4' \
    --body '{"namespace": "LgTsoIrH", "userId": "lhvH5Lov"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "JeTHCl2m", "country": "PAlQNqF8", "dateOfBirth": "KT2fg8aH", "displayName": "rBD0OX0M", "languageTag": "VacmfieB", "userName": "QcaCJXKe"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'hyN9SrMd' \
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
    --code 'hVUfZn4V' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '1KXEoZgt' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["na1ogRr2", "Z56iov9a", "tY7nzkto"], "emailAddresses": ["scKUdBpc", "2bKLqsOy", "z9MkJgFB"], "isAdmin": true, "namespace": "czDjtNkg", "roleId": "fizj5Bmo"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zcJ2M7OK", "policyId": "lYrye4Vx", "policyVersionId": "su81GW0K"}, {"isAccepted": true, "localizedPolicyVersionId": "2CC6kbw3", "policyId": "jTAI7t8h", "policyVersionId": "xpqJrGJp"}, {"isAccepted": true, "localizedPolicyVersionId": "gYq7hs6e", "policyId": "alwlQeuJ", "policyVersionId": "AJrFrOXr"}], "authType": "EMAILPASSWD", "country": "YmhFr3CK", "dateOfBirth": "f5Ke7OzL", "displayName": "WppLcsQR", "emailAddress": "3o52vQdb", "password": "u70tlkzo", "passwordMD5Sum": "9KD8eJIe", "username": "hyWeI0XZ", "verified": false}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Dy4thbdI", "policyId": "e3Sd3hBw", "policyVersionId": "XtGV8ChV"}, {"isAccepted": false, "localizedPolicyVersionId": "2qFOEjSC", "policyId": "jvTq2KTw", "policyVersionId": "3vCjf76r"}, {"isAccepted": true, "localizedPolicyVersionId": "B6U15Sar", "policyId": "77XMzjid", "policyVersionId": "TU28qY0j"}], "authType": "EMAILPASSWD", "code": "d8Prt0OK", "country": "NUKoyZMG", "dateOfBirth": "LZ4RVVOw", "displayName": "UWGMi0wM", "emailAddress": "jMYg2P5j", "password": "bRvOW54I", "passwordMD5Sum": "tXvDjIow", "reachMinimumAge": false, "username": "Q7lMg0FL"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'd6pKBXwI' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "JBzxlMS9", "policyId": "IpOwPLhi", "policyVersionId": "6SIBbxld"}, {"isAccepted": false, "localizedPolicyVersionId": "81Ml1rY7", "policyId": "Wd2Ct4xb", "policyVersionId": "i1EngoFB"}, {"isAccepted": true, "localizedPolicyVersionId": "6CklZ5jH", "policyId": "N8NfnpJO", "policyVersionId": "YS8EZyyD"}], "authType": "EMAILPASSWD", "country": "VZGwqoa2", "dateOfBirth": "dbEwTrve", "displayName": "4dXlJJ2V", "password": "HeZsR1RQ", "reachMinimumAge": true, "username": "Vzbmbuxv"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "wzha5m2X", "country": "W2G55Lky", "dateOfBirth": "aYiGDO96", "displayName": "6Kw4rBkj", "languageTag": "btQFbNvf", "userName": "uchW889X"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "u5LuMpnN", "emailAddress": "0TjTX9E2"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TjHOlcQn", "country": "nwJ8fqNc", "dateOfBirth": "VPzMCtqZ", "displayName": "kvy4ckPn", "emailAddress": "OMBPxcLm", "password": "ES9xeBJN", "reachMinimumAge": true, "username": "nqGpZV08", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "3qkiH1aX", "password": "MipbqpM5", "username": "iTZq5y4b"}' \
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
    --code '0w7x6mvA' \
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
    --code 'T3j3tKEv' \
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
    --factor 'hJPfWko7' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE