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
    --body '[{"field": "3XRf5ylu", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["bbLTivZ1", "SoogTZvA", "LQsOW6TU"], "description": [{"language": "juAFGNpo", "message": ["BIrugFZm", "DB68Fp1u", "mEFgzBSl"]}, {"language": "3uKIRG9h", "message": ["j0rxHRu5", "QhqvIASx", "Ll99EQZP"]}, {"language": "0uz8e0rX", "message": ["nLVgeWux", "EMkeG80p", "MbZ74QEO"]}], "isCustomRegex": false, "letterCase": "uq1EfFdF", "maxLength": 65, "maxRepeatingAlphaNum": 89, "maxRepeatingSpecialCharacter": 90, "minCharType": 66, "minLength": 78, "regex": "5lyPafjG", "specialCharacterLocation": "SnHYEVgg", "specialCharacters": ["WlzutVrS", "hVynx4sj", "n43OLOxe"]}}, {"field": "oyHhyml4", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "blockedWord": ["6nIfNVGV", "ljnMD91t", "iYFeLyAL"], "description": [{"language": "tKGkUvgF", "message": ["Qf6y07bZ", "FnDk2fEl", "41WjlHVb"]}, {"language": "uO28W04B", "message": ["QzCXHQT9", "OwVRO7qU", "tjl66fRK"]}, {"language": "lGyepA4k", "message": ["kekycGZO", "qAnVDw3T", "a59gpoOK"]}], "isCustomRegex": true, "letterCase": "FvHS4wHy", "maxLength": 63, "maxRepeatingAlphaNum": 49, "maxRepeatingSpecialCharacter": 57, "minCharType": 22, "minLength": 21, "regex": "xcaMTUJf", "specialCharacterLocation": "wVEy752E", "specialCharacters": ["3lyuo0XN", "Nbm01RnU", "1HpIWDNA"]}}, {"field": "fyqVOBDm", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "blockedWord": ["fmx83dU6", "eqFSKx6O", "eSIgZMQv"], "description": [{"language": "idq86b5g", "message": ["PSJ6hewx", "JSevZ1KC", "6cUkzK5F"]}, {"language": "VvjkmeMy", "message": ["p6o6Of2R", "mohdQLbX", "RTHgxmUb"]}, {"language": "9wA7j4mv", "message": ["Cow8vR7t", "qPQd3qGw", "Bye5DfY3"]}], "isCustomRegex": false, "letterCase": "rXucUlMN", "maxLength": 81, "maxRepeatingAlphaNum": 27, "maxRepeatingSpecialCharacter": 5, "minCharType": 75, "minLength": 15, "regex": "R78LvbXf", "specialCharacterLocation": "EcXNIYID", "specialCharacters": ["0xW78oAm", "qAnYYazV", "Ut5ZFfa1"]}}]' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateInputValidations' test.out

#- 110 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'xqlckmdb' \
    > test.out 2>&1
eval_tap $? 110 'AdminResetInputValidations' test.out

#- 111 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'UjdYncLL' \
    --before 'TKvXfAlP' \
    --limit '84' \
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
    --body '{"ageRestriction": 1, "enable": false}' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 114 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 114 'AdminGetListCountryAgeRestrictionV3' test.out

#- 115 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'WPFnPDzg' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 42}' \
    > test.out 2>&1
eval_tap $? 115 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 116 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'fpqg4E3B' \
    --limit '65' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 116 'AdminGetBannedUsersV3' test.out

#- 117 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "xhloLOzG", "comment": "94mK3gEU", "endDate": "Mp4myA2o", "reason": "dbGr4jRr", "skipNotif": false, "userIds": ["RNr9f9wu", "lKuGUqm6", "KTYkKSjB"]}' \
    > test.out 2>&1
eval_tap $? 117 'AdminBanUserBulkV3' test.out

#- 118 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "BOtIVGs0", "userId": "5MVcqyqn"}, {"banId": "GRyX7BqU", "userId": "ksRcEqPF"}, {"banId": "vRCmyYv0", "userId": "nZXFW36Y"}]}' \
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
    --clientId 'FE75Cr1Y' \
    --clientName 'avxwPHtg' \
    --clientType 'N3u8xhQK' \
    --limit '47' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetClientsByNamespaceV3' test.out

#- 121 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["ghnupy8T", "TmvzmX8w", "rsAoFSUQ"], "baseUri": "bsHuTpac", "clientId": "pxrWtxSq", "clientName": "a7Irj5bh", "clientPermissions": [{"action": 3, "resource": "jRREzhV6", "schedAction": 68, "schedCron": "9MS6ptYf", "schedRange": ["5BUlyevm", "VeHKCX1f", "yzlqwa8a"]}, {"action": 22, "resource": "wfXSp2Wj", "schedAction": 43, "schedCron": "7Nfj9BT7", "schedRange": ["xelVFXeq", "y7C07IPc", "xVei0lHC"]}, {"action": 71, "resource": "Ls5YLTI0", "schedAction": 28, "schedCron": "YrMXNpaT", "schedRange": ["doMzIZFN", "cjUAQCqF", "FoMGBlBx"]}], "clientPlatform": "IlhUzR2a", "deletable": true, "description": "EvigRQ1I", "namespace": "2QWWnHNh", "oauthAccessTokenExpiration": 52, "oauthAccessTokenExpirationTimeUnit": "F8Ao1Hxd", "oauthClientType": "ZSxQoU2b", "oauthRefreshTokenExpiration": 84, "oauthRefreshTokenExpirationTimeUnit": "OJsYsuTQ", "redirectUri": "PkQBFtQb", "scopes": ["iEIw2nTZ", "KqcypuC8", "Q45UYXzp"], "secret": "AGnwdTTc", "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 121 'AdminCreateClientV3' test.out

#- 122 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'XzMgvpv4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 122 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 123 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'WW2VLdk1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminDeleteClientV3' test.out

#- 124 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '9DmiEzwO' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Bu3JfyQC", "bP6hpwuy", "LIEhnTTQ"], "baseUri": "jckEB1hS", "clientName": "KONQFqD9", "clientPermissions": [{"action": 92, "resource": "ScZCRysC", "schedAction": 13, "schedCron": "cofEV1Dn", "schedRange": ["e7ixsNx7", "ezgUkHIs", "7O4vECR0"]}, {"action": 20, "resource": "pAXnZHbJ", "schedAction": 41, "schedCron": "qft6iVhn", "schedRange": ["lr3XpHgc", "MKOlVHSA", "XXqAXwUp"]}, {"action": 11, "resource": "lFu4wNQn", "schedAction": 99, "schedCron": "tROPggQx", "schedRange": ["DynS5lpl", "7YotX9vy", "OhQ2LI1d"]}], "clientPlatform": "7nyaHcDu", "deletable": false, "description": "idxZVUy0", "namespace": "qRQAl0qh", "oauthAccessTokenExpiration": 36, "oauthAccessTokenExpirationTimeUnit": "x9ASpmZs", "oauthRefreshTokenExpiration": 54, "oauthRefreshTokenExpirationTimeUnit": "z1XPEuGY", "redirectUri": "knMTkRwK", "scopes": ["eSCV06hk", "weCZixxc", "FV6lba0e"], "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUpdateClientV3' test.out

#- 125 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'PWB7XD7P' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 100, "resource": "BtlYHxkM"}, {"action": 2, "resource": "b6yhkKsh"}, {"action": 56, "resource": "nSHJRX8y"}]}' \
    > test.out 2>&1
eval_tap $? 125 'AdminUpdateClientPermissionV3' test.out

#- 126 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'WEbU1XJD' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 17, "resource": "SHeRemCo"}, {"action": 93, "resource": "irVIgzuk"}, {"action": 53, "resource": "0DLQ98tN"}]}' \
    > test.out 2>&1
eval_tap $? 126 'AdminAddClientPermissionsV3' test.out

#- 127 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '70' \
    --clientId 'WPPdWAjQ' \
    --namespace $AB_NAMESPACE \
    --resource 'n2a5F7K6' \
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
    --offset '94' \
    > test.out 2>&1
eval_tap $? 130 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 131 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '96zrfr14' \
    > test.out 2>&1
eval_tap $? 131 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 132 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ECR9CNrt' \
    --body '{"ACSURL": "cNMoF5fV", "AWSCognitoRegion": "UwfQbpsr", "AWSCognitoUserPool": "sscstFEJ", "AllowedClients": ["UZPRVHIy", "qbjc34hR", "I3rkP9Om"], "AppId": "004f1eFN", "AuthorizationEndpoint": "nBfFtrrM", "ClientId": "fC106ddj", "Environment": "oxTCYXrv", "FederationMetadataURL": "J1N2FXId", "GenericOauthFlow": false, "IsActive": true, "Issuer": "I9JxDtTd", "JWKSEndpoint": "tHLkIL2O", "KeyID": "py8SzU6c", "NetflixCertificates": {"encryptedPrivateKey": "I0AOcW5r", "encryptedPrivateKeyName": "LbT67lWj", "publicCertificate": "e2iO2nA2", "publicCertificateName": "i7GuQtYn", "rootCertificate": "xe5KHeP8", "rootCertificateName": "YfHNehIp"}, "OrganizationId": "UzVOfhAN", "PlatformName": "L52cYl7T", "RedirectUri": "JsvLjQZO", "RegisteredDomains": [{"affectedClientIDs": ["USpgeOdL", "tK1xpQ1r", "TixXqB5D"], "domain": "1d5uctM1", "namespaces": ["BmOoSElB", "QQD2yDIP", "uJl9D4ri"], "roleId": "LPyt4EPn"}, {"affectedClientIDs": ["OfYh2IFR", "0RTK7OOn", "upgipPWt"], "domain": "j0URs83h", "namespaces": ["J6iVnuYV", "XZylP22k", "fXzzrLEa"], "roleId": "412rtJzo"}, {"affectedClientIDs": ["MZKdqW6O", "nssWqZ8y", "PenBLu7r"], "domain": "QAL0mzk6", "namespaces": ["ueP34oky", "KFS6yje6", "saZc8EFW"], "roleId": "D1kARnVG"}], "Secret": "EwXmSFPE", "TeamID": "ffUKeDYC", "TokenAuthenticationType": "qJ4MiPCq", "TokenClaimsMapping": {"Jej767q8": "Xy1ggWCf", "puJHLRgb": "wBN15Io5", "ZBdivogQ": "CAQ57dTE"}, "TokenEndpoint": "o79MhQsW", "scopes": ["qxaaC0gb", "Jhknjlg4", "78WjygRs"]}' \
    > test.out 2>&1
eval_tap $? 132 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 133 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '394rYB6b' \
    > test.out 2>&1
eval_tap $? 133 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 134 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'S1qPvO65' \
    --body '{"ACSURL": "0ySKB778", "AWSCognitoRegion": "ywd50cRE", "AWSCognitoUserPool": "B8UImOkk", "AllowedClients": ["ZNZjS6Is", "owgq6wcz", "IoxJTZXY"], "AppId": "3wKap0cW", "AuthorizationEndpoint": "kAidrNfI", "ClientId": "1CidAMU3", "Environment": "HU5THro3", "FederationMetadataURL": "pSLf8oXv", "GenericOauthFlow": false, "IsActive": false, "Issuer": "QRNJtD5i", "JWKSEndpoint": "6ATwmVl7", "KeyID": "yJdjL6Wk", "NetflixCertificates": {"encryptedPrivateKey": "xO52Frcv", "encryptedPrivateKeyName": "ito5LNU4", "publicCertificate": "L9PPpoDK", "publicCertificateName": "a6nrDIa8", "rootCertificate": "66flaXan", "rootCertificateName": "DVElTgju"}, "OrganizationId": "CEeLbzTu", "PlatformName": "LjDKhblI", "RedirectUri": "IsWqYB4h", "RegisteredDomains": [{"affectedClientIDs": ["ydIGsRox", "MbeFCZEv", "KFYyJhHu"], "domain": "W4yECjFd", "namespaces": ["PHbZrAb1", "jrFB0pPH", "LLYUqei0"], "roleId": "ahdQBiQ5"}, {"affectedClientIDs": ["HqA9KRAG", "AVh80nA8", "xD41o6nW"], "domain": "kxTdjm2h", "namespaces": ["1UMLpVIu", "oTm4Ly8S", "Mainoirn"], "roleId": "e353A9Ti"}, {"affectedClientIDs": ["Pk1Se42p", "DyIk4ZWw", "pOrhfO22"], "domain": "FtnMrLrg", "namespaces": ["U0CKvjkv", "jZbVIzHG", "lAb3UUi4"], "roleId": "pxQEQl4a"}], "Secret": "1s7JGoMZ", "TeamID": "qFlIK3TM", "TokenAuthenticationType": "6LcbBupn", "TokenClaimsMapping": {"hm3OMzSY": "IC11x5ZM", "OROnNAAL": "TIq8qdLj", "IkVwTYqU": "TpJYAkAv"}, "TokenEndpoint": "7nRDocea", "scopes": ["TSlY36pu", "pnURgRvG", "2sNIwAaQ"]}' \
    > test.out 2>&1
eval_tap $? 134 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 135 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ViZkmaRA' \
    --body '{"affectedClientIDs": ["fkSgV7qH", "ZhEQl1sH", "bv92JCHa"], "assignedNamespaces": ["eI8oKwDc", "F27eMR9I", "496CIyke"], "domain": "VT7XAL7C", "roleId": "yUNF2UVM"}' \
    > test.out 2>&1
eval_tap $? 135 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 136 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'o2Hh0bdQ' \
    --body '{"domain": "mbrgRyS9"}' \
    > test.out 2>&1
eval_tap $? 136 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 137 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'bnskDzfL' \
    > test.out 2>&1
eval_tap $? 137 'RetrieveSSOLoginPlatformCredential' test.out

#- 138 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'JdOBTmcw' \
    --body '{"acsUrl": "WmOS9GdR", "apiKey": "ndqS4bs5", "appId": "LarRvvC6", "federationMetadataUrl": "h0KbKNg3", "isActive": false, "redirectUri": "RwLz3KQx", "secret": "LjGbOoOF", "ssoUrl": "McurXo1V"}' \
    > test.out 2>&1
eval_tap $? 138 'AddSSOLoginPlatformCredential' test.out

#- 139 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qFjCl46M' \
    > test.out 2>&1
eval_tap $? 139 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 140 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'XGlWaNFE' \
    --body '{"acsUrl": "oljzE8wF", "apiKey": "vh1XRkqa", "appId": "XP15VEt9", "federationMetadataUrl": "GqsWDzo8", "isActive": false, "redirectUri": "1Gh3h04W", "secret": "8c7RLozB", "ssoUrl": "QoTwf0gW"}' \
    > test.out 2>&1
eval_tap $? 140 'UpdateSSOPlatformCredential' test.out

#- 141 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5bAYot2F' \
    --platformUserId 'pPq2qQ5i' \
    > test.out 2>&1
eval_tap $? 141 'AdminGetUserByPlatformUserIDV3' test.out

#- 142 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'fp8fNFoY' \
    --after '34' \
    --before '95' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 142 'GetAdminUsersByRoleIdV3' test.out

#- 143 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'nBb3StAr' \
    > test.out 2>&1
eval_tap $? 143 'AdminGetUserByEmailAddressV3' test.out

#- 144 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["FbhhVJJ2", "OLfEdk7o", "9VXdpGz4"]}' \
    > test.out 2>&1
eval_tap $? 144 'AdminListUserIDByUserIDsV3' test.out

#- 145 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["E1Tf8Kip", "IBVDKJd1", "euDArPNv"], "isAdmin": true, "roles": ["pTTEQvd0", "gUOK2VZw", "EYeAjuae"]}' \
    > test.out 2>&1
eval_tap $? 145 'AdminInviteUserV3' test.out

#- 146 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '0' \
    --offset '43' \
    --platformUserId 'RguWnAoC' \
    --platformId 'iZkvEfBv' \
    > test.out 2>&1
eval_tap $? 146 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 147 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 147 'AdminListUsersV3' test.out

#- 148 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'HSUIOGoF' \
    --endDate 'thDDHXK9' \
    --limit '31' \
    --offset '47' \
    --platformBy 'Azcivv9b' \
    --platformId 'XCuovWt2' \
    --query '6DT1wkqz' \
    --startDate 'UAFkb4Og' \
    > test.out 2>&1
eval_tap $? 148 'AdminSearchUserV3' test.out

#- 149 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["blXifsaH", "lZqr5I0L", "arL7kk3Z"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminGetBulkUserByEmailAddressV3' test.out

#- 150 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'W69nhIAq' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByUserIdV3' test.out

#- 151 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CTX7XeQr' \
    --body '{"avatarUrl": "N3hT8Rto", "country": "HuXy91yB", "dateOfBirth": "KscCEU9s", "displayName": "dwZSRnvM", "languageTag": "vlZs3Lm0", "userName": "2aS3B35s"}' \
    > test.out 2>&1
eval_tap $? 151 'AdminUpdateUserV3' test.out

#- 152 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'V8zqagpi' \
    --activeOnly 'true' \
    --after 'fOOY1BVx' \
    --before 'g1CM0qaa' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserBanV3' test.out

#- 153 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PtU3Sg5B' \
    --body '{"ban": "tqt7cskV", "comment": "tbRTHhxf", "endDate": "HayzJi4L", "reason": "qSXKFfM9", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 153 'AdminBanUserV3' test.out

#- 154 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'nfOoaw7r' \
    --namespace $AB_NAMESPACE \
    --userId 'gqZAMisF' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 154 'AdminUpdateUserBanV3' test.out

#- 155 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rhxF125A' \
    --body '{"context": "lH0pqTGY", "emailAddress": "zOwd2r19", "languageTag": "7tv3xpYG"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminSendVerificationCodeV3' test.out

#- 156 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dodF1oo5' \
    --body '{"Code": "rNsabkHI", "ContactType": "RAPv980h", "LanguageTag": "pGxdFFll", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 156 'AdminVerifyAccountV3' test.out

#- 157 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'zhoi98UB' \
    > test.out 2>&1
eval_tap $? 157 'GetUserVerificationCode' test.out

#- 158 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VlXNSZDo' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetUserDeletionStatusV3' test.out

#- 159 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'RjGeRsXO' \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 159 'AdminUpdateUserDeletionStatusV3' test.out

#- 160 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SZTq4zf9' \
    --body '{"code": "4MOyflRc", "country": "zDrxw5AH", "dateOfBirth": "NNCpeiC5", "displayName": "RYQFO1rc", "emailAddress": "R73wPcXo", "password": "2XJLSz6J", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminUpgradeHeadlessAccountV3' test.out

#- 161 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '7Kt2o4on' \
    > test.out 2>&1
eval_tap $? 161 'AdminDeleteUserInformationV3' test.out

#- 162 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WDvBKPq2' \
    --after '0.5044837265163992' \
    --before '0.29965430012005456' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserLoginHistoriesV3' test.out

#- 163 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hmH7Wq66' \
    --body '{"languageTag": "FLOD6XQt", "newPassword": "fzP4aOC0", "oldPassword": "8iSBNr3J"}' \
    > test.out 2>&1
eval_tap $? 163 'AdminResetPasswordV3' test.out

#- 164 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'H0iBC8l5' \
    --body '{"Permissions": [{"Action": 53, "Resource": "Xjfuq87d", "SchedAction": 13, "SchedCron": "ao4IKfMF", "SchedRange": ["nWT3qvnL", "iMLDZj6c", "eObm2bBJ"]}, {"Action": 49, "Resource": "cnCeACHl", "SchedAction": 12, "SchedCron": "Xw2s9ZPr", "SchedRange": ["vNevLQ4f", "CaI5b7DQ", "Ak0AZMFb"]}, {"Action": 16, "Resource": "gbVGl9Hl", "SchedAction": 7, "SchedCron": "41WvS6q6", "SchedRange": ["wO9WL1KW", "TiHXBCGK", "rMR8wi66"]}]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserPermissionV3' test.out

#- 165 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'npX5a26W' \
    --body '{"Permissions": [{"Action": 16, "Resource": "hztNKO5k", "SchedAction": 99, "SchedCron": "LuqtLP68", "SchedRange": ["jisEruyj", "ITCEF4YI", "HYoD6z4K"]}, {"Action": 98, "Resource": "sjxYgQnb", "SchedAction": 29, "SchedCron": "wi9noaf6", "SchedRange": ["bs0XqoWO", "9tiyvZsi", "hAmzV1tJ"]}, {"Action": 29, "Resource": "cs5m7Cpt", "SchedAction": 82, "SchedCron": "mtj4gsW3", "SchedRange": ["BOroyU1R", "U7L5bCCm", "kpBbLTaj"]}]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminAddUserPermissionsV3' test.out

#- 166 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WUYcP2Oi' \
    --body '[{"Action": 90, "Resource": "ZiELvpXD"}, {"Action": 2, "Resource": "gyBXqfhW"}, {"Action": 7, "Resource": "DgdLI4Kx"}]' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteUserPermissionBulkV3' test.out

#- 167 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '83' \
    --namespace $AB_NAMESPACE \
    --resource '4zusx81i' \
    --userId 'ksA8U3Z9' \
    > test.out 2>&1
eval_tap $? 167 'AdminDeleteUserPermissionV3' test.out

#- 168 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o8sIHt8g' \
    --after 'TE9EX74c' \
    --before '3wdTMuHN' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 168 'AdminGetUserPlatformAccountsV3' test.out

#- 169 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'SCvd7xpO' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetListJusticePlatformAccounts' test.out

#- 170 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'WeSeeJUa' \
    --userId 'qFafBALH' \
    > test.out 2>&1
eval_tap $? 170 'AdminGetUserMapping' test.out

#- 171 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '1fV68Qkq' \
    --userId 'tht5srVP' \
    > test.out 2>&1
eval_tap $? 171 'AdminCreateJusticeUser' test.out

#- 172 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'hoJmJXCI' \
    --body '{"platformId": "58Tc1m7Y", "platformUserId": "3arNbAMu"}' \
    > test.out 2>&1
eval_tap $? 172 'AdminLinkPlatformAccount' test.out

#- 173 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XYrkIXyi' \
    --userId 'Wehu22QM' \
    --body '{"platformNamespace": "1EKu0E08"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminPlatformUnlinkV3' test.out

#- 174 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HUGyuLaX' \
    --userId '1Ho3pQ8M' \
    --ticket 'bAShcPhJ' \
    > test.out 2>&1
eval_tap $? 174 'AdminPlatformLinkV3' test.out

#- 175 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'o3lKQTtx' \
    --userId 'Uc6BSNJ9' \
    --platformToken 'FI57z5GJ' \
    > test.out 2>&1
eval_tap $? 175 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 176 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '9VOkbU7c' \
    --body '["DmYdTENg", "mBYAkhR8", "iizq4Bx6"]' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserRolesV3' test.out

#- 177 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'msi6xX49' \
    --body '[{"namespace": "UDigyA3v", "roleId": "XXByS7hq"}, {"namespace": "4wBQZJQm", "roleId": "roa4Qeh1"}, {"namespace": "FpWadJSF", "roleId": "ap2Pisyu"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminSaveUserRoleV3' test.out

#- 178 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'JGDV4Aqo' \
    --userId 'tWh8EgLw' \
    > test.out 2>&1
eval_tap $? 178 'AdminAddUserRoleV3' test.out

#- 179 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '3W7oznWu' \
    --userId 'iJDMEdQb' \
    > test.out 2>&1
eval_tap $? 179 'AdminDeleteUserRoleV3' test.out

#- 180 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '03Et5Izo' \
    --body '{"enabled": false, "reason": "lZshS18f"}' \
    > test.out 2>&1
eval_tap $? 180 'AdminUpdateUserStatusV3' test.out

#- 181 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BQ34lXos' \
    > test.out 2>&1
eval_tap $? 181 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 182 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'Nwm53P8o' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "Y3fXEZXo"}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateClientSecretV3' test.out

#- 183 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'VZnOq5s2' \
    --before 'QVEEHbKK' \
    --isWildcard 'true' \
    --limit '10' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetRolesV3' test.out

#- 184 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "wIvbwBim", "namespace": "5XMNTQhQ", "userId": "lCrdGvcz"}, {"displayName": "DOijrh5E", "namespace": "p8XXC3Uf", "userId": "KY5XBA3Y"}, {"displayName": "R23NrMmK", "namespace": "kW8jdMqn", "userId": "MZQklSI1"}], "members": [{"displayName": "ST7sDVk8", "namespace": "0EOFg6Xj", "userId": "3yYE8ANY"}, {"displayName": "IFerVwad", "namespace": "s5Yfdmx7", "userId": "pFyVFFXd"}, {"displayName": "VYuCuFiz", "namespace": "hKTk7X9l", "userId": "pI5MC8Ru"}], "permissions": [{"action": 17, "resource": "BvRggSvc", "schedAction": 63, "schedCron": "APkj0H0o", "schedRange": ["VPmLTy1D", "uvfr8CWp", "k8OCD8Hd"]}, {"action": 6, "resource": "lJHfkyJK", "schedAction": 87, "schedCron": "zmWGE1UE", "schedRange": ["4MRj4QKS", "7sxiO8HM", "soMQ0pKM"]}, {"action": 32, "resource": "WtLjg0C9", "schedAction": 89, "schedCron": "dbXD8QU0", "schedRange": ["UIhKqulq", "Ns9N3rjn", "xGo1T9AL"]}], "roleName": "trQDW3Zk"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminCreateRoleV3' test.out

#- 185 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'IkT6KKYH' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetRoleV3' test.out

#- 186 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'w5m7QwCu' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteRoleV3' test.out

#- 187 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'x8reQiVu' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "asmoUlZ1"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminUpdateRoleV3' test.out

#- 188 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'xsUMcxtq' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetRoleAdminStatusV3' test.out

#- 189 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'g4LQIXp1' \
    > test.out 2>&1
eval_tap $? 189 'AdminUpdateAdminRoleStatusV3' test.out

#- 190 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'FQJHHP3K' \
    > test.out 2>&1
eval_tap $? 190 'AdminRemoveRoleAdminV3' test.out

#- 191 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '7253cJQY' \
    --after 'fLBlLlpu' \
    --before 'NA4XLd0c' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 191 'AdminGetRoleManagersV3' test.out

#- 192 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId '4cMjiwxB' \
    --body '{"managers": [{"displayName": "Zi4urIm7", "namespace": "RHQNPcrK", "userId": "MQ3Fi5bP"}, {"displayName": "mORJdW1k", "namespace": "xOKsafaU", "userId": "mnrFrPgb"}, {"displayName": "hVAWisct", "namespace": "dTAOEZE5", "userId": "aDlBMaWr"}]}' \
    > test.out 2>&1
eval_tap $? 192 'AdminAddRoleManagersV3' test.out

#- 193 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '5b7eze5J' \
    --body '{"managers": [{"displayName": "3f2bqqH4", "namespace": "lekEklOj", "userId": "uH822Eer"}, {"displayName": "BlCMxuDA", "namespace": "Fpbupy7Y", "userId": "uC1tXn2K"}, {"displayName": "STmdE3Fp", "namespace": "o8shb9QY", "userId": "Ah8Y2gcc"}]}' \
    > test.out 2>&1
eval_tap $? 193 'AdminRemoveRoleManagersV3' test.out

#- 194 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'rj3eze8o' \
    --after 'K6V4W7H7' \
    --before 'vmeFALJy' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetRoleMembersV3' test.out

#- 195 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'vhTEXGdM' \
    --body '{"members": [{"displayName": "lEZlWX3J", "namespace": "wXAoJEEO", "userId": "BouUFp4l"}, {"displayName": "RPTo5gfe", "namespace": "9HwqntQc", "userId": "JUkpAabs"}, {"displayName": "cCrRLlEm", "namespace": "rhHR6fPD", "userId": "Y9oByru4"}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddRoleMembersV3' test.out

#- 196 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'Fve4QrMz' \
    --body '{"members": [{"displayName": "njAnIijc", "namespace": "9KGizQsG", "userId": "DxnEKKzy"}, {"displayName": "8sQrTefN", "namespace": "7bPVeOjc", "userId": "zFuaQhOv"}, {"displayName": "2uqlGsiD", "namespace": "g5z29tN9", "userId": "Sel4fFCx"}]}' \
    > test.out 2>&1
eval_tap $? 196 'AdminRemoveRoleMembersV3' test.out

#- 197 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '0Tby0hGg' \
    --body '{"permissions": [{"action": 39, "resource": "R4aivIsb", "schedAction": 71, "schedCron": "HcE1RaIG", "schedRange": ["tRaSJVR3", "m7O1Cl3J", "chcIRYUj"]}, {"action": 48, "resource": "mx2W2cDB", "schedAction": 82, "schedCron": "vpjqNzXL", "schedRange": ["NkkbXdWK", "vp53i66C", "PfuzdkB5"]}, {"action": 76, "resource": "7HWYEOT1", "schedAction": 53, "schedCron": "Rxwgntv2", "schedRange": ["LzltFP3x", "rIM9V6uQ", "IXZBvo0X"]}]}' \
    > test.out 2>&1
eval_tap $? 197 'AdminUpdateRolePermissionsV3' test.out

#- 198 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'ZNNjcasi' \
    --body '{"permissions": [{"action": 20, "resource": "NfQrluDn", "schedAction": 77, "schedCron": "UPyhDFEY", "schedRange": ["JOdq9UCL", "WkZ2HoPN", "FbaoPoKz"]}, {"action": 32, "resource": "0k2AfejB", "schedAction": 3, "schedCron": "nCysa63z", "schedRange": ["YSKf6hP3", "Yo08ALqf", "HAS1B3WE"]}, {"action": 77, "resource": "CvdHB3sU", "schedAction": 15, "schedCron": "I0VjxpSv", "schedRange": ["B2Khpcrn", "g4HgoYYW", "9oRqpQVD"]}]}' \
    > test.out 2>&1
eval_tap $? 198 'AdminAddRolePermissionsV3' test.out

#- 199 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '8WCt5f93' \
    --body '["S8KmcVN2", "SZSF1vDI", "MIH16i3M"]' \
    > test.out 2>&1
eval_tap $? 199 'AdminDeleteRolePermissionsV3' test.out

#- 200 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '57' \
    --resource '3TTJthqb' \
    --roleId 'b8UophMy' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRolePermissionV3' test.out

#- 201 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 201 'AdminGetMyUserV3' test.out

#- 202 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '4J5fzbwT' \
    --extendExp 'true' \
    --redirectUri 'EmG76NDp' \
    --password 'CN9nQrkO' \
    --requestId '88Vam13e' \
    --userName 'WgP5h4nb' \
    > test.out 2>&1
eval_tap $? 202 'UserAuthenticationV3' test.out

#- 203 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'ITwecq8V' \
    --linkingToken 'fjGqvrXP' \
    --password 'ZZyqTaqn' \
    --username 'LcjnWREf' \
    > test.out 2>&1
eval_tap $? 203 'AuthenticationWithPlatformLinkV3' test.out

#- 204 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --extendExp 'false' \
    --linkingToken 'V8Z4z2Wt' \
    > test.out 2>&1
eval_tap $? 204 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 205 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'HKyMXRlk' \
    > test.out 2>&1
eval_tap $? 205 'RequestOneTimeLinkingCodeV3' test.out

#- 206 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'Ut9ploQs' \
    > test.out 2>&1
eval_tap $? 206 'ValidateOneTimeLinkingCodeV3' test.out

#- 207 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --clientId 'AR21HjTj' \
    --oneTimeLinkCode '3EMlYEwF' \
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
    --clientId '27XZvSLr' \
    > test.out 2>&1
eval_tap $? 210 'RequestGameTokenCodeResponseV3' test.out

#- 211 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'bRiC8XQT' \
    --userId '9ykSLf2j' \
    > test.out 2>&1
eval_tap $? 211 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 212 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Oh0X2lLh' \
    > test.out 2>&1
eval_tap $? 212 'RevokeUserV3' test.out

#- 213 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'GPPk048J' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'cQdg4DhT' \
    --redirectUri 'Kws6Y3Wh' \
    --scope 'IeVRjWTh' \
    --state 's0uuCWXA' \
    --targetAuthPage 'U5PGj64B' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'oJ3qb7qH' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 213 'AuthorizeV3' test.out

#- 214 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '21xp7uQm' \
    > test.out 2>&1
eval_tap $? 214 'TokenIntrospectionV3' test.out

#- 215 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 215 'GetJWKSV3' test.out

#- 216 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'Oh5Vmtbj' \
    --factor 'L3rgu4Wy' \
    --mfaToken '7eHZiemA' \
    > test.out 2>&1
eval_tap $? 216 'SendMFAAuthenticationCode' test.out

#- 217 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'HM3Nxst4' \
    --mfaToken 'I1PZHnvV' \
    > test.out 2>&1
eval_tap $? 217 'Change2faMethod' test.out

#- 218 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'RzgQUcSy' \
    --factor 'ukY3pGPW' \
    --mfaToken 'UTsvvEmV' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 218 'Verify2faCode' test.out

#- 219 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uXno7Xge' \
    --userId 'R7ilhl1V' \
    > test.out 2>&1
eval_tap $? 219 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 220 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '17zKrwsq' \
    --clientId 'D2HnK97k' \
    --redirectUri 'EV47OM02' \
    --requestId '1ZF7Z1Ng' \
    > test.out 2>&1
eval_tap $? 220 'AuthCodeRequestV3' test.out

#- 221 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'b9QsIk41' \
    --clientId 'QqcdqqEB' \
    --createHeadless 'false' \
    --deviceId 'LvQsukTX' \
    --macAddress 'CRPWz8zm' \
    --platformToken 'WH00eXEq' \
    > test.out 2>&1
eval_tap $? 221 'PlatformTokenGrantV3' test.out

#- 222 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 222 'GetRevocationListV3' test.out

#- 223 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token '9Kkj6OIK' \
    > test.out 2>&1
eval_tap $? 223 'TokenRevocationV3' test.out

#- 224 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --clientId '6fhixzFk' \
    --code 'HZouc2pd' \
    --codeVerifier 'IHK6nrjG' \
    --extendExp 'true' \
    --password 'VLTFtoOI' \
    --redirectUri 'eQaryO8W' \
    --refreshToken '2QCuTh6I' \
    --username 'ZYSD89i5' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 224 'TokenGrantV3' test.out

#- 225 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '440d7v0n' \
    > test.out 2>&1
eval_tap $? 225 'VerifyTokenV3' test.out

#- 226 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'FbuVnIBN' \
    --code 'lLtcsiOt' \
    --error 'LRZgoTO1' \
    --openidAssocHandle 'z44FPH6n' \
    --openidClaimedId '7nUEWQMt' \
    --openidIdentity 'PicwGLuf' \
    --openidMode '9mCbgZRV' \
    --openidNs '5cOrsp7k' \
    --openidOpEndpoint 'OsZblH0h' \
    --openidResponseNonce '9EMs7TLc' \
    --openidReturnTo 'oCipnk1c' \
    --openidSig 'dyur7wJh' \
    --openidSigned 'x0HuuOJd' \
    --state 'zFYJh4GW' \
    > test.out 2>&1
eval_tap $? 226 'PlatformAuthenticationV3' test.out

#- 227 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'CAWWJT2d' \
    > test.out 2>&1
eval_tap $? 227 'PublicGetInputValidations' test.out

#- 228 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'qqCgda8A' \
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
    --clientId 'z1HKvasv' \
    > test.out 2>&1
eval_tap $? 230 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 231 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PwonG9MH' \
    --body '{"platformUserIds": ["gmmaecfA", "MxReZgSB", "CwsmTFW6"]}' \
    > test.out 2>&1
eval_tap $? 231 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 232 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KQGkmCYm' \
    --platformUserId 'PWzFSXg3' \
    > test.out 2>&1
eval_tap $? 232 'PublicGetUserByPlatformUserIDV3' test.out

#- 233 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'Ay5Bffwt' \
    > test.out 2>&1
eval_tap $? 233 'PublicGetAsyncStatus' test.out

#- 234 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'kAJKbPB4' \
    --limit '100' \
    --offset '50' \
    --query 'RItCOkeN' \
    > test.out 2>&1
eval_tap $? 234 'PublicSearchUserV3' test.out

#- 235 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "Pb5Z1y5x", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "nvedMK7n", "policyId": "Qz5OhDoE", "policyVersionId": "7qS0Hd3m"}, {"isAccepted": false, "localizedPolicyVersionId": "p35y48Ti", "policyId": "tR1MTRe2", "policyVersionId": "nP7n7pxh"}, {"isAccepted": false, "localizedPolicyVersionId": "tNCQPx9H", "policyId": "8HdgLo6p", "policyVersionId": "JLJ8yfnk"}], "authType": "vPhrj7b0", "code": "Qhk5jdMB", "country": "jfUyEnz3", "dateOfBirth": "b9mcPWl5", "displayName": "8NslKgUx", "emailAddress": "wB2L3Xdl", "password": "AGQ9bcrS", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 235 'PublicCreateUserV3' test.out

#- 236 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'VTI3MX9E' \
    --query 'UO6jisDP' \
    > test.out 2>&1
eval_tap $? 236 'CheckUserAvailability' test.out

#- 237 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PBWY9FLf", "z2KLYqtj", "892atTti"]}' \
    > test.out 2>&1
eval_tap $? 237 'PublicBulkGetUsers' test.out

#- 238 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "cwfrjI0c", "languageTag": "6jdtUCkx"}' \
    > test.out 2>&1
eval_tap $? 238 'PublicSendRegistrationCode' test.out

#- 239 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "XL8hD1tt", "emailAddress": "avvs4lHC"}' \
    > test.out 2>&1
eval_tap $? 239 'PublicVerifyRegistrationCode' test.out

#- 240 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "tlpiwWlB", "languageTag": "auwVKKgv"}' \
    > test.out 2>&1
eval_tap $? 240 'PublicForgotPasswordV3' test.out

#- 241 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'OVIAm6f3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 241 'GetAdminInvitationV3' test.out

#- 242 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'pOtRjF84' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mKYBRSl1", "policyId": "2G2FlAvS", "policyVersionId": "WjbQPJq7"}, {"isAccepted": false, "localizedPolicyVersionId": "CdAeUBjc", "policyId": "gXKgHxNT", "policyVersionId": "NFJjW3mM"}, {"isAccepted": true, "localizedPolicyVersionId": "aXPcWRRb", "policyId": "gNWzuGYl", "policyVersionId": "NM0qJMtn"}], "authType": "EMAILPASSWD", "country": "GahSaC9i", "dateOfBirth": "dNEXwByG", "displayName": "0Cwk8UJE", "password": "eFj3oaPH", "reachMinimumAge": true}' \
    > test.out 2>&1
eval_tap $? 242 'CreateUserFromInvitationV3' test.out

#- 243 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "cdIoqao1", "country": "3HU8so8R", "dateOfBirth": "s4SbQJmN", "displayName": "8zkTOqWD", "languageTag": "vFWctCqt", "userName": "BAjuWTcS"}' \
    > test.out 2>&1
eval_tap $? 243 'UpdateUserV3' test.out

#- 244 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "uLtMy1mN", "country": "BljO8Gkg", "dateOfBirth": "BTfzvEHE", "displayName": "CJ9QlCXM", "languageTag": "PvelhmQB", "userName": "rJ3ABxBT"}' \
    > test.out 2>&1
eval_tap $? 244 'PublicPartialUpdateUserV3' test.out

#- 245 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "qj9ozmwk", "emailAddress": "MuPX42V1", "languageTag": "2QuvKcVI"}' \
    > test.out 2>&1
eval_tap $? 245 'PublicSendVerificationCodeV3' test.out

#- 246 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UhbcbHkS", "contactType": "8uk2cile", "languageTag": "3KercGoS", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 246 'PublicUserVerificationV3' test.out

#- 247 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "SxgLGJ7G", "country": "F1hLr5gG", "dateOfBirth": "9tPYu5Dz", "displayName": "rnIaG5qW", "emailAddress": "GaBWRuxz", "password": "IpI189F3", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 247 'PublicUpgradeHeadlessAccountV3' test.out

#- 248 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "bkGgitnW", "password": "pt455WQh"}' \
    > test.out 2>&1
eval_tap $? 248 'PublicVerifyHeadlessAccountV3' test.out

#- 249 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "Mt8LJ4l4", "newPassword": "SEBGEo68", "oldPassword": "udIxn4Wm"}' \
    > test.out 2>&1
eval_tap $? 249 'PublicUpdatePasswordV3' test.out

#- 250 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'kydOWFD5' \
    > test.out 2>&1
eval_tap $? 250 'PublicCreateJusticeUser' test.out

#- 251 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qm14B5ly' \
    --redirectUri '9MnhE4eJ' \
    --ticket 'P9GOgERg' \
    > test.out 2>&1
eval_tap $? 251 'PublicPlatformLinkV3' test.out

#- 252 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KWST5HR0' \
    --body '{"platformNamespace": "gYXdEj16"}' \
    > test.out 2>&1
eval_tap $? 252 'PublicPlatformUnlinkV3' test.out

#- 253 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'r1VbU7Nk' \
    > test.out 2>&1
eval_tap $? 253 'PublicPlatformUnlinkAllV3' test.out

#- 254 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'd2BuLZTq' \
    --ticket 'SNlTihxE' \
    > test.out 2>&1
eval_tap $? 254 'PublicForcePlatformLinkV3' test.out

#- 255 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'A2nQLAsD' \
    --clientId 'IWzGreo8' \
    --redirectUri 'dCW2ZYZl' \
    > test.out 2>&1
eval_tap $? 255 'PublicWebLinkPlatform' test.out

#- 256 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'wLyHWN1o' \
    --state 'tyTO7j3S' \
    > test.out 2>&1
eval_tap $? 256 'PublicWebLinkPlatformEstablish' test.out

#- 257 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "KdhqAuIw", "emailAddress": "F819X0Q1", "newPassword": "e6yPro2U"}' \
    > test.out 2>&1
eval_tap $? 257 'ResetPasswordV3' test.out

#- 258 PublicGetUserByUserIdV3
samples/cli/sample-apps Iam publicGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nrBKQxOs' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetUserByUserIdV3' test.out

#- 259 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LZIlhK8T' \
    --activeOnly 'true' \
    --after 'eUWulK8s' \
    --before 'teXHnyob' \
    --limit '57' \
    > test.out 2>&1
eval_tap $? 259 'PublicGetUserBanHistoryV3' test.out

#- 260 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'KOzqct20' \
    > test.out 2>&1
eval_tap $? 260 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 261 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E0x9Ae1y' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetUserInformationV3' test.out

#- 262 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XuhkMuOd' \
    --after '0.1657798189032178' \
    --before '0.627809066659459' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetUserLoginHistoriesV3' test.out

#- 263 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mL3ibPzs' \
    --after '1BiOCE5M' \
    --before 'u4Ed8V4P' \
    --limit '14' \
    > test.out 2>&1
eval_tap $? 263 'PublicGetUserPlatformAccountsV3' test.out

#- 264 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bQSoGO29' \
    > test.out 2>&1
eval_tap $? 264 'PublicListJusticePlatformAccountsV3' test.out

#- 265 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'R1FDhpgF' \
    --body '{"platformId": "R2mkOxbK", "platformUserId": "bipk9FX3"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicLinkPlatformAccount' test.out

#- 266 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'VyuCuy43' \
    --body '{"chosenNamespaces": ["jqPzM2mR", "lN8q7Dhj", "kgeNjaNX"], "requestId": "3IdDGUIY"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicForceLinkPlatformWithProgression' test.out

#- 267 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '33tnJN2n' \
    > test.out 2>&1
eval_tap $? 267 'PublicGetPublisherUserV3' test.out

#- 268 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'B5iH2AEK' \
    --password 'cEpc86CL' \
    > test.out 2>&1
eval_tap $? 268 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 269 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'Cz2UEN2e' \
    --before 'jm51tTnT' \
    --isWildcard 'true' \
    --limit '16' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetRolesV3' test.out

#- 270 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'letCe2Vy' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetRoleV3' test.out

#- 271 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 271 'PublicGetMyUserV3' test.out

#- 272 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'QObUPUGb' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 273 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["l1JwiDzh", "8Sc0Ew90", "DrNpkdtT"], "oneTimeLinkCode": "IRhNBrfX"}' \
    > test.out 2>&1
eval_tap $? 273 'LinkHeadlessAccountToMyAccountV3' test.out

#- 274 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "SHN5zxlW"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationLinkV3' test.out

#- 275 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'kzGzjO7w' \
    > test.out 2>&1
eval_tap $? 275 'PublicVerifyUserByLinkV3' test.out

#- 276 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'kYavLAze' \
    --code 'yGzQyyGj' \
    --error 'gK7Vsiwy' \
    --state 'hMXdJgWM' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticateSAMLV3Handler' test.out

#- 277 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'AqGHFcMU' \
    --payload 'F1yaqmNn' \
    > test.out 2>&1
eval_tap $? 277 'LoginSSOClient' test.out

#- 278 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'prmk3sDZ' \
    > test.out 2>&1
eval_tap $? 278 'LogoutSSOClient' test.out

#- 279 RequestGameTokenResponseV3
samples/cli/sample-apps Iam requestGameTokenResponseV3 \
    --code 'od4dtyJk' \
    > test.out 2>&1
eval_tap $? 279 'RequestGameTokenResponseV3' test.out

#- 280 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HY2K5UHv' \
    > test.out 2>&1
eval_tap $? 280 'AdminGetDevicesByUserV4' test.out

#- 281 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'eFrKtTkY' \
    --endDate '7fEMzlSa' \
    --limit '11' \
    --offset '17' \
    --startDate 'yrCQXEoA' \
    > test.out 2>&1
eval_tap $? 281 'AdminGetBannedDevicesV4' test.out

#- 282 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lELOj8wo' \
    > test.out 2>&1
eval_tap $? 282 'AdminGetUserDeviceBansV4' test.out

#- 283 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "0hKan05o", "deviceId": "CfosTpsI", "deviceType": "ePZKxbq1", "enabled": true, "endDate": "3tXS03bl", "ext": {"VlUgmwvs": {}, "JJsTlUT6": {}, "76plpxmc": {}}, "reason": "Aw8QaBAu"}' \
    > test.out 2>&1
eval_tap $? 283 'AdminBanDeviceV4' test.out

#- 284 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'yrBhw8dx' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'AdminGetDeviceBanV4' test.out

#- 285 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'rhaTbTLQ' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 285 'AdminUpdateDeviceBanV4' test.out

#- 286 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'SkeiF8kd' \
    --startDate 'vmrS1GGf' \
    --deviceType 'w5c52MSO' \
    > test.out 2>&1
eval_tap $? 286 'AdminGenerateReportV4' test.out

#- 287 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 287 'AdminGetDeviceTypesV4' test.out

#- 288 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'hKBYXjEJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 288 'AdminGetDeviceBansV4' test.out

#- 289 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'mpqVvHCF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 289 'AdminDecryptDeviceV4' test.out

#- 290 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'wqjCUpS4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'AdminUnbanDeviceV4' test.out

#- 291 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'PtO7U6uO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 291 'AdminGetUsersByDeviceV4' test.out

#- 292 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 88}' \
    > test.out 2>&1
eval_tap $? 292 'AdminCreateTestUsersV4' test.out

#- 293 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["f2FV7kNu", "9xUNmvgF", "6ruYPkWX"]}' \
    > test.out 2>&1
eval_tap $? 293 'AdminBulkCheckValidUserIDV4' test.out

#- 294 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'QuTPO1UC' \
    --body '{"avatarUrl": "4Ls4MWmt", "country": "afubGR7W", "dateOfBirth": "5GLIDkFX", "displayName": "aCv6d061", "languageTag": "eNKEORoj", "userName": "iHEFu48h"}' \
    > test.out 2>&1
eval_tap $? 294 'AdminUpdateUserV4' test.out

#- 295 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NrIUu6rG' \
    --body '{"code": "v8NV1aip", "emailAddress": "JtStvDdb"}' \
    > test.out 2>&1
eval_tap $? 295 'AdminUpdateUserEmailAddressV4' test.out

#- 296 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'c0aJEgHn' \
    > test.out 2>&1
eval_tap $? 296 'AdminDisableUserMFAV4' test.out

#- 297 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Cv4ldRbS' \
    > test.out 2>&1
eval_tap $? 297 'AdminListUserRolesV4' test.out

#- 298 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LKLFfEQn' \
    --body '{"assignedNamespaces": ["BjkgUpJs", "aMWPMtkm", "a5iPCcwM"], "roleId": "kFUWCJvj"}' \
    > test.out 2>&1
eval_tap $? 298 'AdminUpdateUserRoleV4' test.out

#- 299 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PF3iuFUe' \
    --body '{"assignedNamespaces": ["szJUZdIV", "CHswIyFB", "2AlIBR3v"], "roleId": "vpxoCZIX"}' \
    > test.out 2>&1
eval_tap $? 299 'AdminAddUserRoleV4' test.out

#- 300 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wDo6w4eW' \
    --body '{"assignedNamespaces": ["rMCg2iG6", "AQk4YuFg", "wfvW7U0l"], "roleId": "jGOMwENx"}' \
    > test.out 2>&1
eval_tap $? 300 'AdminRemoveUserRoleV4' test.out

#- 301 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '23' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetRolesV4' test.out

#- 302 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "WXXuTuQT"}' \
    > test.out 2>&1
eval_tap $? 302 'AdminCreateRoleV4' test.out

#- 303 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'W2RR5FM4' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetRoleV4' test.out

#- 304 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'AlNOpODY' \
    > test.out 2>&1
eval_tap $? 304 'AdminDeleteRoleV4' test.out

#- 305 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'EoZxpEVU' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "roleName": "Z1ObTSPi"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminUpdateRoleV4' test.out

#- 306 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'vJWg5NX5' \
    --body '{"permissions": [{"action": 69, "resource": "vqTOuwX7", "schedAction": 34, "schedCron": "JjOFk4nP", "schedRange": ["eq5hgxvY", "sUKIGTrq", "oxWYtnUq"]}, {"action": 18, "resource": "d17R47uk", "schedAction": 30, "schedCron": "TnwLOXXq", "schedRange": ["tdOhWs5x", "8UGMXxAG", "vSwQqCF7"]}, {"action": 40, "resource": "DIaOg5rO", "schedAction": 41, "schedCron": "yoNePVBU", "schedRange": ["EKxgUDwT", "dRCj6B5k", "Fyy4jmZY"]}]}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateRolePermissionsV4' test.out

#- 307 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'bRXCeVmL' \
    --body '{"permissions": [{"action": 58, "resource": "PrzF8vOH", "schedAction": 48, "schedCron": "UIt5TQwh", "schedRange": ["Xu5sbHMa", "eCb68bvk", "YYy0mup9"]}, {"action": 28, "resource": "iXgZfyTx", "schedAction": 49, "schedCron": "ai4mqMOt", "schedRange": ["wL5yZoHb", "lc2xjpRL", "Vhd5pDjM"]}, {"action": 89, "resource": "RwUaRQJ6", "schedAction": 37, "schedCron": "aZrzsfvy", "schedRange": ["5XHZpluL", "DEVRJRfA", "aeHNM9c2"]}]}' \
    > test.out 2>&1
eval_tap $? 307 'AdminAddRolePermissionsV4' test.out

#- 308 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'X0d5IIjE' \
    --body '["dxrhnQ1i", "PNHTeORl", "D5fCSQHz"]' \
    > test.out 2>&1
eval_tap $? 308 'AdminDeleteRolePermissionsV4' test.out

#- 309 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'mpzAlzJc' \
    --after 'ASREhwr5' \
    --before 'nBOsv9Sp' \
    --limit '53' \
    > test.out 2>&1
eval_tap $? 309 'AdminListAssignedUsersV4' test.out

#- 310 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId '84EqwWMQ' \
    --body '{"assignedNamespaces": ["Nnm0bnwz", "9W2nBbOb", "Ig09DO8W"], "namespace": "ZGJez4FJ", "userId": "eYVmaZ43"}' \
    > test.out 2>&1
eval_tap $? 310 'AdminAssignUserToRoleV4' test.out

#- 311 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '0OjGikFL' \
    --body '{"namespace": "aHtR56Ys", "userId": "sbixWzGx"}' \
    > test.out 2>&1
eval_tap $? 311 'AdminRevokeUserFromRoleV4' test.out

#- 312 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "2tSr7URx", "country": "Oxsddpgj", "dateOfBirth": "gPLPRIXV", "displayName": "VWyTAAHL", "languageTag": "KZlmvjWH", "userName": "dbTo05hs"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminUpdateMyUserV4' test.out

#- 313 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 313 'AdminDisableMyAuthenticatorV4' test.out

#- 314 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'Mddo9sC6' \
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
    --code 'afmWjf12' \
    > test.out 2>&1
eval_tap $? 323 'AdminEnableMyEmailV4' test.out

#- 324 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 324 'AdminGetMyEnabledFactorsV4' test.out

#- 325 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'vyljJeAl' \
    > test.out 2>&1
eval_tap $? 325 'AdminMakeFactorMyDefaultV4' test.out

#- 326 AdminInviteUserV4
samples/cli/sample-apps Iam adminInviteUserV4 \
    --body '{"assignedNamespaces": ["zqMMqodF", "MgvIfeZn", "6HR3oYvb"], "emailAddresses": ["LRBVhXfQ", "AI7NtCmZ", "9reTRE4W"], "isAdmin": true, "roleId": "eKpwJsEs"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminInviteUserV4' test.out

#- 327 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dhRQeVEh", "policyId": "eCccmyw7", "policyVersionId": "SOuvjDPh"}, {"isAccepted": true, "localizedPolicyVersionId": "sBFBkAs1", "policyId": "brpJu3h9", "policyVersionId": "3oUi7r1p"}, {"isAccepted": true, "localizedPolicyVersionId": "KtT9oXHT", "policyId": "AX31dv28", "policyVersionId": "Y3DiP8GG"}], "authType": "EMAILPASSWD", "country": "l7Ez9PmH", "dateOfBirth": "cuSZaxWw", "displayName": "3ndrpkzm", "emailAddress": "GrhLVptd", "password": "QmJp2Nq5", "passwordMD5Sum": "wtGwByus", "username": "D6LDQiPt", "verified": false}' \
    > test.out 2>&1
eval_tap $? 327 'PublicCreateTestUserV4' test.out

#- 328 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "g1AOX0Mp", "policyId": "t5ZPDpDO", "policyVersionId": "owssRSrh"}, {"isAccepted": false, "localizedPolicyVersionId": "H5ex3fcX", "policyId": "s3K3ZIxV", "policyVersionId": "bxLUsJcv"}, {"isAccepted": false, "localizedPolicyVersionId": "B8nBf2Xd", "policyId": "xJMAVDhe", "policyVersionId": "53EQ2wTr"}], "authType": "EMAILPASSWD", "code": "UFlXcmUj", "country": "IW0Ijvst", "dateOfBirth": "OA5V6qjd", "displayName": "cediamiG", "emailAddress": "if6tTUFk", "password": "R87SXoqT", "passwordMD5Sum": "odY2RQmo", "reachMinimumAge": true, "username": "nlESKUA8"}' \
    > test.out 2>&1
eval_tap $? 328 'PublicCreateUserV4' test.out

#- 329 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'pbDfnXa3' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "2I28FBLu", "policyId": "MmOAPTvD", "policyVersionId": "QgEb3dmC"}, {"isAccepted": true, "localizedPolicyVersionId": "JOGIirF0", "policyId": "92qYvWew", "policyVersionId": "kIgOI3G1"}, {"isAccepted": true, "localizedPolicyVersionId": "qgPrWGcH", "policyId": "vKOkN24S", "policyVersionId": "f2r1vKB4"}], "authType": "EMAILPASSWD", "country": "tVATctv7", "dateOfBirth": "QTWECmIg", "displayName": "WIX1nHgo", "password": "fmQNd7Hs", "reachMinimumAge": false, "username": "OwXjMZBM"}' \
    > test.out 2>&1
eval_tap $? 329 'CreateUserFromInvitationV4' test.out

#- 330 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "UAMUfrqw", "country": "tLXIdDad", "dateOfBirth": "3fVhCj8n", "displayName": "Zal9ZWMQ", "languageTag": "kd4iugm5", "userName": "R1ncPfNO"}' \
    > test.out 2>&1
eval_tap $? 330 'PublicUpdateUserV4' test.out

#- 331 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ywoyGUjr", "emailAddress": "GfsxKB2k"}' \
    > test.out 2>&1
eval_tap $? 331 'PublicUpdateUserEmailAddressV4' test.out

#- 332 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HT13d52D", "country": "APUcfv0W", "dateOfBirth": "75qoyXyo", "displayName": "xEzSG6uZ", "emailAddress": "nMsjXyKy", "password": "MgIWupRg", "reachMinimumAge": false, "username": "K1P564xt", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 332 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 333 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "MLb5MxxB", "password": "AYIn2UYm", "username": "wDn2U6OQ"}' \
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
    --code 'mtZhOO8W' \
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
    --code 'foAoYjc4' \
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
    --factor 'LIJMimDD' \
    > test.out 2>&1
eval_tap $? 347 'PublicMakeFactorMyDefaultV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE