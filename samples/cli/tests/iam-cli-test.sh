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
    --body '[{"field": "Aw59oiPm", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "blockedWord": ["ydR64hnn", "JTTCDoKW", "N0EWOcIZ"], "description": [{"language": "XcGId7zt", "message": ["zzovMMJH", "HSMHDxA6", "oJxsIHuz"]}, {"language": "zDmVtm6y", "message": ["oFZVlxGP", "k4HHduu6", "nBDdgtks"]}, {"language": "eaG95KYl", "message": ["696f700l", "EzU2Sed8", "YuE9kTrA"]}], "isCustomRegex": true, "letterCase": "0jFiJyGL", "maxLength": 47, "maxRepeatingAlphaNum": 86, "maxRepeatingSpecialCharacter": 25, "minCharType": 67, "minLength": 13, "regex": "Oh5TeA2v", "specialCharacterLocation": "Ft5rZ1Rq", "specialCharacters": ["iT4YaIn7", "LYMlF86S", "CNxgJpsh"]}}, {"field": "nfB8QK7g", "validation": {"allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "blockedWord": ["m5MHBatS", "QfgV7Kev", "KW0rI9Me"], "description": [{"language": "cKP1gvVn", "message": ["cm4X7RVc", "IGLyQKDA", "PJLqlE1q"]}, {"language": "c1z5CMWz", "message": ["7CRgBJFn", "7wohqW67", "InjIk8oM"]}, {"language": "C3pjc4zE", "message": ["XFGY53A0", "tN12m0Yt", "Z2FTzIyt"]}], "isCustomRegex": true, "letterCase": "71LgGZ0U", "maxLength": 90, "maxRepeatingAlphaNum": 10, "maxRepeatingSpecialCharacter": 32, "minCharType": 11, "minLength": 41, "regex": "XMjoZG5V", "specialCharacterLocation": "3uiiW7hn", "specialCharacters": ["qshcBGKH", "U2XyzSk4", "n3jASSWQ"]}}, {"field": "fUkWrd5i", "validation": {"allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "blockedWord": ["lIkbYkku", "SUag7RDk", "D9Vq8IQU"], "description": [{"language": "fyCMRs9R", "message": ["Pfnhz7Rv", "ebgjIqIz", "hyYErxQR"]}, {"language": "8hIRjDXm", "message": ["wtTn6Fvt", "yhs3t7Cv", "60EDpbjU"]}, {"language": "RFgaYTxi", "message": ["NBoYqXij", "DBnv6Guu", "Pnezaven"]}], "isCustomRegex": false, "letterCase": "lGGyueh2", "maxLength": 64, "maxRepeatingAlphaNum": 27, "maxRepeatingSpecialCharacter": 21, "minCharType": 43, "minLength": 34, "regex": "MRRbo5zD", "specialCharacterLocation": "CjbAheEG", "specialCharacters": ["dhnpyQ05", "MZZ6EzYj", "kYFg6v5Z"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'vmlsKp2X' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'JTi7LfMN' \
    --before 'cdpt088j' \
    --limit '85' \
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
    --body '{"ageRestriction": 74, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '3CZQ4k9G' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 1}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'ZVD5YxcS' \
    --limit '54' \
    --offset '68' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "81nrFR80", "comment": "3zpuQ413", "endDate": "JXtviRVt", "reason": "vU6Nfjy4", "skipNotif": false, "userIds": ["uEgSNe8B", "tPLULT14", "OX6NsJNT"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "eU51cywn", "userId": "wXRkpYbP"}, {"banId": "xL9YashJ", "userId": "GRVLm3Mb"}, {"banId": "wYMlUOhw", "userId": "BbKJKzZd"}]}' \
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
    --limit '22' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["BOaVb19M", "HAsVYcje", "Y9DP0zgJ"], "baseUri": "LDCDFZYj", "clientId": "mzgvgQSe", "clientName": "FTy2jvWI", "clientPermissions": [{"action": 15, "resource": "EZaT6FxA", "schedAction": 67, "schedCron": "qvKS74Db", "schedRange": ["uNES3LMj", "BO8gkMNp", "1NeO2B8A"]}, {"action": 67, "resource": "7cwliCNt", "schedAction": 53, "schedCron": "fJZM6tLh", "schedRange": ["Bk6K7E31", "9OThjCTU", "cVlHwQDt"]}, {"action": 63, "resource": "4T26Dyjw", "schedAction": 90, "schedCron": "gowFzpjm", "schedRange": ["hPmcDpmL", "IH1WnNWD", "gYj9BkxI"]}], "clientPlatform": "5iJKWDhi", "deletable": true, "namespace": "IJ9DAh3L", "oauthClientType": "XwZRM2FF", "redirectUri": "q4xaiWSE", "secret": "7wnfNgFJ", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'iCpyzbPy' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'B1wwgQVU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'xuAcS877' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["j20nABhf", "cHNQob3x", "BSqRjORQ"], "baseUri": "AMZvVpjc", "clientName": "LOAMOn4m", "clientPermissions": [{"action": 12, "resource": "cgZo34Kc", "schedAction": 1, "schedCron": "9sTIDQ9E", "schedRange": ["mGGZde9I", "ycwZqGGW", "x1N1qC9z"]}, {"action": 27, "resource": "tyzsqfAd", "schedAction": 64, "schedCron": "ZP9VzfQI", "schedRange": ["fdL5tUci", "tqjtYyIZ", "7VyNpZKL"]}, {"action": 35, "resource": "3wbaEyjl", "schedAction": 80, "schedCron": "64vms9MD", "schedRange": ["YkkHI3Ih", "rnHCrTpV", "pbJlBR23"]}], "clientPlatform": "oK8Uw3KT", "deletable": false, "namespace": "wTyuDagB", "redirectUri": "rpEkO2oj", "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'QB2IvWvh' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 51, "resource": "WNsyMXkX"}, {"action": 97, "resource": "3DgbcTyr"}, {"action": 49, "resource": "cS4EcR2F"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'CsG9fcjn' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 47, "resource": "TzKypXxP"}, {"action": 61, "resource": "xLlC2KoA"}, {"action": 86, "resource": "bY8MQKvE"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '11' \
    --clientId '96zKxxfK' \
    --namespace $AB_NAMESPACE \
    --resource 'xz541kI2' \
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
    --limit '42' \
    --offset '66' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'il0Sf6RO' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RtHc7jnQ' \
    --body '{"ACSURL": "GqmSDmm4", "AWSCognitoRegion": "79b3K1iP", "AWSCognitoUserPool": "TzWEREzG", "AllowedClients": ["RTmkCbbX", "H6m4t9z4", "Q9UkLt23"], "AppId": "31WAmXhb", "AuthorizationEndpoint": "2apodMAX", "ClientId": "JeXxmsLo", "Environment": "FCypmuyg", "FederationMetadataURL": "GwCNPDeR", "GenericOauthFlow": false, "IsActive": false, "Issuer": "gJwGvQOK", "JWKSEndpoint": "sCdERA52", "KeyID": "9pNliILS", "NetflixCertificates": {"encryptedPrivateKey": "yZwWW5e9", "encryptedPrivateKeyName": "gO8xmB8H", "publicCertificate": "Momh1Ebn", "publicCertificateName": "Eaei7qni", "rootCertificate": "hHxuYPRa", "rootCertificateName": "d2goxJW5"}, "OrganizationId": "Kn7EcLEy", "PlatformName": "FMAmN5hS", "RedirectUri": "nt8ehB5X", "RegisteredDomains": [{"affectedClientIDs": ["qJS3AEPV", "s0ZCDlqS", "B3OkehUc"], "domain": "bTLtuHqg", "namespaces": ["m3tl4sKk", "f8NVxKBh", "mJEAFttg"], "roleId": "8924zX9G"}, {"affectedClientIDs": ["1eay000i", "SsA3z2oS", "x4KdnznJ"], "domain": "jvjB2hwa", "namespaces": ["3STeq9aI", "AvAa1QJO", "bVIGPVO8"], "roleId": "wMRbHFkT"}, {"affectedClientIDs": ["hgdKdlFq", "iglivuZQ", "xGtDwECe"], "domain": "Ue1i2EnC", "namespaces": ["7zn8zqqG", "Id22sdmd", "XzvziinZ"], "roleId": "eesjRacT"}], "Secret": "9bUCcppo", "TeamID": "aONmjvaC", "TokenAuthenticationType": "4NqLcsH2", "TokenClaimsMapping": {"LXswuJg7": "6cmT2CeA", "ntWBgH8A": "VQuSqVRn", "GCpW7bNZ": "ilHY0lUe"}, "TokenEndpoint": "kjXaLP9i"}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'lJC4bpvr' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nJ7uuiLb' \
    --body '{"ACSURL": "WWy2YXzF", "AWSCognitoRegion": "PdZt9efA", "AWSCognitoUserPool": "g3nhzxtG", "AllowedClients": ["Ln9Jtf76", "9NNStX0v", "zvERZuN3"], "AppId": "YnijiM2w", "AuthorizationEndpoint": "3GcAuPuk", "ClientId": "DanGyEYs", "Environment": "pgZpyVIa", "FederationMetadataURL": "iVhIXfnl", "GenericOauthFlow": false, "IsActive": true, "Issuer": "YNOHfiZh", "JWKSEndpoint": "cb01um98", "KeyID": "BxJsfnEt", "NetflixCertificates": {"encryptedPrivateKey": "cBSGqfz3", "encryptedPrivateKeyName": "RzDygorW", "publicCertificate": "bDxhB5L5", "publicCertificateName": "okNtcrfm", "rootCertificate": "kX9IUKnU", "rootCertificateName": "6hkB4a6c"}, "OrganizationId": "BbHPYeQk", "PlatformName": "6y4DvySR", "RedirectUri": "y9qQdXo8", "RegisteredDomains": [{"affectedClientIDs": ["Jg7zhY7b", "6Jq5iINA", "MCEnWl1t"], "domain": "eHLNDHb3", "namespaces": ["1l7s5KCm", "Q1MA49fv", "rtSVnVc0"], "roleId": "LYapPxfj"}, {"affectedClientIDs": ["XlwKP3Qo", "3qUfYVXZ", "DiIIOAzn"], "domain": "GUANi7wN", "namespaces": ["iUzDmwIy", "skSHYCUC", "rXOlQ0b2"], "roleId": "ab16bqeL"}, {"affectedClientIDs": ["vX79W6Ae", "gGFFCMOX", "VuX5C5cg"], "domain": "i05nifuU", "namespaces": ["1uLXkst2", "a2KycvXC", "UPJUJExv"], "roleId": "UR7eRE6x"}], "Secret": "7CjE37nB", "TeamID": "b2CnoSay", "TokenAuthenticationType": "OXvfHz76", "TokenClaimsMapping": {"Vk7xYDR5": "e0RWdZrK", "UT8lKCAN": "D0G6eLGg", "DKccapu0": "91g6pDkT"}, "TokenEndpoint": "zWfOo94A"}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'G1JxYlX3' \
    --body '{"affectedClientIDs": ["DIRG5h7W", "UDHPUlSm", "fbLm8iFM"], "assignedNamespaces": ["B4aNay37", "FZbj3tuD", "F8PrEtDI"], "domain": "m3ZE6iXB", "roleId": "oRj3eTD9"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5H0QRVIS' \
    --body '{"domain": "dX1uwqZE"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'n9xSC6MI' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'S15K6tLk' \
    --body '{"acsUrl": "op4i0zAV", "apiKey": "FivTacsY", "appId": "kkMQefJ3", "federationMetadataUrl": "Oe9xdF5r", "isActive": false, "redirectUri": "lQ2FPwAm", "secret": "bizXMh6A", "ssoUrl": "xwLqV6hT"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KghNTplp' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'x0qjO0D3' \
    --body '{"acsUrl": "VjEDr44B", "apiKey": "mQwZ0C04", "appId": "2TCMjdrx", "federationMetadataUrl": "wlkPwFEF", "isActive": false, "redirectUri": "55ZF8jso", "secret": "dVrBkh7r", "ssoUrl": "KlGLX2Qh"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AEEeFa3h' \
    --platformUserId 'EZ77v4Yg' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '9vopfYLd' \
    --after '97' \
    --before '4' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'tr97HEpd' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["f5fuiH4o", "dlQP3sXY", "va19ou4S"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["C3syi2qI", "j4JzMdf5", "fT2J1dOe"], "isAdmin": false, "roles": ["jF9BvEGZ", "Q0bxp7Qe", "8OuZLTIy"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '82' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 146 'AdminListUsersV3' test.out

#- 147 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '7x8HSCgU' \
    --endDate 'tS5mB0x8' \
    --limit '56' \
    --offset '29' \
    --platformBy 'X2ZNnTdG' \
    --platformId 'mYLmck7h' \
    --query 'CTOAsZiy' \
    --startDate 'sPyg5Ki7' \
    > test.out 2>&1
eval_tap $? 147 'AdminSearchUserV3' test.out

#- 148 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["OUljPo9C", "RsZbHsyN", "PePCfEqF"]}' \
    > test.out 2>&1
eval_tap $? 148 'AdminGetBulkUserByEmailAddressV3' test.out

#- 149 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZxEyjQ5s' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetUserByUserIdV3' test.out

#- 150 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tWSUwlzJ' \
    --body '{"avatarUrl": "EbPDSFU6", "country": "vooiRe38", "dateOfBirth": "nAUjDdgp", "displayName": "KIw9x8aS", "languageTag": "vx5B3dcm", "userName": "q9XlRD7e"}' \
    > test.out 2>&1
eval_tap $? 150 'AdminUpdateUserV3' test.out

#- 151 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Hs9qE7i1' \
    --activeOnly 'true' \
    --after 'py5o2kUG' \
    --before 'zaZaRskd' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserBanV3' test.out

#- 152 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'c2OmZz9P' \
    --body '{"ban": "aFqXrmaN", "comment": "M9UmgUCr", "endDate": "LWD3e68v", "reason": "oATohkpK", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 152 'AdminBanUserV3' test.out

#- 153 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'koGD4ll1' \
    --namespace $AB_NAMESPACE \
    --userId 's2hLbGig' \
    --body '{"enabled": false, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminUpdateUserBanV3' test.out

#- 154 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'e13rkHj6' \
    --body '{"context": "8RDdVmsr", "emailAddress": "YZWY3uc7", "languageTag": "PyS556b1"}' \
    > test.out 2>&1
eval_tap $? 154 'AdminSendVerificationCodeV3' test.out

#- 155 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zpyC2K9E' \
    --body '{"Code": "7Gs565oa", "ContactType": "7DYqmwUK", "LanguageTag": "RKdgsFVU", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 155 'AdminVerifyAccountV3' test.out

#- 156 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'hf9jpuTk' \
    > test.out 2>&1
eval_tap $? 156 'GetUserVerificationCode' test.out

#- 157 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KvTeH0VS' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetUserDeletionStatusV3' test.out

#- 158 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZpZJe2bz' \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateUserDeletionStatusV3' test.out

#- 159 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '9mIDvade' \
    --body '{"code": "roF997WA", "country": "kttlLhF5", "dateOfBirth": "x1nO2nVI", "displayName": "RuYqxswO", "emailAddress": "ySs0hO0K", "password": "Is6q49D7", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpgradeHeadlessAccountV3' test.out

#- 160 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JGgoZcEN' \
    > test.out 2>&1
eval_tap $? 160 'AdminDeleteUserInformationV3' test.out

#- 161 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'y5rF0npE' \
    --after '0.2433848009534476' \
    --before '0.9641009589562964' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserLoginHistoriesV3' test.out

#- 162 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jjviHMXQ' \
    --body '{"languageTag": "rSg0wpxw", "newPassword": "2jBVEW6m", "oldPassword": "ibOr0p6f"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminResetPasswordV3' test.out

#- 163 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fv0n38vq' \
    --body '{"Permissions": [{"Action": 36, "Resource": "rSI7VaU3", "SchedAction": 80, "SchedCron": "Q58nHRrL", "SchedRange": ["x1xpUcW2", "Y1ZZoqGr", "rn2lC5rx"]}, {"Action": 69, "Resource": "snZY7d9W", "SchedAction": 85, "SchedCron": "L00yxJeX", "SchedRange": ["XJSIosss", "JG7WQHoN", "H0gycmqQ"]}, {"Action": 54, "Resource": "E7sGIyE6", "SchedAction": 46, "SchedCron": "MPyl751R", "SchedRange": ["7m3eQrj0", "3nbmjYIo", "R0xDKLyM"]}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateUserPermissionV3' test.out

#- 164 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FHYgUByx' \
    --body '{"Permissions": [{"Action": 76, "Resource": "Q63XwU01", "SchedAction": 55, "SchedCron": "rDvqRrme", "SchedRange": ["7n8TUMpg", "Sw0hJ8Mc", "eeN2vkts"]}, {"Action": 46, "Resource": "qQm6x8dz", "SchedAction": 6, "SchedCron": "5Hpkl4aR", "SchedRange": ["gCOJdQ7d", "NCxVlnOi", "jZOoGer3"]}, {"Action": 15, "Resource": "R6tUIa8f", "SchedAction": 78, "SchedCron": "gyzYMrul", "SchedRange": ["XnPA6VdJ", "VTJWbs20", "quBFEDgJ"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminAddUserPermissionsV3' test.out

#- 165 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Bec1ijKY' \
    --body '[{"Action": 83, "Resource": "lzhVsgBj"}, {"Action": 1, "Resource": "diLowxOc"}, {"Action": 46, "Resource": "vq1b7RUM"}]' \
    > test.out 2>&1
eval_tap $? 165 'AdminDeleteUserPermissionBulkV3' test.out

#- 166 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '11' \
    --namespace $AB_NAMESPACE \
    --resource 'sPpjYmvY' \
    --userId '0u9xGhEK' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionV3' test.out

#- 167 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LXG6WSfe' \
    --after 'OEyfttm7' \
    --before 'Ia0v76eO' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserPlatformAccountsV3' test.out

#- 168 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'bNrjksXv' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetListJusticePlatformAccounts' test.out

#- 169 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'MgMDS5K1' \
    --userId 'EOQlszjh' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserMapping' test.out

#- 170 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'ZRIIy15t' \
    --userId 'GmwXAjar' \
    > test.out 2>&1
eval_tap $? 170 'AdminCreateJusticeUser' test.out

#- 171 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'lc7lvOjA' \
    --body '{"platformId": "TSM4SPg4", "platformUserId": "je6U0FkU"}' \
    > test.out 2>&1
eval_tap $? 171 'AdminLinkPlatformAccount' test.out

#- 172 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cv4MR66s' \
    --userId 'RICGVOnm' \
    --body '{"platformNamespace": "6y6ssqY5"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminPlatformUnlinkV3' test.out

#- 173 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'W2u9KNYJ' \
    --userId 'TpUHUYhQ' \
    --ticket 'MkEmCGtq' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformLinkV3' test.out

#- 174 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YK3jW0TR' \
    --body '["WEnKOqnH", "OmLw7xZj", "sgBJOarF"]' \
    > test.out 2>&1
eval_tap $? 174 'AdminDeleteUserRolesV3' test.out

#- 175 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EG5ZiGhF' \
    --body '[{"namespace": "KEiLsxfd", "roleId": "k0t3vvC8"}, {"namespace": "C3aHrLmQ", "roleId": "SWLSNogI"}, {"namespace": "qxNpvpNi", "roleId": "gY9Vw0wO"}]' \
    > test.out 2>&1
eval_tap $? 175 'AdminSaveUserRoleV3' test.out

#- 176 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'yFOnTtA5' \
    --userId 'Ex4XTE1s' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserRoleV3' test.out

#- 177 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'M1ozZhhC' \
    --userId 'bWgLLzG7' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserRoleV3' test.out

#- 178 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '1PUhIOQS' \
    --body '{"enabled": true, "reason": "o1gH9gjN"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminUpdateUserStatusV3' test.out

#- 179 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sZfSQMSU' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 180 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'QTOV48kZ' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "aDIeKh75"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateClientSecretV3' test.out

#- 181 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'fPj5yDWL' \
    --before 'H4ce21cr' \
    --isWildcard 'true' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetRolesV3' test.out

#- 182 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "vfYKtnf8", "namespace": "B5vUKDHs", "userId": "laiTerno"}, {"displayName": "SZqhqBwj", "namespace": "5omerxDH", "userId": "8DeHvZAP"}, {"displayName": "UsPzLGP8", "namespace": "s059JE0z", "userId": "kLC5Mpe8"}], "members": [{"displayName": "YItr5A7Q", "namespace": "X6wJZ9Ty", "userId": "ubQWA2nw"}, {"displayName": "BZ1e7pqo", "namespace": "vCRwh58g", "userId": "GLV8ah6j"}, {"displayName": "ajxNt1QW", "namespace": "Hkb2kQNT", "userId": "lE7oxb7v"}], "permissions": [{"action": 58, "resource": "Rvqui24b", "schedAction": 58, "schedCron": "vvHu10wq", "schedRange": ["A78eGZLL", "NJ77CaEU", "9VO5M0zH"]}, {"action": 63, "resource": "4mB8XMlA", "schedAction": 54, "schedCron": "GRmNsRgT", "schedRange": ["QGdjQCcP", "EGRv1RRS", "DmVEmM4U"]}, {"action": 84, "resource": "ypQvD1v6", "schedAction": 16, "schedCron": "qTCWL5LG", "schedRange": ["HRZgxLux", "S0c8LIav", "jew4Udpy"]}], "roleName": "otgLqmyB"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateRoleV3' test.out

#- 183 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '0ArAEXyj' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRoleV3' test.out

#- 184 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'Ua721Led' \
    > test.out 2>&1
eval_tap $? 184 'AdminDeleteRoleV3' test.out

#- 185 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'oExrD1kf' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "ecxn72xw"}' \
    > test.out 2>&1
eval_tap $? 185 'AdminUpdateRoleV3' test.out

#- 186 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'bpXN3hcR' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetRoleAdminStatusV3' test.out

#- 187 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'jWKHkYCZ' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateAdminRoleStatusV3' test.out

#- 188 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'HtM0yymC' \
    > test.out 2>&1
eval_tap $? 188 'AdminRemoveRoleAdminV3' test.out

#- 189 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'htayAQAn' \
    --after 'rahNaSHC' \
    --before 'kJrSCdKC' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetRoleManagersV3' test.out

#- 190 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'i5onzCeb' \
    --body '{"managers": [{"displayName": "r7U5ZUyH", "namespace": "aGlIghpJ", "userId": "TEAxFAFt"}, {"displayName": "TaMslD6W", "namespace": "VM8nmBKG", "userId": "0HdCZIKp"}, {"displayName": "utsTgkda", "namespace": "XKcGLdAY", "userId": "PVoEUq15"}]}' \
    > test.out 2>&1
eval_tap $? 190 'AdminAddRoleManagersV3' test.out

#- 191 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'rkM8sT4L' \
    --body '{"managers": [{"displayName": "3Vfin5Fx", "namespace": "4e8cjVJc", "userId": "oAwrmGbe"}, {"displayName": "22YdhF4X", "namespace": "s5F6OvAJ", "userId": "MmgvmhIK"}, {"displayName": "8lEu0HBO", "namespace": "h2oeZa0b", "userId": "HqIF0VR1"}]}' \
    > test.out 2>&1
eval_tap $? 191 'AdminRemoveRoleManagersV3' test.out

#- 192 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'lpkLkttb' \
    --after 'NT9rEfAH' \
    --before 'iRII6w3H' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetRoleMembersV3' test.out

#- 193 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'djjZL9dC' \
    --body '{"members": [{"displayName": "edy63Goc", "namespace": "tySni42L", "userId": "8rinFMBu"}, {"displayName": "PtzyQaqm", "namespace": "b4t3qz8X", "userId": "BfCBS92c"}, {"displayName": "gST6Ea5M", "namespace": "gtFFMhlX", "userId": "MlZ1k5vj"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminAddRoleMembersV3' test.out

#- 194 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'YXtnacwK' \
    --body '{"members": [{"displayName": "VNyvacue", "namespace": "NKPRqio9", "userId": "cob3vjLl"}, {"displayName": "EnlY0O7q", "namespace": "qoG1I0YL", "userId": "bvyLElO4"}, {"displayName": "rCRPBpdN", "namespace": "X7GvNmZ7", "userId": "x3dGP4Hl"}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminRemoveRoleMembersV3' test.out

#- 195 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'COZekcCF' \
    --body '{"permissions": [{"action": 55, "resource": "j7eMmWgd", "schedAction": 96, "schedCron": "fXaY571K", "schedRange": ["NM6YV48B", "W4FeBj1D", "zO61Sud2"]}, {"action": 55, "resource": "osaoH83N", "schedAction": 76, "schedCron": "IZrOCzwZ", "schedRange": ["hqOFkxGH", "9JEc30i8", "AVu4CsuD"]}, {"action": 15, "resource": "KXKYq3gJ", "schedAction": 51, "schedCron": "MmhG8yFJ", "schedRange": ["Ni15rJWV", "GFl0Ytuz", "7nC1d1Et"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpdateRolePermissionsV3' test.out

#- 196 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'P8KTlf34' \
    --body '{"permissions": [{"action": 54, "resource": "Oa7MJunh", "schedAction": 47, "schedCron": "H673Tpiu", "schedRange": ["vwOPT7Z1", "zgAAyEYc", "hL2Jx67l"]}, {"action": 3, "resource": "E5b115oG", "schedAction": 83, "schedCron": "inKqGu7l", "schedRange": ["WzbwrI3g", "VnT31PaR", "mcUeG04g"]}, {"action": 40, "resource": "CTihoaid", "schedAction": 91, "schedCron": "6pN6LNPD", "schedRange": ["ndrFk2Oy", "DKv8Wint", "62lGMApP"]}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddRolePermissionsV3' test.out

#- 197 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'hnsH9BMH' \
    --body '["pbgR7Xit", "CSCLnJef", "MeqqIFDx"]' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteRolePermissionsV3' test.out

#- 198 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '65' \
    --resource 'Cd1Q8RFM' \
    --roleId 'Rao1MYxG' \
    > test.out 2>&1
eval_tap $? 198 'AdminDeleteRolePermissionV3' test.out

#- 199 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 199 'AdminGetMyUserV3' test.out

#- 200 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'HEu9IjZ3' \
    --extendExp 'false' \
    --redirectUri 'lvG9r1X5' \
    --password 'UAGBLKu3' \
    --requestId 'haqbzVfN' \
    --userName 'Dqx7dXev' \
    > test.out 2>&1
eval_tap $? 200 'UserAuthenticationV3' test.out

#- 201 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'ZLNwhc5J' \
    --linkingToken '1tk6PnLz' \
    --password 'TQLOmqLd' \
    --username 'Fm0vxJGt' \
    > test.out 2>&1
eval_tap $? 201 'AuthenticationWithPlatformLinkV3' test.out

#- 202 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'true' \
    --linkingToken 'PMrkILNr' \
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
    --clientId 'H2XW8KA3' \
    > test.out 2>&1
eval_tap $? 205 'RequestGameTokenCodeResponseV3' test.out

#- 206 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'igCrzU2u' \
    --userId 'bxg4hnS5' \
    > test.out 2>&1
eval_tap $? 206 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 207 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '9vfsjJmp' \
    > test.out 2>&1
eval_tap $? 207 'RevokeUserV3' test.out

#- 208 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge '4x8teo2i' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --redirectUri 'fYlsEuFL' \
    --scope 'I0i708Dy' \
    --state '0mRIk9G5' \
    --targetAuthPage 'Vl6HPty1' \
    --clientId 'fjjHyw9A' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 208 'AuthorizeV3' test.out

#- 209 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'hxEcEJ7g' \
    > test.out 2>&1
eval_tap $? 209 'TokenIntrospectionV3' test.out

#- 210 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 210 'GetJWKSV3' test.out

#- 211 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'laAwgwTs' \
    --mfaToken '0Gtw8cIu' \
    > test.out 2>&1
eval_tap $? 211 'Change2faMethod' test.out

#- 212 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '3P9TZFXs' \
    --factor '3Q47mn8e' \
    --mfaToken 'vD00dL17' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 212 'Verify2faCode' test.out

#- 213 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O6Aa9iXr' \
    --userId 'BNimQcVa' \
    > test.out 2>&1
eval_tap $? 213 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 214 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'Dsn1Xege' \
    --clientId '1FWa4kO6' \
    --redirectUri 'eI4HLa9J' \
    --requestId 'VjVNQIau' \
    > test.out 2>&1
eval_tap $? 214 'AuthCodeRequestV3' test.out

#- 215 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '9nTgb4wa' \
    --clientId 'gfKNU9Lm' \
    --createHeadless 'true' \
    --deviceId 'qfIt1uSD' \
    --macAddress 'lSOsVB7B' \
    --platformToken 'foP6c4tD' \
    > test.out 2>&1
eval_tap $? 215 'PlatformTokenGrantV3' test.out

#- 216 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 216 'GetRevocationListV3' test.out

#- 217 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '2sUGTg35' \
    > test.out 2>&1
eval_tap $? 217 'TokenRevocationV3' test.out

#- 218 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId 'AXFwmxLy' \
    --code 'XG37QKvh' \
    --codeVerifier 'WdHVeomI' \
    --extendExp 'false' \
    --password '7RTWTUzB' \
    --redirectUri 'FsnYHLVO' \
    --refreshToken 'bFTiHAxB' \
    --username '7uXf8We4' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 218 'TokenGrantV3' test.out

#- 219 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'WjFLdPWV' \
    > test.out 2>&1
eval_tap $? 219 'VerifyTokenV3' test.out

#- 220 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'ig0EenPw' \
    --code 'CIs7X4xu' \
    --error 'NQDbvheT' \
    --openidAssocHandle '1Unvl8w7' \
    --openidClaimedId 'ZrqTFI1g' \
    --openidIdentity '6bxcGRls' \
    --openidMode 'bElSfvcC' \
    --openidNs 'MWfoGkI4' \
    --openidOpEndpoint 'RPm2skUg' \
    --openidResponseNonce '4xf9bxSm' \
    --openidReturnTo 'f0zQTPhl' \
    --openidSig 'nLoe5JPx' \
    --openidSigned 'kRREX8qt' \
    --state 'wWlzNEwD' \
    > test.out 2>&1
eval_tap $? 220 'PlatformAuthenticationV3' test.out

#- 221 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode '4LiriotU' \
    > test.out 2>&1
eval_tap $? 221 'PublicGetInputValidations' test.out

#- 222 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'nxMSIgpw' \
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
    --clientId 'Ni99KGMH' \
    > test.out 2>&1
eval_tap $? 224 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 225 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5hFOn9ZG' \
    --body '{"platformUserIds": ["oeVfma36", "NLG2lZWx", "lZZrdAxS"]}' \
    > test.out 2>&1
eval_tap $? 225 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 226 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IhRIl4OF' \
    --platformUserId 'oCb4pfQV' \
    > test.out 2>&1
eval_tap $? 226 'PublicGetUserByPlatformUserIDV3' test.out

#- 227 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'eRZzO0Y4' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetAsyncStatus' test.out

#- 228 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'BoOhS55L' \
    --limit '58' \
    --offset '39' \
    --query 'Tb8dNSZA' \
    > test.out 2>&1
eval_tap $? 228 'PublicSearchUserV3' test.out

#- 229 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "JM6bXSR6", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "g4xeS3rH", "policyId": "mCRNqn2M", "policyVersionId": "QEVDkt4g"}, {"isAccepted": true, "localizedPolicyVersionId": "VW0fQi40", "policyId": "dfafPVBb", "policyVersionId": "0pm4Rz28"}, {"isAccepted": false, "localizedPolicyVersionId": "QHaEWxqH", "policyId": "cwQzyiRF", "policyVersionId": "Glzaz71e"}], "authType": "0BbDIuyv", "code": "Y8Qf4tiu", "country": "SVLlLH5n", "dateOfBirth": "OzYIr807", "displayName": "uZ1f1C9y", "emailAddress": "5mAwKqjs", "password": "SwOwOG5Y", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 229 'PublicCreateUserV3' test.out

#- 230 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'xGvhMWnN' \
    --query 'hpWVHN1J' \
    > test.out 2>&1
eval_tap $? 230 'CheckUserAvailability' test.out

#- 231 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["zHfHYyAa", "GF3dcA65", "uwVdsQiF"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicBulkGetUsers' test.out

#- 232 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "nmSHHpNx", "languageTag": "0I7jY55B"}' \
    > test.out 2>&1
eval_tap $? 232 'PublicSendRegistrationCode' test.out

#- 233 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HElsHu54", "emailAddress": "VU6hnXkO"}' \
    > test.out 2>&1
eval_tap $? 233 'PublicVerifyRegistrationCode' test.out

#- 234 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "s6H8ISbF", "languageTag": "TfFpZrBu"}' \
    > test.out 2>&1
eval_tap $? 234 'PublicForgotPasswordV3' test.out

#- 235 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'DSrVYUsq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 235 'GetAdminInvitationV3' test.out

#- 236 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '8yBw8Ufb' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "jRx8447S", "policyId": "gOp18eoT", "policyVersionId": "HtoIUlbh"}, {"isAccepted": false, "localizedPolicyVersionId": "7MxEY12B", "policyId": "hXGtEQuQ", "policyVersionId": "4kJBiKld"}, {"isAccepted": true, "localizedPolicyVersionId": "BJJ84vUa", "policyId": "h6EUONLt", "policyVersionId": "hDk3LYVP"}], "authType": "EMAILPASSWD", "country": "eLW0jQ4x", "dateOfBirth": "wYhE35pr", "displayName": "ATezpd0P", "password": "8cTlt5F6", "reachMinimumAge": false}' \
    > test.out 2>&1
eval_tap $? 236 'CreateUserFromInvitationV3' test.out

#- 237 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "AJRm3ddF", "country": "E1Zscsr0", "dateOfBirth": "tZu5IBs9", "displayName": "CSvs4sFN", "languageTag": "vEXnuiHc", "userName": "4pxnUK4o"}' \
    > test.out 2>&1
eval_tap $? 237 'UpdateUserV3' test.out

#- 238 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "TMlpx1vZ", "country": "ZSU1z25q", "dateOfBirth": "kmGcjk0F", "displayName": "h9DgkKJu", "languageTag": "VRt09ajm", "userName": "tRqW2UCy"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicPartialUpdateUserV3' test.out

#- 239 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "WJ3ARe3b", "emailAddress": "AwBu1MIO", "languageTag": "judBb8zh"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicSendVerificationCodeV3' test.out

#- 240 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4kNZx3n7", "contactType": "ISvOC6sE", "languageTag": "fk1zuPaQ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 240 'PublicUserVerificationV3' test.out

#- 241 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "AUb32eOs", "country": "lu4YQkk7", "dateOfBirth": "16WvBdpS", "displayName": "HSJJM1Qp", "emailAddress": "NU0rsciZ", "password": "7Xq4CqBb", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 241 'PublicUpgradeHeadlessAccountV3' test.out

#- 242 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "lfvFROWJ", "password": "KXLJhYTe"}' \
    > test.out 2>&1
eval_tap $? 242 'PublicVerifyHeadlessAccountV3' test.out

#- 243 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "yNmSxPWs", "newPassword": "yt5PqvjN", "oldPassword": "CSXjNuLI"}' \
    > test.out 2>&1
eval_tap $? 243 'PublicUpdatePasswordV3' test.out

#- 244 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'MzVdw7S7' \
    > test.out 2>&1
eval_tap $? 244 'PublicCreateJusticeUser' test.out

#- 245 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CzFFnbuL' \
    --redirectUri 'ElJUi62z' \
    --ticket 'M5xV0f5V' \
    > test.out 2>&1
eval_tap $? 245 'PublicPlatformLinkV3' test.out

#- 246 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'A9YfPhUi' \
    --body '{"platformNamespace": "mfLzInXd"}' \
    > test.out 2>&1
eval_tap $? 246 'PublicPlatformUnlinkV3' test.out

#- 247 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ALIzy9RD' \
    > test.out 2>&1
eval_tap $? 247 'PublicPlatformUnlinkAllV3' test.out

#- 248 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bQT10L8d' \
    --ticket 'QIdOfhYZ' \
    > test.out 2>&1
eval_tap $? 248 'PublicForcePlatformLinkV3' test.out

#- 249 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'QqFJDTJG' \
    --clientId 'J3H8S0HN' \
    --redirectUri 'WAcMXXar' \
    > test.out 2>&1
eval_tap $? 249 'PublicWebLinkPlatform' test.out

#- 250 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'dOC7sAYw' \
    --state 'MuXEdIC4' \
    > test.out 2>&1
eval_tap $? 250 'PublicWebLinkPlatformEstablish' test.out

#- 251 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6u8p9G4i", "emailAddress": "qtCGAWZ0", "newPassword": "bXUeR6Ln"}' \
    > test.out 2>&1
eval_tap $? 251 'ResetPasswordV3' test.out

#- 252 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XFKTJloQ' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetUserByUserIdV3' test.out

#- 253 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SHqbaRfl' \
    --activeOnly 'true' \
    --after 'yZ7WtFym' \
    --before 'PZWTnYqI' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetUserBanHistoryV3' test.out

#- 254 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zEwaxmyq' \
    > test.out 2>&1
eval_tap $? 254 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 255 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ocBZBziN' \
    > test.out 2>&1
eval_tap $? 255 'PublicGetUserInformationV3' test.out

#- 256 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fmOSO9AT' \
    --after '0.2719556188669837' \
    --before '0.8160434469649737' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 256 'PublicGetUserLoginHistoriesV3' test.out

#- 257 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N4I2iFiw' \
    --after 'EUT1v0Sk' \
    --before 'L12KpZ8h' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserPlatformAccountsV3' test.out

#- 258 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S04HsPmI' \
    > test.out 2>&1
eval_tap $? 258 'PublicListJusticePlatformAccountsV3' test.out

#- 259 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'rL2BfZh8' \
    --body '{"platformId": "4BbcD0YC", "platformUserId": "ZqpwVGwH"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicLinkPlatformAccount' test.out

#- 260 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '6U0jPOB6' \
    --body '{"chosenNamespaces": ["ysBkJIK9", "Z183QDSL", "duBuimgv"], "requestId": "UCPn4Qg5"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicForceLinkPlatformWithProgression' test.out

#- 261 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '3uebVeMA' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetPublisherUserV3' test.out

#- 262 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'O8MIhBRq' \
    --password 'mmKrn8Pc' \
    > test.out 2>&1
eval_tap $? 262 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 263 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '8MYtqhf4' \
    --before 'h0f2zFh6' \
    --isWildcard 'false' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetRolesV3' test.out

#- 264 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'vLXgGPk2' \
    > test.out 2>&1
eval_tap $? 264 'PublicGetRoleV3' test.out

#- 265 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 265 'PublicGetMyUserV3' test.out

#- 266 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "moYYpkWw"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicSendVerificationLinkV3' test.out

#- 267 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '8jQGwlJ9' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyUserByLinkV3' test.out

#- 268 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'HLodwJHU' \
    --code 'SVnW7Zkv' \
    --error 'SJLu1Eip' \
    --state 'LRp5pexj' \
    > test.out 2>&1
eval_tap $? 268 'PlatformAuthenticateSAMLV3Handler' test.out

#- 269 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'qKcIkLuw' \
    --payload '1vGwsiMn' \
    > test.out 2>&1
eval_tap $? 269 'LoginSSOClient' test.out

#- 270 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'SsIdu9lj' \
    > test.out 2>&1
eval_tap $? 270 'LogoutSSOClient' test.out

#- 271 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'cjG2o4cH' \
    > test.out 2>&1
eval_tap $? 271 'RequestGameTokenResponseV3' test.out

#- 272 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wGqFac8j' \
    > test.out 2>&1
eval_tap $? 272 'AdminGetDevicesByUserV4' test.out

#- 273 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'hEHjYZ1m' \
    --endDate 'PqlxNK9o' \
    --limit '5' \
    --offset '73' \
    --startDate '2cXvFXvb' \
    > test.out 2>&1
eval_tap $? 273 'AdminGetBannedDevicesV4' test.out

#- 274 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'csBIgDhl' \
    > test.out 2>&1
eval_tap $? 274 'AdminGetUserDeviceBansV4' test.out

#- 275 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "bivvsAsY", "deviceId": "Vty8yw4e", "deviceType": "yUDZ69yV", "enabled": false, "endDate": "406c2G4I", "ext": {"CRYvInka": {}, "2aMJTEoC": {}, "44nSf7v7": {}}, "reason": "pqvhFozs"}' \
    > test.out 2>&1
eval_tap $? 275 'AdminBanDeviceV4' test.out

#- 276 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'rHLYdYpd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 276 'AdminGetDeviceBanV4' test.out

#- 277 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'ikLHRNTd' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 277 'AdminUpdateDeviceBanV4' test.out

#- 278 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'hjzR54Ht' \
    --startDate 'hsud6C3U' \
    --deviceType '4jq21DY2' \
    > test.out 2>&1
eval_tap $? 278 'AdminGenerateReportV4' test.out

#- 279 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 279 'AdminGetDeviceTypesV4' test.out

#- 280 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'WkZXeRYh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDeviceBansV4' test.out

#- 281 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId '1ReYnk9X' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 281 'AdminDecryptDeviceV4' test.out

#- 282 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'iVtD7QaU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'AdminUnbanDeviceV4' test.out

#- 283 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'kT7L8LIk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 283 'AdminGetUsersByDeviceV4' test.out

#- 284 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 29}' \
    > test.out 2>&1
eval_tap $? 284 'AdminCreateTestUsersV4' test.out

#- 285 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yTCoeB3l", "mZkiGnTt", "Fgdi4nfp"]}' \
    > test.out 2>&1
eval_tap $? 285 'AdminBulkCheckValidUserIDV4' test.out

#- 286 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'd9BEbozj' \
    --body '{"avatarUrl": "leFrGttn", "country": "V8tPA3MT", "dateOfBirth": "S7JuyUwp", "displayName": "96XGBTkS", "languageTag": "GkImBSp8", "userName": "pfYVI6hI"}' \
    > test.out 2>&1
eval_tap $? 286 'AdminUpdateUserV4' test.out

#- 287 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'p3z9TXaH' \
    --body '{"code": "o6Yq6CiU", "emailAddress": "hICKhUDk"}' \
    > test.out 2>&1
eval_tap $? 287 'AdminUpdateUserEmailAddressV4' test.out

#- 288 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'P8j3JuZu' \
    > test.out 2>&1
eval_tap $? 288 'AdminDisableUserMFAV4' test.out

#- 289 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yCKUELDy' \
    > test.out 2>&1
eval_tap $? 289 'AdminListUserRolesV4' test.out

#- 290 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '17Xqvlst' \
    --body '{"assignedNamespaces": ["U5gsD44a", "mGdubPtN", "05MmYax9"], "roleId": "TUR3Q36j"}' \
    > test.out 2>&1
eval_tap $? 290 'AdminUpdateUserRoleV4' test.out

#- 291 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FV2AN5Nd' \
    --body '{"assignedNamespaces": ["GAzf88Xm", "nxkY3N5Z", "VOSRL5qe"], "roleId": "oRb7Tb0U"}' \
    > test.out 2>&1
eval_tap $? 291 'AdminAddUserRoleV4' test.out

#- 292 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Y3DwZbPb' \
    --body '{"assignedNamespaces": ["cZ1vxVQl", "bSObHm49", "905J8FpC"], "roleId": "W7XEQ721"}' \
    > test.out 2>&1
eval_tap $? 292 'AdminRemoveUserRoleV4' test.out

#- 293 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '73' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 293 'AdminGetRolesV4' test.out

#- 294 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "xRvvBfIj"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminCreateRoleV4' test.out

#- 295 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'fg8vkA81' \
    > test.out 2>&1
eval_tap $? 295 'AdminGetRoleV4' test.out

#- 296 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'HiOiiSt2' \
    > test.out 2>&1
eval_tap $? 296 'AdminDeleteRoleV4' test.out

#- 297 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'HuwbPhQT' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "N5du7veW"}' \
    > test.out 2>&1
eval_tap $? 297 'AdminUpdateRoleV4' test.out

#- 298 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'Xea8FBlz' \
    --body '{"permissions": [{"action": 44, "resource": "hDkxBbgi", "schedAction": 18, "schedCron": "2LpeITD2", "schedRange": ["78mop1Uj", "R4uUxBZG", "RTTmfnx2"]}, {"action": 19, "resource": "H9oru61v", "schedAction": 88, "schedCron": "WU9Ff1FV", "schedRange": ["qdLdzk2n", "IjmImDId", "c4UQzvWI"]}, {"action": 8, "resource": "y9jwn05q", "schedAction": 16, "schedCron": "oguHSTNI", "schedRange": ["ZuqNGf6Q", "tfnjy7Cx", "Yno6D40k"]}]}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateRolePermissionsV4' test.out

#- 299 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'mFjjxUZL' \
    --body '{"permissions": [{"action": 57, "resource": "F9raNpxW", "schedAction": 31, "schedCron": "IFUWorcr", "schedRange": ["nXGMzo4X", "5Q2K4Zc3", "Kmhn5Xuy"]}, {"action": 54, "resource": "aXLZGmta", "schedAction": 64, "schedCron": "vdEbgZEg", "schedRange": ["hnjJPSJJ", "k3uee5cu", "Vrxb8yxJ"]}, {"action": 76, "resource": "m8JYKg8u", "schedAction": 53, "schedCron": "dc5Gasz4", "schedRange": ["tjRUrzKa", "PA37JbFI", "alEpW6rv"]}]}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddRolePermissionsV4' test.out

#- 300 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'b0L6FRvi' \
    --body '["TKW7yr2Z", "j8CN9yly", "1mpwjt9Y"]' \
    > test.out 2>&1
eval_tap $? 300 'AdminDeleteRolePermissionsV4' test.out

#- 301 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'aEU8CD2v' \
    --after 'GpKZ2USz' \
    --before 'fUaRoi8T' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 301 'AdminListAssignedUsersV4' test.out

#- 302 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'NjI4XMfE' \
    --body '{"assignedNamespaces": ["C9gu8zEX", "AhrXw5X4", "tYzKUyFc"], "namespace": "St0SK3HJ", "userId": "gc0IvOjN"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminAssignUserToRoleV4' test.out

#- 303 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'kRzhFiEO' \
    --body '{"namespace": "4AVp89Qc", "userId": "hx0LZ2Sr"}' \
    > test.out 2>&1
eval_tap $? 303 'AdminRevokeUserFromRoleV4' test.out

#- 304 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "7X08v8bL", "country": "g60ERHvQ", "dateOfBirth": "FEJudmLQ", "displayName": "0SwkcgRL", "languageTag": "TQoGo2un", "userName": "le3bTCIb"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminUpdateMyUserV4' test.out

#- 305 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 305 'AdminDisableMyAuthenticatorV4' test.out

#- 306 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '9NQL3z27' \
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
    --factor 'Yx7DBx27' \
    > test.out 2>&1
eval_tap $? 314 'AdminMakeFactorMyDefaultV4' test.out

#- 315 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["8NESGsna", "qB30noYX", "4KcDEQgm"], "emailAddresses": ["7z6OuBMd", "ZPZUipKv", "P5AnUkAW"], "isAdmin": false, "roleId": "3lX52WXO"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminInviteUserV4' test.out

#- 316 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "VSR3FEvx", "policyId": "GJqMwWrw", "policyVersionId": "fsgkLlMD"}, {"isAccepted": false, "localizedPolicyVersionId": "BDMZjqMk", "policyId": "Rr0T37QV", "policyVersionId": "NR5iAuWi"}, {"isAccepted": true, "localizedPolicyVersionId": "KP8jW2HO", "policyId": "9ho98H1Q", "policyVersionId": "5CAXdef2"}], "authType": "EMAILPASSWD", "country": "UgvkkCpw", "dateOfBirth": "IyoCSJgn", "displayName": "zAi4pkRW", "emailAddress": "EcOp9ve2", "password": "eo4lbgmP", "passwordMD5Sum": "23fMU7bP", "username": "Ye0L6KWZ", "verified": false}' \
    > test.out 2>&1
eval_tap $? 316 'PublicCreateTestUserV4' test.out

#- 317 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "GFZdQnsh", "policyId": "b4QTtXcz", "policyVersionId": "Ol75RiUr"}, {"isAccepted": true, "localizedPolicyVersionId": "vnCqe5pG", "policyId": "4EzxBfeB", "policyVersionId": "xLDAJ6Vi"}, {"isAccepted": true, "localizedPolicyVersionId": "h34tZDSG", "policyId": "c8tgawum", "policyVersionId": "DhWE3kZT"}], "authType": "EMAILPASSWD", "code": "LkoIrzhN", "country": "AMuKLyA1", "dateOfBirth": "0KLD09ZQ", "displayName": "hCOB15ab", "emailAddress": "tAEFRVO3", "password": "a4FUldmm", "passwordMD5Sum": "55wsP4BN", "reachMinimumAge": false, "username": "IKfo40Mp"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicCreateUserV4' test.out

#- 318 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'tGJFT954' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "bwqP9m4G", "policyId": "SIMGO2oJ", "policyVersionId": "HJgaccfx"}, {"isAccepted": false, "localizedPolicyVersionId": "HH7enwAe", "policyId": "LBSW4mRu", "policyVersionId": "ErWejHDH"}, {"isAccepted": true, "localizedPolicyVersionId": "sOXweMc7", "policyId": "G1jfXqBH", "policyVersionId": "OncU7EGh"}], "authType": "EMAILPASSWD", "country": "AXzzw3tt", "dateOfBirth": "tPom7M0t", "displayName": "ZMhCn5Na", "password": "Oib3O7eo", "reachMinimumAge": false, "username": "p2fIScQO"}' \
    > test.out 2>&1
eval_tap $? 318 'CreateUserFromInvitationV4' test.out

#- 319 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "u8T8Nsk0", "country": "7XV0okcu", "dateOfBirth": "QsV80nCL", "displayName": "fXMQDxq4", "languageTag": "GqeuxMmH", "userName": "YW37Az3p"}' \
    > test.out 2>&1
eval_tap $? 319 'PublicUpdateUserV4' test.out

#- 320 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yxTfsHfh", "emailAddress": "h8vt8MGc"}' \
    > test.out 2>&1
eval_tap $? 320 'PublicUpdateUserEmailAddressV4' test.out

#- 321 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vAuQ57Wd", "country": "Fmjq1wpx", "dateOfBirth": "QMauR5Xh", "displayName": "tSijo8Kn", "emailAddress": "awheisDw", "password": "IvlBjzGv", "reachMinimumAge": false, "username": "8LVWcceI", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 321 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 322 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "YLlAurng", "password": "ldLH0Ueu", "username": "M1fWfWyL"}' \
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
    --code 'wjKNyilq' \
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
    --factor 'XXLq0xEG' \
    > test.out 2>&1
eval_tap $? 333 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE