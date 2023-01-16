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
    --body '[{"field": "Th7ISjkt", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["JX0dzVKl", "Prlr203W", "fMb8fcIc"], "description": [{"language": "L9nR3qsT", "message": ["Fxq2jCoQ", "uLFrO2rv", "u8VYYpW7"]}, {"language": "2OFqKQPt", "message": ["3eNR1RLP", "p8RlOkzL", "x6fR8fUc"]}, {"language": "O3GL9wen", "message": ["TB0lVdwI", "Kp7jXwZH", "J7o7ERj9"]}], "isCustomRegex": false, "letterCase": "1w6K9RNY", "maxLength": 97, "maxRepeatingAlphaNum": 55, "maxRepeatingSpecialCharacter": 51, "minCharType": 34, "minLength": 61, "regex": "s90RbtHm", "specialCharacterLocation": "0UY4L3Jn", "specialCharacters": ["RzRskdar", "QFEPRDaD", "SeLN4rI6"]}}, {"field": "e9ahWlqp", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["rW8xx5ms", "3bkgbnle", "hyo0au59"], "description": [{"language": "ZJsmIIks", "message": ["cXIfbjDR", "rdQztiaF", "bai6PtGX"]}, {"language": "YIeCyLTJ", "message": ["yOR3rFd6", "LcOKGS4Y", "dZwcJ6dH"]}, {"language": "AipGtczm", "message": ["7czeUt9C", "ybptwSzi", "x4fc5LJu"]}], "isCustomRegex": false, "letterCase": "m7uxNPpi", "maxLength": 60, "maxRepeatingAlphaNum": 36, "maxRepeatingSpecialCharacter": 28, "minCharType": 87, "minLength": 5, "regex": "ZGwYXJlK", "specialCharacterLocation": "KHI7cucc", "specialCharacters": ["VTiyTez5", "MA6UTDkm", "m44AcRBt"]}}, {"field": "MQDJi2fo", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["cpSXlfuQ", "txP86Lft", "s6ojoKWl"], "description": [{"language": "Z9NhMV9A", "message": ["P5HUNd71", "TNnji1U4", "bmd1D3v3"]}, {"language": "r4nWn3xX", "message": ["ydx9my5e", "tIQBrrET", "Z6Mb8Y6X"]}, {"language": "jUZPmewv", "message": ["DufPB7vP", "kC5QBa02", "Nke1ygB7"]}], "isCustomRegex": false, "letterCase": "P538Tzsn", "maxLength": 71, "maxRepeatingAlphaNum": 15, "maxRepeatingSpecialCharacter": 13, "minCharType": 94, "minLength": 37, "regex": "oI2PGE57", "specialCharacterLocation": "W8GuPiDZ", "specialCharacters": ["p6JWkK5H", "hk5xBdXa", "XtzGJaRi"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'L6gelWcK' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'c75eQE6o' \
    --before 'DSkIxsOl' \
    --limit '58' \
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
    --body '{"ageRestriction": 65, "enable": true}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'uMExAqGR' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 52}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '5X7YTJhq' \
    --limit '53' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "B8bRr88C", "comment": "YApZ67JK", "endDate": "aSKfWher", "reason": "79If3MJt", "skipNotif": false, "userIds": ["6MwnCs77", "ycsCJFAD", "wIIsCFf2"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "P7C7leU9", "userId": "tZ9OMfsu"}, {"banId": "zzjNB0lt", "userId": "qUqdI2gx"}, {"banId": "FnGT9Qyn", "userId": "2Cp0wIsX"}]}' \
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
    --clientId 'Np1p0H66' \
    --clientName '6AosUEk8' \
    --clientType 'Sd6lkGxB' \
    --limit '35' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["7JScXaNo", "mfs25APW", "yhMPbFiv"], "baseUri": "nbfag9Ic", "clientId": "6QtGxJGT", "clientName": "W5Qh1VsF", "clientPermissions": [{"action": 70, "resource": "5Zi14yzI", "schedAction": 33, "schedCron": "qcSQxA4F", "schedRange": ["KWmbcsOC", "UIlkCIG9", "E3yJBXlI"]}, {"action": 8, "resource": "CQydfZVo", "schedAction": 96, "schedCron": "AetAoDRn", "schedRange": ["6w5DVLf9", "PslhEKx4", "9XucCWbC"]}, {"action": 21, "resource": "53N7yvcE", "schedAction": 43, "schedCron": "2ZqHY2YA", "schedRange": ["M8JZBUzI", "Hwh6LLHj", "jKezmbe8"]}], "clientPlatform": "pXzRGaQb", "deletable": false, "description": "iMQ0Re7i", "namespace": "1vtF07Z6", "oauthAccessTokenExpiration": 21, "oauthAccessTokenExpirationTimeUnit": "AGnHz6wq", "oauthClientType": "qbVYERap", "oauthRefreshTokenExpiration": 55, "oauthRefreshTokenExpirationTimeUnit": "9B7Cakp3", "parentNamespace": "8e2hvSQG", "redirectUri": "icmqIwMz", "scopes": ["tsGNHoSS", "pWeSVe9g", "ErWSyL06"], "secret": "HV3DpiuH", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'KSGzwwvf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'DxnEGdP3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'jm19HGjc' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["rkygGXKB", "GaSvw2An", "yZNmsS3b"], "baseUri": "Y7uWxhNs", "clientName": "e4fhGFVW", "clientPermissions": [{"action": 33, "resource": "kw47yoyp", "schedAction": 61, "schedCron": "gvKjGab8", "schedRange": ["Hyayrrym", "3VwisBbX", "vLGumTkA"]}, {"action": 2, "resource": "1xfyRF8a", "schedAction": 96, "schedCron": "8OmuCSRl", "schedRange": ["CKK4cBVE", "sv5Ewige", "iaQtg2GL"]}, {"action": 71, "resource": "Xl4pMTgx", "schedAction": 27, "schedCron": "xzc01lc3", "schedRange": ["flM2FpdT", "rK4gBF9q", "RjObxacm"]}], "clientPlatform": "2djf94qg", "deletable": false, "description": "c2cloYdS", "namespace": "GgGWJG4b", "oauthAccessTokenExpiration": 56, "oauthAccessTokenExpirationTimeUnit": "oppDCd98", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "6Ar6kKlR", "redirectUri": "IVFgdrSw", "scopes": ["bOP5WIV8", "tNrIXNP9", "OkQa7mGM"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'PJWvoyUB' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 27, "resource": "dr0H8Y2A"}, {"action": 94, "resource": "MAPkhn76"}, {"action": 27, "resource": "9kWvRrUm"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'CybLa703' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 74, "resource": "g3tV4hWZ"}, {"action": 28, "resource": "4GTKht2w"}, {"action": 60, "resource": "ijigp7ku"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '65' \
    --clientId '5EWCCN9C' \
    --namespace $AB_NAMESPACE \
    --resource 'q5zelvX7' \
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
    --limit '41' \
    --offset '3' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SEU4niBX' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RPXMHyog' \
    --body '{"ACSURL": "sIkyNUbb", "AWSCognitoRegion": "CuACYVkd", "AWSCognitoUserPool": "igtIq7ML", "AllowedClients": ["ZXVCWaNP", "S5YzLK5e", "ACHLknen"], "AppId": "sN2IC0Yc", "AuthorizationEndpoint": "Zyo1KvC5", "ClientId": "NSidBE6a", "Environment": "7VxRsUTP", "FederationMetadataURL": "c9rFaQtF", "GenericOauthFlow": false, "IsActive": false, "Issuer": "RWSeRZtk", "JWKSEndpoint": "P2jpWEuM", "KeyID": "Vp6V5VWM", "NetflixCertificates": {"encryptedPrivateKey": "m1iWI7BJ", "encryptedPrivateKeyName": "qkGaUzNT", "publicCertificate": "CAQr8IML", "publicCertificateName": "13yQawif", "rootCertificate": "QxF9a1To", "rootCertificateName": "ZoomziwB"}, "OrganizationId": "I5F8R72P", "PlatformName": "t7nCaVsh", "RedirectUri": "Fg2ZAsT1", "RegisteredDomains": [{"affectedClientIDs": ["LL6uP7G9", "nVOijxS3", "BLRAcbhh"], "domain": "gRSkGo59", "namespaces": ["4dKZJ4XD", "zBLQx4GM", "jZGA5A58"], "roleId": "HfiQcZOq"}, {"affectedClientIDs": ["8AhNuRGh", "Md8sdRMm", "N6rHE440"], "domain": "UmQzkXdn", "namespaces": ["or6OrcOL", "I6HCtUm2", "G2OAYS4T"], "roleId": "OHU2o4SR"}, {"affectedClientIDs": ["bJotOG3M", "cdHPHomq", "R1ul3yH8"], "domain": "M5PyIW4m", "namespaces": ["O68mhyE6", "PXn3FgOq", "bKxyWb8k"], "roleId": "tCE0KCL4"}], "Secret": "ndKNzdst", "TeamID": "ZW6ZGadb", "TokenAuthenticationType": "oe34A2Kn", "TokenClaimsMapping": {"ZYIDQ8IT": "bG64Yie8", "PFpXtwiV": "dx590s9g", "OD03E7az": "qHAMQ7Sb"}, "TokenEndpoint": "T3IyP0Sj", "scopes": ["n3Dt99Sz", "sYURxvJ2", "GiyycPQk"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TLJWf87V' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '10FHQqB2' \
    --body '{"ACSURL": "fx103P6D", "AWSCognitoRegion": "rQILqUcq", "AWSCognitoUserPool": "cBegV6Gr", "AllowedClients": ["uQG4JprF", "oq7e56aq", "m4COJXRl"], "AppId": "dLatI6U7", "AuthorizationEndpoint": "lGUX7b86", "ClientId": "hliGgksj", "Environment": "2Whbq47F", "FederationMetadataURL": "nn1Sl1t0", "GenericOauthFlow": false, "IsActive": false, "Issuer": "oshWU14G", "JWKSEndpoint": "tNIAF8Y4", "KeyID": "8WZdZHN8", "NetflixCertificates": {"encryptedPrivateKey": "yo8lEmUg", "encryptedPrivateKeyName": "my85vkcq", "publicCertificate": "HU8xqznB", "publicCertificateName": "LpLsvTNC", "rootCertificate": "V5PL69RB", "rootCertificateName": "wZDV6d5f"}, "OrganizationId": "SYiAXOQA", "PlatformName": "A8QC47p1", "RedirectUri": "kJZnBQT6", "RegisteredDomains": [{"affectedClientIDs": ["Hc3Wc7jN", "0j3GN3HT", "GQ0QK0gN"], "domain": "tgnCYRNr", "namespaces": ["SPxGGLUE", "zLPODy7W", "Q3VL9iBh"], "roleId": "cUz4OSyd"}, {"affectedClientIDs": ["w5aiLlmR", "xoFvRSvs", "iVjd2SVv"], "domain": "bmvf1ECt", "namespaces": ["O1O1WEP7", "vVTWNuVG", "o6cHu4uZ"], "roleId": "bk03OIY1"}, {"affectedClientIDs": ["UmbduiOJ", "qLr8YE8M", "hErGg0PB"], "domain": "97wNk36i", "namespaces": ["MlwzYStS", "YdeuR5iR", "EiqfinmY"], "roleId": "5wsofHqx"}], "Secret": "k4eejg7Y", "TeamID": "yPMK49cn", "TokenAuthenticationType": "emfWNKoS", "TokenClaimsMapping": {"EJl931cF": "mgGyKCQJ", "OAAEful8": "MLHEsTy1", "OBvl1mdf": "tRGWmm4F"}, "TokenEndpoint": "7meVaeAL", "scopes": ["mB0KcirI", "7F1DS6BS", "kwCWUHFa"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fjD6ce2V' \
    --body '{"affectedClientIDs": ["hjp7f2rU", "Q4XgF1oQ", "5PeaFgzK"], "assignedNamespaces": ["Y93MfXln", "JB8hY0V6", "hGuITtsY"], "domain": "eGjG78Av", "roleId": "Ddbb6FPo"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GE33vUEZ' \
    --body '{"domain": "nKrGzFk9"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'bze7ZfKG' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'mnglzwFv' \
    --body '{"acsUrl": "lMqCiYXp", "apiKey": "QLdOHukF", "appId": "SrCQO9xE", "federationMetadataUrl": "FgfqG9Ll", "isActive": true, "redirectUri": "SzvPB8qu", "secret": "G12n1Ojf", "ssoUrl": "wrhF5jiJ"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fmTRjLNL' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Vbyy3DI2' \
    --body '{"acsUrl": "UkLqfIkU", "apiKey": "xCVVDwug", "appId": "OFg2X6fr", "federationMetadataUrl": "g9vdcg86", "isActive": true, "redirectUri": "Q5zk7pYA", "secret": "65LwccjO", "ssoUrl": "rS5bFU40"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'r1N6VxFG' \
    --platformUserId 'QmpMj7Gl' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'b8VH7Mci' \
    --after '41' \
    --before '20' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'xMuZWZqV' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["4P4NiIMI", "yHZ7cM63", "CgIrhK36"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["7bqAC9hO", "PFnQQ9b7", "lNDDzRTF"], "isAdmin": true, "namespace": "Xih00cCR", "roles": ["nAMyvguC", "rJKXntOp", "c05OyRI6"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '85' \
    --platformUserId 'dt8Flnkv' \
    --platformId 'hHnF2lwy' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '9qxdzTGW' \
    --endDate 'Oz3VOlwr' \
    --limit '83' \
    --offset '89' \
    --platformBy 'GTDVijtW' \
    --platformId 'zouIBRxI' \
    --query 'xzMfvmas' \
    --startDate 'OmZSz9xJ' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["t3VpB1tb", "XSf5k1Ff", "OyEC14QG"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '7cH5DLie' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YHVCBSgP' \
    --body '{"avatarUrl": "xjdKpaeY", "country": "ojQQnusy", "dateOfBirth": "8CpmM1VV", "displayName": "gPiEKFsT", "languageTag": "U0DqRxCd", "userName": "NdsIDwxw"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '6277x6c5' \
    --activeOnly 'true' \
    --after 'K6kcrObp' \
    --before '8cGm7oS1' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'df5KhyXs' \
    --body '{"ban": "hkIfSNe3", "comment": "wxiJkVIA", "endDate": "alS5B1EY", "reason": "qurmpgKR", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'rkkCJCIG' \
    --namespace $AB_NAMESPACE \
    --userId 'maTlGGi4' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mBqIpXF4' \
    --body '{"context": "z2r0orZp", "emailAddress": "ES2E0jl7", "languageTag": "4XXm3x8f"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JBJHNxAT' \
    --body '{"Code": "Z71x7ZzV", "ContactType": "4vvCue3B", "LanguageTag": "dSty1OCb", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'bJUuC5nZ' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ffirRuIt' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OesQRrCb' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zwCawfS7' \
    --body '{"code": "nHnnDl21", "country": "h2U0Cysr", "dateOfBirth": "sMLNfbLH", "displayName": "cf7a7twD", "emailAddress": "PX6QPOt1", "password": "jJIIby2r", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ThGAdswp' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Mcd1UGKu' \
    --after '0.901075610172973' \
    --before '0.4667815806156148' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y2OFUdSz' \
    --body '{"languageTag": "hpVuELyg", "newPassword": "I8tytVsn", "oldPassword": "t7TNhOoG"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WVoAyCLc' \
    --body '{"Permissions": [{"Action": 46, "Resource": "5TgW6Y52", "SchedAction": 46, "SchedCron": "gLQCqVj4", "SchedRange": ["JW5TgI4T", "okqVccx3", "fe1uoOuz"]}, {"Action": 68, "Resource": "45y6eolt", "SchedAction": 78, "SchedCron": "xWXfXMdb", "SchedRange": ["DP9LATeu", "oPq1Zz69", "vLI6WdZO"]}, {"Action": 80, "Resource": "QC3961D8", "SchedAction": 50, "SchedCron": "tyVa1nO0", "SchedRange": ["0i3JNdhL", "XogYmqiE", "zVDP0oGh"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '7SbvEdY7' \
    --body '{"Permissions": [{"Action": 17, "Resource": "BySkelju", "SchedAction": 9, "SchedCron": "3C5SIEoz", "SchedRange": ["e5G2MmNm", "19ZYuC9w", "yHAcyh0Q"]}, {"Action": 64, "Resource": "MgVDBLdP", "SchedAction": 92, "SchedCron": "xXLObB0p", "SchedRange": ["bo47MOBZ", "nc0wHWwT", "vDntuE8s"]}, {"Action": 74, "Resource": "0qCI9sCP", "SchedAction": 35, "SchedCron": "uaG4rJKP", "SchedRange": ["OXcs1LC2", "Nj1g6Ad2", "OPHszT4o"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yvvfi4Tf' \
    --body '[{"Action": 34, "Resource": "YaOhBJSD"}, {"Action": 39, "Resource": "I8EHtUS4"}, {"Action": 74, "Resource": "Z9TtHVzi"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '70' \
    --namespace $AB_NAMESPACE \
    --resource '95VEabdS' \
    --userId '6BhNOKZW' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SEhm4Vxz' \
    --after 'a1YNJjv1' \
    --before 'PCJOFdvc' \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '96yAFuAY' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'KUiSOP1v' \
    --userId 'kJmFHLFn' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'M8eWc9Zc' \
    --userId 'PIqIRWVb' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '4UTp7jKj' \
    --body '{"platformId": "boJbtTJ9", "platformUserId": "KjXyj85A"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XvFNR1qh' \
    --userId 'eyqFYw7R' \
    --body '{"platformNamespace": "hexYvL4D"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tKybM5LA' \
    --userId 'R4jF3zGg' \
    --ticket 'nDakxUXE' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'um665QEc' \
    --userId 'cNTLIr1X' \
    --platformToken 'VQ6KqNG7' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CdwryeEn' \
    --body '["VjazkKPG", "G6DEZmky", "cPUQ7Eap"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fC6Ja2qu' \
    --body '[{"namespace": "m7ljzMGM", "roleId": "PrFHK6bx"}, {"namespace": "Sr3IBxEv", "roleId": "93AIOPwx"}, {"namespace": "f54rRz8j", "roleId": "vSZjCZsK"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'bDC9PeeW' \
    --userId 'Ru7Tp3vQ' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '0kuuQRg8' \
    --userId 'ih7aKiAP' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DcxTNJRr' \
    --body '{"enabled": false, "reason": "DqyzlCaq"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yzUsh80m' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'YmPDVffq' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "MrU5UUp0"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'QYoCCqAd' \
    --before 'E7eVEXcS' \
    --isWildcard 'false' \
    --limit '88' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "B6Z20d3W", "namespace": "7dhCCL8T", "userId": "cEIIxslf"}, {"displayName": "wU6J8sp2", "namespace": "BnhXo9nb", "userId": "pyEhMETH"}, {"displayName": "i58drgUF", "namespace": "ub9T6lmm", "userId": "aVJdB2Kz"}], "members": [{"displayName": "Fhx1u4Qf", "namespace": "M2cah9tu", "userId": "7nfyT3Zj"}, {"displayName": "pViDSREP", "namespace": "LUulZKUS", "userId": "9Jl1oh7m"}, {"displayName": "bVhkNZDG", "namespace": "7axQM1eg", "userId": "STqAPhDF"}], "permissions": [{"action": 48, "resource": "zj5hBW5a", "schedAction": 82, "schedCron": "PSSMmDVO", "schedRange": ["JewvfKA0", "wGVvL3uB", "Q0GcBR2Z"]}, {"action": 92, "resource": "prBOfuc3", "schedAction": 35, "schedCron": "gKoAYPsu", "schedRange": ["CXtuKa9H", "sFLvs6dU", "bjkUcJ6y"]}, {"action": 0, "resource": "JC9TLcqq", "schedAction": 13, "schedCron": "SAquSWSI", "schedRange": ["j0JfKJxk", "vFYuC11d", "VE2szGfy"]}], "roleName": "izVqB5qB"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'hkqouqAe' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'mrWTrFET' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'SAR4BYCo' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "MzDowQ2T"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'YSvLhIQq' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '2gYcAISY' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'YhmFYiIF' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '6Z1UNdNH' \
    --after 'H8sQ5coF' \
    --before 'CWsEskd5' \
    --limit '50' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'fibamymN' \
    --body '{"managers": [{"displayName": "XnSfwak4", "namespace": "P8zgUrXu", "userId": "GomVe4vt"}, {"displayName": "Y0w7vfuX", "namespace": "hFpBrwBS", "userId": "bJAqomIy"}, {"displayName": "vHbIGuc6", "namespace": "2jRcNQKK", "userId": "9Uwr1Qtl"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'OWHDZFfD' \
    --body '{"managers": [{"displayName": "3FBbjhgX", "namespace": "blQdTEmv", "userId": "YtrycQaM"}, {"displayName": "ak2eHU9K", "namespace": "uURMoekc", "userId": "ToYz4FYV"}, {"displayName": "JFrtbrbp", "namespace": "xjeRCEdW", "userId": "lxgt8gic"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'jWGyDRXe' \
    --after 's6CFlu9U' \
    --before 'jQdzg8Mt' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'y1hFoeZA' \
    --body '{"members": [{"displayName": "TvPE4ZEw", "namespace": "HqciXkiM", "userId": "i2Tjg945"}, {"displayName": "hpmmtY3Z", "namespace": "pm6eIS4q", "userId": "cjI2Da7a"}, {"displayName": "cYeMOUor", "namespace": "pQwzXHFN", "userId": "rhVu1Egm"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'pkml0i8C' \
    --body '{"members": [{"displayName": "XW0lL9aK", "namespace": "qz84swpQ", "userId": "1X4l64PM"}, {"displayName": "L4445fGw", "namespace": "Tp3Z0BlX", "userId": "Gso7mEPG"}, {"displayName": "Eaypo1DC", "namespace": "AofWYoXU", "userId": "xpOseZGW"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '5DVWKnvP' \
    --body '{"permissions": [{"action": 9, "resource": "lo6kspPQ", "schedAction": 62, "schedCron": "kGJy1qQu", "schedRange": ["wvRJSUjP", "N7I4y79e", "pqoN1w8C"]}, {"action": 39, "resource": "j60O83cz", "schedAction": 47, "schedCron": "u1RakhE2", "schedRange": ["IRruT0bu", "6y2Lko6Q", "YtlbRkP0"]}, {"action": 12, "resource": "zB4P6NuQ", "schedAction": 73, "schedCron": "qGHhMCU6", "schedRange": ["rYNxgV3u", "TozxjiCl", "BhxRqEAg"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'DS40KXl2' \
    --body '{"permissions": [{"action": 22, "resource": "FZ541J6F", "schedAction": 46, "schedCron": "EvT7eAra", "schedRange": ["F3ILWEYL", "uXEnSjMv", "KflwrnwX"]}, {"action": 43, "resource": "3KPN5Xu5", "schedAction": 10, "schedCron": "zrJo6lep", "schedRange": ["9Pf10UqX", "oYFGZn3f", "oykKlfBS"]}, {"action": 96, "resource": "vYIRQ4WK", "schedAction": 96, "schedCron": "Wn2ml6Di", "schedRange": ["Powv4Fc7", "Eahk5bfR", "hfHFrN4g"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'LM7o0PkH' \
    --body '["BROkbvlQ", "D6KIqGwx", "bum0YRmO"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '70' \
    --resource 'WpTwH8ZI' \
    --roleId 'dW5qQZec' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '1yrrPQa5' \
    --extendExp 'true' \
    --redirectUri 'Ri888EMF' \
    --password 'lguHTpoc' \
    --requestId 'TAVu9MHj' \
    --userName 'CEGOET5B' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '0FEmbhdc' \
    --linkingToken 'URBw0Wu4' \
    --password 'qYqIwpqb' \
    --username 'HmH1snAJ' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'lhTm6BXB' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'DqQ9NuBh' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'kGkDcfnu' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'OVqcUSLA' \
    --oneTimeLinkCode 'H7cUEsTG' \
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
    --clientId 'wo2J9A7u' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Uqw8JM0B' \
    --userId 'Bk6qKJUE' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YyqCmLX2' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'c3uXposu' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode '7zX616yD' \
    --redirectUri 'Miqr9ZVT' \
    --scope 'X5Y55K34' \
    --state 'CkZmpcJ7' \
    --targetAuthPage 'vgCBXjbp' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'OcgxH1gC' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'xInvBGQK' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'dRqe9VmV' \
    --factor 'OgHnX1Pq' \
    --mfaToken 'v4Zv5JNX' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'QrOZVAv5' \
    --mfaToken 'HtrZfY6h' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'QIOLHk4A' \
    --factor 'yES6ptse' \
    --mfaToken 'wGpmXgT5' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'erXCXEax' \
    --userId 'C3yxyedU' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'VMYFO9s7' \
    --clientId 'jAgcFHl6' \
    --redirectUri '0bcg40jL' \
    --requestId 'hRJhQASg' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'DmmdrM8G' \
    --clientId 'c357ohzi' \
    --createHeadless 'false' \
    --deviceId 'Uml9OQip' \
    --macAddress 'nBSOzTVt' \
    --platformToken '69XjATZr' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'WfeiFrzT' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'VHGb1zgI' \
    --code 'nWcLOfxm' \
    --codeVerifier '6NaqZ3V3' \
    --extendExp 'true' \
    --password 'T5YAdnNG' \
    --redirectUri 'JqxcRakT' \
    --refreshToken '0yfYVLhx' \
    --username 'hm5Zv6dO' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '0pcdtcMp' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'KmTG6j9M' \
    --code 'zjBe2YzQ' \
    --error 'Cul9W7Hu' \
    --openidAssocHandle '2hytl2EW' \
    --openidClaimedId 'o57dRtVp' \
    --openidIdentity 'EHgPMdsm' \
    --openidMode '0cUlxWjt' \
    --openidNs 'QONKT0O5' \
    --openidOpEndpoint 'fC7JAfq6' \
    --openidResponseNonce 'pILWdrJ5' \
    --openidReturnTo 'zV1ndUZB' \
    --openidSig 'c2I8dvYP' \
    --openidSigned 'KdPABZHv' \
    --state 'q5D9QzRM' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'kfzFktlG' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'lUYm9sCX' \
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
    --clientId 'LhYbSstN' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZbcFcdlr' \
    --body '{"platformUserIds": ["ISei0bM2", "EgxadUno", "CtVN6HHf"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KexzsMuT' \
    --platformUserId '9R5So9up' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'aJe6xM80' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '8u5JeOQV' \
    --limit '87' \
    --offset '58' \
    --query 'TKVi2R2A' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "DuWtG95P", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "DI3imdXf", "policyId": "g0G8Yw76", "policyVersionId": "wi5aWMlL"}, {"isAccepted": false, "localizedPolicyVersionId": "ISWhd282", "policyId": "kzdN1yiw", "policyVersionId": "Jdf9bIhC"}, {"isAccepted": true, "localizedPolicyVersionId": "8gn0szAY", "policyId": "CfKHjPOD", "policyVersionId": "p1H5pbcL"}], "authType": "6ApWfXbU", "code": "A8b54dK8", "country": "VUQu66uu", "dateOfBirth": "2Yy7kXgi", "displayName": "TA5gDH0y", "emailAddress": "I6cG5x6x", "password": "6LmLjljt", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'cYKlqfaW' \
    --query 'VvlDqRvL' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PBQ2msNE", "40JpxeG5", "FF3h9bfX"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "TKaU1DSo", "languageTag": "ApqjxqiL"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AwCywQia", "emailAddress": "gkM6HKpu"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Ez5JdHUr", "languageTag": "1Ycy71JL"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'MXI19N3A' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'tTo3Ju6r' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Upmeao9i", "policyId": "rTb18DvS", "policyVersionId": "ltXX6ZC1"}, {"isAccepted": true, "localizedPolicyVersionId": "GVe7L9B6", "policyId": "A2CzU0jO", "policyVersionId": "WG4aM2aN"}, {"isAccepted": true, "localizedPolicyVersionId": "Am8brHCe", "policyId": "vlCVK73z", "policyVersionId": "WsNesSms"}], "authType": "EMAILPASSWD", "country": "9Sq5zYyA", "dateOfBirth": "z4R1i053", "displayName": "FafdEZvP", "password": "4vIZ6VIb", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "pz3A6Xhe", "country": "gj6T40GH", "dateOfBirth": "K4HtTFuO", "displayName": "TPaywfV8", "languageTag": "lBzwVgnw", "userName": "d5UJR6fI"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "2zq9zm6Q", "country": "WpOZFThV", "dateOfBirth": "bzi5aLyo", "displayName": "2vXPqKSL", "languageTag": "qFkm3uor", "userName": "lWUDdnSI"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "2jrTqq78", "emailAddress": "8e5Oe6TZ", "languageTag": "i0oKFsUk"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PYap8X93", "contactType": "M10NzXyB", "languageTag": "eyIGCJQ6", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "dLaVo0Cj", "country": "Sv7lICzw", "dateOfBirth": "iWqLyoJw", "displayName": "JSZvUZ9M", "emailAddress": "0dvYOMTL", "password": "xZLbZz3x", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "JFC7BYyQ", "password": "4sNLIQGR"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "6mZVzzH1", "newPassword": "U1ruc0NL", "oldPassword": "1pwYtkwP"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '0Prv8bRp' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eMQmhWUT' \
    --redirectUri 'uQ9K53ig' \
    --ticket '4ms7E3j7' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XdydyDm4' \
    --body '{"platformNamespace": "IrRiVnmM"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xkTbvDO2' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'l6dQOV9E' \
    --ticket 'DQQaO6MJ' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'ecwn4tDW' \
    --clientId '1extoq4r' \
    --redirectUri 'dA4uONBJ' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'HwROCQuK' \
    --state 'YxQ7Yhry' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "mwuvxvA1", "emailAddress": "4FHIHOVl", "newPassword": "RyLLeB54"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o526xmLE' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F2beS375' \
    --activeOnly 'false' \
    --after '24Hgt9yk' \
    --before 'BEyxkE9f' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rqYpGcvu' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'U2478evV' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WfFwplEJ' \
    --after '0.9685965647482605' \
    --before '0.5464000514589559' \
    --limit '43' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zAM2qnXN' \
    --after '6e6hNV8J' \
    --before 'ZLzNRiyz' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dMC01vo8' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'UykJTcZf' \
    --body '{"platformId": "EvpTSqqj", "platformUserId": "0wxTVo6p"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'F98EUdKP' \
    --body '{"chosenNamespaces": ["HtgXZ24c", "YydYWNc0", "p5EQL9Eo"], "requestId": "erLZMhgS"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A9CZSnPe' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AwkDcmMv' \
    --password 'KyyMFr4Y' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Nl3kQ9pr' \
    --before 'u68qvduQ' \
    --isWildcard 'true' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '9WV6utq4' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Dl9pojcU' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["dbAIYdeP", "P7Fj9uDp", "nsbp6Lzi"], "oneTimeLinkCode": "T2GnByJK"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "zOafq2sJ"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'nikH2cxM' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'BWDeoMBT' \
    --code '3jctRpvP' \
    --error 'MT6aYEyg' \
    --state 'B1gA7GeZ' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'tgxm0bmC' \
    --payload 'lwwDuRiO' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId '9kJXHfir' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'vJn5PHKL' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Jpe13PU3' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '8tNLIOtC' \
    --endDate 'XPYyqHkZ' \
    --limit '49' \
    --offset '54' \
    --startDate 'xgBdoJZu' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'BWsRwlDg' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "dd5Bjh7V", "deviceId": "DZG1liO1", "deviceType": "v0ewySnG", "enabled": false, "endDate": "PdzAdW12", "ext": {"Ooy4beDt": {}, "VuzqyBxt": {}, "rV6h6FwJ": {}}, "reason": "vt6jsPtG"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'g9aDHH2X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'w4Im8Knn' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'APMjR04P' \
    --startDate 'S2Tevjzx' \
    --deviceType 'Tdokskrx' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'P6fAEhFZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'QsiFLqP5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'GAdvfZQe' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'vTXBa1Dc' \
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
    --body '{"userIds": ["0hfrIs3j", "NbmwjQ7u", "ibPEoMaU"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AiFzjNn5' \
    --body '{"avatarUrl": "BGWHiaEN", "country": "1ugovce7", "dateOfBirth": "cfCfTB9l", "displayName": "wODyJIsT", "languageTag": "2dOWkQkI", "userName": "UYdVZbKO"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'E2VsdJJv' \
    --body '{"code": "LFtRAiWt", "emailAddress": "Wl4nsk5c"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '99NejtdZ' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'xNbfJJ2n' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '9ycLS30b' \
    --body '{"assignedNamespaces": ["Hn9E6vMQ", "UILxAJPH", "KJRujJ8a"], "roleId": "DEueUaFO"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'C1dsVFoe' \
    --body '{"assignedNamespaces": ["IZWHxXW1", "GtbUcJAb", "cxObCjuS"], "roleId": "eTpTjoVg"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Jyq2Lrlm' \
    --body '{"assignedNamespaces": ["ELvUJyWb", "l5az9nWd", "3xaavIbx"], "roleId": "A6L4xrh8"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '59' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "ZfnQqytc"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'IsLIZcj8' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'cz8SvJ0F' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'tbZiRBLe' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "5NzhwUUf"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '94nDaxRY' \
    --body '{"permissions": [{"action": 80, "resource": "6y3Lff6L", "schedAction": 65, "schedCron": "Rt2G5zBp", "schedRange": ["Vh03utqw", "NgJpgxbC", "SgGeoGAn"]}, {"action": 95, "resource": "dOKrlNYn", "schedAction": 5, "schedCron": "04OOFySF", "schedRange": ["fnDjZUKR", "9OimFOTj", "JQ9gDu9V"]}, {"action": 67, "resource": "8H8FJf3n", "schedAction": 21, "schedCron": "7GM8Na56", "schedRange": ["c6GHbnen", "HKN2hrqz", "4XOEq23t"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'DdXfKYIb' \
    --body '{"permissions": [{"action": 60, "resource": "jDE9x0K1", "schedAction": 51, "schedCron": "PNjYOE2K", "schedRange": ["nGJYHXL6", "T7ctou3C", "NSumUaSI"]}, {"action": 2, "resource": "PJ6Jf1x5", "schedAction": 79, "schedCron": "mFF6QL4w", "schedRange": ["jiOKKDSC", "3QiZDHc9", "LOKnU8Uw"]}, {"action": 87, "resource": "yHt9XaFh", "schedAction": 21, "schedCron": "179S0F79", "schedRange": ["kKxo86Yo", "LIuLHuBj", "HFWvdjg6"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId '5FMrxwJw' \
    --body '["xCKGtWqU", "7uU1Cqri", "QfzzfJr9"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'pfx96gWF' \
    --after '4dYtLfBH' \
    --before '7gUkXQAf' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'lPYYyJnx' \
    --body '{"assignedNamespaces": ["xuMgscjL", "Q48rIF8T", "w9IvCELA"], "namespace": "Ed8C8CiL", "userId": "6DslEFMi"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'HaxlsufD' \
    --body '{"namespace": "zpFnaRNv", "userId": "mawJn0wB"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "CkG6q1fn", "country": "VafZhI5O", "dateOfBirth": "uESyNaaP", "displayName": "KT8ikuog", "languageTag": "h9nFDNn6", "userName": "WyUmyDZO"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '7kwbpkvx' \
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
    --code 'VPqyWdSl' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'mAlLib5v' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["KHm5aAhX", "OdiEwGpX", "qAkADmTH"], "emailAddresses": ["p7CMLecJ", "ziXNj4uk", "emIM25Eo"], "isAdmin": true, "namespace": "O6nZHK1R", "roleId": "Q6qqaA3q"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "TZcQrWXA", "policyId": "dTv6Xo3z", "policyVersionId": "fG63dnuh"}, {"isAccepted": true, "localizedPolicyVersionId": "7QGA1N2q", "policyId": "kMU3vw1a", "policyVersionId": "YU68f60u"}, {"isAccepted": false, "localizedPolicyVersionId": "pzHERsjW", "policyId": "acvPOxGW", "policyVersionId": "HYEZ4OMh"}], "authType": "EMAILPASSWD", "country": "E4sb9qGM", "dateOfBirth": "I7NMbgaI", "displayName": "kZpZ4wCv", "emailAddress": "Px5vwRgk", "password": "Rmn8R3np", "passwordMD5Sum": "PUDdGoWs", "username": "qrGGmtLH", "verified": true}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "bamntIKi", "policyId": "LKAaZHFc", "policyVersionId": "5cAMklUM"}, {"isAccepted": false, "localizedPolicyVersionId": "IWk1Msn5", "policyId": "d9Bcj2SP", "policyVersionId": "4eDW6QGI"}, {"isAccepted": true, "localizedPolicyVersionId": "IGHA8sFO", "policyId": "vwtDMW5U", "policyVersionId": "35Dw5XQR"}], "authType": "EMAILPASSWD", "code": "xr7WoBWu", "country": "7bZjRL8t", "dateOfBirth": "4PZmMg8k", "displayName": "x9Y25xCF", "emailAddress": "p32ZEL7W", "password": "obTgN4aa", "passwordMD5Sum": "MZ98TjdD", "reachMinimumAge": false, "username": "Bhh5dPyp"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'I84JJCWS' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "dkUXyg4g", "policyId": "Q8iLDRdW", "policyVersionId": "hQp3vEPK"}, {"isAccepted": true, "localizedPolicyVersionId": "GzLFIO44", "policyId": "c9zNofTI", "policyVersionId": "yAm3WzYf"}, {"isAccepted": false, "localizedPolicyVersionId": "1Km5qn3g", "policyId": "AAiTI025", "policyVersionId": "sEdIusK3"}], "authType": "EMAILPASSWD", "country": "eWpiEt7N", "dateOfBirth": "kWGhYDQE", "displayName": "9XaEROhq", "password": "1E5idUHe", "reachMinimumAge": true, "username": "Y5YtLsTs"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "GNuks71I", "country": "OfdrmhJ2", "dateOfBirth": "QHQXJAXE", "displayName": "ecz4bMPE", "languageTag": "yWp6btL3", "userName": "G4fgmY4S"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2xN0vgaN", "emailAddress": "jAC4DMc6"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jvN6Pl51", "country": "GUwURozR", "dateOfBirth": "AMjNmDjF", "displayName": "uddZczE8", "emailAddress": "JrnjYMEX", "password": "BbM4xjkw", "reachMinimumAge": false, "username": "LObKjfIJ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Iy0hhrVS", "password": "dbG0acBw", "username": "HTpOC4Pj"}' \
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
    --code 'ClBIJc5X' \
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
    --code 'WYY7U4QU' \
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
    --factor '5OFfd09X' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE