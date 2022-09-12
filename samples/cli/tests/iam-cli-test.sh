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
echo "1..321"

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
    --body '[{"field": "fE4nZPwc", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["8aUBE7Nx", "Am9uogCY", "S6YFicr8"], "description": [{"language": "l0YsWfCr", "message": ["jr0274LV", "iyvwGcBg", "fIiLq9Hk"]}, {"language": "RZJb7ZAV", "message": ["FPzk8bh3", "g2QMOLPz", "D8E2y7rE"]}, {"language": "YgkiIGQ6", "message": ["LAWYYdOI", "9wTFa0vZ", "qmGMiE14"]}], "isCustomRegex": false, "letterCase": "y8GHCmwL", "maxLength": 14, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 11, "minCharType": 35, "minLength": 67, "regex": "jp7F9pIl", "specialCharacterLocation": "zVk3OuNu", "specialCharacters": ["snMedlVJ", "JqbbrVYF", "R3lzr6PI"]}}, {"field": "WsdYw3hJ", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["jwMenpbC", "NLoTfAN5", "VZPMxYr6"], "description": [{"language": "anIjp7O9", "message": ["0HMvOT5k", "zsQJXFPd", "FpfDuUCG"]}, {"language": "anr67a2k", "message": ["BIue56o9", "9btWMK40", "7beRzZ9H"]}, {"language": "WSvfrr63", "message": ["yOkowUG0", "hunwG2Py", "AUfYveAs"]}], "isCustomRegex": false, "letterCase": "tzyY7Kv2", "maxLength": 80, "maxRepeatingAlphaNum": 11, "maxRepeatingSpecialCharacter": 2, "minCharType": 87, "minLength": 14, "regex": "UgRmyCbG", "specialCharacterLocation": "vhF3wcp4", "specialCharacters": ["5s09Bsxy", "qQoiSgm0", "GTaoQ0yb"]}}, {"field": "uGBuojXO", "validation": {"allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "blockedWord": ["HtrWtWdr", "GeBaapqK", "2oG0q80p"], "description": [{"language": "9bFCx5R4", "message": ["yZ8zoKms", "8io0TLUj", "N1Ut5U3S"]}, {"language": "82uwbjLA", "message": ["Tweo47YN", "PxICAZa4", "bQo4fPwV"]}, {"language": "69qqhKfh", "message": ["YhGrhwLl", "SeTENwJ2", "OdsmJ6Sn"]}], "isCustomRegex": true, "letterCase": "sHUTQt7D", "maxLength": 71, "maxRepeatingAlphaNum": 39, "maxRepeatingSpecialCharacter": 97, "minCharType": 29, "minLength": 33, "regex": "b2jnMiBp", "specialCharacterLocation": "Y8il3SfX", "specialCharacters": ["YEWV8aXr", "NlhxYEs4", "NzAiHKcC"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'aZLtWWMp' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'aoeFNp8s' \
    --before 'OmmPM6Tr' \
    --limit '46' \
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
    --body '{"ageRestriction": 51, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'RxZ1L9mx' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 57}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'l5R4wJNV' \
    --limit '42' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "bCQiaxAv", "comment": "aRNGfHzK", "endDate": "XB7cgc9e", "reason": "8G6VV8D7", "skipNotif": false, "userIds": ["lhaQ4pXm", "sFwzlutF", "kQaqKj6s"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "V8kzDRqf", "userId": "BwyQm0oH"}, {"banId": "T02hRpbL", "userId": "9s2gBexz"}, {"banId": "WhNcBhZE", "userId": "nhD5fpjf"}]}' \
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
    --limit '92' \
    --offset '41' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["GLGhOYF8", "Kz5UpGA2", "Iv9qGXqG"], "baseUri": "q4Gq3eu0", "clientId": "DNV2rfNy", "clientName": "KkMu643K", "clientPermissions": [{"action": 16, "resource": "bzKEk1LH", "schedAction": 44, "schedCron": "3dLcCrIK", "schedRange": ["FUrxyX5a", "MNHYKxdp", "TwmMWfC5"]}, {"action": 55, "resource": "DHZCWRnA", "schedAction": 2, "schedCron": "1JIdxLx5", "schedRange": ["aiiuUTvd", "kBcmSlON", "NcGazRGN"]}, {"action": 32, "resource": "io8sPhfB", "schedAction": 50, "schedCron": "Xu6i6IPH", "schedRange": ["9RBjoCmh", "mov5nrcE", "Laq5SbLT"]}], "clientPlatform": "ZiPUby2o", "deletable": false, "namespace": "UJOdeHV1", "oauthClientType": "W7yqot9e", "redirectUri": "ZJAxfFeC", "secret": "EDPUyAOh"}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '7jUcpmcZ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'CTjPG9ad' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'E3eKK6Hg' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["4CBx4e7J", "i1T7nJTA", "ELj9AYWA"], "baseUri": "CRIQtPaR", "clientName": "tjuYUIoY", "clientPermissions": [{"action": 47, "resource": "Q4bSnoT3", "schedAction": 1, "schedCron": "Wqq3UoeR", "schedRange": ["8ieXZ3OZ", "DlBRMJJt", "H1s3qYfx"]}, {"action": 25, "resource": "xd36eq3H", "schedAction": 86, "schedCron": "CFoTiOuQ", "schedRange": ["XB6AtuTM", "qKwVduYw", "l3e0rlBQ"]}, {"action": 48, "resource": "7LMbhFQ2", "schedAction": 5, "schedCron": "M40RydU2", "schedRange": ["4pFev0LP", "2zg5WVlV", "CP4Eq8cl"]}], "clientPlatform": "irMIjOEo", "deletable": true, "namespace": "N1EhYMnU", "redirectUri": "0m2GXBz1"}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '7eE9CPvH' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 85, "resource": "6pLHG3HL"}, {"action": 12, "resource": "dIg4tod5"}, {"action": 55, "resource": "Dt4ZghfH"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'NdNzvXug' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 51, "resource": "Yi3EgoLQ"}, {"action": 95, "resource": "ixhu2tfK"}, {"action": 91, "resource": "fBwxLoti"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '35' \
    --clientId 'j5hRCNYf' \
    --namespace $AB_NAMESPACE \
    --resource 'jDKBZzED' \
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
    --limit '84' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1nzNaGxZ' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cTv24xjV' \
    --body '{"ACSURL": "shvm0us0", "AWSCognitoRegion": "yrV870SG", "AWSCognitoUserPool": "3qtQHTMG", "AllowedClients": ["tjZXO9eG", "nvbrWVAM", "Sb0m1JwK"], "AppId": "XS9f1t3B", "AuthorizationEndpoint": "BDLzqU7L", "ClientId": "sEo6W2B1", "Environment": "HnKXQtjH", "FederationMetadataURL": "7lr7tHkV", "GenericOauthFlow": true, "IsActive": false, "Issuer": "tGDXqRah", "JWKSEndpoint": "IEyONEWl", "KeyID": "kDGucXFf", "NetflixCertificates": {"encryptedPrivateKey": "28dLSqPO", "encryptedPrivateKeyName": "zJl9vhKM", "publicCertificate": "Lz4sJgSO", "publicCertificateName": "tXBe0YaQ", "rootCertificate": "gLmOOraa", "rootCertificateName": "FdK8pInL"}, "OrganizationId": "FEtcnZHa", "PlatformName": "B4wjQMpC", "RedirectUri": "j76fLqIx", "RegisteredDomains": [{"affectedClientIDs": ["OKG8oJAW", "6Ub3QKfE", "rgtcL746"], "domain": "fzHx9TCP", "namespaces": ["sLk6n7pM", "2bZfDsSO", "eiWWkxN7"], "roleId": "Qa80VT4Y"}, {"affectedClientIDs": ["Hq4FVgdV", "bZ7Bo5jE", "ffIdZQvc"], "domain": "1K4vbgQy", "namespaces": ["qoNYGxXD", "KhrzYMO1", "WK8FJJXd"], "roleId": "zfGDi7TR"}, {"affectedClientIDs": ["gBk3RnoH", "iELt9KeD", "daYPefao"], "domain": "q97nyw58", "namespaces": ["xpJNXAA3", "SZnEVrtG", "XmqBsXou"], "roleId": "tEqTAy7s"}], "Secret": "0hsNppJA", "TeamID": "m0YFwTx3", "TokenAuthenticationType": "iMyPzNMC", "TokenClaimsMapping": {"PKoLBIqc": "W4cA0ma1", "rHwtFYGV": "JzfWYpNP", "HFxbPTd9": "Zh4lD5wU"}, "TokenEndpoint": "uZMsI6Au"}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T5IPzGR0' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iLB4cyxS' \
    --body '{"ACSURL": "oxWbFH8M", "AWSCognitoRegion": "ZWUxEku2", "AWSCognitoUserPool": "dmGKzX4G", "AllowedClients": ["d8ubOSFg", "RV1FKjtm", "n3vbTeUH"], "AppId": "PaDwbTEv", "AuthorizationEndpoint": "Wa9sCgyd", "ClientId": "79Osxr7S", "Environment": "4XOzyA6z", "FederationMetadataURL": "ACXEAQEv", "GenericOauthFlow": true, "IsActive": true, "Issuer": "TST4Zpze", "JWKSEndpoint": "6EJFQwQ5", "KeyID": "OT3lBxU1", "NetflixCertificates": {"encryptedPrivateKey": "yp4yg9Q6", "encryptedPrivateKeyName": "PD24fSAr", "publicCertificate": "cgL3tleo", "publicCertificateName": "Kym5ffDX", "rootCertificate": "zS6nM1fc", "rootCertificateName": "BshWa6vA"}, "OrganizationId": "omQGsAxU", "PlatformName": "Na4svYZo", "RedirectUri": "GlZfQeDy", "RegisteredDomains": [{"affectedClientIDs": ["PTvNCDuG", "eTgAGgwy", "PHHUpjYi"], "domain": "3UguXBp6", "namespaces": ["t67vpw34", "UH7LhSfP", "bkyehVzE"], "roleId": "fhSvV4oT"}, {"affectedClientIDs": ["PRsMuPTV", "zxZfXAg2", "JgFSLYTD"], "domain": "zUSJFwVF", "namespaces": ["JqRL6TTz", "cF3EfzEF", "hnOZ6T4E"], "roleId": "FU83Nhv8"}, {"affectedClientIDs": ["a2GswDLS", "b2ihDKec", "4HJjFogT"], "domain": "eOuLkwIo", "namespaces": ["09VYsvwr", "pMt3MOdW", "JvvqSpRd"], "roleId": "L2P4IDCh"}], "Secret": "f66spTVW", "TeamID": "YHdOElUx", "TokenAuthenticationType": "y590aT3c", "TokenClaimsMapping": {"bbcJm44q": "dYjsGekJ", "C9JScssm": "wzZZfbVW", "ZVICHMFg": "aeasI2hz"}, "TokenEndpoint": "IhY5yDjT"}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tpiFrBXu' \
    --body '{"affectedClientIDs": ["oEfZz2iF", "EPoZrdXO", "lWiblgJK"], "assignedNamespaces": ["RogMrUNH", "eZZo7hJQ", "MvHsnTwk"], "domain": "shXz7OAx", "roleId": "bSAvMhfi"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fQmPiliB' \
    --body '{"domain": "EkEOfHCg"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'rtLxSd5H' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'kW8IU8tO' \
    --body '{"acsUrl": "aHCtqGic", "apiKey": "rxEl52zI", "appId": "HqZyvvkB", "federationMetadataUrl": "IsUjXkRC", "isActive": false, "redirectUri": "o6PTVUYb", "secret": "BLhdrdJL", "ssoUrl": "FrEjFQ3Y"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YgReSwsS' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'mjH5QxcP' \
    --body '{"acsUrl": "glzyfdru", "apiKey": "qeWDokim", "appId": "byV90sfF", "federationMetadataUrl": "SFa9Bvm5", "isActive": true, "redirectUri": "X9sqCKRa", "secret": "7FH2Cncr", "ssoUrl": "nPmjOcNF"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yLvWOGcm' \
    --platformUserId 'LDme8EO7' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'DCN4Ohzd' \
    --after '100' \
    --before '15' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'BWvLZwnH' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["RQOEo5lj", "K7GZTRTL", "00g9lMDr"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["WCnA2iaH", "xTJ730oW", "uWHMHdA6"], "isAdmin": true, "roles": ["ELaJsJfF", "UQT8EuHD", "2ytCecIO"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '45' \
    --offset '84' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUsersV3' test.out

#- 147 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'u70it7Wl' \
    --endDate 'BzNbNh2w' \
    --limit '8' \
    --offset '23' \
    --platformBy 'pV5yCn9o' \
    --platformId 'Z9yj7tl5' \
    --query 'ct48r8Dk' \
    --startDate 'gXHU0Sg6' \
    > test.out 2>&1
eval_tap $? 147 'AdminSearchUserV3' test.out

#- 148 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["zYwGp7dE", "ucWNX8Fe", "5WB4ZucC"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aTiIAwfB' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pjwACokx' \
    --body '{"avatarUrl": "nEfI5ywp", "country": "wJO4Jmtu", "dateOfBirth": "apViK70F", "displayName": "l1Q7T2Fl", "languageTag": "sZKUGTbI", "userName": "8gFAqk26"}' \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId '7y4pwg3R' \
    --activeOnly 'false' \
    --after 'k4BrhuOV' \
    --before 'm3lcMgWv' \
    --limit '54' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Yr7j5l5t' \
    --body '{"ban": "U1GrtZED", "comment": "S3CjAxhv", "endDate": "DW35TA9k", "reason": "RjHOqHjm", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '0SWxiIT4' \
    --namespace $AB_NAMESPACE \
    --userId 'cKHkkFl4' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y1SRFgDH' \
    --body '{"context": "j4DNoxQY", "emailAddress": "blQ1lnry", "languageTag": "vqfkgCNk"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Jc1VGbdo' \
    --body '{"Code": "H6yJ2v6k", "ContactType": "cc7NqZj1", "LanguageTag": "CgCPHE8K", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'dgYgON3x' \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TK46lrcK' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Cx3iAlMh' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Dw0Umryv' \
    --body '{"code": "sWM7b4qy", "country": "seUoZJMv", "dateOfBirth": "rucWUUkf", "displayName": "l8tw7qL2", "emailAddress": "YZPTGaBf", "password": "4BMs1HAn", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kGhoPEc0' \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'epzZiDt1' \
    --after '0.5443722867790531' \
    --before '0.08346089664037548' \
    --limit '36' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jKNF8N5A' \
    --body '{"languageTag": "NahE7BdL", "newPassword": "ELBzVym1", "oldPassword": "8BHfk0C7"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WdOjHydq' \
    --body '{"Permissions": [{"Action": 50, "Resource": "gr7gLfvZ", "SchedAction": 30, "SchedCron": "ABgt7VDs", "SchedRange": ["oEPoMqoM", "l9FtAAu7", "Zfjwqie9"]}, {"Action": 7, "Resource": "7yFEMRny", "SchedAction": 11, "SchedCron": "bAVohl3D", "SchedRange": ["b7sTp3tV", "hHxeZMFC", "vGnxDzCI"]}, {"Action": 12, "Resource": "cEbRrtuD", "SchedAction": 42, "SchedCron": "Kcr5ufYl", "SchedRange": ["XHbUETBn", "cdLmGget", "6dUkwPpT"]}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TtdJzjJc' \
    --body '{"Permissions": [{"Action": 13, "Resource": "BR7WHtKW", "SchedAction": 56, "SchedCron": "Z8mY5vzR", "SchedRange": ["VfCGSUVB", "tE0WWje8", "xa40GzIg"]}, {"Action": 2, "Resource": "TIWa1JQE", "SchedAction": 67, "SchedCron": "YdlOc5C0", "SchedRange": ["tY6ew1z1", "TyB8b3X0", "gi5uRin5"]}, {"Action": 62, "Resource": "4P6J4xmT", "SchedAction": 4, "SchedCron": "LJ70QxcQ", "SchedRange": ["aHIcTTwC", "MHonjMLp", "kQZvuvWs"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'g6euYGPu' \
    --body '[{"Action": 34, "Resource": "rytWibYb"}, {"Action": 71, "Resource": "oJzoijOq"}, {"Action": 87, "Resource": "4qwWbuUW"}]' \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '59' \
    --namespace $AB_NAMESPACE \
    --resource 'ETbBNSlp' \
    --userId 'bKDAlUpi' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hpDCqVy9' \
    --after '1ZiJhBuY' \
    --before 'WDXnrfos' \
    --limit '48' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '11zWgSwC' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ZKeVnSAK' \
    --userId 'IUKUSFSM' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'O2n9Y3N9' \
    --userId 'O4xZVMYd' \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '1f3mrAFg' \
    --body '{"platformId": "lusAWn3I", "platformUserId": "iMUIeAw8"}' \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'suHW4iSX' \
    --userId 'qHDupy8H' \
    --body '{"platformNamespace": "O2Znpvqv"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PL3rgpiX' \
    --userId 'tAdU79VO' \
    --ticket 'ANs6apaV' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NrH5rERt' \
    --body '["ZRDtLXMa", "AuIr6f7N", "8CdnGqbU"]' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pYBcaEB3' \
    --body '[{"namespace": "rMTaZuBG", "roleId": "tMGcGEyT"}, {"namespace": "qrzzrt6U", "roleId": "OEaxYz7R"}, {"namespace": "xsqQR7Dc", "roleId": "TWI6nJg2"}]' \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'tfFNWPXv' \
    --userId '5t0MaoEI' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'cuqGLnNW' \
    --userId 'JfUn1Uk8' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IYmei2Ae' \
    --body '{"enabled": false, "reason": "35Fn6t20"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zfdO6Hft' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'vAUNvkUz' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "uuqzVyna"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateClientSecretV3' test.out

#- 181 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'T0WWkTWS' \
    --before 'bLFiMMRh' \
    --isWildcard 'false' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRolesV3' test.out

#- 182 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "KHRnwtCi", "namespace": "Pxsvzbvb", "userId": "yBTcrBFR"}, {"displayName": "kIssQl2S", "namespace": "v4Wdaa9E", "userId": "fZDWo66D"}, {"displayName": "XE6Ecx3k", "namespace": "BNr1kkBk", "userId": "HaGTTxSt"}], "members": [{"displayName": "M3QibAfi", "namespace": "sZQRUkAR", "userId": "w7DYJKs0"}, {"displayName": "deEzIta9", "namespace": "MiCLZxKX", "userId": "RHAz2g9w"}, {"displayName": "kbwjg394", "namespace": "J7PrcksB", "userId": "2Bia5Coi"}], "permissions": [{"action": 43, "resource": "BwPN2qij", "schedAction": 96, "schedCron": "Ds4s9w6j", "schedRange": ["HOcATUIx", "0JS8KaB0", "YtEjCs87"]}, {"action": 26, "resource": "GC37GFCe", "schedAction": 33, "schedCron": "LiEiBXg2", "schedRange": ["dyKXSBIg", "G2I3nA0N", "OrUD6JSe"]}, {"action": 11, "resource": "YfWwCmCQ", "schedAction": 37, "schedCron": "RDivZ0nB", "schedRange": ["EMUVq7Zb", "j3EnvBsC", "Rum3mw2H"]}], "roleName": "LKo8aIJW"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'sxI1rplD' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'TxYht0Yr' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'igaWCWta' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "KcwYIxK5"}' \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'cMDcEQdn' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'xoEVwdfh' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '6IrYMeZS' \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'I2etaGei' \
    --after 'c18LMinz' \
    --before '8gQnrrRU' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'MW0dmAyJ' \
    --body '{"managers": [{"displayName": "wKjzRM6o", "namespace": "OSQlNzgI", "userId": "JSfpwDpb"}, {"displayName": "IgwUCTzV", "namespace": "qCafPnnL", "userId": "BCOIgAIK"}, {"displayName": "3SkrYAwC", "namespace": "ei9O0BCS", "userId": "ZsRySnr2"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'qia6Gme8' \
    --body '{"managers": [{"displayName": "KkkpnoWk", "namespace": "vvKwnxLt", "userId": "Az7CQLB1"}, {"displayName": "Pn2lgxCe", "namespace": "4Hzeshvj", "userId": "LyXlEITU"}, {"displayName": "jkkdRHDr", "namespace": "ulVYZGRF", "userId": "YapxgqQI"}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'ZFIECqrY' \
    --after 'TZaWxUxJ' \
    --before 'YzVttHg7' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '5SsYiSz9' \
    --body '{"members": [{"displayName": "iBsy4gXW", "namespace": "7SHHGZiG", "userId": "ZozhDAHY"}, {"displayName": "fqK3JTQq", "namespace": "l6SsnN5s", "userId": "rHnXrfs8"}, {"displayName": "yiEGYFpg", "namespace": "IMl2jQLU", "userId": "VcnXG5RZ"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'oL3kEK02' \
    --body '{"members": [{"displayName": "QHJc3YtW", "namespace": "IMr3Geus", "userId": "fVNGFZSE"}, {"displayName": "Jbb1ya36", "namespace": "ayByJf2G", "userId": "H6VWPEs8"}, {"displayName": "djamGM9o", "namespace": "8IK1xIsD", "userId": "e0OpFp9Q"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'P8H6AmiA' \
    --body '{"permissions": [{"action": 8, "resource": "pz6wzZBr", "schedAction": 43, "schedCron": "A809A3Ha", "schedRange": ["AZE1ctjp", "Ach2s1da", "gAmIzbo1"]}, {"action": 57, "resource": "1F66fiOZ", "schedAction": 32, "schedCron": "ktbRV5tS", "schedRange": ["04uApZW8", "uthATFwX", "M7R5ohxv"]}, {"action": 33, "resource": "DAQ5ev3U", "schedAction": 41, "schedCron": "BNJxfCM5", "schedRange": ["pPZCEVsh", "GpiE9rRl", "PWu6LeCW"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '0Ap4G2ic' \
    --body '{"permissions": [{"action": 48, "resource": "BOB3WUWm", "schedAction": 17, "schedCron": "UjPanJGB", "schedRange": ["LtHSuFYy", "oekFvj7z", "X6cC3WrH"]}, {"action": 85, "resource": "3ErTF72p", "schedAction": 44, "schedCron": "5QfJBOsH", "schedRange": ["mtiNn7X1", "cldeRUFi", "EoOhHioR"]}, {"action": 15, "resource": "a2n33HP0", "schedAction": 89, "schedCron": "iHRf79Y3", "schedRange": ["fOR6Dy1t", "5imWZp7W", "2YIIg28l"]}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'fAdxyDZ2' \
    --body '["yquDP2im", "AvgFQJ4h", "qCORgwI1"]' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '96' \
    --resource 'XXzTg4XI' \
    --roleId 'IF6C7uht' \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionV3' test.out

#- 199 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 199 'AdminGetMyUserV3' test.out

#- 200 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'shkhbNAo' \
    --extendExp 'true' \
    --redirectUri 'phprXhzE' \
    --password 'ARnCx1zY' \
    --requestId 'nbuae0Br' \
    --userName 'k3gh7CbY' \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'DsnbI71F' \
    --linkingToken 'WTdqNULl' \
    --password 'Rv65aq6e' \
    --username 'nLM8tBGT' \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'M3untN1e' \
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
    --clientId 'ohzyYqtc' \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pZ2FsGWC' \
    --userId 'fVx8kX1h' \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LD5z0Vnm' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'ddsvl7bw' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --redirectUri 'zVNuTbFD' \
    --scope '2LrZWa55' \
    --state 'TK2n0KsI' \
    --targetAuthPage 'WykDhxGd' \
    --clientId 'uPTZhgcc' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'BePhyZOt' \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'YeDjCBHL' \
    --mfaToken '5VA7VM7i' \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'Ad4jAtPN' \
    --factor 'Gfw9GKsG' \
    --mfaToken 'X1WmiYyT' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZwDoNjfv' \
    --userId '46ljHQHZ' \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'vpgSnpcR' \
    --clientId 'VnwUnEuf' \
    --redirectUri 'gBRnlHZ0' \
    --requestId 'daE2QmXw' \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'k3N9GxCK' \
    --clientId 'yBHLouIO' \
    --createHeadless 'true' \
    --deviceId 'aQjg1zMZ' \
    --platformToken 'vTSYKCgJ' \
    > test.out 2>&1
eval_tap $? 215 'PlatformTokenGrantV3' test.out

#- 216 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 216 'GetRevocationListV3' test.out

#- 217 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '9oMf3G3E' \
    > test.out 2>&1
eval_tap $? 217 'TokenRevocationV3' test.out

#- 218 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'CHqRjlBa' \
    --code 'KWSTT8aY' \
    --codeVerifier 'ijAQGBew' \
    --extendExp 'true' \
    --password 'eNWjZ6I6' \
    --redirectUri 'AevZSi3m' \
    --refreshToken 'wvvWFOpH' \
    --username 'XUtiXgyy' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 218 'TokenGrantV3' test.out

#- 219 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'WEEuGkMw' \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'LyvqC96T' \
    --code 'WuDTkloG' \
    --error 'fjwFg17M' \
    --openidAssocHandle 'jiVPFbK3' \
    --openidClaimedId 'qg44Bqlx' \
    --openidIdentity 'EmNYYhPq' \
    --openidMode 'UZXICFvG' \
    --openidNs '6C7y7nRR' \
    --openidOpEndpoint 'NRWHVHUV' \
    --openidResponseNonce 'JGKoPH5o' \
    --openidReturnTo 'HM7go6hn' \
    --openidSig 'Ewy8iQsX' \
    --openidSigned 'cy7RHaoE' \
    --state 'bzRxCMdS' \
    > test.out 2>&1
eval_tap $? 220 'PlatformAuthenticationV3' test.out

#- 221 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'gjY2d5Yk' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetInputValidations' test.out

#- 222 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'LiAtGDqI' \
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
    --clientId 'xRicFTIg' \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bBqkHIaP' \
    --body '{"platformUserIds": ["kNtwSDUN", "Ia983O0G", "l75zVSRK"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uDfT7m8b' \
    --platformUserId '347Sw5YZ' \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'sflArjPw' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetAsyncStatus' test.out

#- 228 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'bk3tA3KN' \
    --limit '60' \
    --offset '26' \
    --query 'fedeUFr4' \
    > test.out 2>&1
eval_tap $? 228 'PublicSearchUserV3' test.out

#- 229 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "0zHOpOVE", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "5NggmIxC", "policyId": "Coul8SV9", "policyVersionId": "g2BAHLRj"}, {"isAccepted": false, "localizedPolicyVersionId": "2tOVfFQp", "policyId": "FDv3z6Mq", "policyVersionId": "rzJxZKWK"}, {"isAccepted": true, "localizedPolicyVersionId": "rMyzU7EO", "policyId": "HbapPGab", "policyVersionId": "YJuKTjaI"}], "authType": "YDPIBaee", "code": "b91izsYM", "country": "EBrZ4QKR", "dateOfBirth": "4pXlRJHn", "displayName": "vOygBnFu", "emailAddress": "IlZtIgqZ", "password": "0ES6Iros", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'ZMkJKC9k' \
    --query 'W8nzL4tT' \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["KfrV8AFe", "pKqGiJpz", "XPQLo3xJ"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "VMzR3Sl8", "languageTag": "BLUWeFjp"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "llhvyAYN", "emailAddress": "fPErsFvo"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "eBPxxTWc", "languageTag": "BKHxQidN"}' \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '2VbBVCDv' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '6p871MrY' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "wnO1NKMG", "policyId": "TCTloiRx", "policyVersionId": "ghyE17ro"}, {"isAccepted": true, "localizedPolicyVersionId": "vfpWG9jm", "policyId": "rWoV3W7e", "policyVersionId": "JW72tYjS"}, {"isAccepted": true, "localizedPolicyVersionId": "FJwqpwN5", "policyId": "Xwj3asE6", "policyVersionId": "cTbbJMsi"}], "authType": "EMAILPASSWD", "country": "QWMuKml4", "dateOfBirth": "tUayKKJv", "displayName": "1xH2RjMc", "password": "SrEVtOkS", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "WoOxwozC", "country": "G9ruv3uM", "dateOfBirth": "HvCxfKmV", "displayName": "S43OMbbD", "languageTag": "ljoEctss", "userName": "LxlR94GV"}' \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "lLQMTq1M", "country": "JCayKtFH", "dateOfBirth": "Cprf6jb4", "displayName": "FqLMa8tF", "languageTag": "qEgj2jFO", "userName": "4oXb1itv"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "vADye9Dk", "emailAddress": "tPhpi1tS", "languageTag": "PcAVNNOS"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "k2vnapCa", "contactType": "WegBO3MX", "languageTag": "PmenxxGL", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "QTp3bqHP", "country": "98gSfJZQ", "dateOfBirth": "EdNIhPOJ", "displayName": "6RRuedUQ", "emailAddress": "tnQAvHKz", "password": "zVGn0tW1", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "6MS4ZMRl", "password": "iGadXi84"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "Z2ESDVDs", "newPassword": "XFn4W8IV", "oldPassword": "4hAQUQw5"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'QYdlmwbY' \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'keyXSeAv' \
    --redirectUri 'ZJejwcRm' \
    --ticket 'fNddH2Sj' \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TB5i2M8A' \
    --body '{"platformNamespace": "JvqBoOKt"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qZsP00XI' \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ICgTwHQy' \
    --ticket 'NViFSdc7' \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'RW8J1rUs' \
    --clientId '4tdNQerF' \
    --redirectUri 'ZmIHTlsG' \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'HnP15eCy' \
    --state 'ZGG1Pz1y' \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6zu8ncXC", "emailAddress": "aKKCmo67", "newPassword": "AHp9FfzF"}' \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lwvJbeW0' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EUjXqSuU' \
    --activeOnly 'true' \
    --after 'oiY3zQSq' \
    --before 'b8TS0OTu' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cClme0Qk' \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'otKH1iFx' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sDL1NCDK' \
    --after '0.7126948871726634' \
    --before '0.1849294378937214' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'T1uzC588' \
    --after 'mHguHmhZ' \
    --before 'Qdo0CNw5' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '81sD2AMH' \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'CEjaQK47' \
    --body '{"platformId": "v1W2nv52", "platformUserId": "b4yjPMW1"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'SMyE4Eyb' \
    --body '{"chosenNamespaces": ["g0avVnJz", "1CQuOLBH", "rHbVftca"], "requestId": "81DISBZI"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ozf2H2Ab' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XsYDzQPP' \
    --password 'WKky6eSz' \
    > test.out 2>&1
eval_tap $? 262 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 263 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'biCCN1fo' \
    --before 'fSaEJ3lK' \
    --isWildcard 'false' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetRolesV3' test.out

#- 264 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'TwPlYre7' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRoleV3' test.out

#- 265 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 265 'PublicGetMyUserV3' test.out

#- 266 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "WEzT99i2"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicSendVerificationLinkV3' test.out

#- 267 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'fvkmoJiG' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyUserByLinkV3' test.out

#- 268 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'DhuLuKyS' \
    --code 'X6g5vUoO' \
    --error 'cL95NtsS' \
    --state 'fgc8dpGI' \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'MgWI4iJ4' \
    --payload '039Q0Twz' \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'GeXr3KmW' \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'nIxHzaRp' \
    > test.out 2>&1
eval_tap $? 271 'RequestGameTokenResponseV3' test.out

#- 272 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 66}' \
    > test.out 2>&1
eval_tap $? 272 'AdminCreateTestUsersV4' test.out

#- 273 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["IUfIGT9P", "wlpjBh7x", "Gs0uMzJB"]}' \
    > test.out 2>&1
eval_tap $? 273 'AdminBulkCheckValidUserIDV4' test.out

#- 274 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NMhj1REj' \
    --body '{"avatarUrl": "uU4JAOoZ", "country": "alLX0QAz", "dateOfBirth": "IHkjdjvB", "displayName": "i8zuar8J", "languageTag": "chIPN9O6", "userName": "NUqFTwgL"}' \
    > test.out 2>&1
eval_tap $? 274 'AdminUpdateUserV4' test.out

#- 275 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uZE4htCx' \
    --body '{"code": "pMeEsusU", "emailAddress": "ecWvaSUb"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminUpdateUserEmailAddressV4' test.out

#- 276 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '7JonRjtP' \
    > test.out 2>&1
eval_tap $? 276 'AdminDisableUserMFAV4' test.out

#- 277 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'y5PXpCrt' \
    > test.out 2>&1
eval_tap $? 277 'AdminListUserRolesV4' test.out

#- 278 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zELCnYvh' \
    --body '{"assignedNamespaces": ["xCWDaW2D", "AUMPVfxU", "0qp3kmPW"], "roleId": "UhnGz5sz"}' \
    > test.out 2>&1
eval_tap $? 278 'AdminUpdateUserRoleV4' test.out

#- 279 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'N2VfE5kv' \
    --body '{"assignedNamespaces": ["GLeuukgY", "8GGMP6jU", "AJnnWtZh"], "roleId": "aAH5DsUr"}' \
    > test.out 2>&1
eval_tap $? 279 'AdminAddUserRoleV4' test.out

#- 280 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'x701OXCy' \
    --body '{"assignedNamespaces": ["HUcrTpDS", "Qq8Abvad", "HAKbrAIs"], "roleId": "ZJ7mU7i1"}' \
    > test.out 2>&1
eval_tap $? 280 'AdminRemoveUserRoleV4' test.out

#- 281 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '53' \
    --offset '46' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetRolesV4' test.out

#- 282 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "XSdakmHr"}' \
    > test.out 2>&1
eval_tap $? 282 'AdminCreateRoleV4' test.out

#- 283 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'qTT0Erog' \
    > test.out 2>&1
eval_tap $? 283 'AdminGetRoleV4' test.out

#- 284 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'EsNn6XFX' \
    > test.out 2>&1
eval_tap $? 284 'AdminDeleteRoleV4' test.out

#- 285 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'fAm7gEOY' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "RW5zEg4Q"}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateRoleV4' test.out

#- 286 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'OHkmsKjc' \
    --body '{"permissions": [{"action": 57, "resource": "ZzXEe3uK", "schedAction": 52, "schedCron": "mANrt1Yo", "schedRange": ["MY26OFYP", "OUOZMuaH", "CpyuYqAa"]}, {"action": 28, "resource": "ZRMXRftA", "schedAction": 22, "schedCron": "h3i69otE", "schedRange": ["561BA240", "zqTaAjQH", "2WvmS4OB"]}, {"action": 92, "resource": "m5B93ahl", "schedAction": 53, "schedCron": "uqG0Z3KO", "schedRange": ["ssq5HtSb", "ZuwvJVwC", "ZgVL4Ife"]}]}' \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateRolePermissionsV4' test.out

#- 287 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'XE2VD3WD' \
    --body '{"permissions": [{"action": 73, "resource": "wQpV3Sg5", "schedAction": 96, "schedCron": "2Ptok2yz", "schedRange": ["jt8fZA9r", "K19I1FHw", "aecmcSgd"]}, {"action": 43, "resource": "bzVGMD7t", "schedAction": 17, "schedCron": "cWkDzMqw", "schedRange": ["qei1wsel", "PO6lXzcP", "DCWsOUQT"]}, {"action": 11, "resource": "u4OyNHlb", "schedAction": 74, "schedCron": "6GCZ2eUQ", "schedRange": ["445JCMJF", "7r1qa5MB", "mNPqQYGF"]}]}' \
    > test.out 2>&1
eval_tap $? 287 'AdminAddRolePermissionsV4' test.out

#- 288 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'cgD8TDF0' \
    --body '["BOqy7jiz", "lQs1ykbk", "uWMQJ30E"]' \
    > test.out 2>&1
eval_tap $? 288 'AdminDeleteRolePermissionsV4' test.out

#- 289 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'mq7VF2Ve' \
    --after '7Vnt9EBO' \
    --before 'CJE0jJUy' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 289 'AdminListAssignedUsersV4' test.out

#- 290 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'BMxKVPkK' \
    --body '{"assignedNamespaces": ["ifJIkKxI", "nz8ONjv7", "1gWhWkQb"], "namespace": "r7VFTRhu", "userId": "DRyIU1VI"}' \
    > test.out 2>&1
eval_tap $? 290 'AdminAssignUserToRoleV4' test.out

#- 291 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '8GoltRbT' \
    --body '{"namespace": "vucMhmLB", "userId": "d7xWt4Vv"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminRevokeUserFromRoleV4' test.out

#- 292 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "5NyKtwMn", "country": "Fz8uQyki", "dateOfBirth": "eflHvnnZ", "displayName": "XG5deocD", "languageTag": "wHGbdx76", "userName": "60cgIAo8"}' \
    > test.out 2>&1
eval_tap $? 292 'AdminUpdateMyUserV4' test.out

#- 293 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 293 'AdminDisableMyAuthenticatorV4' test.out

#- 294 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '6MJ5lXG1' \
    > test.out 2>&1
eval_tap $? 294 'AdminEnableMyAuthenticatorV4' test.out

#- 295 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 295 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 296 AdminGetMyBackupCodesV4
samples/cli/sample-apps Iam adminGetMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 296 'AdminGetMyBackupCodesV4' test.out

#- 297 AdminGenerateMyBackupCodesV4
samples/cli/sample-apps Iam adminGenerateMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 297 'AdminGenerateMyBackupCodesV4' test.out

#- 298 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 298 'AdminDisableMyBackupCodesV4' test.out

#- 299 AdminDownloadMyBackupCodesV4
samples/cli/sample-apps Iam adminDownloadMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 299 'AdminDownloadMyBackupCodesV4' test.out

#- 300 AdminEnableMyBackupCodesV4
samples/cli/sample-apps Iam adminEnableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 300 'AdminEnableMyBackupCodesV4' test.out

#- 301 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 301 'AdminGetMyEnabledFactorsV4' test.out

#- 302 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'G7J2OWIj' \
    > test.out 2>&1
eval_tap $? 302 'AdminMakeFactorMyDefaultV4' test.out

#- 303 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["G8JwEMli", "EZ1q0qJS", "YCvtbs0b"], "emailAddresses": ["dOsNzvym", "LDkDoTGq", "XTvuaYfd"], "isAdmin": false, "roleId": "DafgWAXT"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminInviteUserV4' test.out

#- 304 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "2pXBiVI0", "policyId": "QDOd51G2", "policyVersionId": "BhDcK8oZ"}, {"isAccepted": true, "localizedPolicyVersionId": "b6GiblAN", "policyId": "KTPVt7Bw", "policyVersionId": "1jM9Txvb"}, {"isAccepted": false, "localizedPolicyVersionId": "cU089T94", "policyId": "yjlqsfar", "policyVersionId": "eSTstXWn"}], "authType": "EMAILPASSWD", "country": "sseatiac", "dateOfBirth": "NjkAsnvU", "displayName": "f83xaFbT", "emailAddress": "f6kjQoeI", "password": "qA2XKANR", "passwordMD5Sum": "O1S2jFrA", "username": "zUfzVr81", "verified": true}' \
    > test.out 2>&1
eval_tap $? 304 'PublicCreateTestUserV4' test.out

#- 305 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "8SM8nITn", "policyId": "iTWLNeeK", "policyVersionId": "TTDINCM0"}, {"isAccepted": false, "localizedPolicyVersionId": "IPzKp0J2", "policyId": "ArTgdZci", "policyVersionId": "UTHGKxBg"}, {"isAccepted": true, "localizedPolicyVersionId": "JRsqPkyG", "policyId": "pVsernA1", "policyVersionId": "t5XNKOXr"}], "authType": "EMAILPASSWD", "code": "FdDVgyn9", "country": "ve04ZIub", "dateOfBirth": "lUTZrhRg", "displayName": "iHKTU4FN", "emailAddress": "aQiwptES", "password": "5B9i9vbz", "passwordMD5Sum": "HsXzUht0", "reachMinimumAge": false, "username": "7q2nf8TS"}' \
    > test.out 2>&1
eval_tap $? 305 'PublicCreateUserV4' test.out

#- 306 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'lFwe5FmA' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "xpiEdSKJ", "policyId": "5eCJQ7Ih", "policyVersionId": "hCKXOYRX"}, {"isAccepted": true, "localizedPolicyVersionId": "zsirRfCO", "policyId": "RtdraCA4", "policyVersionId": "LGH9Zmmv"}, {"isAccepted": false, "localizedPolicyVersionId": "6FjAgcTZ", "policyId": "LYlLVUv4", "policyVersionId": "KIsJlXp6"}], "authType": "EMAILPASSWD", "country": "Qvj7fZQe", "dateOfBirth": "SUbXMyE0", "displayName": "fhDWwvmC", "password": "FKUzadcF", "reachMinimumAge": true, "username": "xDFe2iev"}' \
    > test.out 2>&1
eval_tap $? 306 'CreateUserFromInvitationV4' test.out

#- 307 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "EkkEiI3x", "country": "gdYp8aa9", "dateOfBirth": "X3URrjxz", "displayName": "y3W2GePq", "languageTag": "HXS5p385", "userName": "ek76m06c"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdateUserV4' test.out

#- 308 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xtBAuhl4", "emailAddress": "bpv9Bsjw"}' \
    > test.out 2>&1
eval_tap $? 308 'PublicUpdateUserEmailAddressV4' test.out

#- 309 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "lTSZlaba", "country": "w33gAdv9", "dateOfBirth": "5wNnNS62", "displayName": "OkG4oF4h", "emailAddress": "nJf2jXOe", "password": "Gr1zDTmT", "reachMinimumAge": false, "username": "hLsNqels", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 309 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 310 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "RGK2z2Ar", "password": "jUi8UlqB", "username": "z92H4Edx"}' \
    > test.out 2>&1
eval_tap $? 310 'PublicUpgradeHeadlessAccountV4' test.out

#- 311 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'PublicDisableMyAuthenticatorV4' test.out

#- 312 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'Gt7Of23M' \
    > test.out 2>&1
eval_tap $? 312 'PublicEnableMyAuthenticatorV4' test.out

#- 313 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 313 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 314 PublicGetMyBackupCodesV4
samples/cli/sample-apps Iam publicGetMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'PublicGetMyBackupCodesV4' test.out

#- 315 PublicGenerateMyBackupCodesV4
samples/cli/sample-apps Iam publicGenerateMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 315 'PublicGenerateMyBackupCodesV4' test.out

#- 316 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'PublicDisableMyBackupCodesV4' test.out

#- 317 PublicDownloadMyBackupCodesV4
samples/cli/sample-apps Iam publicDownloadMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'PublicDownloadMyBackupCodesV4' test.out

#- 318 PublicEnableMyBackupCodesV4
samples/cli/sample-apps Iam publicEnableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 318 'PublicEnableMyBackupCodesV4' test.out

#- 319 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 319 'PublicRemoveTrustedDeviceV4' test.out

#- 320 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 320 'PublicGetMyEnabledFactorsV4' test.out

#- 321 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'yvDkVG3i' \
    > test.out 2>&1
eval_tap $? 321 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE