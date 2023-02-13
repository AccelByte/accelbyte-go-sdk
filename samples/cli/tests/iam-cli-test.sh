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
    --body '[{"field": "CywGGJc4", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["VEtSHkmG", "8M3X6ln0", "8EyDSMYA"], "description": [{"language": "q6vh8OVy", "message": ["RnGBbVYO", "O8JtWZNo", "dLjOvNme"]}, {"language": "5ncrXO9P", "message": ["zvf5Ynum", "vPykFsZo", "QPsM3sK2"]}, {"language": "Ar6BPA24", "message": ["RLrhjD1B", "VRyEibrr", "G09EdijZ"]}], "isCustomRegex": true, "letterCase": "SWWGZrt2", "maxLength": 3, "maxRepeatingAlphaNum": 78, "maxRepeatingSpecialCharacter": 4, "minCharType": 6, "minLength": 32, "regex": "krKLQzVX", "specialCharacterLocation": "haavuRVT", "specialCharacters": ["dv0JeAmI", "pDkyHI7G", "OxEQDKcb"]}}, {"field": "nrjZk5cI", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["fWQvFXE9", "D7ZjTjY1", "HMSc2cLE"], "description": [{"language": "MJUFOg5f", "message": ["QiAwgaOD", "U62noSWG", "DzlaJLSk"]}, {"language": "JSi8WB7k", "message": ["M4dOBxcU", "NReBmw0c", "QWubCc5Q"]}, {"language": "FFBh7j1I", "message": ["ebg4JoJi", "cT6gNBTu", "sCAqeyUm"]}], "isCustomRegex": false, "letterCase": "cpo7lC06", "maxLength": 4, "maxRepeatingAlphaNum": 61, "maxRepeatingSpecialCharacter": 8, "minCharType": 53, "minLength": 80, "regex": "QPjP3T8D", "specialCharacterLocation": "MHH103kB", "specialCharacters": ["tSnWqUOw", "SQBtcknw", "RebWO1Tb"]}}, {"field": "9lRpARmf", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "blockedWord": ["RQiCikVb", "bVZ1YTRZ", "G8EAWW0W"], "description": [{"language": "2i3MxTD4", "message": ["xhZ87zbS", "FQAZBMCo", "NEUFLDnJ"]}, {"language": "PsouBlQt", "message": ["0ODrIB0a", "jckG7LfZ", "MbhKJtor"]}, {"language": "PyIP17tN", "message": ["0puAIGx0", "t9i1vBWz", "WHEJyGk8"]}], "isCustomRegex": false, "letterCase": "yWoH1k9R", "maxLength": 93, "maxRepeatingAlphaNum": 88, "maxRepeatingSpecialCharacter": 1, "minCharType": 19, "minLength": 4, "regex": "hT4MZCEi", "specialCharacterLocation": "iMBIrCAt", "specialCharacters": ["9qeaeLGI", "MausrpA9", "JlJDvTR6"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'evYHabA6' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'S2sObvKR' \
    --before 'QBGkjhUY' \
    --limit '81' \
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
    --body '{"ageRestriction": 83, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '9qDpXJH8' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 53}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'HuMAZZDJ' \
    --limit '90' \
    --offset '40' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "wnhbdi7z", "comment": "cbSln16r", "endDate": "nKjOwNPd", "reason": "6BdO1YKk", "skipNotif": true, "userIds": ["7pO6kXcG", "NbV8HkkC", "v6kbsVjs"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "0t9H97zv", "userId": "dxdeQkVS"}, {"banId": "vdoaooQv", "userId": "afbZT1Pt"}, {"banId": "avLcsUk5", "userId": "kpuXzseS"}]}' \
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
    --clientId 'O8j4Gqxw' \
    --clientName 'h7qVMXZg' \
    --clientType '2862YtZL' \
    --limit '30' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["eQhpCdeJ", "aCKqGO4x", "l9O5KzCS"], "baseUri": "oRnXLod7", "clientId": "Km5ijxXb", "clientName": "8yIVFk1d", "clientPermissions": [{"action": 2, "resource": "oVq75x1Z", "schedAction": 23, "schedCron": "qXZBdAAK", "schedRange": ["QbmxewFY", "gNUexIkk", "762j0gwv"]}, {"action": 44, "resource": "Wcp17sUi", "schedAction": 49, "schedCron": "A2QqQKCN", "schedRange": ["jNwbtvAP", "XrUuE4cc", "hWLJrJqH"]}, {"action": 73, "resource": "LQGObFUi", "schedAction": 24, "schedCron": "affWBYxX", "schedRange": ["WdbMpZG6", "b54VlOko", "zxrQ5dCw"]}], "clientPlatform": "Tb6Vldf2", "deletable": false, "description": "3Vb6qLSc", "namespace": "cgcwlRkH", "oauthAccessTokenExpiration": 63, "oauthAccessTokenExpirationTimeUnit": "9sHdfk6S", "oauthClientType": "JwsgYjuz", "oauthRefreshTokenExpiration": 27, "oauthRefreshTokenExpirationTimeUnit": "mqxltGlX", "parentNamespace": "29tcW9JL", "redirectUri": "vLgomatq", "scopes": ["2ROR4lXq", "hk4HnkzW", "6jLZSrlC"], "secret": "GKQzw3pf", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'avcmfaOH' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'wwk8IFyl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '668JlmZj' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["vDUEg7OQ", "vX2VBYqi", "tq3YBz99"], "baseUri": "Joi22I6a", "clientName": "WnWN65es", "clientPermissions": [{"action": 50, "resource": "X6l829ow", "schedAction": 24, "schedCron": "iSLqJd1f", "schedRange": ["IRievRr4", "binGrJOV", "mdfQPlAW"]}, {"action": 99, "resource": "DdDWjUb0", "schedAction": 94, "schedCron": "fxONiOkr", "schedRange": ["tfR34BFW", "ITKsgBsT", "qR6VaAb5"]}, {"action": 88, "resource": "eCjh8H7M", "schedAction": 72, "schedCron": "WHamyywg", "schedRange": ["QP2iXpL1", "pOCmHl8E", "rvgQupY0"]}], "clientPlatform": "Xp6ayP5b", "deletable": false, "description": "pzLBkMVn", "namespace": "GJUfyLkq", "oauthAccessTokenExpiration": 11, "oauthAccessTokenExpirationTimeUnit": "R8wCywP2", "oauthRefreshTokenExpiration": 57, "oauthRefreshTokenExpirationTimeUnit": "VNT2jnfF", "redirectUri": "DG1QR8wC", "scopes": ["N2j5f4L5", "fpmEDO3V", "zNHD2OKm"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '4AhCNgAl' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 77, "resource": "rHvzBO3W"}, {"action": 38, "resource": "2Ss4fi2e"}, {"action": 66, "resource": "OGWzjnXn"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '7itQ0aWr' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 37, "resource": "Y591jkN3"}, {"action": 69, "resource": "9eE2qOP6"}, {"action": 2, "resource": "PzdDRMpr"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '67' \
    --clientId 'PNDFDt22' \
    --namespace $AB_NAMESPACE \
    --resource 'JbdwW42A' \
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
    --limit '36' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YQvDHOlK' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rhUvd5Hk' \
    --body '{"ACSURL": "AZRHVzJD", "AWSCognitoRegion": "2G6gUsCZ", "AWSCognitoUserPool": "f7vaIMZf", "AllowedClients": ["7IWFh0hb", "zVMsDH74", "JQMg9fr5"], "AppId": "LlHQW64j", "AuthorizationEndpoint": "81oE336G", "ClientId": "YhpvR5NQ", "Environment": "gRUyBcRd", "FederationMetadataURL": "rPns5GCQ", "GenericOauthFlow": false, "IsActive": true, "Issuer": "Apc0PS2S", "JWKSEndpoint": "iIBj6Ubl", "KeyID": "eAixUCCr", "NetflixCertificates": {"encryptedPrivateKey": "Y4OvE7d9", "encryptedPrivateKeyName": "CPHwI7Tk", "publicCertificate": "Kd9URhqm", "publicCertificateName": "gj0PxXBs", "rootCertificate": "r6ZbILUq", "rootCertificateName": "4bvuicm6"}, "OrganizationId": "LI8125bL", "PlatformName": "OvbSn3BE", "RedirectUri": "RdNvuo0w", "RegisteredDomains": [{"affectedClientIDs": ["4yY1KXhs", "5sA2hIYA", "9UZDs0mN"], "domain": "HzYIkgpF", "namespaces": ["hSlFFZc0", "ZupH2tDJ", "iGO6tAU0"], "roleId": "P43omYiI"}, {"affectedClientIDs": ["axP8bDqP", "4cpLcudi", "JGJKXZDB"], "domain": "VqQiyUt4", "namespaces": ["dtsT4f8l", "CuJvy7gn", "1WGf9gaK"], "roleId": "BBKCZ3JI"}, {"affectedClientIDs": ["dnXVoXrd", "JDVQ28lh", "WW7gF8p0"], "domain": "owlpfhkl", "namespaces": ["j4xFZ166", "v8qC7pf8", "P90mWb8i"], "roleId": "DZZ4lEKh"}], "Secret": "e0AFvboc", "TeamID": "iKHwOLb9", "TokenAuthenticationType": "8fvBV9Cb", "TokenClaimsMapping": {"OkZIV80M": "9MZzcMwj", "v19chhZI": "y2SxGV6e", "nsgHGnWB": "bu98ZZNI"}, "TokenEndpoint": "q2OoOO8i", "scopes": ["ubMqhSRD", "ehWLK823", "2S69eCwD"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QoMp3uo6' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RkT9lFeZ' \
    --body '{"ACSURL": "BtpClySD", "AWSCognitoRegion": "rGVZlC6u", "AWSCognitoUserPool": "K6kTgD7N", "AllowedClients": ["uTk9YIos", "vcOTf2P5", "Uuc1Q3da"], "AppId": "2zY9cQ2b", "AuthorizationEndpoint": "BYVqGY8D", "ClientId": "oglswO38", "Environment": "rhaXaHac", "FederationMetadataURL": "kuyv8JJM", "GenericOauthFlow": true, "IsActive": true, "Issuer": "a6YB3Px2", "JWKSEndpoint": "CbZvAzCk", "KeyID": "JewIjjxc", "NetflixCertificates": {"encryptedPrivateKey": "yDvNMyze", "encryptedPrivateKeyName": "QPQkXbvS", "publicCertificate": "75e3gbRb", "publicCertificateName": "qvcC6X25", "rootCertificate": "aDKYou8H", "rootCertificateName": "sp9YmXCh"}, "OrganizationId": "jU8howkJ", "PlatformName": "DpGtKOAA", "RedirectUri": "1rO5ygnc", "RegisteredDomains": [{"affectedClientIDs": ["cn46aTJA", "x90TgAv3", "LH483oY2"], "domain": "LvakiUKf", "namespaces": ["LfTxBCd1", "Q0hrQHTH", "43RCk8Km"], "roleId": "6n7WMTUS"}, {"affectedClientIDs": ["2GplZfq5", "U87d9hY0", "2jw0IQPx"], "domain": "3usxnAFS", "namespaces": ["RI3KSQE1", "80kVash9", "byzWcJKg"], "roleId": "Y1YZaNgZ"}, {"affectedClientIDs": ["XuoyKbBI", "qbGFZUsC", "TfPhbXem"], "domain": "mZf2hsiJ", "namespaces": ["gRjsY2KM", "4qzp8w7U", "BIoKh4jv"], "roleId": "bCQjI74K"}], "Secret": "z0gY4lB3", "TeamID": "78ZJi7m9", "TokenAuthenticationType": "yko2bcMC", "TokenClaimsMapping": {"p1H8vrqP": "fpNwpEyo", "ZX5XAxsI": "5ViKYV46", "hT1sayP6": "rVKRwhgc"}, "TokenEndpoint": "cDNyMEOm", "scopes": ["d8njBBvW", "PGSBcJIl", "vKRKtG0P"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GzWUoHwj' \
    --body '{"affectedClientIDs": ["f1Upigp5", "PCQPSlQa", "d8LTWG5B"], "assignedNamespaces": ["BZbWOjHx", "TZtAYtTN", "GJebFtqt"], "domain": "TpTD3QpU", "roleId": "yycoBNd0"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2lgvcZ8o' \
    --body '{"domain": "S6d3LNFb"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'LLs6BlPb' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'JUSt7a6c' \
    --body '{"acsUrl": "d5zpsaPq", "apiKey": "8LN8rX2h", "appId": "hu4bDSVV", "federationMetadataUrl": "HC6F8vG6", "isActive": false, "redirectUri": "SNK0p3xB", "secret": "94nqbKLc", "ssoUrl": "1IYQHepO"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'X9q6nyjy' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'BpAoOrqf' \
    --body '{"acsUrl": "Eay8vora", "apiKey": "H2GlD9qI", "appId": "G2v0XyhJ", "federationMetadataUrl": "V7FqoByW", "isActive": true, "redirectUri": "CV9qPtGF", "secret": "fMwi8t85", "ssoUrl": "JqIaXi3n"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WegGjSBZ' \
    --platformUserId 'wnIWLQML' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'moAZcXRB' \
    --after '79' \
    --before '39' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'Z0VpubW7' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["iRQCtajl", "xXgvj3dR", "4QGzGWqI"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["28TQpXpK", "h5J8Rjee", "fraLJRLi"], "isAdmin": true, "namespace": "del6fopp", "roles": ["SXt3pgk6", "xF1KROKk", "xS1T623l"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '24' \
    --platformUserId 'mQE1UAl0' \
    --platformId '7V0XqqzK' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'fazDxwt2' \
    --endDate 'x9D9X08i' \
    --limit '45' \
    --offset '6' \
    --platformBy 'VbZmt8np' \
    --platformId '4NzRMaRQ' \
    --query 'GSkeDKAS' \
    --startDate 'A66804U9' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ECAq6bGi", "WrcNZra6", "e6RxleAQ"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '79cMw5Ou' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'H00HKvxd' \
    --body '{"avatarUrl": "1qKUdnY7", "country": "Ry9LgpUk", "dateOfBirth": "nFfpubZh", "displayName": "DmNUUE09", "languageTag": "hefk1HIv", "userName": "0onnDiOO"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hLpvLMSr' \
    --activeOnly 'false' \
    --after 'euNr8w4L' \
    --before 'kiCTbP5J' \
    --limit '98' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zrm0svye' \
    --body '{"ban": "Z5INzWE1", "comment": "e5d1nhJN", "endDate": "paT9KQk7", "reason": "TCKb8i8Y", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'AEKO99o8' \
    --namespace $AB_NAMESPACE \
    --userId 'hDsIf1Hx' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SDcZwQjP' \
    --body '{"context": "o0TuwSIB", "emailAddress": "rR5cgJoy", "languageTag": "DGNc6xCD"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pWSvWG2P' \
    --body '{"Code": "d1tUntzM", "ContactType": "nmw66xyo", "LanguageTag": "ZbY1Pipp", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'B61u90pZ' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Sv5Ad68H' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '7IRj2kRt' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eWMvtkYM' \
    --body '{"code": "zrcfbxf2", "country": "ybFp4LwK", "dateOfBirth": "aCijqray", "displayName": "nZIPRtfn", "emailAddress": "XuMzZhRy", "password": "I70fWLvX", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OOBF8EBI' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qW47Eux6' \
    --after '0.9132691475134328' \
    --before '0.15585843655499332' \
    --limit '89' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LK7gA2up' \
    --body '{"languageTag": "7elfMmME", "newPassword": "qrPx5Idr", "oldPassword": "kK9NcWFt"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId '6DyqUGCZ' \
    --body '{"Permissions": [{"Action": 87, "Resource": "BPPYUYUn", "SchedAction": 80, "SchedCron": "3UyeY57J", "SchedRange": ["Yz83dFRT", "I9Btajjf", "qQ7w3wYX"]}, {"Action": 73, "Resource": "jML5CXrv", "SchedAction": 46, "SchedCron": "qKdCeqO0", "SchedRange": ["fVC8MqTA", "fEvrtrLy", "ulnGRUSC"]}, {"Action": 64, "Resource": "oHLi3yef", "SchedAction": 98, "SchedCron": "JoHRGOxV", "SchedRange": ["DzDiBiSD", "MyIKqpeG", "PFewX9UH"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '3giIKp88' \
    --body '{"Permissions": [{"Action": 59, "Resource": "hwZcgn2n", "SchedAction": 88, "SchedCron": "l1aLn8Kq", "SchedRange": ["ru2mdG0t", "s1h7tBHC", "paLFdbH4"]}, {"Action": 35, "Resource": "pnq02OLN", "SchedAction": 1, "SchedCron": "tKAupOfF", "SchedRange": ["8HEweFEq", "65S8Ak0d", "iEGgHLUB"]}, {"Action": 49, "Resource": "DqXQUMOS", "SchedAction": 68, "SchedCron": "WImZSMTD", "SchedRange": ["qCELaOEX", "pBB5CZul", "bg22A26H"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '0MPdnmj8' \
    --body '[{"Action": 76, "Resource": "UzyAbyg3"}, {"Action": 30, "Resource": "eSQwvClJ"}, {"Action": 17, "Resource": "YcSPttHM"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '52' \
    --namespace $AB_NAMESPACE \
    --resource 'imOhNYOL' \
    --userId 'wCyr5e9P' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RGOIQ1MW' \
    --after 'yki6X0Fn' \
    --before 'pZnEnqsW' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'SO5ME6Ry' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'f4xmM8fG' \
    --userId 'nBzgItmK' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'I8AjYNHQ' \
    --userId 'WEYj55PF' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'QwJ4i29b' \
    --body '{"platformId": "wOLBDnPZ", "platformUserId": "jTsDdfXi"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T7ginEsp' \
    --userId '271PnHiC' \
    --body '{"platformNamespace": "b1QX33zm"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Zc3WtRh6' \
    --userId 't6Rmy742' \
    --ticket 'i5cH6eEY' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '766vpidL' \
    --userId 'LrSOFEnC' \
    --platformToken 'mjLyM7PB' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '4sxuEL7i' \
    --body '["lNTy5uiz", "zH5XArBw", "hs1g05th"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y5oWxwhu' \
    --body '[{"namespace": "BKtEXuxu", "roleId": "xAMD0lbG"}, {"namespace": "RvXSCgVD", "roleId": "ogd8v1Dh"}, {"namespace": "UshGnIAs", "roleId": "qLFrRZqI"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'mmf7CJz1' \
    --userId 'TQa695Th' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '22AQ0XRp' \
    --userId '41m2liKz' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DzPzCxLW' \
    --body '{"enabled": false, "reason": "Qii18XIs"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'X2uvwh5O' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'H2u74RV8' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "bFX2AU0X"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'JUxIlrDe' \
    --before 'fc11DTR8' \
    --isWildcard 'true' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "VCIU1ocf", "namespace": "NSTU1rTD", "userId": "vw0vTfK6"}, {"displayName": "1lo5Uqsa", "namespace": "EKe3UZF6", "userId": "yDDVObwu"}, {"displayName": "pKUMTOlM", "namespace": "1tyt33Xu", "userId": "xP2G0Kep"}], "members": [{"displayName": "2UHIi07X", "namespace": "Effx0Xpv", "userId": "doGP8NsS"}, {"displayName": "Z5c3c3pA", "namespace": "HTupbGJE", "userId": "lzqt5qce"}, {"displayName": "4Ew2Jp0L", "namespace": "nU8FXcPA", "userId": "eiZrbmGC"}], "permissions": [{"action": 28, "resource": "SD9bGhu7", "schedAction": 92, "schedCron": "9Tx16Xaq", "schedRange": ["tgaJlvyX", "HysYoE33", "cxtDWdtz"]}, {"action": 73, "resource": "Pu9I3pBv", "schedAction": 73, "schedCron": "ehaLzhyC", "schedRange": ["CBEUNS0M", "bpapOpZA", "5hxpOVBU"]}, {"action": 40, "resource": "6tOad2oC", "schedAction": 1, "schedCron": "aiXOGyQS", "schedRange": ["3BDQXxeZ", "iuvDZPUP", "VSiybvGj"]}], "roleName": "zIf12KfH"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'LR86i6n9' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'SYJbUjuz' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'emY0LxTe' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "iRV8na2S"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'zkXAdFqW' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'KxM7W1oZ' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'GiDgY4KZ' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'd83h1d9r' \
    --after 'y52vEQj2' \
    --before 'Cqe2RVw3' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'Yb47q9zJ' \
    --body '{"managers": [{"displayName": "kgUWUAsi", "namespace": "BjncvWUK", "userId": "pu2X5ZER"}, {"displayName": "vbkS5Vqm", "namespace": "AxEyYjZX", "userId": "PiUxRKqq"}, {"displayName": "z4elsH4Q", "namespace": "mQvpieT9", "userId": "Yf7Rdl1g"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'LMBJAjYE' \
    --body '{"managers": [{"displayName": "Uxd2nYj7", "namespace": "0RAUISMH", "userId": "qBf0BgEM"}, {"displayName": "8sHMXWhs", "namespace": "vA6HQ87H", "userId": "H0ePSwTq"}, {"displayName": "pxi36r4c", "namespace": "5acmSPkL", "userId": "EXbAmMKh"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'Pe7s05pY' \
    --after '8ELOk235' \
    --before 'vkmeY9eX' \
    --limit '73' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'H4fhKZEK' \
    --body '{"members": [{"displayName": "oSsGCWRf", "namespace": "1A4y9MFo", "userId": "5ViqAb5S"}, {"displayName": "XTEGbuQJ", "namespace": "mYc1Jw44", "userId": "8FhJtn5L"}, {"displayName": "eyafiS4u", "namespace": "vFZwhoV6", "userId": "aSHccBSV"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'TUKruI6b' \
    --body '{"members": [{"displayName": "6o7doKAo", "namespace": "TJEzHZpo", "userId": "yQkAGKMp"}, {"displayName": "kp5KTAZP", "namespace": "JTcSfL1X", "userId": "D6uIDJIG"}, {"displayName": "NGR0pd4o", "namespace": "0owrMGoK", "userId": "hZwCwPcM"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '2radhl1F' \
    --body '{"permissions": [{"action": 70, "resource": "pIVeFh0w", "schedAction": 97, "schedCron": "B1br1FpJ", "schedRange": ["KyxdjEcz", "25jkEisC", "SQpvBMXc"]}, {"action": 21, "resource": "BoSfTsoa", "schedAction": 82, "schedCron": "HXUGk9oD", "schedRange": ["StMIU87b", "p8m4vbJn", "C9tZuMOq"]}, {"action": 61, "resource": "T2utJKoX", "schedAction": 54, "schedCron": "VzI6oJmD", "schedRange": ["cUnuropx", "BdTcKtQG", "WJQCXd0q"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'FavSijMV' \
    --body '{"permissions": [{"action": 95, "resource": "KY3d4njl", "schedAction": 60, "schedCron": "NNntvd5z", "schedRange": ["w5OGR8ST", "sr8CY2kS", "mItGTNwe"]}, {"action": 85, "resource": "GzoLvW1F", "schedAction": 12, "schedCron": "Xmw8nLi2", "schedRange": ["zfjm1VQN", "Er4wj74Y", "r03SgleB"]}, {"action": 71, "resource": "Cy6DFApo", "schedAction": 51, "schedCron": "NOGE0EVv", "schedRange": ["HjInxFRa", "2ncyEMfp", "whxDVEnv"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 't789SduN' \
    --body '["Yw0wU2ky", "ZA6oyIsM", "sz2MfIZu"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '35' \
    --resource 'dkZvoKpO' \
    --roleId 'l5vvEOEj' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '3pZLHJcM' \
    --extendExp 'true' \
    --redirectUri 'prhXChOg' \
    --password 'YEAQD1w2' \
    --requestId 'CqdQ2ZLD' \
    --userName 'YPtCBx0d' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '7KS6BdEs' \
    --linkingToken 'cMcTF9PV' \
    --password 'VLjLzveG' \
    --username 'XprrnIzS' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken '5PGePAkF' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId '8GxQwrVA' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'SdQ1UjW9' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId '8eaeFpYJ' \
    --oneTimeLinkCode 'Vk4GUGra' \
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
    --clientId 'Gqpe6tDT' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'THnL0veu' \
    --userId 'LFj7EDCF' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UeFDbE0h' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 's1ueN7TW' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode 'kV6brOZt' \
    --redirectUri 'KU1Du8x1' \
    --scope 'AyczqCBl' \
    --state 'nQFFh1Bx' \
    --targetAuthPage '4DGjnYHH' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '9CyF3eUd' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'QnhOpVNE' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'Oed6XgT9' \
    --factor 'Nhqn0GF9' \
    --mfaToken 'S5dD0i7e' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '2NnlthAB' \
    --mfaToken 'gFrVTJPB' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'l5RI6mVk' \
    --factor 'pYqZ8M16' \
    --mfaToken 'G5Bfsq7u' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LH380XIb' \
    --userId 'dxeLMkES' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Qo0SvbOa' \
    --clientId 'ZGmGxFRm' \
    --redirectUri 'ZZ9Id2Ov' \
    --requestId 'qgEfBCvB' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'Hv40qBVb' \
    --clientId 'A1doWXU0' \
    --createHeadless 'true' \
    --deviceId 'tnKEr1ce' \
    --macAddress 'LQtPgRd9' \
    --platformToken 'vHPwZsWU' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'nLrUn5fd' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'kwW4fsBs' \
    --code 'gd3dMQjc' \
    --codeVerifier '4TYbDFFU' \
    --extendExp 'true' \
    --password 'gqBIERSO' \
    --redirectUri 'x9kKEa8o' \
    --refreshToken 'siKOE4Rq' \
    --username 'k1heEfwS' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'I3gM8qnT' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'JxtoOTTf' \
    --code 'IHZbPS3c' \
    --error 'XE2GWLLh' \
    --openidAssocHandle 'FhzOuMl7' \
    --openidClaimedId 'BpIwdW2c' \
    --openidIdentity 'SFru5lQi' \
    --openidMode 'pf3sLdx9' \
    --openidNs 'lWjyxOjJ' \
    --openidOpEndpoint 'kTgwrHhF' \
    --openidResponseNonce 'WW00RQdJ' \
    --openidReturnTo '2lJsWGpG' \
    --openidSig 'S6oKawtw' \
    --openidSigned 'S9f47P6L' \
    --state 'oTMG2LIM' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'A4zdJlUH' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '9UTKb9Ga' \
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
    --clientId 'bRxNH9LG' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'oWC4Guwd' \
    --body '{"platformUserIds": ["PcUrCeKU", "lgjxexCL", "K1EUf9LP"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jzEVIxVt' \
    --platformUserId 'bXmki2U4' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'QFepvnW0' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'OzsvIWXD' \
    --limit '48' \
    --offset '42' \
    --query 'PJiiY5Zf' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "OfnKYvFk", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "530RJY4F", "policyId": "slyFEFTl", "policyVersionId": "QgHIoUxz"}, {"isAccepted": true, "localizedPolicyVersionId": "lb5UjcFB", "policyId": "2sjdPA04", "policyVersionId": "s2P4uVBW"}, {"isAccepted": false, "localizedPolicyVersionId": "faFd9r97", "policyId": "KyHuNzcl", "policyVersionId": "ZbohBRQ2"}], "authType": "ZudqfpUp", "code": "lzNcWCF0", "country": "CIcLWUVh", "dateOfBirth": "ulKB7TRI", "displayName": "wzIlhX5y", "emailAddress": "u0G5D6Zz", "password": "HAD7cVJn", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'G9Vv9NXT' \
    --query 'yeduxFEx' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["P0Wa4w4V", "mePXAmqh", "LCyujR9v"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "FwS11TSN", "languageTag": "vSVb3q97"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UOYgGZod", "emailAddress": "qLdkV1nh"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "qEixoIKP", "languageTag": "2zm7TDtV"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'JgL4pdAw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'G6pUGQ13' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wmIPToVO", "policyId": "txYDHbQw", "policyVersionId": "YpZ6uN9u"}, {"isAccepted": false, "localizedPolicyVersionId": "6JVt3sXr", "policyId": "CJoGNrfR", "policyVersionId": "0cCDsaaE"}, {"isAccepted": true, "localizedPolicyVersionId": "hvFjGwtD", "policyId": "oxePkegV", "policyVersionId": "w5VLyYwB"}], "authType": "EMAILPASSWD", "country": "gPdowtG8", "dateOfBirth": "DFXrC846", "displayName": "dZ355lpj", "password": "mPEffecV", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "QFnVjLHi", "country": "KbvKTHm2", "dateOfBirth": "wyylY3tx", "displayName": "HBtUPY3D", "languageTag": "7EPO0pMJ", "userName": "LvhIgO3Q"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "sXFUWQzL", "country": "8CWr2IDW", "dateOfBirth": "ebdwh2mY", "displayName": "2Z3HSZHk", "languageTag": "3wIfiAme", "userName": "63VsnSGI"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "YhDItrAM", "emailAddress": "M2367z0V", "languageTag": "OlIMmNCz"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "i5MFBx4P", "contactType": "Bc3CXDco", "languageTag": "0QOMKL6Y", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "N3G0aFft", "country": "uhcv6shU", "dateOfBirth": "6baLYNlK", "displayName": "AyfGK1Sn", "emailAddress": "sGpEHAAy", "password": "MZQ6gjAX", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "MotKaAxM", "password": "dM6T4p2o"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "WYcw15QA", "newPassword": "hjhQEijX", "oldPassword": "5lWjfi0h"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'RXOYwYie' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'R4uQz0ME' \
    --redirectUri 'TGHiFQ6t' \
    --ticket 'M6Rk2ioE' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4wC1pWwk' \
    --body '{"platformNamespace": "jnvQJDMz"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7hfEVGOV' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4blybdNB' \
    --ticket 'sNFgeZhX' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'PNtDluCc' \
    --clientId 'QZHx8Zz3' \
    --redirectUri 'XHihwY9V' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'CtE3Rsei' \
    --state 's92kAIEt' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JJYYsf4v", "emailAddress": "GJy6F7n7", "newPassword": "aThMbjfb"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Eya1YR27' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AyzNOj59' \
    --activeOnly 'false' \
    --after 'ETGEjSG9' \
    --before 'WLW8qVUv' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VWAvK7ts' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FPTIreif' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bow4LIeq' \
    --after '0.9044484633643786' \
    --before '0.24806387471678648' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zUAdnyWs' \
    --after '2Uf9bwD6' \
    --before 'dKLNkvCw' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hDQJHEUL' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Mg4Tu7YZ' \
    --body '{"platformId": "BGXQ1Dxr", "platformUserId": "Q5VGiiRJ"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'QGYRLEkv' \
    --body '{"chosenNamespaces": ["HZ5htbDQ", "WSKC0vmg", "q42y4bll"], "requestId": "K0FqJlVK"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nzAZBVWp' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z8ykGn2S' \
    --password 'l2LzGFnt' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '3cNAmMxb' \
    --before 'Xn2QIwyc' \
    --isWildcard 'false' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '7hB7KZ0u' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'nfUZBNFq' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["kYxBTInI", "79y3hikD", "n5gbm7WD"], "oneTimeLinkCode": "8n3Vpn8J"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "OFIQLfGX"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'Bh9p6sxq' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '2l5V14jL' \
    --code 'Ww9CPMKw' \
    --error 'liZU5sy3' \
    --state 'CvFaG4OQ' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'wndo4AZT' \
    --payload '25aBp8H9' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'ioU23t8g' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'OTSFpgdm' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '0BNIW5bR' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'FaDnBglm' \
    --endDate '0fZ3ruCW' \
    --limit '22' \
    --offset '71' \
    --startDate 'cFd9iXLt' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '8ECgwY7u' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "KPR3yNMU", "deviceId": "YvRbzakQ", "deviceType": "WedNX8eW", "enabled": false, "endDate": "JEbdwtsN", "ext": {"6Ya2O0Bm": {}, "kZoZALQq": {}, "blcKmNzH": {}}, "reason": "3EAtqF4G"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ZuCzs7lG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'H4GhCQNR' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'Y3YZNTFk' \
    --startDate 'VaYL4lES' \
    --deviceType 'gYpdlVqT' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'nanqSMQy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'LnahdH2K' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'O30nynrt' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '1KpmLeeY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 54}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["7FEmagV3", "hVDO0wpj", "sXlFCL3I"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aeEpD2DA' \
    --body '{"avatarUrl": "k6pV3kc0", "country": "knGfCLSW", "dateOfBirth": "BFLv4Iqx", "displayName": "pl8KHQN4", "languageTag": "Tugo70CB", "userName": "A24xj7C8"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dCFdJySs' \
    --body '{"code": "2GfDvqkX", "emailAddress": "PgpIehG0"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '0oZtNZd9' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qjQklZyX' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'nsqUKEjR' \
    --body '{"assignedNamespaces": ["8HkyeB6v", "sVod56tq", "nsPvua11"], "roleId": "FqG5Jfxa"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Mp8NRdpm' \
    --body '{"assignedNamespaces": ["n5hOhH87", "8hrIVC1u", "1gFjgl35"], "roleId": "G3KuPtWI"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'EoBFyH7c' \
    --body '{"assignedNamespaces": ["9pMrhMBD", "0IiEeYjX", "SNxVNqRx"], "roleId": "rDwn6DCh"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '25' \
    --offset '26' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "iV2w27PO"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'YOX5jHIH' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'qkVjkZI0' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '3OB40q4R' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "IDR2tgYL"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'zY6R0Fk9' \
    --body '{"permissions": [{"action": 64, "resource": "6sndrqvs", "schedAction": 52, "schedCron": "PYTONfbw", "schedRange": ["7SIe1BfU", "LXPWD0Dd", "AtzMMyT5"]}, {"action": 26, "resource": "PWn0veXx", "schedAction": 1, "schedCron": "7R8hbmuu", "schedRange": ["lzgl5lPs", "T1MswqIB", "JkCxOgl1"]}, {"action": 17, "resource": "6JZW1HH2", "schedAction": 69, "schedCron": "Q7akkuza", "schedRange": ["DU4MKIVe", "JKnUoJia", "rNM2760l"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'c8PCNghO' \
    --body '{"permissions": [{"action": 97, "resource": "zejDIZMz", "schedAction": 39, "schedCron": "gu4EDNDi", "schedRange": ["k5owW06R", "sxycDag8", "CUho6cw6"]}, {"action": 41, "resource": "6uesFeVo", "schedAction": 11, "schedCron": "vMzauiWc", "schedRange": ["RlA1xQ1u", "9HVmgWzT", "KDOziIiS"]}, {"action": 94, "resource": "tELPW4OM", "schedAction": 76, "schedCron": "UHQJMPNf", "schedRange": ["3xn1D4Ux", "OBdd11ZI", "l5mxBmMT"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'OJeVJ57I' \
    --body '["0thteTvs", "kKObBgTd", "Nq6MjwBM"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'NYygIDMm' \
    --after 'R5PatiKe' \
    --before '9MTEXuT2' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'C9Am8X57' \
    --body '{"assignedNamespaces": ["O3yKKot0", "21cluRwm", "ZTN9hlly"], "namespace": "v7lf0RlW", "userId": "ZUgncr9w"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'lk3bwDBP' \
    --body '{"namespace": "hLUrQnA5", "userId": "lsC2qLby"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "nJBIH47C", "country": "ECGuiW3s", "dateOfBirth": "JV42yxZk", "displayName": "8dPV42KC", "languageTag": "Yuad6dvc", "userName": "JwAGTQjP"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'eYYBRvH5' \
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
    --code 'nTRv0ctz' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'ZDjtSRUG' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["RAjKGXPc", "BACOmzAQ", "5vxTzQMT"], "emailAddresses": ["6UvNkuVw", "l4RHRBco", "19keYS3Y"], "isAdmin": true, "namespace": "rSAjiVMt", "roleId": "VyxRNfep"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "yaanJ7at", "policyId": "bfuYi77w", "policyVersionId": "0ovNzERG"}, {"isAccepted": false, "localizedPolicyVersionId": "bMQo80bs", "policyId": "kFlPQG3L", "policyVersionId": "EbnNYqP0"}, {"isAccepted": false, "localizedPolicyVersionId": "pGB0puZQ", "policyId": "EoVU05DI", "policyVersionId": "gLjUb6Ji"}], "authType": "EMAILPASSWD", "country": "H0vpchvO", "dateOfBirth": "Vx8AOM8m", "displayName": "wAc3N0H2", "emailAddress": "ms1uZP5z", "password": "6TbOYYU5", "passwordMD5Sum": "HJ6OMNlF", "username": "DLtavZCL", "verified": true}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "OqskOaDT", "policyId": "61TiICKf", "policyVersionId": "Opw2MUKC"}, {"isAccepted": true, "localizedPolicyVersionId": "vQqNTcxl", "policyId": "aDC9StkC", "policyVersionId": "4kv1Tm4y"}, {"isAccepted": true, "localizedPolicyVersionId": "MwCZv0YI", "policyId": "L7k0byyn", "policyVersionId": "g6NQTOsk"}], "authType": "EMAILPASSWD", "code": "xbyOY0JC", "country": "nR6VGEvw", "dateOfBirth": "ipd9D36L", "displayName": "vSiVYhmQ", "emailAddress": "rjd1jQY8", "password": "OlPmQwg3", "passwordMD5Sum": "4QGVifU4", "reachMinimumAge": false, "username": "tJZoiatd"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'BAWWRvx0' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ivryCfkE", "policyId": "nOdaXMyX", "policyVersionId": "KN0LhEXe"}, {"isAccepted": true, "localizedPolicyVersionId": "QzyKvitT", "policyId": "MqP3Vcgh", "policyVersionId": "KTaSOsDN"}, {"isAccepted": false, "localizedPolicyVersionId": "qH4e67GW", "policyId": "SpUeKqQm", "policyVersionId": "3GegW58P"}], "authType": "EMAILPASSWD", "country": "jdW8DmCb", "dateOfBirth": "oig4NqyI", "displayName": "Nwo3ces5", "password": "exyJMmc6", "reachMinimumAge": true, "username": "r5gfez7K"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "7xAklVXJ", "country": "aN02nVwU", "dateOfBirth": "cEFHPU9b", "displayName": "VDioS8Yt", "languageTag": "hfMQF4DF", "userName": "hWyNWycL"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qfZmXEqQ", "emailAddress": "YGPZE37t"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UqjA5VVy", "country": "d0nfEQ2N", "dateOfBirth": "0b9otbT5", "displayName": "9eYjluRc", "emailAddress": "1opicqol", "password": "7uKWYFAI", "reachMinimumAge": true, "username": "lPVrCbuc", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "kOTbWaL0", "password": "aUAi2RKo", "username": "GqbDpBBZ"}' \
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
    --code 'qNnaKa2M' \
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
    --code 'c04Gndh5' \
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
    --factor 'HdWMRNrS' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE