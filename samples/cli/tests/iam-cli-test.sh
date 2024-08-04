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
echo "1..404"

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

#- 108 AdminListClientAvailablePermissions
samples/cli/sample-apps Iam adminListClientAvailablePermissions \
    --excludePermissions 'true' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "gCuexp9gPPln5UK3", "groups": [{"group": "d6xFyFzt2xlqfurw", "groupId": "FJ2IVqEhVP1uGf7i", "permissions": [{"allowedActions": [15, 1, 65], "resource": "DhNzQtuoDQB8f5ns"}, {"allowedActions": [23, 34, 81], "resource": "hCqdlLPf2hQYjnDH"}, {"allowedActions": [21, 55, 62], "resource": "1T2pVfkjeLxRo0MU"}]}, {"group": "KocAstZATz1hZJla", "groupId": "yo1d5PNxPCo7ffDy", "permissions": [{"allowedActions": [20, 89, 87], "resource": "k7qZBR7jTuC4T3Mr"}, {"allowedActions": [85, 75, 87], "resource": "MhKpTaywKbFAwR6T"}, {"allowedActions": [41, 53, 71], "resource": "VcGBUYhQ96BZjRDc"}]}, {"group": "kA80CtJnIYBQO4tg", "groupId": "TUEuh8mAi1rpuxeW", "permissions": [{"allowedActions": [17, 43, 4], "resource": "FDEN3fFcgw3f5OFA"}, {"allowedActions": [12, 82, 90], "resource": "X54pABYadDoGSM3H"}, {"allowedActions": [82, 11, 92], "resource": "JnqbLWBbQ8NaKb6G"}]}], "module": "duxxeWMSnu11szPw", "moduleId": "skcf7BxtwMtFb0r6"}, {"docLink": "lGM2UVpTHSOClmEF", "groups": [{"group": "3byCDnCPoDjaiOAs", "groupId": "sIAZgs0jyq4QuPur", "permissions": [{"allowedActions": [98, 62, 69], "resource": "7wUdGfhU023MFlMU"}, {"allowedActions": [100, 67, 92], "resource": "z4QhMzpgxvIsrOTn"}, {"allowedActions": [7, 63, 84], "resource": "rHVt4NUkabYzIDuQ"}]}, {"group": "11X1JnIWKgD0Tn5j", "groupId": "kx7nDJQSkib9RyYy", "permissions": [{"allowedActions": [36, 27, 49], "resource": "vKjVzEZDEKO2SrDM"}, {"allowedActions": [25, 54, 50], "resource": "ZwiN0gvsy1AG5Mqw"}, {"allowedActions": [92, 69, 90], "resource": "tVsXfgZr6sPDINNd"}]}, {"group": "9F3nE1f6sgp1LXRO", "groupId": "KgeInMjonlqmakRv", "permissions": [{"allowedActions": [47, 74, 99], "resource": "9tpE3CAzNtDfyfUz"}, {"allowedActions": [82, 42, 45], "resource": "Xf5rLhjPq1eujVHB"}, {"allowedActions": [12, 0, 61], "resource": "qUpfLD6lu8UzOC2D"}]}], "module": "Jwd8VHZVfjhLyehR", "moduleId": "81bUoUXFsgCJF2qo"}, {"docLink": "ilYRGL1fUiy4Ybfg", "groups": [{"group": "kdhVGimrMBFu4hnn", "groupId": "M5O9U0S34NwbXHio", "permissions": [{"allowedActions": [12, 38, 46], "resource": "CRkTI9pvzn71UdMG"}, {"allowedActions": [31, 9, 70], "resource": "hnF7bXGfbWbaCG8w"}, {"allowedActions": [59, 95, 82], "resource": "yhgDboDA5eTl2nb5"}]}, {"group": "2DkCwLHzOnhyMAtL", "groupId": "dO8JLUwEuFkpx8Rr", "permissions": [{"allowedActions": [18, 39, 58], "resource": "FfEMgCD77MvKDr0u"}, {"allowedActions": [42, 82, 92], "resource": "Ysr9qom3BeZsFHtQ"}, {"allowedActions": [48, 27, 86], "resource": "9MwgPwXZ2PME2NRt"}]}, {"group": "U6RSYH2Iyi39VHhQ", "groupId": "Tr8zG1tIcqEXiR2J", "permissions": [{"allowedActions": [24, 36, 80], "resource": "M0sQEBRgSkl1TNM6"}, {"allowedActions": [9, 82, 98], "resource": "8aGyDEQAn6JzWtqy"}, {"allowedActions": [53, 94, 65], "resource": "Y4TSLFi1jk9MCgD1"}]}], "module": "w9nZnv4R7va65Key", "moduleId": "OI7sHhBjR086Q9TH"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "vAhXysMwIGC4MFRw", "moduleId": "Fx4sD0Qocx6uKm7v"}' \
    > test.out 2>&1
eval_tap $? 110 'AdminDeleteConfigPermissionsByGroup' test.out

#- 111 AdminListClientTemplates
samples/cli/sample-apps Iam adminListClientTemplates \
    > test.out 2>&1
eval_tap $? 111 'AdminListClientTemplates' test.out

#- 112 AdminGetInputValidations
samples/cli/sample-apps Iam adminGetInputValidations \
    > test.out 2>&1
eval_tap $? 112 'AdminGetInputValidations' test.out

#- 113 AdminUpdateInputValidations
samples/cli/sample-apps Iam adminUpdateInputValidations \
    --body '[{"field": "gsj8uFMZNlXjIWak", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["SIQli9Zle9GwFFYl", "NFiD5cGOe7zYO2zx", "88o7jp5EWsObyvMc"], "preferRegex": false, "regex": "SIeXz9z7gRVzbfAI"}, "blockedWord": ["UGWvPz8iUu9iJ5sB", "JJEtXPLsHdlkbz2L", "e9K4xPvWRHXFIz2r"], "description": [{"language": "6kN1ws08rgXKQlte", "message": ["OAMo9UkoqIkQcuGc", "gnMPdjiWa7xZC0w0", "FbaN9hUqwCh93X35"]}, {"language": "vs18hGETCf8bCtqa", "message": ["DlWdS10T2GwZUQkr", "CZ3WVWTfPuGaoquY", "9PIYqu6Z54MZjrj2"]}, {"language": "fuUonXRBaiAyfwXS", "message": ["px1TwrHGSDTYkKCz", "HlG844R3wufY4T9M", "LlWYzVu7otOba1op"]}], "isCustomRegex": false, "letterCase": "OYBwHvXnDVmE32FW", "maxLength": 33, "maxRepeatingAlphaNum": 36, "maxRepeatingSpecialCharacter": 29, "minCharType": 78, "minLength": 23, "profanityFilter": "Si138OGAgJD622Iy", "regex": "XIoMqYEnNoUoz9CD", "specialCharacterLocation": "7Qu0dD27wo2zcuqB", "specialCharacters": ["GqpsM516IUCIaFgQ", "uWQTDfyxSr0Bbcyo", "eRM0l9zWNPpgdrJk"]}}, {"field": "lDG7LxzSVFG8rtsw", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["n082a5xT2tF8yLWt", "otlPZMV1HLo9Ojm8", "hkc78r9qgjaSmgnh"], "preferRegex": false, "regex": "MbIoFEtSxsndMmHl"}, "blockedWord": ["5UzwOplbForTr3q0", "zSaDfU364Dfg8CTz", "Yddr8SsnE1GdU9FP"], "description": [{"language": "r1nsC8Vywa0EdbWD", "message": ["E96TU7stiNsAJ6hX", "TtxbSCYDyNssgYIr", "2dDcNv8mnhOO8cQI"]}, {"language": "saivUCjlaDkHg7No", "message": ["WAAE5TALw3RlmqpN", "ukMCs0jqTWmMjyD4", "J1Du7ktuNgCGDHLm"]}, {"language": "VaJeoj7j1uEYadga", "message": ["b194DryArLVlN6df", "FKSmAPcZ9mDIZMYI", "j5Djw9014BGgiA7p"]}], "isCustomRegex": false, "letterCase": "H62PCd9LKjaNFr9N", "maxLength": 36, "maxRepeatingAlphaNum": 43, "maxRepeatingSpecialCharacter": 21, "minCharType": 26, "minLength": 83, "profanityFilter": "2QMKpq0rwEsOAXKf", "regex": "h8R5XhHQqGskUdNo", "specialCharacterLocation": "eo9dIe7LT8bWM0xn", "specialCharacters": ["RBbGDOvtVhRxOWUU", "i61Qq3xD7G49pd5t", "ekndjuDUQQXIRJGp"]}}, {"field": "DR31kVkkvBJcWjuJ", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["uO6L4uHkDSNOnXuT", "JQmBnzYWCAGqSL2q", "Nt7Ey9X8eM54vPD1"], "preferRegex": false, "regex": "riukvUbCKTYrDdq2"}, "blockedWord": ["GoA4gPRozV7F3ZlS", "cayc4LFWTTXCXj95", "28MD1dvgZqURQa8w"], "description": [{"language": "vGMtI29Y1XB1qw5w", "message": ["upTl1wYqqljIdNEm", "sjjPqs9EkzDs5suo", "EJi81Z3pL7pbKYzQ"]}, {"language": "wv5VnJvJ5dp3yikZ", "message": ["UIqNMtc5R6Opqf4I", "l6Opb6okRy6hkxLO", "rdyGODaBHpnOLma8"]}, {"language": "jRP5iMOntEBvaM8x", "message": ["vz2UWnIqrKpXr8pT", "lFgQLM82gmNqZuMS", "zva81wA2IkGoydIa"]}], "isCustomRegex": false, "letterCase": "i2AjVYhxbQgLOjWs", "maxLength": 67, "maxRepeatingAlphaNum": 30, "maxRepeatingSpecialCharacter": 24, "minCharType": 11, "minLength": 73, "profanityFilter": "fov4GT8Ylzp4wzCI", "regex": "G67lZR6JPwXFe2Ro", "specialCharacterLocation": "axLMcV5weXIPHRXj", "specialCharacters": ["jdFz18e3MLNx3yf2", "K5c924DOyPQOuqfi", "xstDNDZHyIo0YkQS"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'fGTrwk6l0V2Eg69K' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'UIkKnaXadOec0QVA' \
    --before 't1L6afUouPg3Lmj4' \
    --endDate 'PrhLVHsUaR4BoWYk' \
    --limit '59' \
    --query 'sUyHHgktjcZ5NF7H' \
    --roleId 'KK8zIL9DEUqTLoXV' \
    --startDate '3UfhGRUCeIJTbaUP' \
    > test.out 2>&1
eval_tap $? 115 'ListAdminsV3' test.out

#- 116 AdminGetAgeRestrictionStatusV3
samples/cli/sample-apps Iam adminGetAgeRestrictionStatusV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 116 'AdminGetAgeRestrictionStatusV3' test.out

#- 117 AdminUpdateAgeRestrictionConfigV3
samples/cli/sample-apps Iam adminUpdateAgeRestrictionConfigV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 70, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'WpqiqGWcev9bQqXp' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 65}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'IGnvqEkU50e7EoTu' \
    --limit '57' \
    --offset '43' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "aQrVW0dajkSyiQZ9", "comment": "QgzhieaMyXcrHFuf", "endDate": "RyRBieTSQPrKnSis", "reason": "4hconVtjXlpYMCRz", "skipNotif": false, "userIds": ["mfyFxwMT4KZrCSnL", "we8LK3ytOQmV7dWp", "lg33GwjE4ewabEJx"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "7mgnKAFtvJVhX70J", "userId": "Lv9WJgf9UcQL7yI7"}, {"banId": "WTnl7xQkw0pZuH5q", "userId": "U4dQ463IfAnsD0jB"}, {"banId": "Ogo1CcTuglaEHnG8", "userId": "N21JEvKX8hpMp1Md"}]}' \
    > test.out 2>&1
eval_tap $? 122 'AdminUnbanUserBulkV3' test.out

#- 123 AdminGetBansTypeWithNamespaceV3
samples/cli/sample-apps Iam adminGetBansTypeWithNamespaceV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 123 'AdminGetBansTypeWithNamespaceV3' test.out

#- 124 AdminGetClientsByNamespaceV3
samples/cli/sample-apps Iam adminGetClientsByNamespaceV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'Nkjyz0o4ZfGAG0j7' \
    --clientName 'gATNDOvmfpFCOYkV' \
    --clientType '1PzQOiWrFWaIgApP' \
    --limit '45' \
    --offset '6' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["xJKGVFE3bh0Mn3NS", "20EHXMkujHoZAKvX", "XNOJhB6WGI9VPmt0"], "clientUpdateRequest": {"audiences": ["NecXkKftZ0c66jwd", "WYYwQ4J5ttv0FG6U", "QqJTjaYBBnNyL2qV"], "baseUri": "TG6TmYUAfFIAuOj3", "clientName": "U83vBmd5Cboty0Xt", "clientPermissions": [{"action": 62, "resource": "aNUy5o8pkrSihFgY", "schedAction": 74, "schedCron": "9UrLKsmPXpovkxg2", "schedRange": ["AiBjzb4bETtn33fp", "SbPJH9H2TqvtaPF3", "e7TYrjoKIlyQ3m86"]}, {"action": 31, "resource": "FR3Fr0H1TCg2Odqz", "schedAction": 65, "schedCron": "oMcQY7WpTrCMZC7E", "schedRange": ["va8Co972GBLjTAtS", "wng2mJ7gputSppq7", "Ag8Zk91s4vbSPe6u"]}, {"action": 84, "resource": "qzpyiaSl4UgWFbHf", "schedAction": 40, "schedCron": "DlbGe2iOjHJBn3ph", "schedRange": ["A3ntJlFYIbdIkSHW", "Q0V7mkIcvM9S5Vlr", "2whTQ9zW4EgLatxA"]}], "clientPlatform": "jR7sa3s34odgmMD6", "deletable": true, "description": "uGiaEylglIjhN24f", "modulePermissions": [{"moduleId": "S7SRH1Wc9SMDlwzM", "selectedGroups": [{"groupId": "b8DujwRuYbepaSpP", "selectedActions": [23, 86, 70]}, {"groupId": "Nsivqo17xmj8RoCd", "selectedActions": [91, 24, 7]}, {"groupId": "CNqjIAUsPTX4R8EE", "selectedActions": [18, 61, 38]}]}, {"moduleId": "0nNiC9HsHlpGE0Xl", "selectedGroups": [{"groupId": "EJspV7FpR5NBueOo", "selectedActions": [46, 40, 60]}, {"groupId": "KBVlZkANtIDsaXbF", "selectedActions": [91, 35, 49]}, {"groupId": "iJHgkhHQeOiIKCxO", "selectedActions": [94, 1, 51]}]}, {"moduleId": "fYkBeknmooBFPMWL", "selectedGroups": [{"groupId": "Zy20PCBiojg8fJXG", "selectedActions": [98, 7, 57]}, {"groupId": "PYVibYZq6Xl9h5Ed", "selectedActions": [99, 84, 93]}, {"groupId": "vHM7PHcMFiO5SueU", "selectedActions": [60, 51, 75]}]}], "namespace": "866IiSQJ4OC59xfP", "oauthAccessTokenExpiration": 94, "oauthAccessTokenExpirationTimeUnit": "jQV9Lu90BuMSiB97", "oauthRefreshTokenExpiration": 17, "oauthRefreshTokenExpirationTimeUnit": "6qO8RFTg75BvCeT3", "redirectUri": "B5z5bfabjOw81zmE", "scopes": ["CxZEa4yiQeo3BMWu", "DpREAUT2EoXUhulM", "fEPnxxUe9Q59baDI"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["0lMW6sHqTkwsXyGN", "o5QPsNqx9h0d3wEt", "PmsM7dS5euhhJZum"], "baseUri": "rAdGzwNBkf49fl6M", "clientId": "pREDb9IjHKUSjoJa", "clientName": "LTiMOaTkWbVyXqyd", "clientPermissions": [{"action": 50, "resource": "I1dsYT94pbyHxgW5", "schedAction": 6, "schedCron": "VIhlpsEPlJ6hHlIK", "schedRange": ["CUTn1CYwxobdOREs", "SQkubrBBUOczUAEE", "cRPAeltMiXBPJjmM"]}, {"action": 92, "resource": "xODEsj83S95JuAg2", "schedAction": 54, "schedCron": "7o6mLW5oTM1N5PmK", "schedRange": ["tFSP43hjNrAMUzOY", "ta6Q5NoWEztFqJKn", "6ePRc0qFuwpxaskl"]}, {"action": 77, "resource": "Hpz00gVEBaJF7sdi", "schedAction": 72, "schedCron": "2npVBFVIMwNuxVP0", "schedRange": ["9k78dgkuW6XvE2ei", "YEdmlq7GMvm30rLN", "q4D6RHZM7dbKFrlg"]}], "clientPlatform": "Y5U6wBHlZYOjeXbw", "deletable": false, "description": "20LNykKIBkpaGL3s", "modulePermissions": [{"moduleId": "KsrGzJ5st4MdFtQQ", "selectedGroups": [{"groupId": "dL8QpomYAQSTA3ly", "selectedActions": [68, 41, 65]}, {"groupId": "SG3IjoOKj2cd4PwN", "selectedActions": [58, 39, 18]}, {"groupId": "xphSXJYo8c7uJw5M", "selectedActions": [6, 62, 19]}]}, {"moduleId": "NDHPpp9VfypazHCI", "selectedGroups": [{"groupId": "Q0qP9nkKoZUBrS7F", "selectedActions": [52, 87, 66]}, {"groupId": "U2q05yuzw0vHncXD", "selectedActions": [47, 87, 73]}, {"groupId": "JSsQgaLB7XCSohPH", "selectedActions": [38, 63, 53]}]}, {"moduleId": "J7pGnzyYj7pe82bm", "selectedGroups": [{"groupId": "UNaEs570rjO1T1ev", "selectedActions": [78, 24, 86]}, {"groupId": "R82ShDtJ9uQ2XlJq", "selectedActions": [64, 11, 100]}, {"groupId": "8tFegtka0RH2LD4J", "selectedActions": [52, 92, 21]}]}], "namespace": "Rq5Gds5Lx9ZEgO5B", "oauthAccessTokenExpiration": 95, "oauthAccessTokenExpirationTimeUnit": "QVL47jqIPTAhadHS", "oauthClientType": "JW6C8ARg8nSdaf7V", "oauthRefreshTokenExpiration": 18, "oauthRefreshTokenExpirationTimeUnit": "2McNvy30IH2Ud4F1", "parentNamespace": "0tuhavy8EYjXmWqV", "redirectUri": "64K4WGYSrAwHIQSM", "scopes": ["GauURN7OJqIgi8Co", "wPQu92HjTjixoYYR", "eGJvy7ipJtKPynie"], "secret": "ubJe7knFUlBGAyan", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'aZdReMdU2SM6MX1n' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'IiwY36iWMudk0eTu' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'OX5SyXxUjOyHoIuR' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["uNqTZxcq8TScTN2X", "hKPLDXMECwKkGRWi", "HnQ1Y2S4H9KPL76Z"], "baseUri": "e46PKApD4qb2aVi8", "clientName": "izD4IZSYPdMmJZ2Y", "clientPermissions": [{"action": 71, "resource": "SilyPCERKnxINy3l", "schedAction": 17, "schedCron": "zlL4ceaapNVgyTyO", "schedRange": ["pFfqKkbryJJ5GjGS", "eDjQwmfch45y87DA", "f25GnaRRAhR7Qb6o"]}, {"action": 57, "resource": "h8GbGIiCaXnEzGLV", "schedAction": 20, "schedCron": "AwFqp67Xfk5bo708", "schedRange": ["wVy5mns8GE6P6k9k", "n26DIFwVfQPDbD7S", "wM24rmO5vorjD3Ex"]}, {"action": 27, "resource": "CnKNRGevRe4MlYre", "schedAction": 48, "schedCron": "XcozCLBknF0Jfz4B", "schedRange": ["hYIuoLlDbFtBwuQl", "zDPW46MmpkPil2Qh", "zTHaG50IuFtyqWxt"]}], "clientPlatform": "r2DZ03HWROPuepff", "deletable": true, "description": "ivkK9uNYgcUOPUGY", "modulePermissions": [{"moduleId": "gCVXz1ix16dObsP4", "selectedGroups": [{"groupId": "tGgEdYPT5QKIVVVL", "selectedActions": [43, 57, 93]}, {"groupId": "cxOXGFuOQxlmwtsu", "selectedActions": [85, 91, 88]}, {"groupId": "7whwuIEvqoU4sLX1", "selectedActions": [21, 71, 28]}]}, {"moduleId": "7ZPDOSh4bJtPffN5", "selectedGroups": [{"groupId": "TBHajk9mTXUvEudE", "selectedActions": [15, 3, 53]}, {"groupId": "ZzUUCIZdJ1M5FYOT", "selectedActions": [10, 8, 7]}, {"groupId": "egc07N2oYAPUvdGT", "selectedActions": [42, 49, 43]}]}, {"moduleId": "3KW1ZFV229AeUIGa", "selectedGroups": [{"groupId": "HTOKOfEYKPmGBRTE", "selectedActions": [52, 43, 90]}, {"groupId": "g3NWPzEBz5qY5MZl", "selectedActions": [75, 94, 15]}, {"groupId": "h9iBPAZ6pBhVNSTm", "selectedActions": [45, 87, 61]}]}], "namespace": "AAyNU2ftsLrm0id2", "oauthAccessTokenExpiration": 56, "oauthAccessTokenExpirationTimeUnit": "bAFQX0nLOpkdT5SS", "oauthRefreshTokenExpiration": 1, "oauthRefreshTokenExpirationTimeUnit": "O7NGfG8GsZaZikDH", "redirectUri": "AVFRfQ3f2QKRWVd6", "scopes": ["ybnBcM1AsnSSt3nL", "3RclYVWSsQR96R5x", "Ed6KFuSOJX6slnyP"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'UqOOrfYxln6hqUip' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 99, "resource": "FecssME93fxi9Idr"}, {"action": 58, "resource": "hrxUScjfKyK7yz7x"}, {"action": 79, "resource": "L8Ctt3jUmlBtVO6w"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'v2JHaECtVUIcW8lf' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 63, "resource": "muVYKDCxwpm4Rw0u"}, {"action": 40, "resource": "FYq1GYBkXVIa1yCf"}, {"action": 29, "resource": "sumFmbzHSRHyr644"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '77' \
    --clientId 'HuIJVKK1gsYvsTcW' \
    --namespace $AB_NAMESPACE \
    --resource 'epnbHOAMDCti2u7d' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'GonrYKld1YOvZF3l' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'true' \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryListV3' test.out

#- 135 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 135 'AdminGetCountryBlacklistV3' test.out

#- 136 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["p6Z2XUujAjC0ICcu", "k1NjjnFjE364L4TH", "i5quqQUC0BWmaiig"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 138 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 139 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '5' \
    --offset '18' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4SzCBAvSrJuxVOAT' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SejTgkNV6of5sAij' \
    --body '{"ACSURL": "NFyXe6HPoVOOqE3f", "AWSCognitoRegion": "J3hZUSiJOlkvt6e8", "AWSCognitoUserPool": "EqfHJ1nl2zCnmZ52", "AllowedClients": ["2eqB4NgePOjloFfV", "elxM8kQ3KjIsiZCj", "aluaPpeyO0Bn4KTI"], "AppId": "O2dbw6EdHyTCEs3Z", "AuthorizationEndpoint": "S8FMs2gq8VuJknq4", "ClientId": "VFwc2ABbA9sYlgIq", "EmptyStrFieldList": ["OZZvnn8E0Mb1wdEO", "fOuHpXTBxoJmdrZD", "UC69e8an0UyeibMy"], "EnableServerLicenseValidation": true, "Environment": "QWBWpbbuWuQ7CNQS", "FederationMetadataURL": "70Gr3oTjTbJSPVkN", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "fc6bhOJHXODGNYJG", "JWKSEndpoint": "I4nSDrrhL72x4Rqb", "KeyID": "3cSaBHZJ9YtU331l", "LogoURL": "JtHFZQT7rxtpcQdq", "NetflixCertificates": {"encryptedPrivateKey": "087vR762QW0guium", "encryptedPrivateKeyName": "WdPUVJJePnhYlMEx", "publicCertificate": "xkrLHaKZw7R4FCH7", "publicCertificateName": "GIhmP2KQsAzazkdE", "rootCertificate": "jdjn3dk1D0pkE9C0", "rootCertificateName": "vDyZ2gYnCx1kEINE"}, "OrganizationId": "VgBdE3phGEqmkB5l", "PlatformName": "hpZW5dJYcnMcnq5V", "RedirectUri": "fWKI1za5y5FZY4cu", "RegisteredDomains": [{"affectedClientIDs": ["C1M5B2OBsbbx4LlN", "F0V9kJP3zKdovz3w", "ruCqkSkuV7OzuXDw"], "domain": "Apb8F9AqGf149MFb", "namespaces": ["YGyGKIMt6FevTa8Q", "zsrLqiFnLncsGhSk", "KGL3nYoC4ZP3XPEG"], "roleId": "KHmy24oDp0yhZrAl"}, {"affectedClientIDs": ["qtMAPFNQOoFdrLo1", "H4jJDOYfWutFWarN", "gIETJeHhwE7e2IDu"], "domain": "b7I5F6GVqS0yy1kc", "namespaces": ["Jfq86Cs3paCYuKjm", "t8m75zjGQNHlBNAa", "aSMtguR9wnSOmOOl"], "roleId": "XLlYLs9HBQWP7TRo"}, {"affectedClientIDs": ["0hXwgGBJOLfAnE3X", "WogxCRTos389oBWm", "ZLzOwuh9EHEgkeut"], "domain": "buAeRHRVNxVL0q1l", "namespaces": ["4BzeZ4QGi0DJjnhy", "7jyXtnuCqVoNvJdm", "QdNix8G6sF0aiu9f"], "roleId": "Qy1CzppEOKoLcBdd"}], "Secret": "P6P0vLTLNjg3Jxs7", "TeamID": "ZWEfPjh80PRevHWe", "TokenAuthenticationType": "RjAEt0xbTQ0naGcG", "TokenClaimsMapping": {"VQ5Mqq0nr9RpstzY": "Jk2VEDhhFggOjz9F", "X7VDWFhMnvUFfQ1R": "kxutKNYQrq40Wuiw", "Ag1XzPtXgTbQBixn": "eUaXRhMZZ1wn1EPQ"}, "TokenEndpoint": "zbY6pmLHSCgE1mcr", "UserInfoEndpoint": "bzr7El49bCkoBpyj", "UserInfoHTTPMethod": "7E5eNQd3Yiz17j47", "scopes": ["oRgSOCZVKOrsary1", "Adxpt15Q4GE1wbSK", "69caO5L3g1YtBzy8"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AfDAIBJrIh7fFKZe' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dig2hcbygvJ06cNa' \
    --body '{"ACSURL": "rcmEc0C9vA7aE2wi", "AWSCognitoRegion": "v4cv3t0B0fJTLTqU", "AWSCognitoUserPool": "u7Zqayl3UDXJPMUC", "AllowedClients": ["zlKinhMqszeaRvBo", "6NrsBgvqZ3WI3Zzp", "TFBD5dnBumZ4HVue"], "AppId": "UIcCH8iBH7a3N8lM", "AuthorizationEndpoint": "yxPX3yRdSgQhz3mu", "ClientId": "xizQDc4bgRQfPnOe", "EmptyStrFieldList": ["tIltTyeFsV34M63k", "9myoXxPt1YMBVhqv", "IbVVeyeu7Sdd6LuF"], "EnableServerLicenseValidation": true, "Environment": "bgg8iquFKOTpEuQu", "FederationMetadataURL": "j3bOaMLBZTKtkxIA", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": true, "Issuer": "nJDzd0oqezsy5cm3", "JWKSEndpoint": "5XcHe7tuwTM05jhW", "KeyID": "0ppu2vY6goGQk2xA", "LogoURL": "7hhvmCOjvrQSF5jS", "NetflixCertificates": {"encryptedPrivateKey": "uA8Klm0wXuejCy6R", "encryptedPrivateKeyName": "EhFQ8ABp3dO0KYCM", "publicCertificate": "jLqYaZ3EaEPAp5Jb", "publicCertificateName": "pdpE5rrD4Gj9KYI1", "rootCertificate": "Mq1mNMo5me5rfvtB", "rootCertificateName": "p55wUjhsN2LzhqV1"}, "OrganizationId": "zGtyHB1JOTQgOO5D", "PlatformName": "wFdYHNulTfvDfH70", "RedirectUri": "SwKjMmJ6e1AwJRbM", "RegisteredDomains": [{"affectedClientIDs": ["4XSBjqZ5NxSkyxIO", "VAlipUxdSdOxztMI", "LXR9BDmRLLCpyORJ"], "domain": "cZgYT6T4ydtv23oJ", "namespaces": ["DNldY7AQiAe9GgQu", "ah8iDLlDITAF9OnV", "saRPaHxl7GC5m8qs"], "roleId": "fO1UWVTJxXrjZlYc"}, {"affectedClientIDs": ["35PJkkRV3Q1Sgu5W", "e1oBaEIKWpnod6fD", "lgQvm2NemBaEEIJn"], "domain": "SM7vVdy6Fy3bz2hV", "namespaces": ["7OkQuHodzsG3g4Nj", "JTEE3joLJGtVZ5se", "zJ2AD6L3Pccb7BVt"], "roleId": "CZzNtdwlIdCAihjK"}, {"affectedClientIDs": ["chvI8rSE2b2DD9pq", "dlotWpcRLgNqQ3gM", "w5I5il0ZmTWBu2XY"], "domain": "WT0UcXv3XvuPiHca", "namespaces": ["EWlAAs4CYqIkfv1i", "UY17OPwOAmMGr3Ey", "HM8pySTmYVMHqGth"], "roleId": "cPKx5ZgRWsOQ8HGQ"}], "Secret": "P0djFnbFwQu8WAg5", "TeamID": "EVwunyCJOwzEsbSM", "TokenAuthenticationType": "VSldKhc7Vdk8x2Af", "TokenClaimsMapping": {"JfglUKMF5f7RgVbl": "SBTCS7mmFEKA78fo", "k2qsdOipOkvNCEDl": "wxkKqe0RrHoiUxWc", "pOdiTW8DQQWoOQW6": "htifm3NRTgOs3OGO"}, "TokenEndpoint": "LYkDt22h5L0N30GR", "UserInfoEndpoint": "JNauokL3kZJJpHje", "UserInfoHTTPMethod": "9I2DIoVyJckIMWJs", "scopes": ["32vBgLMB9OXxciGk", "37ghVSC1NP5k9aD3", "tXsRdRS7gu4rxnFE"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NbHVlLUi4Y8AZRaq' \
    --body '{"affectedClientIDs": ["NtP1Olz2PfXHVjI4", "ujKgLShvt0vUzLl5", "vwRbAypErQBnH1wm"], "assignedNamespaces": ["Ji6OaPnywSqWq5dR", "nyKLfmg7JdXN4862", "aaQlSLc1urulTeiZ"], "domain": "ITg9wIGanJI3N51c", "roleId": "pqCGYGdxxs2jsDUx"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OcFIcX67KQjrLJlr' \
    --body '{"domain": "WldPOSO6i8NDtNS2"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'rXXXGDfL4cAPEFQV' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'culjaXEpzwTqmPH2' \
    --body '{"acsUrl": "x2m2t0burOn8CfMN", "apiKey": "FktgHk8fsADZ6QBb", "appId": "TcFr5xVgYf66wEYP", "federationMetadataUrl": "k2pjqrtTUEhO3UAT", "isActive": true, "redirectUri": "8WVdOGP7lx13dVPN", "secret": "VchRiS24YhkiUZIO", "ssoUrl": "qsJhPxMFEUPujZmb"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7vD3ZnE0IdtWNX8W' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'whTBaA8OGvWHjOIL' \
    --body '{"acsUrl": "8ytff8t2zwJE3waU", "apiKey": "PlNZQqXbfA6iCLRl", "appId": "U9sy2cUmUJWQACrH", "federationMetadataUrl": "nnChe62XcivTDdbR", "isActive": true, "redirectUri": "pS6ONoayX9frQfaC", "secret": "o6bZlPVAuUCJDu0i", "ssoUrl": "zRnhSdImrhTzr25N"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SADg6PiNN9EsAmG8' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["llTYl44Fvc3m1q07", "8ZQf51Dk9s277m2J", "cJvU6F4FtlVaJylf"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1tcLKs3TfEUtxkVx' \
    --platformUserId '3D6PLe9X2QA1uAom' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'MnAfnfYTaBxfAeHU' \
    --after '25' \
    --before '87' \
    --limit '92' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'VzkQMM1FIPU0i9nS' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["Wygjy62fgMEao1Hj", "49tfUAMxSQ94UJrf", "Ie3mqtkR2JTlDeKw"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'eRO2Hr7Dw9JEKxnJ' \
    --body '{"bulkUserId": ["raPyLEucXIOLhEly", "9kisDRCsJwVbAXcm", "2myqUvDqFtTEOvjN"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Owx6YuyrXseY8MQl", "dK8HcVywbhgo4FOd", "2qZvBgYxIGI48fhR"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["iKifQeM864H0xF6D", "oqU6EYRSrkdjZMej", "FGs2ZO050N86JAQw"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["QgoISkskE3wVgXzn", "19pM5G8dIxUVjtsp", "OTzTG6yny0wdSkeG"], "isAdmin": true, "languageTag": "gt37GSyJGGVjxCQS", "namespace": "Tem8jMLPyRNTYxRp", "roles": ["4SDp1EsJkNnAF3OE", "00wOEhcnmbiLtwSa", "q5QaYRUTkWqoDpqn"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '45' \
    --platformUserId 'BL0ty8gApjfIIMio' \
    --platformId 'ZZBLGPZAkySSdJS3' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '19' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'XbtDdeZdgZT8G7hF' \
    --endDate 'KzcN9QauiG1IgUGr' \
    --includeTotal 'true' \
    --limit '33' \
    --offset '21' \
    --platformBy '9srnWX846AIdhmNG' \
    --platformId '4uZzwrFzGGFqguID' \
    --query 'OuLRKrsA09GaajSk' \
    --roleIds 'Mc8DAKSQ8h6yhfsG' \
    --skipLoginQueue 'true' \
    --startDate 'Cj8q80ZrppHiyt89' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ZskRmwl2aUlHc06n", "TV8Q1zCCn1YKxsov", "AdYJ2FDD4WfAesFY"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lNTfq50MJuAfh0pe' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '9Lg7ydDZnpvpooVK' \
    --body '{"avatarUrl": "Y61qNGCZK8qxe1yg", "country": "ie6Pap21PbcNjEg9", "dateOfBirth": "gcveXmPfh5TecC4M", "displayName": "qg9QyUffZchOWLZN", "languageTag": "5iaAQs9maRkgemAk", "skipLoginQueue": false, "uniqueDisplayName": "DCqq4QYMH2KcsOnx", "userName": "7JdtMRbCbaq8REsi"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NZjkh2nHn1Ktvp0T' \
    --activeOnly 'true' \
    --after 'PqSMjWRaNqyH8xiY' \
    --before 'Fnsaf9ROsxqBNTBk' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '8SVefezMWDUPNXZ6' \
    --body '{"ban": "JTtrYYUy4XhUMaLJ", "comment": "59eWFAVXp0A4XCTQ", "endDate": "lHh44h2qUShZpgRw", "reason": "x6Qvrl0mlFVENhew", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'S7VeSpR8tgx5amHr' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserBanSummaryV3' test.out

#- 168 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'RmwkVMesxbnwdrvq' \
    --namespace $AB_NAMESPACE \
    --userId 'cFjSqOVugFSh78mC' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 168 'AdminUpdateUserBanV3' test.out

#- 169 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WRbGPBd2280MM9Gj' \
    --body '{"context": "iqxV9KTxN1CgqoKV", "emailAddress": "F4DV7CwD7J00k6sp", "languageTag": "aDbyxXGp9RyBqtRC"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminSendVerificationCodeV3' test.out

#- 170 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '06mfygixwNsTy1uj' \
    --body '{"Code": "50ixXhzJlxAIymzD", "ContactType": "1QgpN0IQXvFe1keu", "LanguageTag": "XvUZggL7vGdz1rM7", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 170 'AdminVerifyAccountV3' test.out

#- 171 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'TXI4WXv5laozTF8d' \
    > test.out 2>&1
eval_tap $? 171 'GetUserVerificationCode' test.out

#- 172 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'geGjbF1vQb1vstjZ' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserDeletionStatusV3' test.out

#- 173 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CDYrXDUvLpD9lac4' \
    --body '{"deletionDate": 95, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserDeletionStatusV3' test.out

#- 174 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UZMdVefloONEOXKZ' \
    > test.out 2>&1
eval_tap $? 174 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 175 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P1ySBQP269SGVb9V' \
    --body '{"code": "0P36pcbZHobYkqaX", "country": "mOaQttPn3Mk9BEtp", "dateOfBirth": "DJ2ItxJT9AfuhB2B", "displayName": "n2e43h3yLtc04jB4", "emailAddress": "urZVZ0bIRGPZjimW", "password": "tEWsEsvHnqPDV7Yf", "uniqueDisplayName": "NxiACwwScSvMZJGh", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpgradeHeadlessAccountV3' test.out

#- 176 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FnBQ2Mxuc6wyiHON' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserInformationV3' test.out

#- 177 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FzrTxjijfgBKe8Ll' \
    --after '0.11922483560419406' \
    --before '0.22602857593151038' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserLoginHistoriesV3' test.out

#- 178 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LobuHAKGMhgD4xWQ' \
    --body '{"languageTag": "H5X4FUmp8i7MtQUT", "mfaToken": "wkvNYUrVsJsZRtVf", "newPassword": "OIjXazfhEtRftisi", "oldPassword": "a3UwWdK4ZJ1RTZaW"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminResetPasswordV3' test.out

#- 179 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DJP0kOAEh8H1hZQq' \
    --body '{"Permissions": [{"Action": 18, "Resource": "D2o76KzcTOEkjtHG", "SchedAction": 82, "SchedCron": "7DJrbpydA6DwYdJM", "SchedRange": ["dNBLcjnED6ikHQED", "EaHapCzpkCCWV9sy", "pFX1TejzAwJ0IlW2"]}, {"Action": 94, "Resource": "msGm9b0Pj5DjAVYd", "SchedAction": 41, "SchedCron": "vDaCqnWSBhGCJUst", "SchedRange": ["ttnovfO9EHfFS1FS", "lt8q6qab7PUfr5QU", "cgEMtYiJiRDQPClJ"]}, {"Action": 98, "Resource": "ydDFjaDyxtOMJtNC", "SchedAction": 57, "SchedCron": "qqYYXBkI29woJGi0", "SchedRange": ["xhFEMetV5qvb3qhC", "HtaIc0E3ZL27Q4Cc", "YdZZRqBgJsz4lqc8"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserPermissionV3' test.out

#- 180 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '9bgQNk9qGpVnlvNI' \
    --body '{"Permissions": [{"Action": 61, "Resource": "jcD59AKDp6EzahyW", "SchedAction": 71, "SchedCron": "zck4wqS3xApzNxtt", "SchedRange": ["gK1YRbozdJIZpd55", "M2Xq85S1aptc5ugs", "kGJgLtXjEGhdgRip"]}, {"Action": 53, "Resource": "0sqkbifv4MAVzeoi", "SchedAction": 40, "SchedCron": "5bsxWuafK1hCWVb9", "SchedRange": ["EJ1z8aXgjOakKlpG", "PvfbUSMsiGwS0iZc", "sYTtuUYjb0X5fe15"]}, {"Action": 22, "Resource": "5ZcgjESLCTzBrtAq", "SchedAction": 90, "SchedCron": "McMss2R4FeuIyT8D", "SchedRange": ["rG3AmqFbfNaHpXgm", "fCdK8mVl5UcIrU60", "0x7GxoWkvHUd3C0d"]}]}' \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserPermissionsV3' test.out

#- 181 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'igLTTTwFaP6k2faz' \
    --body '[{"Action": 47, "Resource": "JALdTVcTQdTG3wvt"}, {"Action": 67, "Resource": "t3v14SQmi2d5SYEK"}, {"Action": 11, "Resource": "BqcSFAhMSDTDiToc"}]' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionBulkV3' test.out

#- 182 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '13' \
    --namespace $AB_NAMESPACE \
    --resource 'loGr87KeKoVw7LIc' \
    --userId 'zJxhJ2BYFK6rKrZx' \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserPermissionV3' test.out

#- 183 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hQAakIW4UUd5tt0B' \
    --after 'JgzAHmq5QU6WMBGn' \
    --before '8tgyDRPaBw1p3KWe' \
    --limit '18' \
    --platformId 'CKlHBm3tjgOXkrPR' \
    --targetNamespace 'XtkkoiVqC7X2t8db' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserPlatformAccountsV3' test.out

#- 184 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QekuJ0m53yi3qBlq' \
    --status 's37eJBtN2Idy3Jae' \
    > test.out 2>&1
eval_tap $? 184 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 185 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'O9VN9GqJQEUfn0Zu' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetListJusticePlatformAccounts' test.out

#- 186 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'TEjaZbslOZW9KN0G' \
    --userId '6Eavq17Uqk1AwBEv' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserMapping' test.out

#- 187 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'Fz0e3TEyW3CgMQ8V' \
    --userId 'ZgPDt92mreizBO7c' \
    > test.out 2>&1
eval_tap $? 187 'AdminCreateJusticeUser' test.out

#- 188 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '9xOA2VtQyZRwKQUe' \
    --skipConflict 'false' \
    --body '{"platformId": "FxFxNw2zvyegy9je", "platformUserId": "pTIOGI6r5kF5hg6z"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminLinkPlatformAccount' test.out

#- 189 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tm7ydIExOTkE9V6M' \
    --platformId '1JVVNRDcCsdkv9mq' \
    > test.out 2>&1
eval_tap $? 189 'AdminGetUserLinkHistoriesV3' test.out

#- 190 AdminPlatformUnlinkV3
eval_tap 0 190 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 191 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tp8SvE9HHDaJcxk9' \
    --userId 'xG859Bmx3bGYpY4q' \
    > test.out 2>&1
eval_tap $? 191 'AdminPlatformUnlinkAllV3' test.out

#- 192 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OEMGcXmMANX9heJI' \
    --userId 'BwiuPgdbb8fMQbJ4' \
    --ticket 'AWaMX1ArhtFOHNFr' \
    > test.out 2>&1
eval_tap $? 192 'AdminPlatformLinkV3' test.out

#- 193 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 193 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 194 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '22CAsQzkbSP0HBBA' \
    --userId 'FAB8qqkkMEIkGw15' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 195 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3wkn4mkAWRfymycq' \
    --userId '9Es10nRbwoSca3mi' \
    --platformToken 'tF4DXhztbokOOYHt' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 196 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'dshwn8wjg3g7hBwX' \
    --userId 'FGVn9oOR8rSKp58d' \
    > test.out 2>&1
eval_tap $? 196 'AdminGetUserSinglePlatformAccount' test.out

#- 197 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cBVwoYCcNfqrLIPX' \
    --body '["r3h11Lb8bOEHzM3y", "oUrOnzUFwdxCs6e0", "WEn8bs6oBHIvRBEi"]' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserRolesV3' test.out

#- 198 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GsuuzkMPBqAnlfO6' \
    --body '[{"namespace": "jAx3Jj5ZGe3BoQlO", "roleId": "J34PGQzdUTVAPE2r"}, {"namespace": "EhQPXYDX8xMTG47c", "roleId": "c37xFSPp9cvZZVjX"}, {"namespace": "BVdzAUVH4uhv57Jl", "roleId": "Ca7NZ0cXoFkLUIUs"}]' \
    > test.out 2>&1
eval_tap $? 198 'AdminSaveUserRoleV3' test.out

#- 199 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'oQHvRHxjJnZSWA2e' \
    --userId '33IYiAw1rGV0wMz8' \
    > test.out 2>&1
eval_tap $? 199 'AdminAddUserRoleV3' test.out

#- 200 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'yRv9bBUFpsSyClmp' \
    --userId 'FL31gDhaK6CTS8Zt' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteUserRoleV3' test.out

#- 201 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zXeXey5bDot7joS6' \
    --body '{"enabled": false, "reason": "bJWI8N8yDhOPGMow"}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateUserStatusV3' test.out

#- 202 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'xVL3FPBX2RLL1yns' \
    --body '{"emailAddress": "YKKukYUfGNINGumh", "password": "EsyCSEqxTVk0Cx3S"}' \
    > test.out 2>&1
eval_tap $? 202 'AdminTrustlyUpdateUserIdentity' test.out

#- 203 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'krdSGQUtgeSJ2fTY' \
    > test.out 2>&1
eval_tap $? 203 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 204 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '3TaErrOvu64a6Fza' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "h1vWG3zmcEUYSHhD"}' \
    > test.out 2>&1
eval_tap $? 204 'AdminUpdateClientSecretV3' test.out

#- 205 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'pzZL1OtDYX5qHvAZ' \
    > test.out 2>&1
eval_tap $? 205 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 206 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'wdmJZQud01xPeYvr' \
    --before 'kFoa93VxOVJc9H4p' \
    --isWildcard 'true' \
    --limit '28' \
    > test.out 2>&1
eval_tap $? 206 'AdminGetRolesV3' test.out

#- 207 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "qGbjuqiDYw9gcVy8", "namespace": "rRNyONn3FE38Ftno", "userId": "P1XsPyBCDj9iVcZP"}, {"displayName": "l8ab13IINwxPtTkP", "namespace": "wIOfdICJNI32ZqEP", "userId": "BUe3GTPxAKNGFmpm"}, {"displayName": "35AJnaEWNLC1gqj1", "namespace": "LakKNawyPONYhYBp", "userId": "wiuN6g55QNnAuJCm"}], "members": [{"displayName": "15AjYy5qmznMiKVr", "namespace": "7ycYz2cgxhZrxiUg", "userId": "SgwsiDEsCwAeSyuv"}, {"displayName": "DDmI7NmJhyLhhUS6", "namespace": "obOpP0SdRDmhF3WD", "userId": "Q7z3De4407GJm3VQ"}, {"displayName": "Y34JQQNIvH53bhbg", "namespace": "M86msyYeF0qWblLn", "userId": "TemW9JdF9UusI0sT"}], "permissions": [{"action": 44, "resource": "zWAQaPAEst71LUa1", "schedAction": 64, "schedCron": "RiNSr0CShb9LbJzV", "schedRange": ["P8bjlXOsayPTt1vE", "xyiaPnPD0WI6cH8L", "2VNo0fSMzVnOuOBp"]}, {"action": 51, "resource": "mJaWUf3mHv49pr6w", "schedAction": 49, "schedCron": "R0IWQwzkcSfcrgXY", "schedRange": ["LQezfHM8R0smLsM0", "bVLQfU9y9HvthuwB", "dfs7O6B9jBGisDMJ"]}, {"action": 34, "resource": "EZmYHgHK1KKlvhDJ", "schedAction": 52, "schedCron": "ANv7vTGcfgN1Ane0", "schedRange": ["DtVp2ruJNRCsHL3R", "ofjLTuqHI0DpFd9h", "AXEqFIpWf6HVbBMj"]}], "roleName": "VxvlTMh9IDvioNzZ"}' \
    > test.out 2>&1
eval_tap $? 207 'AdminCreateRoleV3' test.out

#- 208 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'kfkDUylXxFTNE1Nf' \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleV3' test.out

#- 209 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'tCMm4gQGMTO8BIq9' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteRoleV3' test.out

#- 210 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'tf4CgzKHoelVFi7Z' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "l9kKUpdFE5kDRKyO"}' \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateRoleV3' test.out

#- 211 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'kqm3XoFubyjwEoZm' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRoleAdminStatusV3' test.out

#- 212 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'MSvfWCE3pdwiiQiH' \
    > test.out 2>&1
eval_tap $? 212 'AdminUpdateAdminRoleStatusV3' test.out

#- 213 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'BjRekJavfWst1usk' \
    > test.out 2>&1
eval_tap $? 213 'AdminRemoveRoleAdminV3' test.out

#- 214 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'Yb3pMobs9Fh21VHi' \
    --after 'VEHkaFZf3XAc2KKI' \
    --before 'AkZy0bGjWxyDESpp' \
    --limit '23' \
    > test.out 2>&1
eval_tap $? 214 'AdminGetRoleManagersV3' test.out

#- 215 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'I2iDDrwD38651GqD' \
    --body '{"managers": [{"displayName": "aoqOFBvqfb4lpqD1", "namespace": "r7aRE59rjEVm3bFG", "userId": "bhgRtLbBEnZdE6Qd"}, {"displayName": "pN5DZI9GWct1f0hL", "namespace": "kWoXjk06gXJihvg8", "userId": "xKQQlIttB0kq122z"}, {"displayName": "DoKbsrU7ZmZlEyrl", "namespace": "0TJFV87fQonUvkMN", "userId": "9sv98n80o00zbCEO"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminAddRoleManagersV3' test.out

#- 216 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'fOfXCqwzQI9Z7VML' \
    --body '{"managers": [{"displayName": "U4VAwkbc1hWaxrBy", "namespace": "lBaADOj2qykxI1OP", "userId": "7BKjCZSJxAMZ238H"}, {"displayName": "VrjoXrCAPaFaYhvw", "namespace": "HgfnmVBZogtbTUcu", "userId": "JHjGuumM5Q5pHkSa"}, {"displayName": "k40LoHmVQsXDTl8q", "namespace": "L2zAuefAnWZGlCiK", "userId": "YSqeT7uGtXhQ4DAS"}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminRemoveRoleManagersV3' test.out

#- 217 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'BBCg9XPTnGUsYyoF' \
    --after 'aEIfvuuBChTTNieX' \
    --before '96IgCVxiPcQeAJrn' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleMembersV3' test.out

#- 218 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'oN2o0cRazRAsfd6g' \
    --body '{"members": [{"displayName": "I0mWel3GWXOLTaGP", "namespace": "U84xuHje7bpki2Ya", "userId": "6bAxLeldgn6R16ej"}, {"displayName": "1NPwaCjzPXv1ioPm", "namespace": "OYbemCf06vdsJzPL", "userId": "BZXtpIFNyINQX9AE"}, {"displayName": "Lb5RXLbXnEedc0yI", "namespace": "ODfHDCmj5VqJZvps", "userId": "XOT2ApK0sn04rXuV"}]}' \
    > test.out 2>&1
eval_tap $? 218 'AdminAddRoleMembersV3' test.out

#- 219 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '0EONRGWRm7BuXMoi' \
    --body '{"members": [{"displayName": "w7PNBqXZzGegUG6I", "namespace": "cCg3W79Ft0PEFuNT", "userId": "R25kUMbniNBwFUyC"}, {"displayName": "fnh1xNJQ7kX9zPFp", "namespace": "CZKTAV8PjHCkFPld", "userId": "rrFnY3ynQdKIsuAl"}, {"displayName": "opXK76RoXfpcaj6B", "namespace": "DqyIevLph7gs5W4m", "userId": "i54aKr6HEtLLtP75"}]}' \
    > test.out 2>&1
eval_tap $? 219 'AdminRemoveRoleMembersV3' test.out

#- 220 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'GmTUAy6rSCKVaWgg' \
    --body '{"permissions": [{"action": 39, "resource": "YB3OkcE1vvDmHOqW", "schedAction": 6, "schedCron": "Lx1TmIukBVpIIwBt", "schedRange": ["CedLpiAesECVuHKc", "MRN9qGF9TMbop6bp", "RFyKT9isKo3iDYvN"]}, {"action": 25, "resource": "fjhQSPxN2mA58KOl", "schedAction": 11, "schedCron": "wd3pvGsdIl2dlI1S", "schedRange": ["4AHYyISxxB20GQHL", "N7NwbEN9vLOxqJIl", "dJfm7SEduLtS0RO2"]}, {"action": 91, "resource": "esDJH1H42oft4PNh", "schedAction": 84, "schedCron": "cWSfe6f4ICHIkffJ", "schedRange": ["wEVnpAlwiHD1st0g", "NS7d5nmIR5O5MCWt", "KkRjCsPOVLkGLFzh"]}]}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateRolePermissionsV3' test.out

#- 221 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'rmoHUVq3kU2n3hHW' \
    --body '{"permissions": [{"action": 82, "resource": "xEt0PNABPez8QcnS", "schedAction": 31, "schedCron": "oujurbfkkfcEOr6T", "schedRange": ["ForupPdhTWif2rQw", "8Ysg1i1Zjr32XZXw", "4ZeSrHZZtmPuYoBe"]}, {"action": 81, "resource": "iaVDA4sKkQsjnGm5", "schedAction": 88, "schedCron": "zd8iPRzUzd2vlPIo", "schedRange": ["uE7iFZROAvcVQ7gq", "FZ4kHESJPRqYPMpG", "iSZBtxHKFxVKEAMR"]}, {"action": 67, "resource": "bLyPsAgtBu8lztww", "schedAction": 68, "schedCron": "ouqmONYVK61CI8vl", "schedRange": ["GbFo2FhUc8cW6GwQ", "jyXnfK3Uyl6ane0y", "xnwNUryEhfvgR9qd"]}]}' \
    > test.out 2>&1
eval_tap $? 221 'AdminAddRolePermissionsV3' test.out

#- 222 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '4zDsry2skgEQWRdf' \
    --body '["POpkVIxktIqxkhI9", "mGUna2UobCejjrHP", "9LdWfroCdDL7z1Ov"]' \
    > test.out 2>&1
eval_tap $? 222 'AdminDeleteRolePermissionsV3' test.out

#- 223 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '12' \
    --resource 'miRc7F0UlKTxTCer' \
    --roleId 'FeuMSHz9xuettcRG' \
    > test.out 2>&1
eval_tap $? 223 'AdminDeleteRolePermissionV3' test.out

#- 224 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 224 'AdminGetMyUserV3' test.out

#- 225 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'pcYEGbIO9dQoXWtG' \
    --extendExp 'false' \
    --redirectUri 'y7cDcG8Z8yBksx8J' \
    --password 'o8lxzSHGq7BTN2Eo' \
    --requestId 'FgtpSSZKQltFH9g3' \
    --userName 'mudeaZxe4UWvtqUt' \
    > test.out 2>&1
eval_tap $? 225 'UserAuthenticationV3' test.out

#- 226 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'eggwhEF1M35vReKK' \
    --linkingToken 'FOLLBdN0wPqfQUnS' \
    --password 'P9qAnpRLd77yGMiJ' \
    --username '0PrrGZ3OToe6KmjW' \
    > test.out 2>&1
eval_tap $? 226 'AuthenticationWithPlatformLinkV3' test.out

#- 227 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'qSaiIBpovtKCPuC1' \
    --extendExp 'true' \
    --linkingToken 'rxu1FCkdfD79uPU1' \
    > test.out 2>&1
eval_tap $? 227 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 228 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'aIUXb9mmVCtU0mXr' \
    > test.out 2>&1
eval_tap $? 228 'RequestOneTimeLinkingCodeV3' test.out

#- 229 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'QjwMBQsigMa1WMfS' \
    > test.out 2>&1
eval_tap $? 229 'ValidateOneTimeLinkingCodeV3' test.out

#- 230 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'reN4ZKZNjyYy8kWx' \
    --isTransient 'false' \
    --clientId 'm6iAFleBoSFlaBSc' \
    --oneTimeLinkCode 'rxU7Eg7dm9PGLmQX' \
    > test.out 2>&1
eval_tap $? 230 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 231 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 231 'GetCountryLocationV3' test.out

#- 232 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 232 'Logout' test.out

#- 233 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'XsJRTdFcEC2hS81I' \
    --codeChallengeMethod 'plain' \
    --clientId 'Qg27qw5DoWkSS1yR' \
    > test.out 2>&1
eval_tap $? 233 'RequestTokenExchangeCodeV3' test.out

#- 234 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Vld2iWLuDfK2vLUD' \
    --userId '2UjxAMGkr1zE8qLw' \
    --platformUserId 'yIli9Rl8LM4siM7G' \
    > test.out 2>&1
eval_tap $? 234 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 235 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '3LHZMHdSEeH6GjUI' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 235 'RevokeUserV3' test.out

#- 236 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'Qrzz7IxPShgcBHnp' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'Pm4Olzu2spEe1wEN' \
    --redirectUri 'eeYWKbJJehh4teyh' \
    --scope 'DzW9XucwABGfMHdk' \
    --state 'AgBkQeeEYwoXZPNX' \
    --targetAuthPage 'PpVTeqCA5Xv0yZLQ' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId '4xNRxqkiXBvr0QhJ' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 236 'AuthorizeV3' test.out

#- 237 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'ZlYf1jlpc822xnMQ' \
    > test.out 2>&1
eval_tap $? 237 'TokenIntrospectionV3' test.out

#- 238 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 238 'GetJWKSV3' test.out

#- 239 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'FBlbJTAodZtEBiht' \
    --factor 'eTZIqbjwCxyrgJ54' \
    --mfaToken 'AhmKS3TfsPOKMdnc' \
    > test.out 2>&1
eval_tap $? 239 'SendMFAAuthenticationCode' test.out

#- 240 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'N4hKOAKuPSysdMKx' \
    --mfaToken '9vGWANRsCrwvzkgh' \
    > test.out 2>&1
eval_tap $? 240 'Change2faMethod' test.out

#- 241 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'GTOT4opbLx92a6sp' \
    --factor 'Cd1Qz3dMGrjO03aO' \
    --mfaToken 'qMGyJKmVN7z6S4B9' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 241 'Verify2faCode' test.out

#- 242 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'B4IV8PQcltB79ZCM' \
    --userId '9wxKZeSjbiEfogIU' \
    > test.out 2>&1
eval_tap $? 242 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 243 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId '2JmEDeNQT07bvDa5' \
    --clientId '5P5VZJoxc2pZHG4r' \
    --redirectUri 'oAz2ZosReHYXnK70' \
    --requestId 'NijH8upjiQNm0grj' \
    > test.out 2>&1
eval_tap $? 243 'AuthCodeRequestV3' test.out

#- 244 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'xwN5bTXBIEplbCoe' \
    --additionalData 'UQ6KzgVxZawsIY6i' \
    --clientId 'K3JHnqjo89AZSx1h' \
    --createHeadless 'true' \
    --deviceId 'qKLh5o0qXlqcAKpD' \
    --macAddress 'PTRuivfE10NNtQgS' \
    --platformToken 'TOwvQCKN2A2azKr7' \
    --serviceLabel '0.2852653390513916' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 244 'PlatformTokenGrantV3' test.out

#- 245 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 245 'GetRevocationListV3' test.out

#- 246 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'SXDms9BDaRuPuWGe' \
    > test.out 2>&1
eval_tap $? 246 'TokenRevocationV3' test.out

#- 247 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'M7NTIA1zYOTPvglq' \
    --simultaneousTicket '19KAa0LwRxu9858B' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '9Ge7Byc7e7Z7wnaC' \
    > test.out 2>&1
eval_tap $? 247 'SimultaneousLoginV3' test.out

#- 248 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'cFShXqN7Y77VG1Hr' \
    --clientId 'bBUx5W9sNwztuAUp' \
    --clientSecret '60JZ8TrIHYmPSsON' \
    --code 'nh3dJsUaNAP8C1Ue' \
    --codeVerifier 'RONiAXBGSu9CxyUO' \
    --extendNamespace 'JyxkZhh5tWq9ze8X' \
    --extendExp 'true' \
    --password 'qmvq1aYOhRLXUJDJ' \
    --redirectUri '5AD0iKPrfJnbeFq4' \
    --refreshToken 'Ia0Gs3LKPc6yrYJk' \
    --username 'QbJ0JIMDOX617Fvs' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 248 'TokenGrantV3' test.out

#- 249 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'NphnKPHTFPPB6Lvq' \
    > test.out 2>&1
eval_tap $? 249 'VerifyTokenV3' test.out

#- 250 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '9e8t75oycgmaKROo' \
    --code 'xCClr09hunR1CWpV' \
    --error 'OrhtUZcp3eAOkkEr' \
    --openidAssocHandle 'N9FZGH4nNMBAMrPO' \
    --openidClaimedId 's7CUfdWaGghpxt4o' \
    --openidIdentity 'I066oSBdldFOy2mK' \
    --openidMode 'MNuYgi9JYP07gsqc' \
    --openidNs 'vHt3DuHBsTWt4LaV' \
    --openidOpEndpoint '50B0oFbvt2nRkwYe' \
    --openidResponseNonce '2dkLGphpNEHIen9s' \
    --openidReturnTo '5MgNaEEDEAWuHCMV' \
    --openidSig 'KgRHO6JJyE7b8lKB' \
    --openidSigned 'BdwfiqBlCwaTqMxw' \
    --state '5VtuBYSAZpy0Zlje' \
    > test.out 2>&1
eval_tap $? 250 'PlatformAuthenticationV3' test.out

#- 251 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'qvqCQgDPM7aTb58Z' \
    --platformToken 'tTBIcNKS6XlIzeUH' \
    > test.out 2>&1
eval_tap $? 251 'PlatformTokenRefreshV3' test.out

#- 252 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'cIwFHKwSutXzAjAE' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetInputValidations' test.out

#- 253 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field '9CblT4VoJUwURGru' \
    > test.out 2>&1
eval_tap $? 253 'PublicGetInputValidationByField' test.out

#- 254 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'nXvtcKdzVpcrw61W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'PublicGetCountryAgeRestrictionV3' test.out

#- 255 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey '7cAdVYCAPs0gNI7c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 255 'PublicGetConfigValueV3' test.out

#- 256 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 256 'PublicGetCountryListV3' test.out

#- 257 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 257 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 258 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'gI0SakcEy1UfNaB9' \
    > test.out 2>&1
eval_tap $? 258 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 259 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 259 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 260 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HAlrZmDIgOxSoRh3' \
    --platformUserId 'MU6FcfrnuY9KN3A5' \
    > test.out 2>&1
eval_tap $? 260 'PublicGetUserByPlatformUserIDV3' test.out

#- 261 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '7rDAdAUQbApKG1Oq' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetAsyncStatus' test.out

#- 262 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'QA0KZFISNBDegFpR' \
    --limit '60' \
    --offset '73' \
    --platformBy 'CvZqTTTrC6aMdYfC' \
    --platformId 'ooRS5DgapkUlB6Xd' \
    --query 'ZGidyWuRE5VhRpt3' \
    > test.out 2>&1
eval_tap $? 262 'PublicSearchUserV3' test.out

#- 263 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "fmFORcmKw8ppQMI8", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "tI2tE25Q3Ln9wkI4", "policyId": "XYyR8cXAAA0T32F6", "policyVersionId": "WDHSKy0P6S0c23iN"}, {"isAccepted": false, "localizedPolicyVersionId": "VzWRoa72QI4DGJZR", "policyId": "cByUfMEFqiBwD2Id", "policyVersionId": "B6jAk6kP47dt6kl1"}, {"isAccepted": true, "localizedPolicyVersionId": "MSTWCXGVfObF5phd", "policyId": "mI1esn4nKjnIbWTD", "policyVersionId": "CdvYclMA4uSBcTM0"}], "authType": "LifcgrEu7iWUcjbJ", "code": "SRVO5zFT1BuF6mJq", "country": "SwBOR2UxCA1Oe0Sy", "dateOfBirth": "C2HB0qbmTb82eUNO", "displayName": "yDI5So5upZc4ZNu5", "emailAddress": "tO7GetislX0M8DqM", "password": "XaAD2FIqmXFn0qJN", "reachMinimumAge": true, "uniqueDisplayName": "AT9UdxleSpt3pcKk"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicCreateUserV3' test.out

#- 264 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'CP5GArMyIiS6V81O' \
    --query 'csyvo6tpEbkJTfF7' \
    > test.out 2>&1
eval_tap $? 264 'CheckUserAvailability' test.out

#- 265 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["cJ4u91iGEvC12Ynq", "gC9AXIFuynd0Xxgp", "5ED859NIKfhFea5z"]}' \
    > test.out 2>&1
eval_tap $? 265 'PublicBulkGetUsers' test.out

#- 266 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "N0xU1Rfx4zua1wMK", "languageTag": "cq3xZwzHVqVesyya"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicSendRegistrationCode' test.out

#- 267 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "g28Buqm4rs2IPlxL", "emailAddress": "u8tF8e6VCQ1d1dn7"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyRegistrationCode' test.out

#- 268 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "QMSjbkyrMweEAnye", "languageTag": "t86CffbEpC2IINhX"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicForgotPasswordV3' test.out

#- 269 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "mUsV0gnM5xEJCQwP", "uniqueDisplayName": "LSrVV4wHBwb5oErk", "username": "KMSBCGWQ0xkKc1Yy"}' \
    > test.out 2>&1
eval_tap $? 269 'PublicValidateUserInput' test.out

#- 270 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'hR6A4zCNnzoqwbeb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 270 'GetAdminInvitationV3' test.out

#- 271 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '3sntKxHZU5xKfrg2' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "arZip3ZwaVL1HNjY", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "55EdHJxydu1xxHtg", "policyId": "iyvrnyfq6CEQW5Vj", "policyVersionId": "xYponNhriyA4IZXP"}, {"isAccepted": true, "localizedPolicyVersionId": "N2hsyrH3bqWHq0yp", "policyId": "TwgBXTldNP5z4NDH", "policyVersionId": "UGMfwCrUHQYgunqn"}, {"isAccepted": false, "localizedPolicyVersionId": "rcjfNtP1wVIpRAmY", "policyId": "I5eIL9bwHzIDYcCb", "policyVersionId": "shEvViuYgNhZmJub"}], "authType": "GfI36WzklLH6GDOs", "code": "mAiDpepG4w2XF4no", "country": "gChHiw4MccnhX72b", "dateOfBirth": "ZfBqJPunyUod6vhV", "displayName": "h4LeVWmDoI8QTrvl", "emailAddress": "F5WqY68f6cYITui9", "password": "nuduBOVxWDBiKeiV", "reachMinimumAge": true, "uniqueDisplayName": "fjYoDRmzJAMq4RAu"}' \
    > test.out 2>&1
eval_tap $? 271 'CreateUserFromInvitationV3' test.out

#- 272 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "F7rFGdBqrxq7sUem", "country": "MOcIWfSiUD38SJ7N", "dateOfBirth": "jfff3ZphUYHr51zT", "displayName": "0RcIc7w7pZL40wMm", "languageTag": "TnRz5R5Bj95yYYg4", "uniqueDisplayName": "JG0FWn8poHb5mW33", "userName": "zxotu8PRdNCt88mU"}' \
    > test.out 2>&1
eval_tap $? 272 'UpdateUserV3' test.out

#- 273 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "7qkYAerT4frRkIV7", "country": "ah1b5hbPdmDzJxYX", "dateOfBirth": "HzXX04bf4yYTW29v", "displayName": "rBQZJ8rnD6riwEdZ", "languageTag": "oUIb1JOuwV3o4yqQ", "uniqueDisplayName": "oeE2MsbyVX5Cx5Gz", "userName": "x3avxcEDuERGZmrP"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicPartialUpdateUserV3' test.out

#- 274 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "BHUXt6P2X4L80FQn", "emailAddress": "YXKO5BD9Qe0sA79g", "languageTag": "tLO59augePdO7jkd"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicSendVerificationCodeV3' test.out

#- 275 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "hbhSeD7cfKOjMm3W", "contactType": "fSgBJLgIosindloZ", "languageTag": "e3ZfpzBOdazf9QFW", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 275 'PublicUserVerificationV3' test.out

#- 276 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8Du8sXJB4CgNIQ1Z", "country": "8Oc8S0pBzSFCvXTZ", "dateOfBirth": "QDGtJxes16pQhEd8", "displayName": "qyIwrotWqEMaYA2Y", "emailAddress": "mXDDkN9fNre3wp8f", "password": "9WkxQ2uig6J3F77x", "uniqueDisplayName": "0f88foz5LSA98Vqn", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 276 'PublicUpgradeHeadlessAccountV3' test.out

#- 277 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "76VkJUg2zQHruXjT", "password": "5VMHLDpnQmRgbJY1"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyHeadlessAccountV3' test.out

#- 278 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "MuW9AQNl7RRgWVzt", "mfaToken": "iSdv39hBmujQhzEn", "newPassword": "zNGJIiOcZqgYdrT3", "oldPassword": "aGemOAPATIRlL0xJ"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicUpdatePasswordV3' test.out

#- 279 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'NtGphcTfaj5XY1XI' \
    > test.out 2>&1
eval_tap $? 279 'PublicCreateJusticeUser' test.out

#- 280 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dt4A2Tt3qbboPpxN' \
    --redirectUri 'ePLeZ6F57B4EqYHD' \
    --ticket 'ZUrs3JbhZP3a90mq' \
    > test.out 2>&1
eval_tap $? 280 'PublicPlatformLinkV3' test.out

#- 281 PublicPlatformUnlinkV3
eval_tap 0 281 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 282 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'P4YSEXZdAM23OnjV' \
    > test.out 2>&1
eval_tap $? 282 'PublicPlatformUnlinkAllV3' test.out

#- 283 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EKMkPM9dmjFSGyF3' \
    --ticket 'oiplAdWTqQsakuKZ' \
    > test.out 2>&1
eval_tap $? 283 'PublicForcePlatformLinkV3' test.out

#- 284 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '0mgpnI5Phpo7b2ST' \
    --clientId 'VzcMYdDBhBlFaJoc' \
    --redirectUri 'KhB5mYUgbCCnzF4S' \
    > test.out 2>&1
eval_tap $? 284 'PublicWebLinkPlatform' test.out

#- 285 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '4usdPqbze0c2vFOp' \
    --code '7eSVa3fQPLk1iNon' \
    --state 'ZHE6xEdPGvizmZqM' \
    > test.out 2>&1
eval_tap $? 285 'PublicWebLinkPlatformEstablish' test.out

#- 286 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'g9oMcTfrJXRZsTld' \
    --code 'rvLqZOCYvcLvuMin' \
    --state 'jjepSgTnQzLq6fma' \
    > test.out 2>&1
eval_tap $? 286 'PublicProcessWebLinkPlatformV3' test.out

#- 287 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "fUITOd4AN7SaLvvD", "userIds": ["NfLa82XFKlmRedWy", "qB7PB3FzOiC7uIFH", "L5vcyG7NxOim00B3"]}' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUsersPlatformInfosV3' test.out

#- 288 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zDjHTjz4MY1Uwyet", "emailAddress": "PCtRLlKVcIPrOn0C", "languageTag": "Cbr0EDeUYo1NnQbe", "newPassword": "FjrKrdJPrIaheKIs"}' \
    > test.out 2>&1
eval_tap $? 288 'ResetPasswordV3' test.out

#- 289 PublicGetUserByUserIdV3
eval_tap 0 289 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 290 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sVPbPb4FasFYB93c' \
    --activeOnly 'false' \
    --after '2CbFq7y5hKxfUSb9' \
    --before 'n4CjmMoFWn9Cm7vk' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserBanHistoryV3' test.out

#- 291 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N5mAI5K33elSRUAP' \
    > test.out 2>&1
eval_tap $? 291 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 292 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xSZTvQoU32NYxlIb' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetUserInformationV3' test.out

#- 293 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HJeY6fjMXZfkqXcw' \
    --after '0.6652962566284183' \
    --before '0.5539647008820879' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetUserLoginHistoriesV3' test.out

#- 294 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VKtiNxSTHlxXAuLn' \
    --after 'Cenotfb63Qyl5iCt' \
    --before 'agskfk6eTh3lJRP8' \
    --limit '2' \
    --platformId 'i5fAuk8X0rpJj44p' \
    > test.out 2>&1
eval_tap $? 294 'PublicGetUserPlatformAccountsV3' test.out

#- 295 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uk880BN4ttYH0fpI' \
    > test.out 2>&1
eval_tap $? 295 'PublicListJusticePlatformAccountsV3' test.out

#- 296 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'TDSxQVGoUU6af0eK' \
    --body '{"platformId": "yNdcyWBRngGAfEjL", "platformUserId": "rxs7lATpucn4WgPC"}' \
    > test.out 2>&1
eval_tap $? 296 'PublicLinkPlatformAccount' test.out

#- 297 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'tEGPcbpORKFACAKx' \
    --body '{"chosenNamespaces": ["96JeXrE5zEJTZ0aa", "1MT3vPJVNzQfSgjc", "sJwYXHoa1bpdQ941"], "requestId": "2eUuWYZXsjbRCiol"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicForceLinkPlatformWithProgression' test.out

#- 298 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '71AF6g8Wi7Vgrxo8' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetPublisherUserV3' test.out

#- 299 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xAM1PopaFWxZjApH' \
    --password 'EOKkXaAFmwxsltwx' \
    > test.out 2>&1
eval_tap $? 299 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 300 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'BBGyy74COy2S6DzV' \
    --before 'ZRrVI32BT9MewrYY' \
    --isWildcard 'true' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetRolesV3' test.out

#- 301 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'OaFrRORM5AwM1C1z' \
    > test.out 2>&1
eval_tap $? 301 'PublicGetRoleV3' test.out

#- 302 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetMyUserV3' test.out

#- 303 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'GvYUnTcKnQw4I20a' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 304 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Hal9M69Phxz2Bx61", "0LGdzmMweYwUjAr6", "iBxnJDwjH32plUt8"], "oneTimeLinkCode": "B3yvRQIscNIpj3N3"}' \
    > test.out 2>&1
eval_tap $? 304 'LinkHeadlessAccountToMyAccountV3' test.out

#- 305 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "QmQO6xdmLzekpCvW"}' \
    > test.out 2>&1
eval_tap $? 305 'PublicSendVerificationLinkV3' test.out

#- 306 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'laGdihwncYjvT3SF' \
    > test.out 2>&1
eval_tap $? 306 'PublicVerifyUserByLinkV3' test.out

#- 307 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '1mlpTDcbRe2NX3Vu' \
    --code '3v7bs9cfN6Www2jB' \
    --error 'wT8HLCmIuM5aGjii' \
    --state '85V08LLAq3eG8y4f' \
    > test.out 2>&1
eval_tap $? 307 'PlatformAuthenticateSAMLV3Handler' test.out

#- 308 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'U3SKJR5VjaA2VzMF' \
    --payload 'gxwfTu3KYpjplczw' \
    > test.out 2>&1
eval_tap $? 308 'LoginSSOClient' test.out

#- 309 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'PSrOHSwpaYuqNG4A' \
    > test.out 2>&1
eval_tap $? 309 'LogoutSSOClient' test.out

#- 310 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'pafeCot8GM8LcGGj' \
    --code 'DgjDtBHXN4vjpvq6' \
    > test.out 2>&1
eval_tap $? 310 'RequestTargetTokenResponseV3' test.out

#- 311 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '32' \
    --namespace 'f17qjieUuQ2OD6EL' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 311 'AdminListInvitationHistoriesV4' test.out

#- 312 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sswcMSOKhVr7YBB4' \
    > test.out 2>&1
eval_tap $? 312 'AdminGetDevicesByUserV4' test.out

#- 313 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'OZ47ON0LzCg5LdwH' \
    --endDate 'Tx9YWQEkdRRStVK9' \
    --limit '1' \
    --offset '57' \
    --startDate 'K1HqBqmkOMnc7FBk' \
    > test.out 2>&1
eval_tap $? 313 'AdminGetBannedDevicesV4' test.out

#- 314 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YBSc6YHxFSMm3FI2' \
    > test.out 2>&1
eval_tap $? 314 'AdminGetUserDeviceBansV4' test.out

#- 315 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "1IQLcq0PXEFLCW1x", "deviceId": "reCDPPBbFJWHIETb", "deviceType": "K1uEIIiccXaEGKJR", "enabled": false, "endDate": "OTaXyg6ONPZiVijn", "ext": {"5ieRGNEj0ghj0wOc": {}, "KbcE4n9ARDg3ih4r": {}, "u5QyE3rDJtlr1qPA": {}}, "reason": "UlHxj73gP6igjZGE"}' \
    > test.out 2>&1
eval_tap $? 315 'AdminBanDeviceV4' test.out

#- 316 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '3KS9lwaLaHYZkKlD' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminGetDeviceBanV4' test.out

#- 317 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'oSUwtWOCU9QU0avh' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 317 'AdminUpdateDeviceBanV4' test.out

#- 318 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '3WxgJMgXS6M7oRIZ' \
    --startDate 'vwiPKvs3DiHGTxSh' \
    --deviceType 'bOzpxJKdNFFFacJm' \
    > test.out 2>&1
eval_tap $? 318 'AdminGenerateReportV4' test.out

#- 319 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 319 'AdminGetDeviceTypesV4' test.out

#- 320 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '5HwGMn31MFyob6XB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 320 'AdminGetDeviceBansV4' test.out

#- 321 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'R0jM6Kh9tfulgAX8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 321 'AdminDecryptDeviceV4' test.out

#- 322 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'V5KEFOhGkA8Kvsd3' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 322 'AdminUnbanDeviceV4' test.out

#- 323 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '8i1SwLSYhgsgewaA' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 323 'AdminGetUsersByDeviceV4' test.out

#- 324 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 324 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 325 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '84' \
    --offset '54' \
    > test.out 2>&1
eval_tap $? 325 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 326 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 61}' \
    > test.out 2>&1
eval_tap $? 326 'AdminCreateTestUsersV4' test.out

#- 327 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "K8f2mfF6td6Oj0BG", "policyId": "U4D8dXRrLG2GI7A6", "policyVersionId": "BQ3oRhV0laFT6MvH"}, {"isAccepted": false, "localizedPolicyVersionId": "IJBeLKVnWGz9Qe3D", "policyId": "h3qO8iiaqLsEarxZ", "policyVersionId": "P261nee3aS8jM6Yp"}, {"isAccepted": false, "localizedPolicyVersionId": "enEgEowDNy0FUsmV", "policyId": "WbLzzfHEg3PRS94N", "policyVersionId": "ho5xga1NCDgQO3qu"}], "authType": "EMAILPASSWD", "code": "hf8K0yNwcwh3wvSy", "country": "JZlJv5AAMBW00Kn8", "dateOfBirth": "ja2unpw7M5Yjl3hI", "displayName": "UWEiaqPrhVkX7LRK", "emailAddress": "ZSXSfNy3IGu46fMQ", "password": "yUQDQAzeIWA6Vc20", "passwordMD5Sum": "V61PbOLEGCIE14nj", "reachMinimumAge": false, "uniqueDisplayName": "jt1EoVe0HGfq8N1P", "username": "i6gZZUDlTzIQjFAX"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminCreateUserV4' test.out

#- 328 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["IsXNifthxlERmqMK", "uYfQKPfBNkTGqyvU", "uz2IDPkjBRL3pO0i"]}' \
    > test.out 2>&1
eval_tap $? 328 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 329 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["0R98cd4uXz2mCTtQ", "Vv6d9r2H0FldAlfW", "1oCkYedZlFSAeApw"]}' \
    > test.out 2>&1
eval_tap $? 329 'AdminBulkCheckValidUserIDV4' test.out

#- 330 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sDFzOMDGh9B7CEb1' \
    --body '{"avatarUrl": "u46MUokcVeAAdPf2", "country": "mVIm4mmMBeYuvxND", "dateOfBirth": "GCJ85iJPxXmc79BN", "displayName": "HeYAMg30dFlDQwjS", "languageTag": "Q9xqPYNV1vNLRDef", "skipLoginQueue": false, "uniqueDisplayName": "N3BX7r51ensGnCt7", "userName": "qIMBqXxqRG7Vc1TN"}' \
    > test.out 2>&1
eval_tap $? 330 'AdminUpdateUserV4' test.out

#- 331 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lttmSX4GGouMcWoi' \
    --body '{"code": "zVVXDvQmMPe2pl1E", "emailAddress": "1Qb9OL74rSr9zH22"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateUserEmailAddressV4' test.out

#- 332 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'dakLhrXmubCs9RzB' \
    > test.out 2>&1
eval_tap $? 332 'AdminDisableUserMFAV4' test.out

#- 333 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uKunw1ojWKFOljrr' \
    > test.out 2>&1
eval_tap $? 333 'AdminListUserRolesV4' test.out

#- 334 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SgceDW8eJ18PU3l0' \
    --body '{"assignedNamespaces": ["yKViVMSaJqkfvzc7", "aRjBveS7NNRkFqrk", "8uCTEqmmzcZxmpCs"], "roleId": "KrLwvwtZCFzMFcca"}' \
    > test.out 2>&1
eval_tap $? 334 'AdminUpdateUserRoleV4' test.out

#- 335 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JSVvW1w9H78JWrbR' \
    --body '{"assignedNamespaces": ["48tzwdxq7T2ZiofV", "0YLdkbX9puxCWN6t", "DpHMMXXBdDwMHKyP"], "roleId": "uglJvvZmh8Fwy4BT"}' \
    > test.out 2>&1
eval_tap $? 335 'AdminAddUserRoleV4' test.out

#- 336 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '1srpNpadzWc1U1bk' \
    --body '{"assignedNamespaces": ["E9LoYrPGQGo1276D", "uK6c9Lxdn1auPlIW", "zaVs83Yg9hasBu4l"], "roleId": "3Ke5jI2TQkooyAM5"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminRemoveUserRoleV4' test.out

#- 337 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '95' \
    --offset '87' \
    > test.out 2>&1
eval_tap $? 337 'AdminGetRolesV4' test.out

#- 338 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "oClFM38yiZ8Ww7a9"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateRoleV4' test.out

#- 339 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'iHhmqbS5D340JPLU' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetRoleV4' test.out

#- 340 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'IjaNcya2R4hYmEZ8' \
    > test.out 2>&1
eval_tap $? 340 'AdminDeleteRoleV4' test.out

#- 341 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'orfnwOp96qsuXT0f' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "av8gQRBjASGjDbrY"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateRoleV4' test.out

#- 342 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'V6CGgbA4uIpergXe' \
    --body '{"permissions": [{"action": 23, "resource": "Fg0iHvP7ly6wpCoY", "schedAction": 87, "schedCron": "RDSEkbQk1LWgQogU", "schedRange": ["RMxlM5orF8xm3YvP", "QCvi7f7P0H4r7Jl0", "yxhsUr7LC6bteREx"]}, {"action": 1, "resource": "fEVN8h7sadNHFBdp", "schedAction": 1, "schedCron": "vSa1Iv4OC6P978Mp", "schedRange": ["PEc9RfnkhCOEOdgs", "kllYA83dVSGjEIBv", "T7xngN1km268qKEU"]}, {"action": 55, "resource": "o1Jsj2TZ9EbFbCMy", "schedAction": 37, "schedCron": "R8ImCPeKF0bQ3XGv", "schedRange": ["vvFkQbAOLtvOSzm2", "c4lS8uoKJzIJQyxV", "G2NMYwMCLX3Iucxg"]}]}' \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateRolePermissionsV4' test.out

#- 343 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '9OtP5AD5wgnfhyhK' \
    --body '{"permissions": [{"action": 15, "resource": "7gNmZ8k9YmUAe7cW", "schedAction": 22, "schedCron": "ggfTNbWF7v1LoA8w", "schedRange": ["qPab3htpTSUCfGnn", "LzO56N6Q40jSKVsz", "hclqn4Kf9SCenqLn"]}, {"action": 66, "resource": "QlvVlbyV0ubZuEao", "schedAction": 70, "schedCron": "1vvr5TDmfpzs7qEk", "schedRange": ["2i2dZBhniDVv1I92", "IMwXbmKlei9aB0Qx", "Ttpady6DvhFlw1Pw"]}, {"action": 52, "resource": "yO4Dh32bcDLN6Mok", "schedAction": 35, "schedCron": "HZs2PI4HpJu3lsy3", "schedRange": ["vFEVrDKRUGbm2l43", "VVEtwfM6ty1TYlrz", "Ue0RI5MsfyHEFk17"]}]}' \
    > test.out 2>&1
eval_tap $? 343 'AdminAddRolePermissionsV4' test.out

#- 344 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'saRfyFHCb3FXWMwH' \
    --body '["QImvlWKxI0WIZU8m", "O6HwjBJPkvpy5eNf", "XigxzJGgPBArM1Zt"]' \
    > test.out 2>&1
eval_tap $? 344 'AdminDeleteRolePermissionsV4' test.out

#- 345 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'dDqwFUCKHNp4mVJq' \
    --after 'XlYVdjXuKhAcju1C' \
    --before 'dmHwcrRedHeI2l5f' \
    --limit '71' \
    > test.out 2>&1
eval_tap $? 345 'AdminListAssignedUsersV4' test.out

#- 346 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'NykWYV7f0QhfMt3b' \
    --body '{"assignedNamespaces": ["0RAh1vsMWt8Zauo4", "cWrjI6psoQYZeklq", "2JNVpx3DBfdEcz0X"], "namespace": "eSwbHsMmjZ24E6fv", "userId": "ejOcwflzTnIL4kxP"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminAssignUserToRoleV4' test.out

#- 347 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '46fg34HUgi3hBy0a' \
    --body '{"namespace": "ntiY8scMecMhHQbs", "userId": "gMJJEijobAnrLKYT"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminRevokeUserFromRoleV4' test.out

#- 348 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["teucA9D30AGtdedD", "8qSrZInsz83fqSiU", "Akit4HHEpLdAmZCM"], "emailAddresses": ["x9EAAEv79pnvZ6bP", "CgvENHdKMbyjLEQX", "hWu69lwtrUZuukrL"], "isAdmin": true, "isNewStudio": false, "languageTag": "a3IkiHtUoMyhOt2v", "namespace": "edZcGcQE1OArSort", "roleId": "sZY5sxWx425BZlu2"}' \
    > test.out 2>&1
eval_tap $? 348 'AdminInviteUserNewV4' test.out

#- 349 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "931rtWItiuxQ4xog", "country": "XySuNL0UiRcXah5d", "dateOfBirth": "Pgrg4qfpctALSXna", "displayName": "fn9dwxiLgHlUTT4L", "languageTag": "4ERkab6Jt3JpTt9U", "skipLoginQueue": true, "uniqueDisplayName": "ueFDUWRGAT0wApGe", "userName": "ZcTrLOguDoGyPT4s"}' \
    > test.out 2>&1
eval_tap $? 349 'AdminUpdateMyUserV4' test.out

#- 350 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"mfaToken": "rWt9RtEBWkgBbmJL"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminDisableMyAuthenticatorV4' test.out

#- 351 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'V5OLZFDTlk1rygiD' \
    > test.out 2>&1
eval_tap $? 351 'AdminEnableMyAuthenticatorV4' test.out

#- 352 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 352 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 353 AdminGetMyBackupCodesV4
eval_tap 0 353 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 354 AdminGenerateMyBackupCodesV4
eval_tap 0 354 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 355 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"mfaToken": "M7tNbbxBdlODl1em"}' \
    > test.out 2>&1
eval_tap $? 355 'AdminDisableMyBackupCodesV4' test.out

#- 356 AdminDownloadMyBackupCodesV4
eval_tap 0 356 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 357 AdminEnableMyBackupCodesV4
eval_tap 0 357 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 358 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'uu1TK6lGM8k0mKls' \
    > test.out 2>&1
eval_tap $? 358 'AdminGetBackupCodesV4' test.out

#- 359 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'aWhds3JVq5bc1yuV' \
    > test.out 2>&1
eval_tap $? 359 'AdminGenerateBackupCodesV4' test.out

#- 360 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'BPo734hlYGHULVun' \
    > test.out 2>&1
eval_tap $? 360 'AdminEnableBackupCodesV4' test.out

#- 361 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code '6DVbNbMzIyMV6IIU' \
    --factor 'sJGwKb2InOJ61vej' \
    > test.out 2>&1
eval_tap $? 361 'AdminChallengeMyMFAV4' test.out

#- 362 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'mJkxTKXrjZsfwiSg' \
    > test.out 2>&1
eval_tap $? 362 'AdminSendMyMFAEmailCodeV4' test.out

#- 363 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"mfaToken": "yNI2fzhz6Vz5ysJs"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminDisableMyEmailV4' test.out

#- 364 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '6wfkOldw8tbNw4hP' \
    > test.out 2>&1
eval_tap $? 364 'AdminEnableMyEmailV4' test.out

#- 365 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 365 'AdminGetMyEnabledFactorsV4' test.out

#- 366 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'EPFaaMW2htLOyKt2' \
    > test.out 2>&1
eval_tap $? 366 'AdminMakeFactorMyDefaultV4' test.out

#- 367 AdminGetMyMFAStatusV4
samples/cli/sample-apps Iam adminGetMyMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 367 'AdminGetMyMFAStatusV4' test.out

#- 368 AdminInviteUserV4
eval_tap 0 368 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 369 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'AzlROohJEvuwt27j' \
    --linkingToken 'A3Pux2hTXtPGIsbV' \
    --password 'NSZMuizTXRCIYlP4' \
    --username 'itx1mbuBZhtIcRWu' \
    > test.out 2>&1
eval_tap $? 369 'AuthenticationWithPlatformLinkV4' test.out

#- 370 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'D556ZcQIKDzTcyY2' \
    --extendExp 'true' \
    --linkingToken 'KlzxxDEfaBAuVUwo' \
    > test.out 2>&1
eval_tap $? 370 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 371 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'upbHNCY5CXwRrmWP' \
    --factor 'JBNjt9z1SKwG1LxQ' \
    --mfaToken 'tDAUisNzDbTWy6SV' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 371 'Verify2faCodeV4' test.out

#- 372 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'UBHNsTwyHVLe7KGp' \
    --codeChallenge 'iH32xw51GRgLtOhE' \
    --codeChallengeMethod 'plain' \
    --additionalData 'DdUtCDjNdo5lIA5b' \
    --clientId 'yISdIpjcpIu2flGK' \
    --createHeadless 'true' \
    --deviceId 'YfI5t482Bdaryjnu' \
    --macAddress '8NZXjKpVuyMN5sU5' \
    --platformToken '1Il9iZnUIFzSZweL' \
    --serviceLabel '0.7711094932159651' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 372 'PlatformTokenGrantV4' test.out

#- 373 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'En6FPLmQ4NmFkDHs' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'pB6W9xZFksX8lRpe' \
    --simultaneousTicket 'QtMKeZG9iFCWtylu' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'QJ7QmM5qBbRvg8ti' \
    > test.out 2>&1
eval_tap $? 373 'SimultaneousLoginV4' test.out

#- 374 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'fE6EH0ccin9lhmWL' \
    --codeChallengeMethod 'plain' \
    --additionalData 'Q1WlZsYoTPg2J3ai' \
    --clientId 'diuRt5Y7qVBzGL5L' \
    --clientSecret 'eXVHovAjo1qDE93h' \
    --code '2kxB7DL9iR2ywW3I' \
    --codeVerifier 'azq5MvbMG9SkhktH' \
    --extendNamespace 'vSPMtrBNCQADcI0e' \
    --extendExp 'false' \
    --loginQueueTicket 'T9EnnLyCqEoH0583' \
    --password 'eWkVttDlCNunx63W' \
    --redirectUri '5ztRSkh7RET007th' \
    --refreshToken 'aYTHIVCvp9JNMeNt' \
    --username '1WlgN1bniOpDJuLF' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 374 'TokenGrantV4' test.out

#- 375 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'atV0QISdVJIV71IY' \
    --code '760O32OUNHxkvnON' \
    > test.out 2>&1
eval_tap $? 375 'RequestTargetTokenResponseV4' test.out

#- 376 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'cyBNLhE4EfYUPhfl' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["NJcow5OLcbAc3Yeh", "ATjQtfTSiwLjrx1k", "rMainFXS8E4p7kpz"]}' \
    > test.out 2>&1
eval_tap $? 376 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 377 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "zq3m7vLE1KpbRrtq", "policyId": "M1gTd4kndzSbnwY7", "policyVersionId": "jK7XFDmNL2zWGa4p"}, {"isAccepted": true, "localizedPolicyVersionId": "wRdLI20OqMOxS4Fp", "policyId": "KpbVTs00IL6EZiqq", "policyVersionId": "S3iYrxhFlGjNk4X6"}, {"isAccepted": true, "localizedPolicyVersionId": "VD77CDRzZXjNwl0r", "policyId": "BcuK5EHWTyUjX9L0", "policyVersionId": "RKFYKObjN5yhulnw"}], "authType": "EMAILPASSWD", "country": "HlYsc678vMNWhd5m", "dateOfBirth": "hDOd0UrTFt09DqFx", "displayName": "emj3leNIMqm4Fv3g", "emailAddress": "c4XEWsm9VTihQ4Ep", "password": "IlEzwbPlojHjvHiJ", "passwordMD5Sum": "nSTwePleht57Fx43", "uniqueDisplayName": "0rIfQtmZMqwfIQ9S", "username": "WMIPVXFT3SWtLI0w", "verified": true}' \
    > test.out 2>&1
eval_tap $? 377 'PublicCreateTestUserV4' test.out

#- 378 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "twDIIEGxVYzpA7oR", "policyId": "0xgWQo0AZBw0xeez", "policyVersionId": "OG9HVtvaA43C22B2"}, {"isAccepted": false, "localizedPolicyVersionId": "QFx4L0PpgWtYLg5O", "policyId": "LD8N9E4EevDh58Xk", "policyVersionId": "AYNZCoEQmdm4iYrP"}, {"isAccepted": true, "localizedPolicyVersionId": "3EOcdqWSzkx1kv6F", "policyId": "RIEcBXilfyuQ4Qa1", "policyVersionId": "9MPV7AvXWS6oZHtm"}], "authType": "EMAILPASSWD", "code": "Lhv20I7Z9A0OoczZ", "country": "1JEPOpF0g2YvUZB3", "dateOfBirth": "2QyQktnDlBKbquhc", "displayName": "yOgQxlUipemSun21", "emailAddress": "i8VeSQ4WywYZR6Wb", "password": "eMbs0cvn82jsvSJP", "passwordMD5Sum": "kmOBY5mi3pfCAazt", "reachMinimumAge": false, "uniqueDisplayName": "xWChd7gnTg9kIypE", "username": "EdzDq1oSbJ9Beex2"}' \
    > test.out 2>&1
eval_tap $? 378 'PublicCreateUserV4' test.out

#- 379 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'INv7SBPAwvsEee4G' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7EX8eNyMqAVK422b", "policyId": "KKUNncFllMEcBjPt", "policyVersionId": "scFlJius5Ez6FMsN"}, {"isAccepted": true, "localizedPolicyVersionId": "0AYQNcaa1D6ZvPzA", "policyId": "Q4q10eidPhih2hq4", "policyVersionId": "xFQkcEWIc93XYqrK"}, {"isAccepted": false, "localizedPolicyVersionId": "9nmzifNBy7rKgpto", "policyId": "8O8W398H44EutAkT", "policyVersionId": "dVF65EE9siAWxR6C"}], "authType": "EMAILPASSWD", "code": "nXNGNByXWyh81Dlg", "country": "jnnROsUFbkVJe6B3", "dateOfBirth": "4gMeNx4xjoUbJ7tG", "displayName": "hF602EhCIku1kZtC", "emailAddress": "1UzrI5O3jpMEuzjh", "password": "Rk3zqYp6ePCDYGgG", "passwordMD5Sum": "yFOmJyt7yPOetZVp", "reachMinimumAge": false, "uniqueDisplayName": "jqnT48mIfJQnfkNQ", "username": "vIeI80tCazRkpcTU"}' \
    > test.out 2>&1
eval_tap $? 379 'CreateUserFromInvitationV4' test.out

#- 380 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "FDUJwvPpwLQSwacc", "country": "oYkkW2aFLgVxvZAD", "dateOfBirth": "gjBf0hidugd9hR2q", "displayName": "yLaAIBZV1VnHGmKK", "languageTag": "abIhNiUq00uepDgp", "uniqueDisplayName": "3zksxpzjVwEEv0Lm", "userName": "TQFdj598oAOsnyBP"}' \
    > test.out 2>&1
eval_tap $? 380 'PublicUpdateUserV4' test.out

#- 381 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "huU0AhYahHdN3K8B", "emailAddress": "AiOow6gdHRzTmqaS"}' \
    > test.out 2>&1
eval_tap $? 381 'PublicUpdateUserEmailAddressV4' test.out

#- 382 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vdh5q4ODnrCSs1F1", "country": "iikoOESh58sLdTCy", "dateOfBirth": "lQQgfbt0UHzvWqqY", "displayName": "IxGj1g7Y75ainvsB", "emailAddress": "lKtgaqjnEbjq0O0m", "password": "9A93t7FRD4asJXCD", "reachMinimumAge": true, "uniqueDisplayName": "z5yZbQtooFG0rnoE", "username": "xcOJhQJiIkqhUqJX", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 382 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 383 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "f0lMQjZMyLTeCZzr", "password": "eQjrHkjRHnnEh9sx", "username": "Ip5WWrnYsLH5Og3O"}' \
    > test.out 2>&1
eval_tap $? 383 'PublicUpgradeHeadlessAccountV4' test.out

#- 384 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "olVpDzH8H9qvJS2r"}' \
    > test.out 2>&1
eval_tap $? 384 'PublicDisableMyAuthenticatorV4' test.out

#- 385 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'EiGemA9CUyzfYxPm' \
    > test.out 2>&1
eval_tap $? 385 'PublicEnableMyAuthenticatorV4' test.out

#- 386 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 386 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 387 PublicGetMyBackupCodesV4
eval_tap 0 387 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 388 PublicGenerateMyBackupCodesV4
eval_tap 0 388 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 389 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "cKnY5qw8Yyyf3wpD"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicDisableMyBackupCodesV4' test.out

#- 390 PublicDownloadMyBackupCodesV4
eval_tap 0 390 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 391 PublicEnableMyBackupCodesV4
eval_tap 0 391 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 392 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'SbMu1z4MWF4PkpXc' \
    > test.out 2>&1
eval_tap $? 392 'PublicGetBackupCodesV4' test.out

#- 393 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'NIMKKWvYRnyq19ak' \
    > test.out 2>&1
eval_tap $? 393 'PublicGenerateBackupCodesV4' test.out

#- 394 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '4tUvJyMEYvKwQjup' \
    > test.out 2>&1
eval_tap $? 394 'PublicEnableBackupCodesV4' test.out

#- 395 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'tUOFzYkjiMkv8zVo' \
    --factor 'eB2t2QkZOSdPyGwV' \
    > test.out 2>&1
eval_tap $? 395 'PublicChallengeMyMFAV4' test.out

#- 396 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 396 'PublicRemoveTrustedDeviceV4' test.out

#- 397 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'krH8Q2Li6WK3hudz' \
    > test.out 2>&1
eval_tap $? 397 'PublicSendMyMFAEmailCodeV4' test.out

#- 398 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "WwE9CjBy6JcTqL32"}' \
    > test.out 2>&1
eval_tap $? 398 'PublicDisableMyEmailV4' test.out

#- 399 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '6fyjKYXRVEmNFUPY' \
    > test.out 2>&1
eval_tap $? 399 'PublicEnableMyEmailV4' test.out

#- 400 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 400 'PublicGetMyEnabledFactorsV4' test.out

#- 401 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'N0pSraDISM6WKvVx' \
    > test.out 2>&1
eval_tap $? 401 'PublicMakeFactorMyDefaultV4' test.out

#- 402 PublicGetMyMFAStatusV4
samples/cli/sample-apps Iam publicGetMyMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 402 'PublicGetMyMFAStatusV4' test.out

#- 403 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'D2DORPERmurnWZT5' \
    > test.out 2>&1
eval_tap $? 403 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 404 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "aAlofFvfzWLIgXlk", "emailAddress": "4yUsfWzJ3lkxoN7k", "languageTag": "HsOrGMBZtlTmUxL3", "namespace": "DvMpA3R0FXnnzVtE", "namespaceDisplayName": "xRG06xVldllc1EiP"}' \
    > test.out 2>&1
eval_tap $? 404 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE