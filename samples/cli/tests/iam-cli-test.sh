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
echo "1..447"

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

#- 2 GetAuthorizationServerMetadataWithNamespace
samples/cli/sample-apps Iam getAuthorizationServerMetadataWithNamespace \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 2 'GetAuthorizationServerMetadataWithNamespace' test.out

#- 3 GetBansType
eval_tap 0 3 'GetBansType # SKIP deprecated' test.out

#- 4 GetListBanReason
eval_tap 0 4 'GetListBanReason # SKIP deprecated' test.out

#- 5 GetClients
eval_tap 0 5 'GetClients # SKIP deprecated' test.out

#- 6 CreateClient
eval_tap 0 6 'CreateClient # SKIP deprecated' test.out

#- 7 GetClient
eval_tap 0 7 'GetClient # SKIP deprecated' test.out

#- 8 UpdateClient
eval_tap 0 8 'UpdateClient # SKIP deprecated' test.out

#- 9 DeleteClient
eval_tap 0 9 'DeleteClient # SKIP deprecated' test.out

#- 10 UpdateClientPermission
eval_tap 0 10 'UpdateClientPermission # SKIP deprecated' test.out

#- 11 AddClientPermission
eval_tap 0 11 'AddClientPermission # SKIP deprecated' test.out

#- 12 DeleteClientPermission
eval_tap 0 12 'DeleteClientPermission # SKIP deprecated' test.out

#- 13 UpdateClientSecret
eval_tap 0 13 'UpdateClientSecret # SKIP deprecated' test.out

#- 14 GetClientsbyNamespace
eval_tap 0 14 'GetClientsbyNamespace # SKIP deprecated' test.out

#- 15 CreateClientByNamespace
eval_tap 0 15 'CreateClientByNamespace # SKIP deprecated' test.out

#- 16 DeleteClientByNamespace
eval_tap 0 16 'DeleteClientByNamespace # SKIP deprecated' test.out

#- 17 CreateUser
eval_tap 0 17 'CreateUser # SKIP deprecated' test.out

#- 18 GetAdminUsersByRoleID
eval_tap 0 18 'GetAdminUsersByRoleID # SKIP deprecated' test.out

#- 19 GetUserByLoginID
eval_tap 0 19 'GetUserByLoginID # SKIP deprecated' test.out

#- 20 GetUserByPlatformUserID
eval_tap 0 20 'GetUserByPlatformUserID # SKIP deprecated' test.out

#- 21 ForgotPassword
eval_tap 0 21 'ForgotPassword # SKIP deprecated' test.out

#- 22 GetUsersByLoginIds
eval_tap 0 22 'GetUsersByLoginIds # SKIP deprecated' test.out

#- 23 ResetPassword
eval_tap 0 23 'ResetPassword # SKIP deprecated' test.out

#- 24 SearchUser
eval_tap 0 24 'SearchUser # SKIP deprecated' test.out

#- 25 GetUserByUserID
eval_tap 0 25 'GetUserByUserID # SKIP deprecated' test.out

#- 26 UpdateUser
eval_tap 0 26 'UpdateUser # SKIP deprecated' test.out

#- 27 DeleteUser
eval_tap 0 27 'DeleteUser # SKIP deprecated' test.out

#- 28 BanUser
eval_tap 0 28 'BanUser # SKIP deprecated' test.out

#- 29 GetUserBanHistory
eval_tap 0 29 'GetUserBanHistory # SKIP deprecated' test.out

#- 30 DisableUserBan
eval_tap 0 30 'DisableUserBan # SKIP deprecated' test.out

#- 31 EnableUserBan
eval_tap 0 31 'EnableUserBan # SKIP deprecated' test.out

#- 32 ListCrossNamespaceAccountLink
eval_tap 0 32 'ListCrossNamespaceAccountLink # SKIP deprecated' test.out

#- 33 DisableUser
eval_tap 0 33 'DisableUser # SKIP deprecated' test.out

#- 34 EnableUser
eval_tap 0 34 'EnableUser # SKIP deprecated' test.out

#- 35 GetUserInformation
eval_tap 0 35 'GetUserInformation # SKIP deprecated' test.out

#- 36 DeleteUserInformation
eval_tap 0 36 'DeleteUserInformation # SKIP deprecated' test.out

#- 37 GetUserLoginHistories
eval_tap 0 37 'GetUserLoginHistories # SKIP deprecated' test.out

#- 38 UpdatePassword
eval_tap 0 38 'UpdatePassword # SKIP deprecated' test.out

#- 39 SaveUserPermission
eval_tap 0 39 'SaveUserPermission # SKIP deprecated' test.out

#- 40 AddUserPermission
eval_tap 0 40 'AddUserPermission # SKIP deprecated' test.out

#- 41 DeleteUserPermission
eval_tap 0 41 'DeleteUserPermission # SKIP deprecated' test.out

#- 42 GetUserPlatformAccounts
eval_tap 0 42 'GetUserPlatformAccounts # SKIP deprecated' test.out

#- 43 GetUserMapping
eval_tap 0 43 'GetUserMapping # SKIP deprecated' test.out

#- 44 GetUserJusticePlatformAccount
eval_tap 0 44 'GetUserJusticePlatformAccount # SKIP deprecated' test.out

#- 45 PlatformLink
eval_tap 0 45 'PlatformLink # SKIP deprecated' test.out

#- 46 PlatformUnlink
eval_tap 0 46 'PlatformUnlink # SKIP deprecated' test.out

#- 47 GetPublisherUser
eval_tap 0 47 'GetPublisherUser # SKIP deprecated' test.out

#- 48 SaveUserRoles
eval_tap 0 48 'SaveUserRoles # SKIP deprecated' test.out

#- 49 AddUserRole
eval_tap 0 49 'AddUserRole # SKIP deprecated' test.out

#- 50 DeleteUserRole
eval_tap 0 50 'DeleteUserRole # SKIP deprecated' test.out

#- 51 UpgradeHeadlessAccount
eval_tap 0 51 'UpgradeHeadlessAccount # SKIP deprecated' test.out

#- 52 UpgradeHeadlessAccountWithVerificationCode
eval_tap 0 52 'UpgradeHeadlessAccountWithVerificationCode # SKIP deprecated' test.out

#- 53 UserVerification
eval_tap 0 53 'UserVerification # SKIP deprecated' test.out

#- 54 SendVerificationCode
eval_tap 0 54 'SendVerificationCode # SKIP deprecated' test.out

#- 55 Authorization
eval_tap 0 55 'Authorization # SKIP deprecated' test.out

#- 56 GetJWKS
eval_tap 0 56 'GetJWKS # SKIP deprecated' test.out

#- 57 NamespaceScopedPlatformTokenGrant
eval_tap 0 57 'NamespaceScopedPlatformTokenGrant # SKIP deprecated' test.out

#- 58 RevokeUser
eval_tap 0 58 'RevokeUser # SKIP deprecated' test.out

#- 59 GetRevocationList
eval_tap 0 59 'GetRevocationList # SKIP deprecated' test.out

#- 60 RevokeToken
eval_tap 0 60 'RevokeToken # SKIP deprecated' test.out

#- 61 RevokeAUser
eval_tap 0 61 'RevokeAUser # SKIP deprecated' test.out

#- 62 TokenGrant
eval_tap 0 62 'TokenGrant # SKIP deprecated' test.out

#- 63 VerifyToken
eval_tap 0 63 'VerifyToken # SKIP deprecated' test.out

#- 64 GetRoles
eval_tap 0 64 'GetRoles # SKIP deprecated' test.out

#- 65 CreateRole
eval_tap 0 65 'CreateRole # SKIP deprecated' test.out

#- 66 GetRole
eval_tap 0 66 'GetRole # SKIP deprecated' test.out

#- 67 UpdateRole
eval_tap 0 67 'UpdateRole # SKIP deprecated' test.out

#- 68 DeleteRole
eval_tap 0 68 'DeleteRole # SKIP deprecated' test.out

#- 69 GetRoleAdminStatus
eval_tap 0 69 'GetRoleAdminStatus # SKIP deprecated' test.out

#- 70 SetRoleAsAdmin
eval_tap 0 70 'SetRoleAsAdmin # SKIP deprecated' test.out

#- 71 RemoveRoleAdmin
eval_tap 0 71 'RemoveRoleAdmin # SKIP deprecated' test.out

#- 72 GetRoleManagers
eval_tap 0 72 'GetRoleManagers # SKIP deprecated' test.out

#- 73 AddRoleManagers
eval_tap 0 73 'AddRoleManagers # SKIP deprecated' test.out

#- 74 RemoveRoleManagers
eval_tap 0 74 'RemoveRoleManagers # SKIP deprecated' test.out

#- 75 GetRoleMembers
eval_tap 0 75 'GetRoleMembers # SKIP deprecated' test.out

#- 76 AddRoleMembers
eval_tap 0 76 'AddRoleMembers # SKIP deprecated' test.out

#- 77 RemoveRoleMembers
eval_tap 0 77 'RemoveRoleMembers # SKIP deprecated' test.out

#- 78 UpdateRolePermissions
eval_tap 0 78 'UpdateRolePermissions # SKIP deprecated' test.out

#- 79 AddRolePermission
eval_tap 0 79 'AddRolePermission # SKIP deprecated' test.out

#- 80 DeleteRolePermission
eval_tap 0 80 'DeleteRolePermission # SKIP deprecated' test.out

#- 81 AdminGetAgeRestrictionStatusV2
eval_tap 0 81 'AdminGetAgeRestrictionStatusV2 # SKIP deprecated' test.out

#- 82 AdminUpdateAgeRestrictionConfigV2
eval_tap 0 82 'AdminUpdateAgeRestrictionConfigV2 # SKIP deprecated' test.out

#- 83 GetListCountryAgeRestriction
eval_tap 0 83 'GetListCountryAgeRestriction # SKIP deprecated' test.out

#- 84 UpdateCountryAgeRestriction
eval_tap 0 84 'UpdateCountryAgeRestriction # SKIP deprecated' test.out

#- 85 AdminSearchUsersV2
eval_tap 0 85 'AdminSearchUsersV2 # SKIP deprecated' test.out

#- 86 AdminGetUserByUserIdV2
eval_tap 0 86 'AdminGetUserByUserIdV2 # SKIP deprecated' test.out

#- 87 AdminUpdateUserV2
eval_tap 0 87 'AdminUpdateUserV2 # SKIP deprecated' test.out

#- 88 AdminBanUserV2
eval_tap 0 88 'AdminBanUserV2 # SKIP deprecated' test.out

#- 89 AdminGetUserBanV2
eval_tap 0 89 'AdminGetUserBanV2 # SKIP deprecated' test.out

#- 90 AdminDisableUserV2
eval_tap 0 90 'AdminDisableUserV2 # SKIP deprecated' test.out

#- 91 AdminEnableUserV2
eval_tap 0 91 'AdminEnableUserV2 # SKIP deprecated' test.out

#- 92 AdminResetPasswordV2
eval_tap 0 92 'AdminResetPasswordV2 # SKIP deprecated' test.out

#- 93 AdminDeletePlatformLinkV2
eval_tap 0 93 'AdminDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 94 AdminPutUserRolesV2
eval_tap 0 94 'AdminPutUserRolesV2 # SKIP deprecated' test.out

#- 95 AdminCreateUserRolesV2
eval_tap 0 95 'AdminCreateUserRolesV2 # SKIP deprecated' test.out

#- 96 PublicGetCountryAgeRestriction
eval_tap 0 96 'PublicGetCountryAgeRestriction # SKIP deprecated' test.out

#- 97 PublicCreateUserV2
eval_tap 0 97 'PublicCreateUserV2 # SKIP deprecated' test.out

#- 98 PublicForgotPasswordV2
eval_tap 0 98 'PublicForgotPasswordV2 # SKIP deprecated' test.out

#- 99 PublicResetPasswordV2
eval_tap 0 99 'PublicResetPasswordV2 # SKIP deprecated' test.out

#- 100 PublicGetUserByUserIDV2
eval_tap 0 100 'PublicGetUserByUserIDV2 # SKIP deprecated' test.out

#- 101 PublicUpdateUserV2
eval_tap 0 101 'PublicUpdateUserV2 # SKIP deprecated' test.out

#- 102 PublicGetUserBan
eval_tap 0 102 'PublicGetUserBan # SKIP deprecated' test.out

#- 103 PublicUpdatePasswordV2
eval_tap 0 103 'PublicUpdatePasswordV2 # SKIP deprecated' test.out

#- 104 GetListJusticePlatformAccounts
eval_tap 0 104 'GetListJusticePlatformAccounts # SKIP deprecated' test.out

#- 105 PublicPlatformLinkV2
eval_tap 0 105 'PublicPlatformLinkV2 # SKIP deprecated' test.out

#- 106 PublicDeletePlatformLinkV2
eval_tap 0 106 'PublicDeletePlatformLinkV2 # SKIP deprecated' test.out

#- 107 AdminGetBansTypeV3
samples/cli/sample-apps Iam adminGetBansTypeV3 \
    > test.out 2>&1
eval_tap $? 107 'AdminGetBansTypeV3' test.out

#- 108 AdminGetListBanReasonV3
samples/cli/sample-apps Iam adminGetListBanReasonV3 \
    > test.out 2>&1
eval_tap $? 108 'AdminGetListBanReasonV3' test.out

#- 109 AdminListClientAvailablePermissions
samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions 'true' \
    > test.out 2>&1
eval_tap $? 109 'AdminListClientAvailablePermissions' test.out

#- 110 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "rDhtYiyJxgfd8vS6", "groups": [{"group": "9UuWaCP0IORpcKGm", "groupId": "a9KH8Vh2dXiOfzgm", "package": "OYoA4xviOvScQE79", "permissions": [{"allowedActions": [91, 80, 83], "resource": "mkdln0AlO44g9IVJ"}, {"allowedActions": [40, 89, 31], "resource": "fWTbHnJnfTFprDnl"}, {"allowedActions": [19, 86, 31], "resource": "jsllZ3T5y9YpkVJG"}]}, {"group": "8pC0zH0QEIo15YMH", "groupId": "NuRXwZkWGf32kKws", "package": "ZW3Lm7X5TRrzK9pD", "permissions": [{"allowedActions": [49, 78, 21], "resource": "LqeD8lDkjh105tij"}, {"allowedActions": [7, 8, 97], "resource": "IRvsRutB9GfQbx27"}, {"allowedActions": [53, 75, 61], "resource": "ZcNhEhBH3NxdzCwu"}]}, {"group": "jFSKPiSPejm56K5X", "groupId": "GdjiwAKE0ycm0bvw", "package": "SgaD8vq0aVBg4Ft3", "permissions": [{"allowedActions": [18, 37, 54], "resource": "2DvdtGimoN7G8MhY"}, {"allowedActions": [59, 10, 42], "resource": "dQcSwS4JQN8by9sm"}, {"allowedActions": [98, 67, 69], "resource": "CP3zDwU8ge2nkaes"}]}], "module": "QSzMvx5DUAM51Pj3", "moduleId": "3BtWPVZBLfLXBqEM", "package": "mvpLCtOjS1FGAtwc"}, {"docLink": "qMrcvZQRlLmWvAZQ", "groups": [{"group": "0gIZya3UFZbXhCDv", "groupId": "d9xFtfgXFVs95Nbt", "package": "DTyjLJmrGpLkPtOX", "permissions": [{"allowedActions": [79, 18, 60], "resource": "tT4V6uOT5qgsQpQq"}, {"allowedActions": [80, 15, 98], "resource": "WxpQe0Dnpc2j68oU"}, {"allowedActions": [99, 76, 66], "resource": "c5fvFhG3pDEH342D"}]}, {"group": "tMXUNho6xR3TAHC7", "groupId": "aDq3ZKlmfZPqbBPS", "package": "aSssNTVZ6GhAHklS", "permissions": [{"allowedActions": [5, 43, 22], "resource": "haA7JsR6o15vHaQZ"}, {"allowedActions": [9, 93, 91], "resource": "HcCUtjvv2HwD8VMG"}, {"allowedActions": [60, 12, 53], "resource": "V8MkDVtACNlkOvbl"}]}, {"group": "uPtIwlHyTxeOdKAB", "groupId": "NMgEVUnGRWOqlQb1", "package": "FCYfiQVqAkycdrg2", "permissions": [{"allowedActions": [31, 7, 74], "resource": "6jjJdEAW3NpnDXE5"}, {"allowedActions": [11, 35, 54], "resource": "GgGv9jhCtpHqy29p"}, {"allowedActions": [41, 68, 40], "resource": "mmCESCStUIp2rQpK"}]}], "module": "4TyIH2V48XRZmCD7", "moduleId": "lsP8dJUJqggd4tZ8", "package": "muTphVUtXUk3svGr"}, {"docLink": "TKwDJVUaGWu0Zb9D", "groups": [{"group": "6RuSe76RYnwfvPFm", "groupId": "aivPMiDp6XHJj3n3", "package": "T9KStVHElYp4DnzC", "permissions": [{"allowedActions": [56, 100, 74], "resource": "3vf70ywLb8AGROfS"}, {"allowedActions": [22, 24, 73], "resource": "ioHwGVSAy7IlKLN0"}, {"allowedActions": [13, 85, 31], "resource": "7NwUsIHFr5fF3qcw"}]}, {"group": "zxPkeBrrx0PsdVhf", "groupId": "Q4h45MU7Z2ZbU00u", "package": "Qv6JUEeAowEx8hMV", "permissions": [{"allowedActions": [94, 14, 29], "resource": "Hp5t1vmObiZbya7x"}, {"allowedActions": [27, 53, 93], "resource": "bchSO5KCg6buESlP"}, {"allowedActions": [49, 58, 99], "resource": "ZS3qqzBZDYItfLL5"}]}, {"group": "24Qqe20dn1rZUwYD", "groupId": "3cDy6Wsa5vMOQbUh", "package": "JsxUJwEk1QIv8KgC", "permissions": [{"allowedActions": [81, 32, 63], "resource": "NeWRsxsQaeTWRVJ2"}, {"allowedActions": [65, 12, 40], "resource": "ug1Ku5oGPOYQ6fQU"}, {"allowedActions": [16, 11, 34], "resource": "hYHG6O9pluXOIvum"}]}], "module": "SJMDHnp0ea9zmPRH", "moduleId": "1KV80CRNmcI9tC9K", "package": "pSxoBGNA4vwzLth3"}]}' \
    > test.out 2>&1
eval_tap $? 110 'AdminUpdateAvailablePermissionsByModule' test.out

#- 111 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "LgNMj6D1dWll944F", "moduleId": "sKcVwkL8tuDODuSY"}' \
    > test.out 2>&1
eval_tap $? 111 'AdminDeleteConfigPermissionsByGroup' test.out

#- 112 AdminUpdateModulePackage
samples/cli/sample-apps Iam adminUpdateModulePackage \
    --body '{"data": [{"moduleId": "4fY4WZGlLctdh5Pz", "package": "CAfw3dGEPQi55J8z"}, {"moduleId": "1kaW6PU9dfSKBsAI", "package": "ukOiO3er3e9JezOW"}, {"moduleId": "NwXA4BUS28jR1tf4", "package": "f88eEjVUCCzMYToR"}]}' \
    > test.out 2>&1
eval_tap $? 112 'AdminUpdateModulePackage' test.out

#- 113 AdminListClientTemplates
samples/cli/sample-apps Iam adminListClientTemplates \
    > test.out 2>&1
eval_tap $? 113 'AdminListClientTemplates' test.out

#- 114 AdminGetInputValidations
eval_tap 0 114 'AdminGetInputValidations # SKIP deprecated' test.out

#- 115 AdminUpdateInputValidations
eval_tap 0 115 'AdminUpdateInputValidations # SKIP deprecated' test.out

#- 116 AdminResetInputValidations
eval_tap 0 116 'AdminResetInputValidations # SKIP deprecated' test.out

#- 117 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'hnXBwnCnAgkyQ3Vj' \
    --before '36i9DPnR4YBfjuCX' \
    --endDate '3A7p1DtxY2JDcDlN' \
    --limit '40' \
    --query 'CIKTpNMIN1k3FjfE' \
    --roleId 'z7NNdcNAKeApNwkO' \
    --startDate 'HLf9jUWEPZCEgcyE' \
    > test.out 2>&1
eval_tap $? 117 'ListAdminsV3' test.out

#- 118 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetAgeRestrictionStatusV3' test.out

#- 119 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 66, "enable": false}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 120 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 120 'AdminGetListCountryAgeRestrictionV3' test.out

#- 121 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '9kuHfOREGCGGVqcv' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 9}' \
    > test.out 2>&1
eval_tap $? 121 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 122 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'qcHU2fuSoKr3WaHy' \
    --limit '15' \
    --offset '76' \
    > test.out 2>&1
eval_tap $? 122 'AdminGetBannedUsersV3' test.out

#- 123 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "SVVGqopFJtih5sSs", "comment": "eXHit0J3n8GmskcP", "endDate": "cxmTyUjJLTYTH2N9", "reason": "Yo8zJCtmYNOoGb9q", "skipNotif": true, "userIds": ["kOIYxE5CUKOtr9dF", "EEqmI2RYWQwWDKw2", "XxRugHvzFKZCFbX1"]}' \
    > test.out 2>&1
eval_tap $? 123 'AdminBanUserBulkV3' test.out

#- 124 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "057D4uhZIIBPreEL", "userId": "pu3qjwFgEh00TPWm"}, {"banId": "m569COg2jCo257Hl", "userId": "v9RgUuNTP5tNnBIQ"}, {"banId": "B7Kz88FdALooJzRd", "userId": "Q26UIWUSwTZL17Zk"}]}' \
    > test.out 2>&1
eval_tap $? 124 'AdminUnbanUserBulkV3' test.out

#- 125 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 125 'AdminGetBansTypeWithNamespaceV3' test.out

#- 126 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'qSggcgMNs6qFFFkn' \
    --clientName 'AsllRNQBpPJ2xB7f' \
    --clientType '95Z8E7HcCoNGkpWE' \
    --limit '60' \
    --offset '13' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsByNamespaceV3' test.out

#- 127 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["uzJZVE4d74JiDtrB", "fufxaRcRmzDG5Uul", "wdW9Z3MsGWNYiekL"], "clientUpdateRequest": {"audiences": ["2WYCXKSs2gpYsbTs", "B9NumW3X3RJVW9AB", "sZ1hhahPX2p3rUc0"], "baseUri": "g17rVAMfsH8jPLrL", "clientName": "c88dDz0jaQ6rbTGk", "clientPermissions": [{"action": 31, "resource": "rmpMRHM6ApAGJtHv", "schedAction": 48, "schedCron": "CZmb78rewhf8MG9m", "schedRange": ["P9bWHjA9YN4eSKgK", "tmMZ8WAXFITipUUM", "VIvFgEm72Bq2fHWf"]}, {"action": 90, "resource": "IPdehzIgJ6GlSMWe", "schedAction": 13, "schedCron": "g5fWGiY2qZmZCMht", "schedRange": ["ITmLSmN7GYwBBE0H", "doLjCIr3rM4ImXbO", "2WvBaEdE3FLqSxco"]}, {"action": 1, "resource": "KThghwimwwrV7rz1", "schedAction": 55, "schedCron": "RNVvYkfOVFk0mTtp", "schedRange": ["pVivjXYz6gSIKLo6", "X2yI0n7XwzJwC4ls", "hdneTEDQT8VDOpZ9"]}], "clientPlatform": "DU1ordjwOsSYdEAe", "deletable": true, "description": "BH4wcgC65PnbHNlU", "modulePermissions": [{"moduleId": "8hO3uyhui4gsNj7U", "selectedGroups": [{"groupId": "NTOkrR6Cr0B3BMhp", "selectedActions": [83, 70, 61]}, {"groupId": "PpyOEw8AZGOcGU37", "selectedActions": [2, 24, 22]}, {"groupId": "8pigfxFkMvfv8QGY", "selectedActions": [90, 30, 24]}]}, {"moduleId": "B4wlWHf9V2GctTA5", "selectedGroups": [{"groupId": "E2cHaaBQMBcPkuYB", "selectedActions": [39, 95, 70]}, {"groupId": "5W5h4hGADIwpI4xM", "selectedActions": [29, 9, 17]}, {"groupId": "dz8bi0ZaPkLNbEFn", "selectedActions": [59, 48, 2]}]}, {"moduleId": "NESJ4O5UzqsqTdRe", "selectedGroups": [{"groupId": "bmqCkrWwmCx3K7iT", "selectedActions": [98, 42, 52]}, {"groupId": "vGrUHmxPsxoXwgLT", "selectedActions": [85, 14, 66]}, {"groupId": "VevMx1nIYoxPXztS", "selectedActions": [41, 75, 52]}]}], "namespace": "j9tlcBeIeAPJyJfn", "oauthAccessTokenExpiration": 12, "oauthAccessTokenExpirationTimeUnit": "Qou2vpoxgnqDG2dV", "oauthRefreshTokenExpiration": 89, "oauthRefreshTokenExpirationTimeUnit": "HCCc28KsE4SW5yHJ", "redirectUri": "Jz0OD9BfoOPQinYh", "scopes": ["JPrh93e5j9cG2Ztu", "YDSLvTdTRyPhWj7i", "D4YFWWASY2IeZh0Y"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 127 'AdminBulkUpdateClientsV3' test.out

#- 128 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["ijXEsCTXhNOZRUWJ", "xmh6c4XC1ZlpiN5G", "H3HTWsYCJCv4UfXf"], "baseUri": "x5RQZYWq5KfJtwkX", "clientId": "N0XfaoLUva90t6oi", "clientName": "eFmuGiZAvPwaiV8t", "clientPermissions": [{"action": 32, "resource": "FTgQSRARRzbydfVS", "schedAction": 40, "schedCron": "l5Q2SZ7CbNER1Z4T", "schedRange": ["i3M4j9SjpiAGeMEn", "mbIsQBTGBT0r260w", "UfhwZ5WNiRhvH0pS"]}, {"action": 1, "resource": "uI2FVMpTPy4tq3no", "schedAction": 12, "schedCron": "ZakLkGj7orP57ofQ", "schedRange": ["1BZNbs3r9NTRy4fB", "Er5EvYEXrHD1EEwT", "UsCg9H6ZGKtEYdcs"]}, {"action": 99, "resource": "olq2gSBrV46w41KE", "schedAction": 96, "schedCron": "bhe4JvMQgFyAX8NC", "schedRange": ["uOXzKcM74hpWs2TZ", "qRYUaAzcElBL9nzh", "uzjxGRZ9YQ3cPo1E"]}], "clientPlatform": "NKoUArdwoJvtUb6h", "deletable": true, "description": "mIQcts1wnUKoh5IY", "modulePermissions": [{"moduleId": "rahEwYSoUAoG8IvS", "selectedGroups": [{"groupId": "1gUUlw0BwRDWoqme", "selectedActions": [17, 72, 48]}, {"groupId": "iWrLf52RV6ek5DrR", "selectedActions": [61, 67, 38]}, {"groupId": "Y0dQMcmN3YzRtdsV", "selectedActions": [70, 68, 19]}]}, {"moduleId": "k2DJ9d3sJ3KU8Sfc", "selectedGroups": [{"groupId": "bw24Yht5FOZxs9FX", "selectedActions": [2, 92, 30]}, {"groupId": "0YF2EbkVlGor8OGY", "selectedActions": [34, 71, 8]}, {"groupId": "xOwLw1ZpsmZ2IpiB", "selectedActions": [100, 22, 35]}]}, {"moduleId": "IAJDGVZs2DzFif8o", "selectedGroups": [{"groupId": "NC0v9lhWaENxOXlG", "selectedActions": [8, 46, 4]}, {"groupId": "dKgIlP1dDY2xc7yO", "selectedActions": [92, 99, 8]}, {"groupId": "Vh9BXbP3q82EjjEI", "selectedActions": [1, 55, 85]}]}], "namespace": "kb1fa0LkVaNlSbb9", "oauthAccessTokenExpiration": 46, "oauthAccessTokenExpirationTimeUnit": "S9l5BFHiecPAlpDE", "oauthClientType": "LNaFqhNZ9rWc5mv4", "oauthRefreshTokenExpiration": 88, "oauthRefreshTokenExpirationTimeUnit": "t0Cqlxpobz8Dry6c", "redirectUri": "yrgKQVcaS0OMiZJG", "scopes": ["OGB6FebUKHCNvaCq", "e8FityRopDT1OGMU", "2E1dt0sXn4ChLdH9"], "secret": "Xt0mokrLebFruo8P", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminCreateClientV3' test.out

#- 129 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'mkzIi9eI9kuRgZw2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 129 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 130 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'tFI6OxSFoJwS589R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 130 'AdminDeleteClientV3' test.out

#- 131 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '8KjYaiDUVdX3F7bX' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["uNwtCCBlLgHuC13O", "pTKeyypGllbZWye8", "6udSHapUUaVS2QTk"], "baseUri": "5CLIjLf9WALuN9iF", "clientName": "SOLxaYYEPkMd7ieL", "clientPermissions": [{"action": 62, "resource": "DKBDh1Hq8fbt2Q9f", "schedAction": 96, "schedCron": "jXmqEdTAkiwOjehe", "schedRange": ["TBh0sEZwlvs8ICdk", "tz1bI8JhUnElihV6", "ADh1qV43VlI7AA3w"]}, {"action": 0, "resource": "aqAns57mSsvu5nWG", "schedAction": 81, "schedCron": "ubdYW2ve4lVeSjgD", "schedRange": ["yY9Vvd7y6cjipeyr", "ESR2PSmOzUSrDTzY", "QIrovubVEZpSedxZ"]}, {"action": 53, "resource": "r32WoP2h4NCqxvd5", "schedAction": 15, "schedCron": "NgPEFJoab2Y0KQ4F", "schedRange": ["G47QD525sWKQ1Wrk", "G4BvGvArGjeXbH1U", "9uVXJX3gGjaqtSYw"]}], "clientPlatform": "EiHVrty4i62eqWOx", "deletable": true, "description": "k7oSYCudpsjF7fNO", "modulePermissions": [{"moduleId": "OYJyj8TD5iVpCHrx", "selectedGroups": [{"groupId": "YnwyCrh5Lw41HdrS", "selectedActions": [74, 65, 60]}, {"groupId": "NinRzzjAyozb5fBA", "selectedActions": [25, 45, 10]}, {"groupId": "DXZtQXrvxE2mn1kN", "selectedActions": [49, 29, 45]}]}, {"moduleId": "9cTin9kDadyfA0IY", "selectedGroups": [{"groupId": "A8cHyXNTw9Q9X7N4", "selectedActions": [21, 57, 76]}, {"groupId": "jHwit20v6QBMghiU", "selectedActions": [36, 46, 33]}, {"groupId": "R1WaHN4uAkV5CWoJ", "selectedActions": [68, 52, 25]}]}, {"moduleId": "BgkVN64KNeDooUv4", "selectedGroups": [{"groupId": "PDTMqQElRXIp6CGp", "selectedActions": [4, 33, 19]}, {"groupId": "jOrsUANk6tNTCaXX", "selectedActions": [14, 61, 35]}, {"groupId": "vlQb5o2e6F3hnwQm", "selectedActions": [89, 58, 62]}]}], "namespace": "5kZvmoFHbmyH9BQW", "oauthAccessTokenExpiration": 84, "oauthAccessTokenExpirationTimeUnit": "bnyoyg2ANX2K7oNf", "oauthRefreshTokenExpiration": 84, "oauthRefreshTokenExpirationTimeUnit": "BaNWwIGxWRrhrWJf", "redirectUri": "TKv61hBmmNkchBVM", "scopes": ["W9HxxyFJ9zrrbPCR", "KYFvQqrYIvkbayxn", "2mu3rcpAletfKrmV"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 131 'AdminUpdateClientV3' test.out

#- 132 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'Dfj9hoZpmTdAOcUr' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 8, "resource": "6gqOrZkfC8y6fNUx"}, {"action": 42, "resource": "87tbmwu6kKEPs4Ct"}, {"action": 37, "resource": "JfBg7mdO75i4HFJi"}]}' \
    > test.out 2>&1
eval_tap $? 132 'AdminUpdateClientPermissionV3' test.out

#- 133 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'UuQ8TvE8UZplGZqI' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 25, "resource": "1QyeI349CRo8Fjia"}, {"action": 52, "resource": "j8jpMnPH9U9oOyGp"}, {"action": 12, "resource": "FKHGaVOrXm99Jvi8"}]}' \
    > test.out 2>&1
eval_tap $? 133 'AdminAddClientPermissionsV3' test.out

#- 134 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '45' \
    --clientId 'K5Jno2FjLcNl98ss' \
    --namespace $AB_NAMESPACE \
    --resource 'Zosvv4w9Nd6QmHCM' \
    > test.out 2>&1
eval_tap $? 134 'AdminDeleteClientPermissionV3' test.out

#- 135 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'fy3WAUEqcoggw7Pd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetConfigValueV3' test.out

#- 136 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 136 'AdminGetCountryListV3' test.out

#- 137 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'AdminGetCountryBlacklistV3' test.out

#- 138 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["W7nH4ZnEpGyfYI4N", "xzPUKuEgeZO2mq8M", "XkEB6JqMXmS9pJKF"]}' \
    > test.out 2>&1
eval_tap $? 138 'AdminAddCountryBlacklistV3' test.out

#- 139 AdminGetNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminGetNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'AdminGetNamespaceScopedInputValidations' test.out

#- 140 AdminUpdateNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminUpdateNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    --body '[{"field": "XrlungaeTvJeYTvV", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["ewR0oGL7GCKT9AG6", "7FRzp1nlhJeZU0qd", "wD8NaT9uffOJwHSx"], "preferRegex": false, "regex": "G2XfcvTZKRR0vBU9"}, "blockedWord": ["ex0w7ZcOs2vNtbi2", "l1xcJum5G0I1oRc5", "bv2zpjkdLqF7ONmv"], "description": [{"language": "ZaoVNvQhyq7Rant1", "message": ["7F4Fdq2JZVnMaGDs", "rqPW5yx0L739bFyU", "8hGfrLBNQ1DwvRDT"]}, {"language": "vPG1hPdlm9vZciAp", "message": ["JdNFhhSLCbD5H1Uo", "tM00aNmnSID1ywUg", "NOQZf7bIuK3pbqDr"]}, {"language": "1x1GDKD7U7ouQOtD", "message": ["AdiBIDJIpoRN82O6", "fxQ0rHjFwX35nDMR", "1isJB6iNO2KW3plD"]}], "isCustomRegex": true, "letterCase": "oxrzvBk1sY1g7EoK", "maxLength": 35, "maxRepeatingAlphaNum": 36, "maxRepeatingSpecialCharacter": 26, "minCharType": 89, "minLength": 23, "profanityFilter": "we7tvO8k4uhov6fZ", "regex": "vngxNz0jpKifaQ9Q", "specialCharacterLocation": "9AeErWCWNgXksGFc", "specialCharacters": ["GLRDqupp6LOXrF2V", "O3wTJh5yoWum9JRD", "GDzg3jjRiGBvpw0q"]}}, {"field": "Y1cGQIeYvW21nKyK", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["BlKVm9fWxk6zV4fX", "cYT4SIssHTcvhkUx", "Y3uTpnN0EdNgHHRX"], "preferRegex": true, "regex": "yT1kK9zMw1mOIUS6"}, "blockedWord": ["U676kXCcrlP1CLoO", "8968iKKEZnEicLk3", "2nEfenx12qeQkCfw"], "description": [{"language": "GBKNlLL08ebHr5No", "message": ["CWn4tRxLBZ84pblG", "kGcpCR3n0eX0FiRQ", "wzHx55AEnpbrcVbc"]}, {"language": "XgGRt7dk3Dhfv9Ky", "message": ["S70Yhthdf14JgDnY", "y5j1VUVaolm8o45k", "IOHw8JQ5yfiHjgte"]}, {"language": "0q3HVsjWOf71LkzU", "message": ["ZQCPD4Sx6bpmlgRm", "XmA0e5B2qyqmbzZQ", "TlrCoY7uP5C5kW2x"]}], "isCustomRegex": false, "letterCase": "kpIkgsLuf7qD4fKW", "maxLength": 57, "maxRepeatingAlphaNum": 99, "maxRepeatingSpecialCharacter": 77, "minCharType": 44, "minLength": 84, "profanityFilter": "CWbQhdFZuX9jWhRY", "regex": "8OUTJlqX6AQ7TmIb", "specialCharacterLocation": "uI3WSNht6I49hg5A", "specialCharacters": ["E7O1fOvteAnd5Ya3", "EpP0UmOKkhI6Glsz", "sZye39iQFMqAGWWA"]}}, {"field": "OPd0tNZhHeg1EspY", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["vHhTkgBw2bcCUOFN", "OPHkYmH5zDxch8yt", "kvDDZ50DwuA0706y"], "preferRegex": false, "regex": "rppDA3dLNXzEcLek"}, "blockedWord": ["x0blozBxBUorCpec", "T51ijhdBnwNJBTyL", "7fvZ9chvOHIV4TKL"], "description": [{"language": "F5hXNG1VP6NcF1tX", "message": ["7gXD55RTyKSjDqqy", "vNRrdrIM8IIL7Miv", "Tc1UwETIWbYv2c6B"]}, {"language": "EcDyXO7b8pxvV4Qk", "message": ["PmB4CxKneSdo4tq5", "6fh2pzYclNa36qU1", "hm9Zis1m9jMr7oNn"]}, {"language": "v47JCrRlO80s6ozV", "message": ["33Qquqk0RtLosYyA", "ELF7isR1M6LhRxG1", "wF4ZJVqEhUWAIB8I"]}], "isCustomRegex": false, "letterCase": "FWKyaMusdZLgXKQt", "maxLength": 36, "maxRepeatingAlphaNum": 13, "maxRepeatingSpecialCharacter": 45, "minCharType": 56, "minLength": 32, "profanityFilter": "Fc8yrdo5SpSOUsSt", "regex": "tFgChfRQlKj3p0aY", "specialCharacterLocation": "uOAv5vOztC9eyfKu", "specialCharacters": ["lg1E9qGCNA6Qs3CC", "cTsVSsNi2o8YLMcg", "XxeCcCDP7aaSOEcl"]}}]' \
    > test.out 2>&1
eval_tap $? 140 'AdminUpdateNamespaceScopedInputValidations' test.out

#- 141 AdminResetNamespaceScopedInputValidations
samples/cli/sample-apps Iam adminResetNamespaceScopedInputValidations \
    --field 'K4cQ9jGz4Y9nB7eM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 141 'AdminResetNamespaceScopedInputValidations' test.out

#- 142 AdminGetLoginAllowlistV3
samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 142 'AdminGetLoginAllowlistV3' test.out

#- 143 AdminUpdateLoginAllowlistV3
samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"active": true, "roleIds": ["j1SLoXrF0CoMHHob", "1tO1HrVKy80zjGTm", "OpkWqRvnsAgM7YcE"]}' \
    > test.out 2>&1
eval_tap $? 143 'AdminUpdateLoginAllowlistV3' test.out

#- 144 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 144 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 145 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 145 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 146 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '60' \
    --offset '6' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 147 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tRTHpWFZNCxWeCgw' \
    > test.out 2>&1
eval_tap $? 147 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 148 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '30Z1sKPB0s7h2q4P' \
    --body '{"ACSURL": "02R2bZkvddhzlxLT", "AWSCognitoRegion": "VFUWkUg3SxgE25uL", "AWSCognitoUserPool": "RNa0m4zk7iRrh8Ls", "AllowedClients": ["1CneDOLnfAptUsVa", "w2VzoRxP61gUMjVz", "EU6Uo5hiASH1cZ49"], "AppId": "f7PvUwpbSZnrKbTe", "AuthorizationEndpoint": "Ky4deuMSF2QB4rAB", "ClientId": "mpFUEWY8FzypstPg", "EmptyStrFieldList": ["jJwM9Pi49kOzNEuq", "tlOnenqflH4tNO1W", "bPQGufntWe3aTIPv"], "EnableServerLicenseValidation": false, "Environment": "TPqmxBKPa2wUIKm0", "FederationMetadataURL": "2APhnGRVoejcgbAE", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "aTCWz8wTQxU9Zq7j", "JWKSEndpoint": "imDm1IhfLK201yce", "KeyID": "u5BnYUIFoG54TPAR", "LogoURL": "2uCuzXqUF5FFaidY", "NetflixCertificates": {"encryptedPrivateKey": "t67MgehfEAZREleV", "encryptedPrivateKeyName": "sdaEc7abriHPJmkb", "publicCertificate": "IvG6lMuwLmLTS4mG", "publicCertificateName": "r1aPQ6ZG280aCpdq", "rootCertificate": "Ljz9LpdvvEojmehp", "rootCertificateName": "SV3FGMhtZ0DY88kp"}, "OrganizationId": "Df9YJPVdyoH7GsVz", "PlatformName": "mr6l6hmHSXZdhN5n", "PrivateKey": "Tcr4xPjAQCoVtCCE", "RedirectUri": "kvWNnj6cHh90taEy", "RegisteredDomains": [{"affectedClientIDs": ["pI7kn653wSzRW2za", "7oRppMa6EZlXnfwk", "iKbazfeVSntEf2OJ"], "domain": "GWB7Fm5lWnc9oKrN", "namespaces": ["IOK7yOcA6fcjkbQH", "ccXjgwHanyQhBTMc", "ibdHHcvnbZCPfGxo"], "roleId": "V38TrW9mdR1CJqnQ", "ssoCfg": {"googleKey": {"S4HGK88cdio11tK1": {}, "0wB2KO8DcGalBp4L": {}, "5D1cVdXJpWCG8fjH": {}}, "groupConfigs": [{"assignNamespaces": ["9zZLWvUtnKOWfFPt", "Ah7F86Plg6i3tEV3", "HU8oXyCAN58oCQH8"], "group": "VwbVxdfjKZ0JHGTG", "roleId": "XmWuLWCLBz7eRhdG"}, {"assignNamespaces": ["NsNDSP9jur1p9O4Q", "DKyRm6pckJWFX9E4", "SzNmmxY8FEFFhSWL"], "group": "nr5RWIrpR6G8i1uY", "roleId": "6bWoxzlEGDdbbmQL"}, {"assignNamespaces": ["rPC1ZgavAzgrcfKC", "CJ8l88gOXdy1gj24", "WSWbjWBtVh4nvleJ"], "group": "zxSzkmOV5cxzMt0n", "roleId": "RpnLBTZSE6mnXPZY"}]}}, {"affectedClientIDs": ["TTZsRwKpv2YFpi53", "u0MXj5v9Zoazq90r", "QmEnItxh9sPNR6hZ"], "domain": "guBWqu0djbCoCple", "namespaces": ["1h9T7pUpjhOnshDE", "vbx4jwDvK3tZa2MA", "HSw69egWE7k3uXIP"], "roleId": "aSYiJPr5J5o0GIge", "ssoCfg": {"googleKey": {"96M4oXD2qUd6Swv4": {}, "hDT4nB0v6CpmUKRs": {}, "SBA6mD7U9yni0q4v": {}}, "groupConfigs": [{"assignNamespaces": ["1MsJHvOb3v7xigbG", "le8rnmNAJAP5vEGi", "an4IffB6mYsOVjQc"], "group": "Ac3WZZboouRgkpuk", "roleId": "9yiuN2tb19n2nGvM"}, {"assignNamespaces": ["TcbPEfppJhfa2CXh", "psiql4Tw8c6WUN16", "GC6ul9OiqdtXm6Lh"], "group": "M3hoimCp9NDkg1w1", "roleId": "Don3X5DfbWHpw3HZ"}, {"assignNamespaces": ["1wQACjaEg1ulaOAh", "aOSeKqrxHDAjHWbM", "aDXzZBKQIXdHpIv6"], "group": "BETwQBs6hxjjNKjg", "roleId": "dmBhHS5SWYnKdRhT"}]}}, {"affectedClientIDs": ["soC4mMVr0lWmfsE6", "gFLH1rt8DDARLqi6", "3rOfcq9hB8VFq3sA"], "domain": "xYZnLbmwhceZqEFT", "namespaces": ["g5J9VKVI7xpkZEfo", "eujXRl4yXVXupK4N", "JHBKZLoIZUYeP7tC"], "roleId": "pH9lSquy3CZKjxm5", "ssoCfg": {"googleKey": {"URucJ6NFbPRno88a": {}, "cnkojYKAej4SK6e7": {}, "oW4TyKKqhmE690QQ": {}}, "groupConfigs": [{"assignNamespaces": ["d8OZrp7DrSfMev8q", "dHUq2BW831Vwr1BP", "e2NAA15EDmhhNus2"], "group": "GKZkYMc7BeJQSgmy", "roleId": "dz6Jr2nUAb4nmhfa"}, {"assignNamespaces": ["4PM0RJS6JsPo1OOp", "9QpK3OPYi8okoByZ", "YHahf43Ysjea4SZd"], "group": "bEpOFUql6uXCOgFH", "roleId": "1cLy5QTWnCkCaAnM"}, {"assignNamespaces": ["we3H8z78voh2tk3H", "sX0UrgT0LvLtwqhl", "ZLUbhsXq0FXYrMxx"], "group": "dEQ8x2URdIvRSEUr", "roleId": "hPWwTS8HdymLmI7T"}]}}], "RelyingParty": "tNFtWeNvcMXTjkMu", "SandboxId": "inG0FOssGAjFQPm8", "Secret": "V5GAHIQfFsqihAPT", "TeamID": "uo5BEseyght3riLZ", "TokenAuthenticationType": "98SQHh80mhzav5DT", "TokenClaimsMapping": {"hVGdkTDzzZYUsiDp": "GQQstAtqtc4dJCRU", "cWv43lcejjcNCffg": "huhGxmuSlJS30XoS", "lk4b0gZGy4YGPDth": "97rIPGMNFPEmXI4Q"}, "TokenEndpoint": "cas1CItjpXnzbGes", "UserInfoEndpoint": "SS12wb4ifpre18xm", "UserInfoHTTPMethod": "fFp1QofkpseVuwII", "googleAdminConsoleKey": "cA3KV858E3Vla9jK", "scopes": ["Q3cOKx5IVRw0H5ze", "MZqCyx9s28ukhb9s", "B4PptO6xG9I4X1D9"]}' \
    > test.out 2>&1
eval_tap $? 148 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 149 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JqV8L947AiZsWSYw' \
    > test.out 2>&1
eval_tap $? 149 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 150 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Smh7aNMkq3LnLAYT' \
    --body '{"ACSURL": "lRMuOBPWBzKB377C", "AWSCognitoRegion": "oyT2hpOUsWqqKjeN", "AWSCognitoUserPool": "Cv0ckZN0bDOHyhlq", "AllowedClients": ["Xgt7ePmAwn0LLuwu", "QGFaC97hr8fZJdAD", "8v81RZszRTBxKQvb"], "AppId": "RnPKNknsvWgUHFwm", "AuthorizationEndpoint": "1MZyx35Wrw8JhH3k", "ClientId": "eK5DhW0xothgaJ9G", "EmptyStrFieldList": ["ntDd0X2AAoocet8C", "N3hskOSiefIZVbUu", "ZKodsfNpDl7QjXQs"], "EnableServerLicenseValidation": true, "Environment": "DXWZzXnZS2RtjnTP", "FederationMetadataURL": "uSRBHkrGUmACKodE", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "VObOU8o7lv3ZHfMC", "JWKSEndpoint": "5VKgGOUe0494h4xQ", "KeyID": "ThFiRpDMUvl8xFfW", "LogoURL": "YbGCXwTRKy0ay70v", "NetflixCertificates": {"encryptedPrivateKey": "W3pfhfZZZSGQUMVZ", "encryptedPrivateKeyName": "FzSTJrOdy1pq18uT", "publicCertificate": "oWCDlLM89u6raV3e", "publicCertificateName": "SkxYHGXdC9gdfcdl", "rootCertificate": "lFWJSzLwr6vdKSSC", "rootCertificateName": "fVlYOI7bdBLAIUmv"}, "OrganizationId": "fSWDPVdSKzND9mVT", "PlatformName": "HWFdRRMCPMVjbmlc", "PrivateKey": "oFGMlXt6GBTgMQtV", "RedirectUri": "AHrZUthMOyecRyvy", "RegisteredDomains": [{"affectedClientIDs": ["KMVc8WWckHdCOFVY", "7XI8tKo1T2MkjtGo", "rq4PcDUEWCQ2V2Nt"], "domain": "Gs0i7h3nsVK8tz69", "namespaces": ["tgR2RuFRN0SbxQyV", "fQGJIKN6eTIJe04F", "4hnprYBsYvWWK5gD"], "roleId": "r5glKbMckixd4KRF", "ssoCfg": {"googleKey": {"hOv0PP6e2zvrnk1n": {}, "dzdVnpwtNN4ssn7l": {}, "AVfx8szWz9gI5uVq": {}}, "groupConfigs": [{"assignNamespaces": ["oNvFWbfLWBGveU2W", "LEwY7GKascQdeKVU", "kQQv26XdGZc6iimR"], "group": "ufC3BixyMm9sYsod", "roleId": "GWuUkt2YxQuYdKb4"}, {"assignNamespaces": ["2gnKItil6HTjMoxE", "fJF5YfoYQGhbTaqu", "7YrdJKZumamUm3ww"], "group": "yNGaFUp7eg87Mmmm", "roleId": "X9uLgaZkXgMMmSdP"}, {"assignNamespaces": ["kQ7mzg8vTMHqT0Mq", "FMSWiDqsokLT2q8G", "DhaBoHe9QbNgrSWY"], "group": "jnfp9ZPgo1AfcwZb", "roleId": "YHK8ulj7dwBaZQuA"}]}}, {"affectedClientIDs": ["t2EGB4XbUnsdMkHA", "Bahg8nr97XtIbDLR", "ZowhMS6ce8OTDjj9"], "domain": "syUIS3D1TIBCE2ik", "namespaces": ["v0ScceQe1XHswqgk", "RU4aXYufvaiOtmOx", "gx99EOkS4FG1Ncgj"], "roleId": "Xde03x5FQCo1wgIU", "ssoCfg": {"googleKey": {"ue8zxHX0wW03G5nf": {}, "KbwDsXHfg2uQC9E5": {}, "IKgfDo7ce0MeM0CF": {}}, "groupConfigs": [{"assignNamespaces": ["gs17IF3xq1k1UVeL", "1pCKY5VwNY8wZujL", "HGA8NDEphlZDudAv"], "group": "B6GzugpCuz8atsV0", "roleId": "B26syPFGkNnDii5S"}, {"assignNamespaces": ["iAyB8gsOvknNNtH5", "dhWOoe8vMuI8fM7i", "2ZqfDKrTamX94ILd"], "group": "yj0Dp7wtG0lpYeDM", "roleId": "P4oOg7MolIE2Z1k3"}, {"assignNamespaces": ["Rj0DBhuJvbUG1Hay", "3qm9yI0oiDvh2gMg", "DMhYifqgXbktABKp"], "group": "Nnp6B0sr3dTn4FGM", "roleId": "VTQU7g1JphlTSeCL"}]}}, {"affectedClientIDs": ["g0rPo26di9PEoEei", "PduhKCGtaTyJKuqf", "SWqMl6MpCReWYezf"], "domain": "wVt6pA2SLWSVYw5J", "namespaces": ["nO8XRpAuJcTWTfvt", "zIJph3r0Tb3tYeIP", "NRFeMPO20z68uSou"], "roleId": "hbBu68EiwtgcSTZN", "ssoCfg": {"googleKey": {"GXBhFPW4yTjBYi8L": {}, "43W8S5H92WorYCuq": {}, "XqNXYxUsrUSduCva": {}}, "groupConfigs": [{"assignNamespaces": ["qnFlRknX7dLC7dAs", "mi13oZXeSqhjucEs", "8rrs5iVcCkcONDT8"], "group": "lFFi3sBaMh0a9mBV", "roleId": "Sdjg9QTowlRkUU2z"}, {"assignNamespaces": ["lCL31oLIHODGLt13", "VJgx98kWTdVeLlvU", "yJWaWVnyhPUqTOrF"], "group": "dyWgCKXWLd1rRhWR", "roleId": "vmU2a6HX500E929U"}, {"assignNamespaces": ["RbMJVvYdUpcHY0ia", "EYDtwM0EpreLKXdt", "wcz3LVQ1QXJ66ezB"], "group": "f3mz1XxRmE7xMGH8", "roleId": "9vPtzrhXSV3dKiTS"}]}}], "RelyingParty": "88FYgn2L3H5Q7CZw", "SandboxId": "GTpHmL8CVzCQU29I", "Secret": "4JN0tdqwemM255Nq", "TeamID": "lURIQKuhjeIROUys", "TokenAuthenticationType": "LtGSMGNd9PjvJETA", "TokenClaimsMapping": {"LwUhynpkXzLUwwdu": "7oeGVl9JFAWUix4Y", "qDu4XXhuGhtnim7m": "bCfJCdPl51FZKh0d", "9xqGjxdypcYPS5D8": "OKLV0SmabBCHoGkU"}, "TokenEndpoint": "TujfxV6573L3amgn", "UserInfoEndpoint": "B95tDwlVPwqNRtEI", "UserInfoHTTPMethod": "hldxTak8vyVwO46q", "googleAdminConsoleKey": "vpWESHw5w8snlybi", "scopes": ["1Gr5dw8C5vbYW5Uz", "Baw3wrmq33uNJx4K", "AziFir1C7TQQcLik"]}' \
    > test.out 2>&1
eval_tap $? 150 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 151 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '84MFmvgnVqzSjlZU' \
    --body '{"affectedClientIDs": ["q2uA9xXnrYgQaIeE", "ZvqXUGPzKiD7QQtT", "88hxAAzkV5hu9hy3"], "assignedNamespaces": ["g8e8hy6nhRkLeLSA", "JYMcsw15XvPsaqJw", "pu21w2ENDynbj9eb"], "domain": "C5lXrrmhAaogRY2m", "roleId": "duTpVz4WCER2OGPU", "ssoCfg": {"googleKey": {"OQPdBzlABBtmuFxB": {}, "WoGr8ZyMcDBlV7In": {}, "SbIF9uwoOjxaOP1I": {}}, "groupConfigs": [{"assignNamespaces": ["KAu2XkRbpOnV8KPJ", "n76Blcro0IR0sIn7", "YnumOPj6iq7wweee"], "group": "fPwz3922JP009IQE", "roleId": "z8OxMz1kk5vRXT0t"}, {"assignNamespaces": ["rU71jfSYjvxFY1Yq", "ekgjTGpVVRi7vJRV", "VaC07X90jD5ix2cz"], "group": "JfYMccZtwaw4G4RO", "roleId": "bDXj7PXhQYbNchKR"}, {"assignNamespaces": ["YarVuMdlm3P1yXla", "30uwRNeDeygAAYox", "lIpzBlXciDSa3O3l"], "group": "8C0GU7ragTiWp3tv", "roleId": "bW4F4qKzAo08F8fC"}]}}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 152 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dAYhZiA52J3NtVMO' \
    --body '{"domain": "UjmGM841iH5DdFXa", "ssoGroups": ["4cnskrwkKv7EVFFw", "6ArLAszv18UivplO", "cfODQNbjOxr20DF8"]}' \
    > test.out 2>&1
eval_tap $? 152 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 153 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4jJabFO8axB6ZcET' \
    --body '{"affectedClientIDs": ["qM18UaofCuP3Qva4", "fpIpaquMCPWlsTHc", "KnhDdPmMNoZgXkFP"], "assignedNamespaces": ["05bhmFtJkrznw4L6", "hcY8QUVRA1G5cCGn", "hKJ4bYQzUMbHdKPA"], "domain": "UHkUV0VhrE1deJBw", "roleId": "gEbRXXteFEa82sIH", "ssoCfg": {"googleKey": {"JBGAORfkceDJZsRc": {}, "T1JUfEJL4Osu1zt4": {}, "AMwVst0nqE3k19mw": {}}, "groupConfigs": [{"assignNamespaces": ["si2NSupT1r110I8o", "ZfGlCxlGVWsG4CYz", "uEq1mzUaYlZP26rq"], "group": "7FkWDViXBIXY1MX0", "roleId": "Cwl6MxEqqse14vyw"}, {"assignNamespaces": ["Zi0jkGi6nvEWvVFK", "WM1finY7fRBhvKkI", "WLeDosVMa048SzxD"], "group": "j13CztnmT8BW0C5Q", "roleId": "QBjrIvzoOE4sNCeN"}, {"assignNamespaces": ["cjNtxWZI9rWQfGyS", "1xj8Pi59BT4I2UBU", "gfP0iVbA97dwbEDw"], "group": "fCe8T5jHA6H2TIwr", "roleId": "xjPZWO0554rtLXDJ"}]}}' \
    > test.out 2>&1
eval_tap $? 153 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 154 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'wXgx9TZMIk10KNWK' \
    > test.out 2>&1
eval_tap $? 154 'RetrieveSSOLoginPlatformCredential' test.out

#- 155 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'VUnNGrpWmEk8M16Z' \
    --body '{"acsUrl": "2zuXQpFzI4WiwChw", "apiKey": "e5F3oyeVJF9SFJDj", "appId": "QkZpna70H7OKJMgB", "federationMetadataUrl": "xHpm2YC15LJlugZt", "isActive": false, "redirectUri": "x96UcuDGG9J6o205", "secret": "5XrkuCcTcux08OBD", "ssoUrl": "fJkxHNUfSbKCcsbn"}' \
    > test.out 2>&1
eval_tap $? 155 'AddSSOLoginPlatformCredential' test.out

#- 156 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T1onXK96U6Yct0zg' \
    > test.out 2>&1
eval_tap $? 156 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 157 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'mpGZWJfM2XqHUE71' \
    --body '{"acsUrl": "hwxcXwpiemqaHV6A", "apiKey": "BbUnxRxvauqBTHKH", "appId": "X2lxXnxIVIJeNfHe", "federationMetadataUrl": "bVHCgsPeEt58KukY", "isActive": false, "redirectUri": "0MmEwVcDbEzNuxJO", "secret": "x768Rqr4nJI3oBAe", "ssoUrl": "8WQl20JfAH7nrJxz"}' \
    > test.out 2>&1
eval_tap $? 157 'UpdateSSOPlatformCredential' test.out

#- 158 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gOkwGmf2MMyyCnV5' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["DTi6O0WJIu4rODmg", "Oe949g9YDrCimhqP", "zOxO5yjnr1CCjKxS"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 159 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FFhRHjt9p8oVR49K' \
    --platformUserId 'JYt6tTFKg8NxT0o7' \
    --pidType 'L4yS8mAIbDUrB14u' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetUserByPlatformUserIDV3' test.out

#- 160 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetProfileUpdateStrategyV3' test.out

#- 161 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    --body '{"config": {"minimumAllowedInterval": 15}, "type": "NlfiCedcWH89X5VA"}' \
    > test.out 2>&1
eval_tap $? 161 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 162 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetRoleOverrideConfigV3' test.out

#- 163 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{"actions": [85, 76, 46], "resource": "0wduhjoWXiTvMiPp"}, {"actions": [96, 63, 30], "resource": "ViGuT9Z167OiybyK"}, {"actions": [19, 27, 5], "resource": "t0UdjYd6l8qeL1Rn"}], "exclusions": [{"actions": [92, 7, 92], "resource": "TvAVjjZKWSp3qKZj"}, {"actions": [86, 38, 11], "resource": "poJVPxB5xUt3oDTF"}, {"actions": [90, 48, 4], "resource": "d3RrMRS6ZkoCh1YA"}], "overrides": [{"actions": [24, 80, 51], "resource": "wO4ZX8qpaMZEE4E5"}, {"actions": [79, 52, 92], "resource": "3G5O3NwRjC6hzKcK"}, {"actions": [28, 15, 80], "resource": "GRziABxiALLxjBzj"}], "replacements": [{"replacement": {"actions": [5, 85, 88], "resource": "riGnIC8RzrWmCqEO"}, "target": "xGX1ml1f8ma8P0pq"}, {"replacement": {"actions": [87, 84, 90], "resource": "jhaYjBrDB5ptwBQb"}, "target": "vvfh6Rc0PDhPjoWV"}, {"replacement": {"actions": [21, 7, 44], "resource": "f3LJ5E9Ro7pjCmRw"}, "target": "etVQJf8Kfwp4mKfK"}]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminUpdateRoleOverrideConfigV3' test.out

#- 164 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'GAME_ADMIN' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetRoleSourceV3' test.out

#- 165 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 165 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 166 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'IuLoRapbYxzBJ5eG' \
    > test.out 2>&1
eval_tap $? 166 'AdminGetRoleNamespacePermissionV3' test.out

#- 167 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId '7UrMiUqxw1FKtGrQ' \
    --after '76' \
    --before '64' \
    --limit '22' \
    > test.out 2>&1
eval_tap $? 167 'GetAdminUsersByRoleIdV3' test.out

#- 168 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '19' \
    --offset '77' \
    --tagName '5mNoZ0YPjPmOvjBT' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryTagV3' test.out

#- 169 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "ArmrXzIJcdooJYIp"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminCreateTagV3' test.out

#- 170 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'yvD7WsxU3cPhG2zM' \
    --body '{"tagName": "HeYfPVKMRa2KhCTT"}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateTagV3' test.out

#- 171 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'vJCpf71QRE727YUr' \
    > test.out 2>&1
eval_tap $? 171 'AdminDeleteTagV3' test.out

#- 172 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'e9BNp4esSjX2BblS' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByEmailAddressV3' test.out

#- 173 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["SOZJt2e1A1UeeEHe", "GwTjMJ5tvQUxxrQB", "DTMZ7MtJ8SoNfXSx"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminBulkUpdateUsersV3' test.out

#- 174 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'eDyc0pKmbj8FkiTq' \
    --body '{"bulkUserId": ["8BQbVEpdOBm6JYEQ", "SHjlMnYSPAncp9pk", "bi6R5exorDDX5fpB"]}' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetBulkUserBanV3' test.out

#- 175 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": false, "userIds": ["7TRn0ehOyrh43nAO", "1gBVkhSnxEOjUdhz", "utUJrvKwZOLbXGCy"]}' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUserIDByUserIDsV3' test.out

#- 176 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["sxRcalb887Wq3kOV", "TGaZir2D08D4TXbJ", "9eWuGSozYbO6f1Hi"]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminBulkGetUsersPlatform' test.out

#- 177 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "JDd4V9eWkgUSKgEq", "userId": "57EeQLGTirvu7dO2"}, "fields": ["Qb3vCDG361wOHS6E", "wCSZ1oSu6pqk1sAa", "TeuSsVrmBogAcIQn"], "limit": 96}' \
    > test.out 2>&1
eval_tap $? 177 'AdminCursorGetUserV3' test.out

#- 178 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["gntDdYAG4CO10veX", "I7T7dfSn7EPsx1HJ", "YkNPXrVzUff6WyF1"], "isAdmin": false, "languageTag": "cPbfAyhz5GCnrDOu", "namespace": "QpDTQgPiMs6OCfTZ", "roles": ["hirkJhHaPfnlZcH9", "jbt3SAJUZVb2dAvg", "omSQ6NKfUCafInwZ"]}' \
    > test.out 2>&1
eval_tap $? 178 'AdminInviteUserV3' test.out

#- 179 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '14' \
    --offset '27' \
    --platformUserId 'Vwpka6GJWlUJDzm2' \
    --platformId '2U9DtbMcaa98MSSZ' \
    > test.out 2>&1
eval_tap $? 179 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 180 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '15' \
    --offset '73' \
    > test.out 2>&1
eval_tap $? 180 'AdminListUsersV3' test.out

#- 181 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'RTSnOeDkHpCb3j7X' \
    --endDate 'W0cNcEJw2pcfZEcM' \
    --includeTotal 'true' \
    --limit '31' \
    --offset '15' \
    --platformBy '2ClSUFXEGelKR2YB' \
    --platformId 'O4AR5pWJL7VmOWTv' \
    --query 'jeXVXf1Q8upS3dMi' \
    --roleIds 'bOeeBkGdYo8psFqV' \
    --selectedFields '0NHqQGCB02PHUwY5' \
    --skipLoginQueue 'true' \
    --startDate 'QfXciPkQxuga29qi' \
    --tagIds 'IVmulXjtoAIaPEBu' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 181 'AdminSearchUserV3' test.out

#- 182 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["2xnhpQCsJFbeuH6d", "odgoXbYjtdwnY09b", "4SN6jXAUF5JMGVWX"]}' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetBulkUserByEmailAddressV3' test.out

#- 183 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vU8gWqzuQWYgAxRL' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserByUserIdV3' test.out

#- 184 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rmkzIIKLZsLNJDeG' \
    --body '{"avatarUrl": "FMrgN9hndpHfqlso", "country": "LFoO9C7fZiFiPUqK", "dateOfBirth": "W5cDw67Bgb7N1HUT", "displayName": "FUIIFt5T7z0BHhhs", "languageTag": "sNUov4FpNGngjlwb", "skipLoginQueue": false, "tags": ["Kp91Q6rlMLU8aDBu", "dPShdHu7mQhAMwPI", "PMLk5qtSkXYBy5m1"], "uniqueDisplayName": "RTyL8Puda6KGU340", "userName": "H8z62DwMHjeKMHID"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpdateUserV3' test.out

#- 185 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LHbciricHqA4lSaM' \
    --activeOnly 'true' \
    --after 'q2ASP223ggHV6tU2' \
    --before 'yiuXlp1CqgnpSp0o' \
    --limit '77' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserBanV3' test.out

#- 186 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Aul97b9ftB4wKqUI' \
    --body '{"ban": "LwasjlShkwYDYuRw", "comment": "ArWhIHt7tNkNkA5u", "endDate": "PhZnAMrvZ4g6Shzh", "reason": "zNyLBPGoFntAonQk", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 186 'AdminBanUserV3' test.out

#- 187 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '37YBrvI2IkSEJRln' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserBanSummaryV3' test.out

#- 188 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'uuFhSVdltl9Ezxz6' \
    --namespace $AB_NAMESPACE \
    --userId 'Fck5PPXQaoQsFkV6' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserBanV3' test.out

#- 189 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eU6kKq3FgXy41rmY' \
    --body '{"context": "s9BXtEdk6m1tdt7L", "emailAddress": "cm9AisfWmfNfFNGo", "languageTag": "qY5c2TOP53f3tubP", "upgradeToken": "30NmUu2nXfXkn9y3"}' \
    > test.out 2>&1
eval_tap $? 189 'AdminSendVerificationCodeV3' test.out

#- 190 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EEdoXVfMH2f7erfC' \
    --body '{"Code": "TPwZsCSgBRtlYXbO", "ContactType": "1eDS7Hsp12xg8xIQ", "LanguageTag": "ZeO1szyrM3Xw1EL1", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminVerifyAccountV3' test.out

#- 191 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'QOUgEVAbwYu9cbMv' \
    > test.out 2>&1
eval_tap $? 191 'GetUserVerificationCode' test.out

#- 192 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gDI4TbhcaJX7CGNy' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserDeletionStatusV3' test.out

#- 193 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NFZGTurF3kSpTLjz' \
    --body '{"deletionDate": 20, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserDeletionStatusV3' test.out

#- 194 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hcsVSXHOiNYENDVU' \
    > test.out 2>&1
eval_tap $? 194 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 195 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jo4X1CXDVFJDD8eC' \
    --body '{"code": "TuqUWMz8ua7C7G5m", "country": "iGOCQBEfQHOe4Vct", "dateOfBirth": "iAsxada5r1Qs1wfe", "displayName": "pEW2nqXRuLmd6ASA", "emailAddress": "5kjnpH9OHwfjMfLM", "password": "Sll7FvOjdJU7Ci8v", "uniqueDisplayName": "GdqPEJFuXNA2QzM8", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 195 'AdminUpgradeHeadlessAccountV3' test.out

#- 196 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YzdyuPtih7RYg9wE' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserInformationV3' test.out

#- 197 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'v05Bnc1QzAwsNyt4' \
    --after '0.6743005089516496' \
    --before '0.8060579365046278' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetUserLoginHistoriesV3' test.out

#- 198 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DGjerTV4zMLX2PKd' \
    --body '{"languageTag": "9qniohyqHLeITDgz", "mfaToken": "YXG2nXN6tkeJyqlX", "newPassword": "XbYg6gpy3N93gEZC", "oldPassword": "ZvBWMyNHCDjrHEpj"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminResetPasswordV3' test.out

#- 199 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fPOLOOdHB1bis3De' \
    --body '{"Permissions": [{"Action": 5, "Resource": "BT1aGiQ2w0fWDPQL", "SchedAction": 56, "SchedCron": "1cAkUeNrps4o7NG3", "SchedRange": ["QylnDWF6lgdPOsGH", "mIiAefAoBDrvxuzo", "nnpeC6IktvGIUQmV"]}, {"Action": 94, "Resource": "37XMtynTTO73mcQt", "SchedAction": 78, "SchedCron": "IloB0pYUc4x7yDun", "SchedRange": ["vxqt4pa9tZum0VFt", "koRr08y81Mv6Vk3o", "kyCNRXcbFtnRIt2w"]}, {"Action": 19, "Resource": "7vhnuQqdXteyydK8", "SchedAction": 44, "SchedCron": "cUWZ9hfxCod57cZh", "SchedRange": ["oiZDBoqyczxDocyL", "EkWja3J7zaHWvDJn", "FRtbOZJEL4vC5QFp"]}]}' \
    > test.out 2>&1
eval_tap $? 199 'AdminUpdateUserPermissionV3' test.out

#- 200 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y3JjdWR0Tc13FAYp' \
    --body '{"Permissions": [{"Action": 31, "Resource": "Ln5dH0owsnWGoPvw", "SchedAction": 33, "SchedCron": "UYZEGVAEAAufBadk", "SchedRange": ["oGJn5uIMRfvFkSes", "5VvZkMJhZbcLYqJv", "A6zRmmdZEkYPhVeb"]}, {"Action": 32, "Resource": "xTgX8KIT0HjcTepD", "SchedAction": 0, "SchedCron": "8RMQqk5x1PB3TmIH", "SchedRange": ["qLwuccOigjILqUck", "cQC3f2jqhScxZ4kI", "iKKT3zcfX3tkYt0a"]}, {"Action": 92, "Resource": "8wvfhbbldOTErtSF", "SchedAction": 34, "SchedCron": "Hhl8tQfB4Hiov7WV", "SchedRange": ["F0ooYiQqHxg5nMO1", "xRxP3sjHP7LdOEqI", "ygPxatuBNdaIivOc"]}]}' \
    > test.out 2>&1
eval_tap $? 200 'AdminAddUserPermissionsV3' test.out

#- 201 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xcEV8VjhnXoQx7hj' \
    --body '[{"Action": 43, "Resource": "tlCvPkIzk9n6gK0K"}, {"Action": 80, "Resource": "LApDy5CwN2oonhtc"}, {"Action": 12, "Resource": "Z6Xzf3bi7qk7q2sJ"}]' \
    > test.out 2>&1
eval_tap $? 201 'AdminDeleteUserPermissionBulkV3' test.out

#- 202 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '32' \
    --namespace $AB_NAMESPACE \
    --resource 'jwPJ2JcNCkq7zk3r' \
    --userId 'SnRJiMy7gWrNhBhG' \
    > test.out 2>&1
eval_tap $? 202 'AdminDeleteUserPermissionV3' test.out

#- 203 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yQVCkKerOrCmWlHx' \
    --after 'nGBxdNzzCzvq4B1S' \
    --before 'rVLL14Hak9D7gFpo' \
    --limit '19' \
    --platformId 'GY1lCLK0SsqJ84TD' \
    --targetNamespace '7O9lQjxbgjy704D1' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetUserPlatformAccountsV3' test.out

#- 204 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SlpZjD4KaZBFUdQi' \
    --status 'UFPP9YpfEkaeNhWo' \
    > test.out 2>&1
eval_tap $? 204 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 205 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'aNMvj4Q9lEdBVNKH' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetListJusticePlatformAccounts' test.out

#- 206 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'AdcMUaNVl3SKgVTB' \
    --userId 'RqYFVJPAHmRIv1YE' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 206 'AdminGetUserMapping' test.out

#- 207 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'fPRIFK2kIrjXP2Z7' \
    --userId '3nFdYBSxBTthDvAh' \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateJusticeUser' test.out

#- 208 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'peQGfARxVgTvPzDw' \
    --skipConflict 'true' \
    --body '{"platformId": "2TbElsuB437pCHwe", "platformUserId": "jfDHaTtyYgDcfltv"}' \
    > test.out 2>&1
eval_tap $? 208 'AdminLinkPlatformAccount' test.out

#- 209 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Uz4oQOyQV1YRftI3' \
    --platformId '6ouHL0Tx7GBbVQL1' \
    > test.out 2>&1
eval_tap $? 209 'AdminGetUserLinkHistoriesV3' test.out

#- 210 AdminPlatformUnlinkV3
eval_tap 0 210 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 211 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'scDHgnbFTzb3LODE' \
    --userId 'CpdYwXboJYUJ0lQb' \
    > test.out 2>&1
eval_tap $? 211 'AdminPlatformUnlinkAllV3' test.out

#- 212 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9RxuLENlh5Qw1keq' \
    --userId '310Oa3etN6fNpt4V' \
    --ticket 'BdY4l5jrxW56hANE' \
    > test.out 2>&1
eval_tap $? 212 'AdminPlatformLinkV3' test.out

#- 213 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 213 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 214 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SuddW6NjkYra3e19' \
    --userId 'eJga71lgrnA21jec' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 215 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dVLuKglwr0XAXnU8' \
    --userId 'V6fy9NpS38tMjELx' \
    --platformToken 'm4utwliEeKml5R7U' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 216 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'FOrYVzEidIz27904' \
    --userId 'l0Dub7elgveMU867' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserSinglePlatformAccount' test.out

#- 217 AdminDeleteUserRolesV3
eval_tap 0 217 'AdminDeleteUserRolesV3 # SKIP deprecated' test.out

#- 218 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P9doL5V9tfYnyIJq' \
    --body '[{"namespace": "ZMlzfEqraj1Fu65z", "roleId": "tTVkLrSY41ZFdHoy"}, {"namespace": "q6UBSpBO6li2NzGh", "roleId": "fQUKFdHqu1XErjWu"}, {"namespace": "YjI6SnMCVKus18Qk", "roleId": "q4CIdr4DHjPciBBc"}]' \
    > test.out 2>&1
eval_tap $? 218 'AdminSaveUserRoleV3' test.out

#- 219 AdminAddUserRoleV3
eval_tap 0 219 'AdminAddUserRoleV3 # SKIP deprecated' test.out

#- 220 AdminDeleteUserRoleV3
eval_tap 0 220 'AdminDeleteUserRoleV3 # SKIP deprecated' test.out

#- 221 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MDPBlWljnwTndsSY' \
    > test.out 2>&1
eval_tap $? 221 'AdminGetUserStateByUserIdV3' test.out

#- 222 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mLwQN56ikVJYY8rd' \
    --body '{"enabled": false, "reason": "kEYCHXZ155K4qGrr"}' \
    > test.out 2>&1
eval_tap $? 222 'AdminUpdateUserStatusV3' test.out

#- 223 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'GFc7HFF49RZyrsaE' \
    --body '{"emailAddress": "WTOoArEnaY9D4n41", "password": "TzsxbVAhQGHKYOzL"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminTrustlyUpdateUserIdentity' test.out

#- 224 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'yB8FRTAnrE0o7FVb' \
    > test.out 2>&1
eval_tap $? 224 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 225 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'C7xUnq7aZjwA0hG3' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "MnKZZEkpU5Km6J81"}' \
    > test.out 2>&1
eval_tap $? 225 'AdminUpdateClientSecretV3' test.out

#- 226 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'HggXyRiCQ0Pwxro3' \
    > test.out 2>&1
eval_tap $? 226 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 227 GetThirdPartyLoginPlatformDefaultsV3
samples/cli/sample-apps Iam getThirdPartyLoginPlatformDefaultsV3 \
    --platformId 'TKl8uYn0HtVSMfjD' \
    > test.out 2>&1
eval_tap $? 227 'GetThirdPartyLoginPlatformDefaultsV3' test.out

#- 228 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'WUTrFIXo9uQ6hOKd' \
    --before 'wLGwzKkRy3paIb3c' \
    --isWildcard 'true' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 228 'AdminGetRolesV3' test.out

#- 229 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "Qodc3UEJ4y9IO1vM", "namespace": "sKU2Rpkb7v2kk6Qm", "userId": "Koyu3LYdQ5NOCNoi"}, {"displayName": "rgJfj1tah51lHnUp", "namespace": "nHta8E0yrfPpWy1t", "userId": "4HkmpLaLwvCCB7Sc"}, {"displayName": "NU3tEzfIEU6f5lI7", "namespace": "bR66QYwfD3RO4t8B", "userId": "4w5nOFcDCTOO7RLd"}], "members": [{"displayName": "HyZYC6LEhWmgWx0t", "namespace": "KFGqDk6saphlOxbS", "userId": "PPuLtYlbJEwdeHvP"}, {"displayName": "BCOUrFDsdJmLmWNe", "namespace": "vRzHTjQ4SuP69uqG", "userId": "MQwuexXdMwtc9iKN"}, {"displayName": "0mxsZE4fVwRtuCGe", "namespace": "9oQLqzzWounuaR8v", "userId": "GpSRC6bdQerEkXRE"}], "permissions": [{"action": 36, "resource": "2XRpRpQzmOwiGhqF", "schedAction": 76, "schedCron": "HoR0kixMNGzLZDJi", "schedRange": ["Uc9qrtYlVVVzupDt", "MPXTMwkClxorAhOl", "43XxDyKfDvmAIv0N"]}, {"action": 35, "resource": "PoV0NeZm1t3hrx07", "schedAction": 81, "schedCron": "51t5ZcrNCsdFLw9i", "schedRange": ["6jBIa3aibkcWoWm1", "Pe6UgQyHmgFyDDtM", "euG0T58kMMleFXUn"]}, {"action": 77, "resource": "V4qftjdcvpvO5OPx", "schedAction": 91, "schedCron": "5hAc08xukdmkgJlC", "schedRange": ["Ig75Ubz0kTmM2skT", "9EveZsAB6XVxZteR", "Ooylv1v2XJDYQ4xM"]}], "roleName": "HBBM4DDwpY66ryMC"}' \
    > test.out 2>&1
eval_tap $? 229 'AdminCreateRoleV3' test.out

#- 230 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '1kYzWL2THjooL92n' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleV3' test.out

#- 231 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'ygkIMOAN8irzLcSU' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRoleV3' test.out

#- 232 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'RUWFtR0KmWTOslWX' \
    --body '{"deletable": true, "isWildcard": false, "roleName": "QL7v3yjiXPmZon4Q"}' \
    > test.out 2>&1
eval_tap $? 232 'AdminUpdateRoleV3' test.out

#- 233 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '9Ew0knlxf2NJKhzO' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleAdminStatusV3' test.out

#- 234 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '1PHUHdLsLNyJDdv7' \
    > test.out 2>&1
eval_tap $? 234 'AdminUpdateAdminRoleStatusV3' test.out

#- 235 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'LpNxmXU6pNAdBwSg' \
    > test.out 2>&1
eval_tap $? 235 'AdminRemoveRoleAdminV3' test.out

#- 236 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'M5LGZOev3VIWwxQ8' \
    --after 'WCZxIXQ7Lt0qtz2T' \
    --before 'ZmxEDIHyNtA7XvCg' \
    --limit '19' \
    > test.out 2>&1
eval_tap $? 236 'AdminGetRoleManagersV3' test.out

#- 237 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'WOUX2P8bQuREqRGD' \
    --body '{"managers": [{"displayName": "5eeCqCB2t1qBSDGK", "namespace": "8DQnIxFLGgkRzCH5", "userId": "MHZV4mfmadpSDkOz"}, {"displayName": "wz01Jro56RnHiMYi", "namespace": "P2LykiPM6vAZplgM", "userId": "ty2eNcUMLz6nX0hu"}, {"displayName": "4QCpPQndKJochF9j", "namespace": "jaEuUlUVDDYDnLdf", "userId": "B6dUMzHUThXPBxdK"}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRoleManagersV3' test.out

#- 238 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'v927oG6pNbQeLQLV' \
    --body '{"managers": [{"displayName": "wtliyl9pZyxdVPf3", "namespace": "WKi4GJKulXiLNp54", "userId": "7IIBo5yREbOG8hwO"}, {"displayName": "Otbarb1IWkbfW6Iv", "namespace": "1Xh1f04FFaS1aDnf", "userId": "wQ0JhLv3cl8pNiEO"}, {"displayName": "c1tFRx9nCEYa4kyp", "namespace": "coNShb6B8soTlgQL", "userId": "IKlc7zUZMA4mUpki"}]}' \
    > test.out 2>&1
eval_tap $? 238 'AdminRemoveRoleManagersV3' test.out

#- 239 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '3FtEbNEv9pWVer1X' \
    --after '17i5Y7tUr1VLoSJH' \
    --before 'HIlVFylp6XcVVC5E' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 239 'AdminGetRoleMembersV3' test.out

#- 240 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '2AHJ6qiY0yJyrD5p' \
    --body '{"members": [{"displayName": "pc58AKZxKE10nYLw", "namespace": "lSCnHssrszHPwnjS", "userId": "VFzBjTaQgCwHeNq0"}, {"displayName": "xPtF3fihwxmhqBdd", "namespace": "DqGWPWROFGTpHeDX", "userId": "G4iBFqueiDLY2uBZ"}, {"displayName": "wqOt5cucSNz4uJPB", "namespace": "MsYTH6eJgzj6B0Nl", "userId": "AirvG5i2H7kzvw9H"}]}' \
    > test.out 2>&1
eval_tap $? 240 'AdminAddRoleMembersV3' test.out

#- 241 AdminRemoveRoleMembersV3
eval_tap 0 241 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 242 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'UanRLAHOC8kJp2ta' \
    --body '{"permissions": [{"action": 57, "resource": "2iZj7DwZ7vNUuDyF", "schedAction": 94, "schedCron": "fGjKsgFJKmK97RVl", "schedRange": ["Ha8SWNCuAIk6a9i5", "sf3ewUM440xCmVXJ", "usTPnc6pbTEhZTMV"]}, {"action": 38, "resource": "YPog7jFHXZx1WjND", "schedAction": 38, "schedCron": "ohPJ9z3fdk6SXbiu", "schedRange": ["iVOOcWC3nv2ipk75", "7MojgIf4ueIz3zd8", "mZSrHQCo1phANfMC"]}, {"action": 63, "resource": "yV7Bk7aEYIyz4Zkj", "schedAction": 43, "schedCron": "zhKTXc4XUaRV4b0G", "schedRange": ["jkm99LGPyoJMAZcA", "XdLIEJrx8Cu48oUH", "QES016eTEozEtmtc"]}]}' \
    > test.out 2>&1
eval_tap $? 242 'AdminUpdateRolePermissionsV3' test.out

#- 243 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '4p0daPIrDqAWro43' \
    --body '{"permissions": [{"action": 52, "resource": "vPnmVZwcdyT2fYE3", "schedAction": 87, "schedCron": "GfgxtBmVHEBFs2om", "schedRange": ["SxeUiUGkD9xkPdie", "66WKQCKVnpfwwpVg", "N6KCKMXkq6dDVPSi"]}, {"action": 70, "resource": "ra8FJjK6WxWyWPCQ", "schedAction": 9, "schedCron": "mceBTXiDbwcHuHtt", "schedRange": ["JTumC3mC4UkId8t7", "kkqETN5T5Uq4AoBR", "4QmcVzzmuRboo71J"]}, {"action": 41, "resource": "KwJWA1cLYuZxXMwu", "schedAction": 72, "schedCron": "yvWMMiuABMcwSX55", "schedRange": ["aXSMWQ2rOfIwFVVD", "pY41dQ6p09c7rZ0p", "9yqV6cImW7ilOlEM"]}]}' \
    > test.out 2>&1
eval_tap $? 243 'AdminAddRolePermissionsV3' test.out

#- 244 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'aSDiYciDajpNqD2J' \
    --body '["8MH1qceppV29Sy9o", "LXfn8DOyMJZVn2Ox", "iuQQWoK1qfcqpucj"]' \
    > test.out 2>&1
eval_tap $? 244 'AdminDeleteRolePermissionsV3' test.out

#- 245 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '46' \
    --resource '5U64yyJOJqdotykP' \
    --roleId '1VU5O77GUmAsAnWp' \
    > test.out 2>&1
eval_tap $? 245 'AdminDeleteRolePermissionV3' test.out

#- 246 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 246 'AdminGetMyUserV3' test.out

#- 247 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'OV6jOeWprua4xg04' \
    --extendExp 'false' \
    --redirectUri '1ChbyF5UfTfsh9Yg' \
    --password 'jtWiTye6RuMK0X25' \
    --requestId 'kvc9fx3IY6i6P1Ap' \
    --userName 'wGJi1SCVzlLV9dhk' \
    > test.out 2>&1
eval_tap $? 247 'UserAuthenticationV3' test.out

#- 248 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'NMp8iRUwGbpn2Rwi' \
    --linkingToken 'X1PdkoDOjj28b73n' \
    --password 'utTkSkcPJSYdr96M' \
    --username 'th4YL2M6Az7Lp6Pp' \
    > test.out 2>&1
eval_tap $? 248 'AuthenticationWithPlatformLinkV3' test.out

#- 249 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'IyEi7sucM6qtDHRL' \
    --linkingToken 'FbB5DnAPcUpHKAYB' \
    --password 'ilSAcvJhMtNP5QDa' \
    --username 'V9KLaIXGtVt7ALZZ' \
    > test.out 2>&1
eval_tap $? 249 'AuthenticateAndLinkForwardV3' test.out

#- 250 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 250 'PublicGetSystemConfigV3' test.out

#- 251 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'G2M0L8k3ILA5hqMb' \
    --extendExp 'true' \
    --linkingToken 'Wnks03YdFN131ZRc' \
    > test.out 2>&1
eval_tap $? 251 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 252 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'zcC66h2uPn7i4mQO' \
    --state 'QG7gG0SwicuytAtQ' \
    --platformId 'XPCWOPL2nfBkhlhd' \
    > test.out 2>&1
eval_tap $? 252 'RequestOneTimeLinkingCodeV3' test.out

#- 253 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '59vlSjJgubL9wk1n' \
    > test.out 2>&1
eval_tap $? 253 'ValidateOneTimeLinkingCodeV3' test.out

#- 254 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'LwXfTJF2VP4ny81Y' \
    --isTransient 'false' \
    --clientId 'iZCwlglscm2pNQYL' \
    --oneTimeLinkCode 'N9A6Nz2jyGbPDSVD' \
    > test.out 2>&1
eval_tap $? 254 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 255 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 255 'GetCountryLocationV3' test.out

#- 256 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 256 'Logout' test.out

#- 257 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'y7VRLY8ysMr4xK26' \
    --codeChallengeMethod 'S256' \
    --clientId 'mr6LoiLken4mAgrP' \
    > test.out 2>&1
eval_tap $? 257 'RequestTokenExchangeCodeV3' test.out

#- 258 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Nyx9m3JvsU6hrP64' \
    --userId '1lm8vEvNCuA9CSGs' \
    --platformUserId 'PbybAjkKpqRRrPBq' \
    > test.out 2>&1
eval_tap $? 258 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 259 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OXTEiNRxHgAObWSs' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 259 'RevokeUserV3' test.out

#- 260 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'bXrhCP895TscU8lv' \
    --codeChallenge 'KThHEnfBlc7eQuhk' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce 'ZkR8fZ8PgFc06ug5' \
    --oneTimeLinkCode 'GWfA8isAJOHWnmZW' \
    --redirectUri 'PqbuQrXzKjOKGKWv' \
    --scope 'rw4seNQ5lkBlKZEq' \
    --state 'qmqpDDbiw7hJ6D8Q' \
    --targetAuthPage 'uKWHBFRbz0Kk3Jav' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'g2oqTghdotd9qDwj' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 260 'AuthorizeV3' test.out

#- 261 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '1ZYQX4JtJ8M53Rot' \
    > test.out 2>&1
eval_tap $? 261 'TokenIntrospectionV3' test.out

#- 262 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 262 'GetJWKSV3' test.out

#- 263 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '2DA4XKZI1PVCbEed' \
    --factor 'iTa2rWvSltp4LVwr' \
    --mfaToken '6ckxFoebp995i19x' \
    > test.out 2>&1
eval_tap $? 263 'SendMFAAuthenticationCode' test.out

#- 264 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'Fq9CBNYxnAnyy2yw' \
    --mfaToken '1OZQimRa12DmPliX' \
    > test.out 2>&1
eval_tap $? 264 'Change2faMethod' test.out

#- 265 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'AeQaQTFEXS9px95v' \
    --factor 'beMMIrd2Sd6GNOLZ' \
    --mfaToken '7NylF5JMLW1AgVcN' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 265 'Verify2faCode' test.out

#- 266 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'Mpyu1SozCXTZNTyM' \
    --factors '9X2ziXhdrdAF50Zm' \
    --rememberDevice 'true' \
    --clientId 'Ijzl6GjOAaHiePMx' \
    --code 'GN3l2kHFMSqm4dfe' \
    --factor 'T3lWCe1hu32DM1rV' \
    --mfaToken '34p5LUfHWFv3UKMJ' \
    > test.out 2>&1
eval_tap $? 266 'Verify2faCodeForward' test.out

#- 267 OAuthDynamicClientRegisterWithNamespaceV3
samples/cli/sample-apps Iam oAuthDynamicClientRegisterWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --body '{"client_name": "MTkHQNDcWmDKIySM", "client_uri": "6la1Ssb1QajsbSbI", "grant_types": ["o4ZfHtsQZ90tpfYp", "X5NqvrlGwdFSvfVC", "1sutvqXS7uhi4g5X"], "redirect_uris": ["OUeNPY3sx2YpAu6x", "sLRIezlLbkwfB0yA", "68MlhC4AQpxkxdb4"], "response_types": ["YOYepOq0Ns7F17mk", "mCSwunpaUsn5B8KJ", "K0cuu1ieRL2AWqRW"], "scopes": ["5DMDn7OInSByExmP", "Bh7AWzkHGcuPZPBF", "vqnTden6Ixx6D6yb"], "token_endpoint_auth_method": "wgdEdiI5NKzXVstc"}' \
    > test.out 2>&1
eval_tap $? 267 'OAuthDynamicClientRegisterWithNamespaceV3' test.out

#- 268 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7VhRluNSwOcZ2aPd' \
    --userId 'Ni0zglbhgwVXn3cE' \
    > test.out 2>&1
eval_tap $? 268 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 269 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'MPzFnAbEee8sNVZN' \
    --clientId '6XEQGmfp9ZEbsZj0' \
    --redirectUri 'ivgZ3CjLhIRgt411' \
    --requestId 'F49ur4FfY2ldmtqn' \
    > test.out 2>&1
eval_tap $? 269 'AuthCodeRequestV3' test.out

#- 270 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'TAC9g9m9FDXur0fJ' \
    --additionalData 'MzhfWiHSVLiRdL15' \
    --clientId 'cx7re2fjcHjg3TcJ' \
    --createHeadless 'true' \
    --deviceId 'Ezx9GlQTzqimIls4' \
    --macAddress 'IlA09IQjA9ZeLF30' \
    --platformToken 'PRNBvgdLqjrfDbmv' \
    --serviceLabel '0.8859116784859278' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenGrantV3' test.out

#- 271 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 271 'GetRevocationListV3' test.out

#- 272 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'QLQP8mrI3hxKbgLs' \
    > test.out 2>&1
eval_tap $? 272 'TokenRevocationV3' test.out

#- 273 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform '1FP0rETRRNazQmwu' \
    --simultaneousTicket 'IASZhfXKiQ5pEuc3' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'PuliKFKJOlJtV05z' \
    > test.out 2>&1
eval_tap $? 273 'SimultaneousLoginV3' test.out

#- 274 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'ECow45wN09KCTPon' \
    --clientId 'p7rCWXS5aim2pvAD' \
    --clientSecret 'KCz3QeYxLEcjJMD9' \
    --code '6seqBw5tKvojgdbP' \
    --codeVerifier 'aBkByZbJ4Frp86DM' \
    --extendNamespace '3OmNc4DjuUSWIx4S' \
    --extendExp 'false' \
    --password 'RkxgAfCdvG91IGiI' \
    --redirectUri 'HeDbv5LtrWkGGO6W' \
    --refreshToken 'vZpjv9uIFBfaJEmq' \
    --scope 'BD2U7m0CNnIon6jZ' \
    --username 'aMDO269vs4l6ZIsG' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 274 'TokenGrantV3' test.out

#- 275 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token '2akC7xBgufIrrluo' \
    > test.out 2>&1
eval_tap $? 275 'VerifyTokenV3' test.out

#- 276 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'NNFoRw8lkbNYYDWJ' \
    --code 'tlXp1LgwV36QtRFP' \
    --error 'SCAfqldkbo7J4Pgq' \
    --openidAssocHandle 'e5msyTOF05ekvTDD' \
    --openidClaimedId 'ob0DqbqFSlk0MCJA' \
    --openidIdentity 'xV2x1HslULVEb4tq' \
    --openidMode 'kWgg9bwvKuLE2wXI' \
    --openidNs 'Qzlf7G2VuHjECMTt' \
    --openidOpEndpoint 'w5rMHSD3uM8DR9vx' \
    --openidResponseNonce 'hoPX1aRRZae0bSRR' \
    --openidReturnTo '2PqocNOjPGvBK7jy' \
    --openidSig 'leb7redWexZ45JnM' \
    --openidSigned 'LmTDbaHafUMohNOO' \
    --state '8d4mQP9PJXKS3zEd' \
    > test.out 2>&1
eval_tap $? 276 'PlatformAuthenticationV3' test.out

#- 277 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'voVJAiAa7naTwCoI' \
    --platformToken 'sHc1h2CXBKAY0zQ0' \
    > test.out 2>&1
eval_tap $? 277 'PlatformTokenRefreshV3' test.out

#- 278 PublicGetInputValidations
eval_tap 0 278 'PublicGetInputValidations # SKIP deprecated' test.out

#- 279 PublicGetInputValidationByField
eval_tap 0 279 'PublicGetInputValidationByField # SKIP deprecated' test.out

#- 280 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'Ci2r39fgLs50Eruz' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'PublicGetCountryAgeRestrictionV3' test.out

#- 281 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'mEHndhGVlF9OW7bM' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 281 'PublicGetConfigValueV3' test.out

#- 282 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 282 'PublicGetCountryListV3' test.out

#- 283 PublicGetNamespaceScopedInputValidations
samples/cli/sample-apps Iam publicGetNamespaceScopedInputValidations \
    --namespace $AB_NAMESPACE \
    --defaultOnEmpty 'true' \
    --languageCode 'pFdyj3Od3qQkrmb9' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetNamespaceScopedInputValidations' test.out

#- 284 PublicGetNamespaceScopedInputValidationByField
samples/cli/sample-apps Iam publicGetNamespaceScopedInputValidationByField \
    --field 'mSztaJyLy0jIw69z' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 284 'PublicGetNamespaceScopedInputValidationByField' test.out

#- 285 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 285 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 286 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'tNKQQqTs88Bm1SfX' \
    > test.out 2>&1
eval_tap $? 286 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 287 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 287 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 288 PublicGetUserByPlatformUserIDV3
eval_tap 0 288 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 289 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetProfileUpdateStrategyV3' test.out

#- 290 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'S6vmAQzUx1PEQnP2' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetAsyncStatus' test.out

#- 291 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'f33B1LFLjwIrwpde' \
    --limit '65' \
    --offset '18' \
    --platformBy 'iDjLXMAPCmNkRY6q' \
    --platformId 'IYjDTEt9vJEjhef2' \
    --query 'uVFDyLMikncCAx2z' \
    > test.out 2>&1
eval_tap $? 291 'PublicSearchUserV3' test.out

#- 292 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "l64oeTtOzEMperfc", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "IWy69ic6egt5tKm0", "policyId": "fcLQL3l9iCIeylp9", "policyVersionId": "OltfKswCowifvTC9"}, {"isAccepted": false, "localizedPolicyVersionId": "t3IJAwmslNOnhoGv", "policyId": "ve0yPeDtAYK6GSa0", "policyVersionId": "PieXT6PctPF9D6rc"}, {"isAccepted": false, "localizedPolicyVersionId": "cugChlO0GxvB7MqN", "policyId": "ipLdQBTYnbfLgEWJ", "policyVersionId": "0AQdJiTOwG1Tj53t"}], "authType": "IldGn0WtGM2XZQnB", "code": "c5WRSuBDZvy1y2Ea", "country": "My6TYaMdJaH5OsrD", "dateOfBirth": "U9KqyqHXZSZhFcMR", "displayName": "SOIVqI6sPHkpwJEd", "emailAddress": "iblKTuRPohYIlbM5", "password": "pO2rJU2xjrzhiA5U", "reachMinimumAge": false, "uniqueDisplayName": "4rFJHgGSLCdyeAbe"}' \
    > test.out 2>&1
eval_tap $? 292 'PublicCreateUserV3' test.out

#- 293 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'Ah8vUu3OUcDVq8RX' \
    --query 'XRmLkvLQtiwO53ho' \
    > test.out 2>&1
eval_tap $? 293 'CheckUserAvailability' test.out

#- 294 PublicBulkGetUsers
eval_tap 0 294 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 295 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "71rtZZHtulT01WGR", "languageTag": "MH1vBpAvQzRIa5XX"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicSendRegistrationCode' test.out

#- 296 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JpbjMYOBCjgUtO4a", "emailAddress": "4srj2KZrlJdP8jb3"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyRegistrationCode' test.out

#- 297 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "KHeVUkQd05E4sqlT", "languageTag": "4AfwTUs9hsz7vxSq"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicForgotPasswordV3' test.out

#- 298 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "XU9dQjPe7C1IZonf", "password": "ikLbW6ECQOuHdCHl", "uniqueDisplayName": "FARfQGcrCQiXBs12", "username": "GZ89Fzy6W76HKHqT"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicValidateUserInput' test.out

#- 299 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'u2Co3VaAZha5tZ5L' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 299 'GetAdminInvitationV3' test.out

#- 300 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'NsPnvUKnJXjLtOUV' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "j5gN3fF7czOkll7C", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "b4XNVa8rfB9WUE14", "policyId": "fSMupfhH95538Fm5", "policyVersionId": "6fevNhipYSSxXB22"}, {"isAccepted": true, "localizedPolicyVersionId": "vS23ITMZiRSy7ZCl", "policyId": "XSNBp1nVCXokhotb", "policyVersionId": "5hP7IcZqCIUqi1Kr"}, {"isAccepted": true, "localizedPolicyVersionId": "EDYdGgLpmrU29sCr", "policyId": "Ifbk3suTogSeV7s0", "policyVersionId": "C4aEaZIytCqQf0DV"}], "authType": "kfJMI4eKOi3c9Unj", "code": "Ex3T6fKA8APXXIIn", "country": "mmQKpI0BNO6E5UbI", "dateOfBirth": "UHbehjnr6gGYWqZF", "displayName": "RPtTS0zqVLQwomBs", "emailAddress": "yly5LXqIHV4QYcAS", "password": "D1ifkzLUlLBaA6v5", "reachMinimumAge": true, "uniqueDisplayName": "NFqKkBtVeE7R1xkL"}' \
    > test.out 2>&1
eval_tap $? 300 'CreateUserFromInvitationV3' test.out

#- 301 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "sQMQjTZmIYpeIyTZ", "country": "OHdywMDnVVBt9O6t", "dateOfBirth": "NIT5ARZuV5W20U0y", "displayName": "xjvri5fbjUbF73ID", "languageTag": "YLa8RIh6OYWmw38o", "uniqueDisplayName": "wpNVgKhKEDoObUVL", "userName": "e15PoXbtGbN101TM"}' \
    > test.out 2>&1
eval_tap $? 301 'UpdateUserV3' test.out

#- 302 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "wBCTi1i4MsiFQDal", "country": "Ja6lkPmwpbZJenzT", "dateOfBirth": "hCKc4g28CID7fVeG", "displayName": "Zmx2EnZT8dXwsg79", "languageTag": "OUUZeVMN0mKhwbYa", "uniqueDisplayName": "LAWWdO66GAZuLQN4", "userName": "pX2jq5FVhTkG7nJU"}' \
    > test.out 2>&1
eval_tap $? 302 'PublicPartialUpdateUserV3' test.out

#- 303 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "Fqky3muVav0Wdnpz", "emailAddress": "P6XgKfono6LIh72z", "languageTag": "XlRxao4UuY4EafOz", "upgradeToken": "ybE4hUY8gc1vXOiE"}' \
    > test.out 2>&1
eval_tap $? 303 'PublicSendVerificationCodeV3' test.out

#- 304 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0t8xpAQI7ihNoWSI", "contactType": "kNvglvKoykJCiHHq", "languageTag": "Xwa5Ekw6YLsINqez", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 304 'PublicUserVerificationV3' test.out

#- 305 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "0VnRbTb0VdBSbnBg", "country": "xeFP7YkMpa9BXPBJ", "dateOfBirth": "C61hHkLBXUxqr7aZ", "displayName": "NKX9h26I0VukhAHy", "emailAddress": "UpxTrAJZ6ArCF1VP", "password": "Hc1FgfFQqH4zU3GP", "uniqueDisplayName": "CumHg5WRTpTJ36WD", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 305 'PublicUpgradeHeadlessAccountV3' test.out

#- 306 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "k5hCVsFhNtA1VZ5L", "password": "t56KI5V1jggnjHrq"}' \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyHeadlessAccountV3' test.out

#- 307 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "NBAJBUUBO3cl2YMZ", "mfaToken": "VQFfAO7934tDxe73", "newPassword": "LfIw9jwasEYyKhXS", "oldPassword": "ff0okdG0gJRMzcsd"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicUpdatePasswordV3' test.out

#- 308 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '7Za96frISHKyjZzt' \
    > test.out 2>&1
eval_tap $? 308 'PublicCreateJusticeUser' test.out

#- 309 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gz3eoPy7SVqkVocR' \
    --redirectUri '8JstHrA7NlOp5Cfl' \
    --ticket '9ojk17ikExUxW5vr' \
    > test.out 2>&1
eval_tap $? 309 'PublicPlatformLinkV3' test.out

#- 310 PublicPlatformUnlinkV3
eval_tap 0 310 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 311 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Oyfc6kQjty8sIFy2' \
    > test.out 2>&1
eval_tap $? 311 'PublicPlatformUnlinkAllV3' test.out

#- 312 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'PksO0Ds8xNdbhYOL' \
    --ticket 'FLShgA1WKcjqfFJy' \
    > test.out 2>&1
eval_tap $? 312 'PublicForcePlatformLinkV3' test.out

#- 313 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'Cdj4giynCBZ1FIto' \
    --clientId '0PHz7sijJqM4WIFz' \
    --redirectUri 'qQzqqaLBManDQWVZ' \
    > test.out 2>&1
eval_tap $? 313 'PublicWebLinkPlatform' test.out

#- 314 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'MyOOTg9Sez4Ex1B0' \
    --code 'TSSMAQzVEsgdWkIL' \
    --state 'JGLgOWq25NcS0vxF' \
    > test.out 2>&1
eval_tap $? 314 'PublicWebLinkPlatformEstablish' test.out

#- 315 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yk74eWxs1arnGVkR' \
    --code 'lYm2QmMHQJHEYZem' \
    --state 'LRj7dBKEqS6rTco6' \
    > test.out 2>&1
eval_tap $? 315 'PublicProcessWebLinkPlatformV3' test.out

#- 316 PublicWebReauthPlatform
samples/cli/sample-apps Iam publicWebReauthPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'EzNa8D3mwz0rwkcQ' \
    --clientId 'T5z81MBglswk5Hxs' \
    --redirectUri 'xXblnUgx1vNK14TZ' \
    --operation 'LINK' \
    > test.out 2>&1
eval_tap $? 316 'PublicWebReauthPlatform' test.out

#- 317 PublicWebReauthPlatformEstablish
samples/cli/sample-apps Iam publicWebReauthPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Sc2IjQhKMKExPsb3' \
    --code 'GmeaY66G46qyXORI' \
    --state 'WdPyYqy1gdFs5enr' \
    > test.out 2>&1
eval_tap $? 317 'PublicWebReauthPlatformEstablish' test.out

#- 318 PublicWebReauthPlatformProcess
samples/cli/sample-apps Iam publicWebReauthPlatformProcess \
    --namespace $AB_NAMESPACE \
    --platformId 'y5zEYQk5EJ5NPm3c' \
    --code 'Yy7hlkWhVDmfSqfV' \
    --state '6wWmjZz02Bg0ZKgS' \
    > test.out 2>&1
eval_tap $? 318 'PublicWebReauthPlatformProcess' test.out

#- 319 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "kTW7pkUU7PMwXip8", "userIds": ["ydpiLcRopSaAaUUy", "P9BiGeBhO66eqfyv", "BAMf6WPZtpT21gxG"]}' \
    > test.out 2>&1
eval_tap $? 319 'PublicGetUsersPlatformInfosV3' test.out

#- 320 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "x6UR7KhqLOPEH4Bv", "code": "ScPdtRSF2YNlfAYI", "emailAddress": "ZUCkigkgQjrGZDen", "languageTag": "LVxXF6p6c0tTdog2", "newPassword": "CqR8PXVkbr0fuC9M"}' \
    > test.out 2>&1
eval_tap $? 320 'ResetPasswordV3' test.out

#- 321 PublicGetUserByUserIdV3
eval_tap 0 321 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 322 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'caGlhh23g4Pvi3Ly' \
    --activeOnly 'false' \
    --limit '32' \
    --offset '70' \
    > test.out 2>&1
eval_tap $? 322 'PublicGetUserBanHistoryV3' test.out

#- 323 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rRroW1XzhcSCU1VE' \
    > test.out 2>&1
eval_tap $? 323 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 324 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kRwxEDkCaKfwKBbA' \
    > test.out 2>&1
eval_tap $? 324 'PublicGetUserInformationV3' test.out

#- 325 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nGQmjZ2NEajgCVTu' \
    --after '0.7024581516631524' \
    --before '0.15800803189953838' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetUserLoginHistoriesV3' test.out

#- 326 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bcy57qgMpaaMkSKb' \
    --after 'Oh0KTAdWA9PnaMix' \
    --before 'z7tcUypblnKYJ3dn' \
    --limit '8' \
    --platformId '5w91vVxW3ib7xybZ' \
    > test.out 2>&1
eval_tap $? 326 'PublicGetUserPlatformAccountsV3' test.out

#- 327 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'H1eUple6msFyP6Q0' \
    > test.out 2>&1
eval_tap $? 327 'PublicListJusticePlatformAccountsV3' test.out

#- 328 PublicLinkPlatformAccount
eval_tap 0 328 'PublicLinkPlatformAccount # SKIP deprecated' test.out

#- 329 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'fxJRNmXeajHc6iGb' \
    --body '{"chosenNamespaces": ["8g5HfNm0p3N3Eb37", "Vq5sZGssg39NyCgY", "vQiSEkO4Nz3lYqHa"], "requestId": "M2KdcbBT1737bWM7"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicForceLinkPlatformWithProgression' test.out

#- 330 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aAGUrALHPyOqm2NU' \
    > test.out 2>&1
eval_tap $? 330 'PublicGetPublisherUserV3' test.out

#- 331 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jYhhh8LaqIFcws52' \
    --password 'JZFeY3KFtyvsxQ80' \
    > test.out 2>&1
eval_tap $? 331 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 332 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'LfcRy3FvxDBRnoNF' \
    --before 'ZygF3UVwGy57JntR' \
    --isWildcard 'false' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 332 'PublicGetRolesV3' test.out

#- 333 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'kDW4qt4QJRW4GQP4' \
    > test.out 2>&1
eval_tap $? 333 'PublicGetRoleV3' test.out

#- 334 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "26UPwcwSxN75s0nc", "emailAddress": "U99qCgsba7zeddEP", "languageTag": "Zk1uYjY9rhbgaDg5"}' \
    > test.out 2>&1
eval_tap $? 334 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 335 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 335 'PublicGetMyUserV3' test.out

#- 336 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "cN7NbkWz6sFkR7W6", "emailAddress": "7VHIg8GEifKerTkw", "languageTag": "osZBST5PIRqkjM6C", "upgradeToken": "RYVBj5Yp4TbzR96q"}' \
    > test.out 2>&1
eval_tap $? 336 'PublicSendCodeForwardV3' test.out

#- 337 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'owEeC9b2LWeJnlbY' \
    > test.out 2>&1
eval_tap $? 337 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 338 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["9ghc8lN3KvaYbdzh", "e1AkHPEKjH74ODE6", "AMmhcgFB9bTg06mL"], "oneTimeLinkCode": "gpotYCXeh6EctUOO"}' \
    > test.out 2>&1
eval_tap $? 338 'LinkHeadlessAccountToMyAccountV3' test.out

#- 339 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'nE2SAT7K8PX8i8lS' \
    > test.out 2>&1
eval_tap $? 339 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 340 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 340 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 341 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "8MFYDqIrcb2bFVyY"}' \
    > test.out 2>&1
eval_tap $? 341 'PublicSendVerificationLinkV3' test.out

#- 342 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 342 'PublicGetOpenidUserInfoV3' test.out

#- 343 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'eY0j6UOEIwLWrA6e' \
    > test.out 2>&1
eval_tap $? 343 'PublicVerifyUserByLinkV3' test.out

#- 344 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'gkzaj7cNQF5gEYXl' \
    --code 'jvJwj7G8gGgTvIl6' \
    --error 'gOaOMGBcwEdhtwmq' \
    --state '3vjMHGEaCJJ4Z0qK' \
    > test.out 2>&1
eval_tap $? 344 'PlatformAuthenticateSAMLV3Handler' test.out

#- 345 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '5mQlJudamJ1iiQhk' \
    --payload 'Otp5Im8XuemBEhPM' \
    > test.out 2>&1
eval_tap $? 345 'LoginSSOClient' test.out

#- 346 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'y5pNyPBVBLGQ7zoE' \
    > test.out 2>&1
eval_tap $? 346 'LogoutSSOClient' test.out

#- 347 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'qjFAs9CvWxS93ryO' \
    --code 'EGiNIAoR8c09CphM' \
    > test.out 2>&1
eval_tap $? 347 'RequestTargetTokenResponseV3' test.out

#- 348 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'CN2b57u6FireI7yb' \
    --upgradeSuccessToken '38iOm6I7J09ZPlCn' \
    > test.out 2>&1
eval_tap $? 348 'UpgradeAndAuthenticateForwardV3' test.out

#- 349 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '76' \
    --namespace '8rHwKyYkU7WX3yA8' \
    --offset '0' \
    > test.out 2>&1
eval_tap $? 349 'AdminListInvitationHistoriesV4' test.out

#- 350 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ePvMoUfyrcmNSuro' \
    > test.out 2>&1
eval_tap $? 350 'AdminGetDevicesByUserV4' test.out

#- 351 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '1FoxFCoOqjzV32g9' \
    --endDate '9it8baLdYZjht0NS' \
    --limit '56' \
    --offset '2' \
    --startDate 'd9GtDtQNl6Iesipd' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetBannedDevicesV4' test.out

#- 352 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ttsrXD1RslNzEafr' \
    > test.out 2>&1
eval_tap $? 352 'AdminGetUserDeviceBansV4' test.out

#- 353 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "s6T9hyeA11fzGmU8", "deviceId": "lAGfF49sQD0YPLuY", "deviceType": "6npV1vSLRVFnvOMQ", "enabled": true, "endDate": "Mst5M8JDBUCoe9ef", "ext": {"DubjuZdZ1NGIWP9S": {}, "hpGJsgJ4ht0okIFp": {}, "44FogT2zkHHdCjG8": {}}, "reason": "o6oLLT4Ri3w4tezx"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminBanDeviceV4' test.out

#- 354 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '3IvJhStpYfnqKR1R' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 354 'AdminGetDeviceBanV4' test.out

#- 355 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'nr3QbW2JdIK2L3oe' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 355 'AdminUpdateDeviceBanV4' test.out

#- 356 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'qC1Jd2n6TaFGKcTa' \
    --startDate 'xvpiLVkmo0AJvEmI' \
    --deviceType 'lbxX3A4nD0EYWvwN' \
    > test.out 2>&1
eval_tap $? 356 'AdminGenerateReportV4' test.out

#- 357 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 357 'AdminGetDeviceTypesV4' test.out

#- 358 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'jSrUCfAfjqPx7Ajp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 358 'AdminGetDeviceBansV4' test.out

#- 359 AdminDecryptDeviceV4
eval_tap 0 359 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 360 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'l1HbnazGFwxKDWAI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 360 'AdminUnbanDeviceV4' test.out

#- 361 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'yyCllhby4F0yof6I' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 361 'AdminGetUsersByDeviceV4' test.out

#- 362 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 362 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 363 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '11' \
    --offset '49' \
    > test.out 2>&1
eval_tap $? 363 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 364 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "M7JeF9kskQRShNSs", "policyId": "Kge7SR6Dcg36Ch9z", "policyVersionId": "fzr9Mk6HQLMxBgRt"}, {"isAccepted": false, "localizedPolicyVersionId": "UXWd2YK2HA4efo8E", "policyId": "Qu2hssRIIp2ZlkaI", "policyVersionId": "zARwWcSu5ALBCLIf"}, {"isAccepted": false, "localizedPolicyVersionId": "wWJK4gLlPzO3aB9w", "policyId": "QPAYyeCxYvvtIErH", "policyVersionId": "vozRJiTn0qi6IlOz"}], "count": 44, "userInfo": {"country": "y1AYt9sq6oIYoSJM"}}' \
    > test.out 2>&1
eval_tap $? 364 'AdminCreateTestUsersV4' test.out

#- 365 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wJVLWibtSRm0AXDE", "policyId": "IbvycmTPrigQMf5N", "policyVersionId": "T29G41iUtUwRs85t"}, {"isAccepted": false, "localizedPolicyVersionId": "UCxsr3ikPSQ84yWW", "policyId": "Yc9B1Eep1PBfRY3S", "policyVersionId": "6VkCA2NFE5aFTmvk"}, {"isAccepted": true, "localizedPolicyVersionId": "djLgHu5kiW3XkCAk", "policyId": "xpkKkWhKMCUpyOZ0", "policyVersionId": "qpPcmfrBi91Ujlo1"}], "authType": "EMAILPASSWD", "code": "2MW0VKZW2RsJMMV3", "country": "5t8C1MvOK4p16nga", "dateOfBirth": "GCKbZT8b3lyPNxQj", "displayName": "XuIzJKRLvH0PHSCt", "emailAddress": "eQD9intvZlDIpla6", "password": "zL7HJbT5VRQP7nmA", "passwordMD5Sum": "kmktXpse4wxBaoFc", "reachMinimumAge": true, "uniqueDisplayName": "7vGqNBzY3MqmB82R", "username": "i3CnVajmQERS7zpk"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateUserV4' test.out

#- 366 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["jnFDi7cA50rqcxHi", "UgOV7ki5n1UX9XAG", "FYcu4rbBaX4x90WV"]}' \
    > test.out 2>&1
eval_tap $? 366 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 367 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bpBG5fgi4TYf3rJg", "OOw0LPPFjOKaL14N", "I9ydg6CSFH0tdLSQ"]}' \
    > test.out 2>&1
eval_tap $? 367 'AdminBulkCheckValidUserIDV4' test.out

#- 368 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'rH7BUl4gYn5OPqbP' \
    --body '{"avatarUrl": "IQfFA35qs9SKbcg3", "country": "pbbInW0mI80PAjBL", "dateOfBirth": "oT6nmP3IEbS75s4L", "displayName": "AT5Lv2Q7IOVmRlo1", "languageTag": "bM33UkEUS7bA03rU", "skipLoginQueue": true, "tags": ["YUKSeEB012R2t4ln", "n6qXuRGx5kdjkheJ", "zKCVKAnbAX24RNZK"], "uniqueDisplayName": "mB4XpozX24i7dN3S", "userName": "eX3nzPTH8sdyrGjV"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateUserV4' test.out

#- 369 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qcv1EX6Oj2rIzBMY' \
    --body '{"code": "K0p4HFPFIFsH6qsD", "emailAddress": "iWNpbctbwnmOnW9N"}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateUserEmailAddressV4' test.out

#- 370 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'NPdxFP6RXvtIdJzf' \
    --body '{"factor": "lwmKWqPW6sz5GMZH", "mfaToken": "adzmDraHIS35h9hG"}' \
    > test.out 2>&1
eval_tap $? 370 'AdminDisableUserMFAV4' test.out

#- 371 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lLCyTMIclkC2ps59' \
    > test.out 2>&1
eval_tap $? 371 'AdminGetUserMFAStatusV4' test.out

#- 372 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DgsVjPuxLnM4U3HB' \
    > test.out 2>&1
eval_tap $? 372 'AdminListUserRolesV4' test.out

#- 373 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'qEqGTu9M369R2udx' \
    --body '{"assignedNamespaces": ["AAAhYifUYzyA7oRF", "naR1YutdmdlKWsM4", "T3XANx3kEHFThoXR"], "roleId": "pNJFvtIoJSxI0eWJ"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminUpdateUserRoleV4' test.out

#- 374 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Phk6AmV6mieHoqwB' \
    --body '{"assignedNamespaces": ["NO83KZESzbekH9SU", "HGN4RYd9pAiNXGvb", "8sXwTYnJTUMITwSz"], "roleId": "HxCxwXGgYi2ZOQmr"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminAddUserRoleV4' test.out

#- 375 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '6AAaPKR1Nj7KRnjQ' \
    --body '{"assignedNamespaces": ["QOAwTnSBGZb8hdUi", "3X3xlpJL9UaCT1iX", "Hhb4I96xQmaZXKBw"], "roleId": "xnsBnt4EUoqJ0Ppg"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminRemoveUserRoleV4' test.out

#- 376 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '92' \
    --offset '63' \
    > test.out 2>&1
eval_tap $? 376 'AdminGetRolesV4' test.out

#- 377 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "SkVN1Eh3Epvc4IBo"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminCreateRoleV4' test.out

#- 378 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'DcZgdA7uz7oY1kmp' \
    > test.out 2>&1
eval_tap $? 378 'AdminGetRoleV4' test.out

#- 379 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'znmpGTEq9OVC3HaF' \
    > test.out 2>&1
eval_tap $? 379 'AdminDeleteRoleV4' test.out

#- 380 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'SCk9iPEgo10PGnRx' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "fjjSOpKYGQAgtH0E"}' \
    > test.out 2>&1
eval_tap $? 380 'AdminUpdateRoleV4' test.out

#- 381 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'JHA7yyDTcxnwwEjX' \
    --body '{"permissions": [{"action": 53, "resource": "KM5Dac8baXVkU0ij", "schedAction": 44, "schedCron": "CrA7oAkO43z4JWNm", "schedRange": ["4BoM27WdcGngdNEk", "4NKyx6NPVjjAVMkO", "3QH6UNeET9MRxEZn"]}, {"action": 68, "resource": "p3Mvdsxt9F22TfKi", "schedAction": 19, "schedCron": "GRfiijxDmBt0CoIv", "schedRange": ["g0auHiGHpgABU67L", "eDJm6J51otUiEErJ", "aU50qG64NiNxS0Oa"]}, {"action": 44, "resource": "GnGgBFgv7syLgUSo", "schedAction": 38, "schedCron": "2aJS4wjpfjmce9Dm", "schedRange": ["YWhcQN1uNxDsnb7c", "dJs4WTyZ1j3KwSnT", "D0T3cwidkkru3dLV"]}]}' \
    > test.out 2>&1
eval_tap $? 381 'AdminUpdateRolePermissionsV4' test.out

#- 382 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '5m4NHeW7nnNDjJSa' \
    --body '{"permissions": [{"action": 2, "resource": "bBgoQPteehDpIaRG", "schedAction": 60, "schedCron": "U4H3V8gpAdJC8t8Y", "schedRange": ["xvTZb3MoZpkOH8XJ", "PBnYBrJgwA7zkwiT", "yZCALxYNoO1osnai"]}, {"action": 86, "resource": "pspBEnGOmcPxsnOU", "schedAction": 96, "schedCron": "gAMu0tFh9lL8sBvo", "schedRange": ["iZHsGKd8FiIC8uI7", "oH0ZpqFEsYLLpYvQ", "3Bzdf3gZPmDu3RBu"]}, {"action": 76, "resource": "Ck1KpC62VTkGP9WX", "schedAction": 7, "schedCron": "2fLT5LONT4dzu4K2", "schedRange": ["yPfuZICDiWSFm05c", "BiFY3rvQgCBpsNoN", "QFQV6sVnw1jOPntz"]}]}' \
    > test.out 2>&1
eval_tap $? 382 'AdminAddRolePermissionsV4' test.out

#- 383 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'fZjC5UzK5ZGLSUhe' \
    --body '["7BfzdmqUEO7flJpk", "2qipg8dsLVioFscd", "J7Zyk02dKP8QTBgb"]' \
    > test.out 2>&1
eval_tap $? 383 'AdminDeleteRolePermissionsV4' test.out

#- 384 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'UjbHqLtsGLEpNIdN' \
    --after 'WIZlZjQm3mOvz347' \
    --before 'EosOp6lparo7onzq' \
    --limit '69' \
    > test.out 2>&1
eval_tap $? 384 'AdminListAssignedUsersV4' test.out

#- 385 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'tVtuc7YOSDzC8RTC' \
    --body '{"assignedNamespaces": ["sjrzZh1QG6x2b5UI", "TVrwPEOKkTRDUY1m", "aTjSPg7hjKUJBa0p"], "namespace": "svLjpTeFvHmLJJrh", "userId": "FTjj3WGhBC3YTVyp"}' \
    > test.out 2>&1
eval_tap $? 385 'AdminAssignUserToRoleV4' test.out

#- 386 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '6I8hifIYmQDslfDj' \
    --body '{"namespace": "KLCgusKOHMDyuWoc", "userId": "K0eGUsYKFHsB5kfp"}' \
    > test.out 2>&1
eval_tap $? 386 'AdminRevokeUserFromRoleV4' test.out

#- 387 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["KXQUPHwCZzIaYuLq", "eUGFKs56ahlWvxD6", "W1fdNW6TzlyUMvTZ"], "emailAddresses": ["SjKMz9iw84YUiBmV", "JFPROnyl0phLum1y", "hnAfUHY3vliHDOUB"], "isAdmin": true, "isNewStudio": true, "languageTag": "lsl8TGIWu0X2i32Q", "namespace": "t6Ffj0lsYDLenhVZ", "roleId": "fXC4IHj0xYvBQON9"}' \
    > test.out 2>&1
eval_tap $? 387 'AdminInviteUserNewV4' test.out

#- 388 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "1TG6OIpS6l1D1iFT", "country": "Or7XBXafPLpQdrgg", "dateOfBirth": "FoiN1bY2yFwZWX85", "displayName": "Oxvy6okFEbCFjo7v", "languageTag": "az9k3cJWZQ62ssdC", "skipLoginQueue": true, "tags": ["M4cg8sRpXuC1OkfY", "zzT99cla2wm51ets", "qsR8cNusSPRnJJFv"], "uniqueDisplayName": "nMk7KISDtTmTpNY1", "userName": "D1GqI89jb6kA617d"}' \
    > test.out 2>&1
eval_tap $? 388 'AdminUpdateMyUserV4' test.out

#- 389 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "OWdEP5eInsmRAc1L", "mfaToken": "IPcxyQGQQ91yJQiu"}' \
    > test.out 2>&1
eval_tap $? 389 'AdminDisableMyAuthenticatorV4' test.out

#- 390 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'WVmfpPa33wamaBjh' \
    > test.out 2>&1
eval_tap $? 390 'AdminEnableMyAuthenticatorV4' test.out

#- 391 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 391 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 392 AdminGetMyBackupCodesV4
eval_tap 0 392 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 393 AdminGenerateMyBackupCodesV4
eval_tap 0 393 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 394 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "5yaKFDmMk2lXFyDJ", "mfaToken": "EhkVupPd2via74Do"}' \
    > test.out 2>&1
eval_tap $? 394 'AdminDisableMyBackupCodesV4' test.out

#- 395 AdminDownloadMyBackupCodesV4
eval_tap 0 395 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 396 AdminEnableMyBackupCodesV4
eval_tap 0 396 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 397 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'kb6djNa0KpMJipF9' \
    > test.out 2>&1
eval_tap $? 397 'AdminGetBackupCodesV4' test.out

#- 398 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'bLcIjDx0sN5ppZcZ' \
    > test.out 2>&1
eval_tap $? 398 'AdminGenerateBackupCodesV4' test.out

#- 399 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'iHcwIiz5KWCROX3k' \
    > test.out 2>&1
eval_tap $? 399 'AdminEnableBackupCodesV4' test.out

#- 400 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'IzfXrcnHUhJQ0HgO' \
    --factor 'mjAkgPxfjsF8Cvjh' \
    > test.out 2>&1
eval_tap $? 400 'AdminChallengeMyMFAV4' test.out

#- 401 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'vUoC6tHQKSyfNcUz' \
    --languageTag 'ycXfOrU4drSscDxE' \
    > test.out 2>&1
eval_tap $? 401 'AdminSendMyMFAEmailCodeV4' test.out

#- 402 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "hdgLrfUyDAVHJriM", "mfaToken": "1WbaclTgW5OSIGBh"}' \
    > test.out 2>&1
eval_tap $? 402 'AdminDisableMyEmailV4' test.out

#- 403 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '7NAjJ3uEhPColvOQ' \
    > test.out 2>&1
eval_tap $? 403 'AdminEnableMyEmailV4' test.out

#- 404 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 404 'AdminGetMyEnabledFactorsV4' test.out

#- 405 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'Q1vcxh1KzkfdR7nZ' \
    > test.out 2>&1
eval_tap $? 405 'AdminMakeFactorMyDefaultV4' test.out

#- 406 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 406 'AdminGetMyOwnMFAStatusV4' test.out

#- 407 AdminGetMyMFAStatusV4
eval_tap 0 407 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 408 AdminInviteUserV4
eval_tap 0 408 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 409 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'cerKqqfLjmXtpOGc' \
    --linkingToken 'f0zATDdzaZzUtnBT' \
    --password 'AWN8qPLD4l9xoGrZ' \
    --username 'syqS9yA6AW5yXZ8T' \
    > test.out 2>&1
eval_tap $? 409 'AuthenticationWithPlatformLinkV4' test.out

#- 410 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'jzMtLtsIWD0EcJO2' \
    --extendExp 'false' \
    --linkingToken 'nFndB1zIclQYlVrx' \
    > test.out 2>&1
eval_tap $? 410 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 411 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'R7hJO01gVE7jQZUb' \
    --factor 'vEFBM6fOFxqwjEXu' \
    --mfaToken 'J2if9awzDwP7w2NT' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 411 'Verify2faCodeV4' test.out

#- 412 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'JwgAWxO2MczvcgQt' \
    --codeChallenge 's9dcIRo3sX3TcT9J' \
    --codeChallengeMethod 'plain' \
    --additionalData '4oorD8QQAvuR1vvd' \
    --clientId '5da6rca420SudrlB' \
    --createHeadless 'false' \
    --deviceId 'TYcvaOC02DdJfQb6' \
    --macAddress 'BMOBAftPlJUD9GQr' \
    --platformToken 'DCoAOuwirYiQvyj3' \
    --serviceLabel '0.7210173124379275' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 412 'PlatformTokenGrantV4' test.out

#- 413 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'EWuHhmWFwbOIpvbO' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'XaSOIC8XD5X8nWEe' \
    --simultaneousTicket 'yFxTJDUi1LGPHn58' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'Xx9kDgMeHivRu7nt' \
    > test.out 2>&1
eval_tap $? 413 'SimultaneousLoginV4' test.out

#- 414 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'Rw9KBPeB8Wrxe47y' \
    --codeChallengeMethod 'plain' \
    --additionalData 'TSXxfJGR2Vy2bHZo' \
    --clientId 'zu2EbQiU3C5h548N' \
    --clientSecret 'PFCl1Eoh0HVxMYwR' \
    --code 'nXXgbE9eq5LDuxMZ' \
    --codeVerifier '9vrUM0vNdzjHNiyj' \
    --extendNamespace 'AQ2kJ85VCmKnrdAk' \
    --extendExp 'false' \
    --loginQueueTicket 'dSTX77OEIyXLFe1h' \
    --password 'RpboZIRQx3fhr51d' \
    --redirectUri 'XlQx4cIS5xwyAOue' \
    --refreshToken 'Z7zVUssCGfd5mzrX' \
    --scope 'o1sWWMoQG1A3wwZh' \
    --username '9WiJb4Uf2NXHQFkM' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 414 'TokenGrantV4' test.out

#- 415 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'WRs6QScmPYUi6Xu0' \
    --code '6SqrQ4PCVg0KZBF0' \
    > test.out 2>&1
eval_tap $? 415 'RequestTargetTokenResponseV4' test.out

#- 416 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'o2tMLOT2rFps2DEV' \
    --rawPUID 'false' \
    --body '{"pidType": "7tDqgegVOLLEaNYr", "platformUserIds": ["E8tAvOVKgGM5652T", "0EXmDYILMWv2DhB0", "W5UCagyzWjAweud4"]}' \
    > test.out 2>&1
eval_tap $? 416 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 417 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'Jq9tBsqxKCGIAAip' \
    --platformUserId 'EJdQqyKCGqp7qikd' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserByPlatformUserIDV4' test.out

#- 418 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "8NlMGClDMI9KwUPX", "policyId": "UGxQaioYs0xejxc2", "policyVersionId": "vlm9IzE29C8v1B8p"}, {"isAccepted": true, "localizedPolicyVersionId": "QfplY0jIRewfUV3b", "policyId": "Yka4YeLwOLA1fq4L", "policyVersionId": "P64u7aqZynBtnHQ4"}, {"isAccepted": true, "localizedPolicyVersionId": "aYgiEqP2iJOSt3Tb", "policyId": "4nKuy1i7jzDWGvxR", "policyVersionId": "1IeT15kKelkEA2Jh"}], "authType": "EMAILPASSWD", "country": "nngKl01jNZvbbLvB", "dateOfBirth": "QufHdML35rKRpUAb", "displayName": "DJzNgDzk94oX9hAa", "emailAddress": "8I4o8yXM4HnfFWuG", "password": "RLcb2e8Fgm1QZ07b", "passwordMD5Sum": "4xJjpw6ruktvtlKk", "uniqueDisplayName": "88qqj5CDjbfMwMJo", "username": "qoA1FUMj4kuJNPIh", "verified": false}' \
    > test.out 2>&1
eval_tap $? 418 'PublicCreateTestUserV4' test.out

#- 419 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "4SxPua1ES7Sy25Tl", "policyId": "C2y6n2z7wFmeLuSn", "policyVersionId": "6OFUwA8QzNjg6UVu"}, {"isAccepted": false, "localizedPolicyVersionId": "3Zf4fOlM1FDqOrkB", "policyId": "Ryy2Z3CPOpb7bXql", "policyVersionId": "6WVNaatOu8FabqEV"}, {"isAccepted": true, "localizedPolicyVersionId": "Dw4SQxJpEuFlqnvq", "policyId": "Hhtz4g6zymvWMWlz", "policyVersionId": "SEvOijlAGzgK8NlY"}], "authType": "EMAILPASSWD", "code": "DqSYk8frs1vtNlCc", "country": "1AnccNIcg9fbo2e0", "dateOfBirth": "p1CsYVm7oovhzAEv", "displayName": "Mg6AWDPBKwWDEyV6", "emailAddress": "62IBelpMdcpwlUmK", "password": "Sqvv0NUXFWa8bZVI", "passwordMD5Sum": "mYDOfLEW9VxnoXs3", "reachMinimumAge": true, "uniqueDisplayName": "8ZGVyFQT6xAREb8V", "username": "buYP5cfH3CFfB0Nh"}' \
    > test.out 2>&1
eval_tap $? 419 'PublicCreateUserV4' test.out

#- 420 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'cDAS6lmXTI1gt6VK' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "WztQPuhMIMK1WBR0", "policyId": "HG8SY2KTEDPOkRz6", "policyVersionId": "cTnQhIl5PIXOn1Cs"}, {"isAccepted": true, "localizedPolicyVersionId": "shwoncLPSs8eDPJE", "policyId": "mbIN3NuleU8fNeMt", "policyVersionId": "iWCXgqoPZhT897z5"}, {"isAccepted": true, "localizedPolicyVersionId": "bBPiDYeeC8Xes8o7", "policyId": "agx4q6cJQWZtV9Fs", "policyVersionId": "nm7e8MDOtPSn8bqt"}], "authType": "EMAILPASSWD", "code": "HZMLjemQHAysNyhk", "country": "ko1aGqG2t6HYpd8s", "dateOfBirth": "2AceoXuw3Zz1j9zB", "displayName": "08saxd0ca1I71rGB", "emailAddress": "Eu6CKPE71R7Cal3g", "password": "VxbAuMIjY1zGySqP", "passwordMD5Sum": "wNclEuWDKYORK8qz", "reachMinimumAge": false, "uniqueDisplayName": "XuRl7nu4oTKfMoUt", "username": "zKgM7jApgzLg6NHV"}' \
    > test.out 2>&1
eval_tap $? 420 'CreateUserFromInvitationV4' test.out

#- 421 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "kMehQVioh2AWW6sl", "country": "Vpy5qHe6ih0zSx3Q", "dateOfBirth": "8LrZhPmiUjUvdbB9", "displayName": "AXN1hTVw7WgEvey7", "languageTag": "n3AFpT0mMtuuV1st", "uniqueDisplayName": "Sbawi9EmWX37L3W2", "userName": "OuNP5mQ57KlN5Z2Y"}' \
    > test.out 2>&1
eval_tap $? 421 'PublicUpdateUserV4' test.out

#- 422 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "daL6MifHDC0sgOxp", "emailAddress": "DOf0ekOk4Q0arxAC"}' \
    > test.out 2>&1
eval_tap $? 422 'PublicUpdateUserEmailAddressV4' test.out

#- 423 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "9VdqCvR4Luc3XLSt", "country": "UwH6eMfeKXMZaoNA", "dateOfBirth": "XnxYJWFaScrb23ct", "displayName": "xDDAXseUXM7sDpzT", "emailAddress": "aNBbVJSRoyTQEfNC", "password": "jZqjmndse2rSxEkq", "reachMinimumAge": true, "uniqueDisplayName": "LVa9VoZWVCnO30bp", "username": "JjDVmrl6pdlgyNHa", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 423 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 424 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "LKyALAsv7FZAGEpJ", "displayName": "ZuowlrWqMljUfm5w", "emailAddress": "k6SFCE25ghxEJCMV", "password": "KBEbnGiBgOnKo21X", "uniqueDisplayName": "FjnBSsL1iPcZ1u2L", "username": "taOI3giYR0E8rsWa"}' \
    > test.out 2>&1
eval_tap $? 424 'PublicUpgradeHeadlessAccountV4' test.out

#- 425 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "x6tSo1OGzJeUt8lP", "mfaToken": "jdZq1nPQ2zKFRvHs"}' \
    > test.out 2>&1
eval_tap $? 425 'PublicDisableMyAuthenticatorV4' test.out

#- 426 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'aAaF1Pnu74WR22NK' \
    > test.out 2>&1
eval_tap $? 426 'PublicEnableMyAuthenticatorV4' test.out

#- 427 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 427 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 428 PublicGetMyBackupCodesV4
eval_tap 0 428 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 429 PublicGenerateMyBackupCodesV4
eval_tap 0 429 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 430 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "tDBL3kQfOoynuaIX", "mfaToken": "56E9iroQYfdQual3"}' \
    > test.out 2>&1
eval_tap $? 430 'PublicDisableMyBackupCodesV4' test.out

#- 431 PublicDownloadMyBackupCodesV4
eval_tap 0 431 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 432 PublicEnableMyBackupCodesV4
eval_tap 0 432 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 433 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'iC5wqasV0y6PcUgf' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetBackupCodesV4' test.out

#- 434 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'EtuaDwA4Sd1kFSaO' \
    > test.out 2>&1
eval_tap $? 434 'PublicGenerateBackupCodesV4' test.out

#- 435 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'oZxYmMQOBP0toGx3' \
    > test.out 2>&1
eval_tap $? 435 'PublicEnableBackupCodesV4' test.out

#- 436 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'MMhUqLwxlKteDyPs' \
    --factor 'm5I0uu8DpzLAul51' \
    > test.out 2>&1
eval_tap $? 436 'PublicChallengeMyMFAV4' test.out

#- 437 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 437 'PublicRemoveTrustedDeviceV4' test.out

#- 438 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'fcyhawIGgOklRlTL' \
    --languageTag '2NF5K6c9Bool2LsT' \
    > test.out 2>&1
eval_tap $? 438 'PublicSendMyMFAEmailCodeV4' test.out

#- 439 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "pukpoBx8ruVQrxvv", "mfaToken": "kZssrihg7QGykX4e"}' \
    > test.out 2>&1
eval_tap $? 439 'PublicDisableMyEmailV4' test.out

#- 440 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '9yNbWyynDRkYKHNW' \
    > test.out 2>&1
eval_tap $? 440 'PublicEnableMyEmailV4' test.out

#- 441 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 441 'PublicGetMyEnabledFactorsV4' test.out

#- 442 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'EuYnru8I68NMFvi8' \
    > test.out 2>&1
eval_tap $? 442 'PublicMakeFactorMyDefaultV4' test.out

#- 443 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 443 'PublicGetMyOwnMFAStatusV4' test.out

#- 444 PublicGetMyMFAStatusV4
eval_tap 0 444 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 445 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yqsTP0FfPWTGm0Dc' \
    > test.out 2>&1
eval_tap $? 445 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 446 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "tLo30Vuhk130tm3r", "emailAddress": "X5MxXjSfO4oeEv7o", "languageTag": "QmX9WeHywXGLgncW", "namespace": "VljVYpGUcJk2xNek", "namespaceDisplayName": "1y4qZ3Ilkl5AF2go"}' \
    > test.out 2>&1
eval_tap $? 446 'PublicInviteUserV4' test.out

#- 447 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "0SGDo6KgHMQ21cNm", "policyId": "Js6aKNCxkcnGpsVD", "policyVersionId": "3tzduTNV6tOBxMHC"}, {"isAccepted": true, "localizedPolicyVersionId": "FKNzenoaLMYeWMec", "policyId": "W9HULXMCV1LEZatt", "policyVersionId": "mNeqW3ZOacVOI0Tv"}, {"isAccepted": true, "localizedPolicyVersionId": "CTdKKeRMNST9Xujv", "policyId": "sMI5Cl9Y1Ey9auQp", "policyVersionId": "q00VaW2tJhwi3cMO"}], "code": "uM97LE3rx3tFIUs7", "country": "dg3HPJk7Hv6IvrYS", "dateOfBirth": "NKYW4E7dglOkXMKW", "displayName": "stgmhJfAapncfIId", "emailAddress": "v3V9L9t3AsS3juiJ", "password": "BJgKEJdj6F8YC7QQ", "reachMinimumAge": false, "uniqueDisplayName": "rKOumJ63HeZ3vekz", "username": "GEpLJ78j4N3KuSyQ", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 447 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE