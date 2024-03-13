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
echo "1..389"

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
    --excludePermissions 'false' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --body '{"modules": [{"docLink": "SebrYZqDQXauI4EC", "groups": [{"group": "BCYHzyYnTJsN036y", "groupId": "zfVr4ZihGmVJkPCB", "permissions": [{"allowedActions": [44, 62, 76], "resource": "8q3HC1ny2PLowLqA"}, {"allowedActions": [19, 59, 94], "resource": "GNnioeFdbP9hK9YO"}, {"allowedActions": [44, 37, 80], "resource": "AYshtHj7pyvCeJOy"}]}, {"group": "2FwAUOXaOwIqGja8", "groupId": "3HOTjrQirXm1DftV", "permissions": [{"allowedActions": [59, 27, 100], "resource": "IxRhHvLKCebXnI9t"}, {"allowedActions": [74, 81, 48], "resource": "DMCRXKCJl6N0CfVA"}, {"allowedActions": [50, 75, 1], "resource": "csmece9XfNlDom7X"}]}, {"group": "lUVtqXeVqAThC3gc", "groupId": "07EQNIOKufQxPOrX", "permissions": [{"allowedActions": [31, 28, 27], "resource": "77cer7aewJlZXNAI"}, {"allowedActions": [84, 54, 42], "resource": "Z2tnhhexbOF1NHNO"}, {"allowedActions": [78, 97, 68], "resource": "u1kNveti9qVaj8Q9"}]}], "module": "JZjS8aapgQo3UuL4", "moduleId": "D2kq5dpC5pKGyv0u"}, {"docLink": "xq6m0I8ggMYoyvt8", "groups": [{"group": "tJNJE5pUSZ5aAsdd", "groupId": "hRQdhAQMwTJV4Zoc", "permissions": [{"allowedActions": [93, 43, 48], "resource": "HlKOpVkO3uNYl9oj"}, {"allowedActions": [80, 52, 41], "resource": "6k3pNle1wvLBmhbz"}, {"allowedActions": [99, 99, 83], "resource": "diGE2zbcyjj5eVw9"}]}, {"group": "nDpu2n7p5uo8niLu", "groupId": "kzEo7oTn6DsybX3K", "permissions": [{"allowedActions": [82, 5, 79], "resource": "NL0nJfj1xVU5nra8"}, {"allowedActions": [98, 70, 68], "resource": "uEhsiAmhVqJEdY9T"}, {"allowedActions": [64, 2, 90], "resource": "sxFKx0i7TYusc7t7"}]}, {"group": "QckoEzhymVYzmmSj", "groupId": "Ci2D02sflzM57xYR", "permissions": [{"allowedActions": [1, 10, 71], "resource": "PmQMTeCi1bkz1BSr"}, {"allowedActions": [50, 15, 45], "resource": "mmfP63bSQ3gLSWnS"}, {"allowedActions": [85, 26, 16], "resource": "H0uQDEYDZ5f9ypdG"}]}], "module": "DcbTkWCNVzOCQ6GK", "moduleId": "ZTx5xSGoqXvQsbVv"}, {"docLink": "6k459AvtVAFskOyY", "groups": [{"group": "OfDIspFYBcb5Nd5a", "groupId": "Hl6tlEpE4SoFyHr1", "permissions": [{"allowedActions": [96, 83, 13], "resource": "I9m6hpoA5ds1ELJG"}, {"allowedActions": [0, 98, 79], "resource": "mIxzpYSh7Q07k0CU"}, {"allowedActions": [26, 25, 91], "resource": "C4H2e7vxqOzuuztN"}]}, {"group": "i8o8WwdC9rxPxcA8", "groupId": "T64R7LZheR2sPNnC", "permissions": [{"allowedActions": [79, 81, 89], "resource": "nh7vBlWqrsT00aJb"}, {"allowedActions": [37, 18, 93], "resource": "AVkvfYN42rBfmvkR"}, {"allowedActions": [59, 38, 0], "resource": "JsYhyYHahhO3OC7W"}]}, {"group": "LhmnljZtCBzXnYzv", "groupId": "IWrFhzbU3ISlxoKF", "permissions": [{"allowedActions": [22, 1, 49], "resource": "QW73k8Y43R9sPcL3"}, {"allowedActions": [57, 63, 63], "resource": "o8mrXcPuwY6UqiJM"}, {"allowedActions": [73, 11, 18], "resource": "a8WwET0nexggW0gN"}]}], "module": "m1tPjjprm5NmGhe5", "moduleId": "tDwru64N9hbBrJna"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --body '{"groupId": "sw745AOO2c8JRVUi", "moduleId": "j2Bjnieongg4ZD42"}' \
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
    --body '[{"field": "IGFtTBY1j6b03Y6y", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["I9m2Yt0vs1Kfw84J", "rEpHLr1Wcq2K9KUJ", "BmZGmxrWqVTasJmK"], "preferRegex": true, "regex": "oQvR4Jzir9S5QBm9"}, "blockedWord": ["XZkmqzg6k5tju5xU", "7LYKaJ8a719rW0sa", "VX7N38WN2cLsMGpb"], "description": [{"language": "rxj6MqDzLOzvnGXN", "message": ["jeAfwyjhJfWgZWRO", "mP0A99A7aitktiLj", "mXuGnMxiBlCBPdn9"]}, {"language": "PEYlsBnzSw3soZQV", "message": ["OH7QWKllKElOHcSM", "VIqufJbPCmOy02JR", "XOeobulR31XL7sZZ"]}, {"language": "ZXieaXRxOJGs6zad", "message": ["NQPrXMAbFm0WfipW", "vDMiY5TNHylgfi7o", "HVQ7jCTXClBI5D02"]}], "isCustomRegex": false, "letterCase": "CT9GzG4a4xyzOMFG", "maxLength": 11, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 54, "minCharType": 16, "minLength": 49, "regex": "ss3QqjPan4FzlxUL", "specialCharacterLocation": "aBF7CiNT27WbSJYw", "specialCharacters": ["hKxMR5hzWf3qyZde", "cVlsRoViATzffuRR", "eBCKTdllr7UjpCNt"]}}, {"field": "vlGYA1RA6vfJ3l3S", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["Uhh0PTueMRj9m17G", "QaDdrWl9AjrcUcT7", "zYl5NgDenNC6PKjB"], "preferRegex": false, "regex": "oVjaSjF2At3TcXIM"}, "blockedWord": ["gIOU5FyNhp8SG0Cn", "W6WifT5b2qyMX6Xl", "34LmTaXlHuiGBwCN"], "description": [{"language": "rQ25I9bFpNJbdN91", "message": ["Z9is4Y0QAIVwo3b1", "U2EgStFsNoS0uvQM", "qAmsRfAbSBdFSRsx"]}, {"language": "WkeevgiyIaflsyLC", "message": ["nnXw32n4D8DT7oRz", "1Cr54zjQoQsRAy4w", "w8USfe1TGnou384Z"]}, {"language": "ajcPQvcAwc1a2Agx", "message": ["glF6ERdHb09oCZdN", "8AUHmC7nahsGANbQ", "HXMEEZarlsA0iCbM"]}], "isCustomRegex": true, "letterCase": "P5wkVAKXxnDK4BO0", "maxLength": 88, "maxRepeatingAlphaNum": 57, "maxRepeatingSpecialCharacter": 80, "minCharType": 31, "minLength": 21, "regex": "HQqFJWZTHQb4xUQx", "specialCharacterLocation": "pR3HyMOiHNrSSW02", "specialCharacters": ["H0wy96Wrnot8MZtY", "4bic9HQb65KtgZVQ", "9O9edI6A5FJKN6Z7"]}}, {"field": "feUG7ZedEjNdUcgj", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Rd4pl6ylcX3KXsk8", "wsWoIi88YOJyWl6y", "nwB2PcAA2b05m03f"], "preferRegex": true, "regex": "3OPL0nvEQGIWU5E6"}, "blockedWord": ["DuZ0ZY6gS3lvjdvU", "8nqybTLHrM9dac6z", "ZGQkSR9sA1d5LoYo"], "description": [{"language": "nXf4D0eezTRRWyU4", "message": ["A8tRrbFmGznonwgr", "6kMO4lb2UoaBgfZC", "7FxthWX8JLcvns2G"]}, {"language": "wo0QwgWwqyfefoox", "message": ["tmHsyXq2VUFmhiWo", "og089mKCa47CLn4j", "0NQmO2AhCfDTOMdV"]}, {"language": "1DJJgJayznVVPIH0", "message": ["mc5sH42qG2PGqtb7", "uILTYkxYBDOGPrph", "31eWPXfN7PwuZrGL"]}], "isCustomRegex": false, "letterCase": "PxFLJKyv45N5iwTI", "maxLength": 53, "maxRepeatingAlphaNum": 38, "maxRepeatingSpecialCharacter": 18, "minCharType": 14, "minLength": 6, "regex": "bmc6jYHDXmOEKp0Z", "specialCharacterLocation": "lPyBRB4JQ7aDQfHJ", "specialCharacters": ["awBG0PFMRGQgnoX9", "EACO5Y6DiPlTnSDq", "jvIT6aLmnQSs7hzC"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'pNv1ab5cZaq7510Y' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'tSOjaPAcsA6ZOYtx' \
    --before 'gDGPxr7ADFeQdoWm' \
    --endDate 'MVX5rQgx16yhWadH' \
    --limit '33' \
    --query 'ADFG4Q68G52tAbcb' \
    --roleId 'Ymf7USkICWunp6Sv' \
    --startDate 'CPP13DCsqs2OU91R' \
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
    --body '{"ageRestriction": 100, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'HPTYkfbpgmSGPrCI' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 26}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'LQJkXmvBrVKfGV5G' \
    --limit '40' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "N8nOgVY32RfhQMKh", "comment": "esMliWMUkie2G2rs", "endDate": "LDaKjP7HMlOELoqz", "reason": "ogfgOIk0gp8bqKPa", "skipNotif": true, "userIds": ["4HqpjfYTgm5tkjoI", "YzIrR4TWfQ9BgkSc", "NJMnm8W5r0AuZO3H"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "hXaNJD99iZe4Rv9t", "userId": "KUm9y34JLRWQOWyi"}, {"banId": "Q8ooZ4AY2ITn1ykj", "userId": "kOF0tUql0moTgwui"}, {"banId": "nHYmuI8ddj50uS2G", "userId": "fcTQSDvtSdvVFnNW"}]}' \
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
    --clientId 'ZIgIYEprz1D2vovg' \
    --clientName 'OcrbXmbBYSWNlySq' \
    --clientType 'txviAQF7IKtQ5WBd' \
    --limit '59' \
    --offset '77' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["xUXGPuFbeJr2f9rI", "kV9r9qTF9Tk8RQPf", "5YY4uvrqaUr0DH5I"], "baseUri": "j1qRy4l59I9aN4gO", "clientId": "ozid5y0xVKf77Trr", "clientName": "0LUHVsg7SoiDddPB", "clientPermissions": [{"action": 2, "resource": "hG6G1yFpy0b1rfBb", "schedAction": 72, "schedCron": "kYGW5jo7fbAWR2Rw", "schedRange": ["LbboQ4gROgOcDYSB", "sM0vqjaiTsyw8qd2", "u52cHcEIedTPWEOn"]}, {"action": 65, "resource": "qIkCkT1y1tv1L9hy", "schedAction": 17, "schedCron": "7AZk6rzCfhkzZ3j7", "schedRange": ["VfUaMYhPyORfN0G7", "3TusJ8HrDNWiy8J9", "GA0anmOMgLCptICK"]}, {"action": 30, "resource": "veeVQzpqjHVRQpdE", "schedAction": 59, "schedCron": "1DZSQu3xi8ZyFPKF", "schedRange": ["dYWKPxPUeeepP0mY", "rb5oANDb6aRs3uEJ", "7ARfRPr5Aq8cM7Tq"]}], "clientPlatform": "jUbQ2435YtTrFMSg", "deletable": true, "description": "SazT4nJ1mwdyawFh", "modulePermissions": [{"moduleId": "2PyirYyeeAGLy4gN", "selectedGroups": [{"groupId": "p7CErhKIf4rhHwL9", "selectedActions": [52, 75, 95]}, {"groupId": "nqskkl999CBxmevm", "selectedActions": [81, 97, 27]}, {"groupId": "3VqzAlEKtaJBCoSO", "selectedActions": [85, 12, 9]}]}, {"moduleId": "SnW4KU4IDSAj6At0", "selectedGroups": [{"groupId": "ibcwHVtkUg6p2ud2", "selectedActions": [13, 34, 2]}, {"groupId": "r25a8lQ6awslFZrt", "selectedActions": [88, 83, 86]}, {"groupId": "HiOdxEPFieZmxtHu", "selectedActions": [33, 87, 21]}]}, {"moduleId": "83oNm32ChoEvyRYR", "selectedGroups": [{"groupId": "gO0UCPUZsQ1j1VzL", "selectedActions": [24, 50, 78]}, {"groupId": "pJfEABqycCIYza2T", "selectedActions": [0, 94, 93]}, {"groupId": "JWDG5nv1mxbJjxYC", "selectedActions": [94, 34, 67]}]}], "namespace": "igGRq3smG3F3wxo3", "oauthAccessTokenExpiration": 18, "oauthAccessTokenExpirationTimeUnit": "gUsW1C7SRCTyVBb7", "oauthClientType": "KkRwYnOVPrd4tqW1", "oauthRefreshTokenExpiration": 16, "oauthRefreshTokenExpirationTimeUnit": "inPIF5So0CeQ2icu", "parentNamespace": "zonSlHPw3ItzoYtC", "redirectUri": "PdGX80QFVSDkyKCS", "scopes": ["zkeixVLzLQDfi9hF", "NDkrUvXBRfrV3LwN", "dBdaBCldRaQHpmBG"], "secret": "RWimAfjIAOijk4dD", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 125 'AdminCreateClientV3' test.out

#- 126 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'eMlVkY5H4wxJW1Qq' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 127 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'SkTWKNL3RVTNmgdr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientV3' test.out

#- 128 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'Tx7N0X57yrVzewuJ' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["mSVIt5ZJeXfT3a3N", "Fxt8uWupY8DncAZM", "suU0aEjuwelLpfZc"], "baseUri": "6toUj71HdoFA2TgD", "clientName": "a4rBMMjho2CtVnHq", "clientPermissions": [{"action": 84, "resource": "Vd3bdmoRkmoYvKg7", "schedAction": 66, "schedCron": "qU5w51N0svWkeAMF", "schedRange": ["pkEZLgrLvNKRAyTC", "vAlVcClQBUXSSmm6", "nKXDdeZhsICK1zBy"]}, {"action": 60, "resource": "CScVSz3LvnMjvEE8", "schedAction": 50, "schedCron": "hfXpbQdd7UVkZUit", "schedRange": ["zQcvDehXUFpwawHz", "UwYzcGNk14qJWnPt", "0S3cd9MqJgfbnkJB"]}, {"action": 19, "resource": "SXRBJv8oijywzonc", "schedAction": 50, "schedCron": "2JaX9YS6ztSQyyyY", "schedRange": ["1LQN644N45Y84rlc", "h5XFAppxe5uNthwe", "cNfMYVrzhKQNzsId"]}], "clientPlatform": "ymY6Fu3mC1iSKPbS", "deletable": true, "description": "waNEwhcPoKs7iKMz", "modulePermissions": [{"moduleId": "WWa6BpQscKXhIgD3", "selectedGroups": [{"groupId": "ZGOheJ38R5irnVpS", "selectedActions": [79, 34, 87]}, {"groupId": "eBxHZBUTTSyjT94r", "selectedActions": [25, 78, 33]}, {"groupId": "MujOI3Sk4xfKLUk2", "selectedActions": [56, 10, 74]}]}, {"moduleId": "zB7M1qKdWbqkIOZD", "selectedGroups": [{"groupId": "gfoDjAWzu8dsRcjm", "selectedActions": [97, 57, 33]}, {"groupId": "KjWUPer52qNYbrWu", "selectedActions": [30, 80, 26]}, {"groupId": "EXjqss429tkPviKm", "selectedActions": [5, 24, 58]}]}, {"moduleId": "8BpiLrPpGQHNbeCx", "selectedGroups": [{"groupId": "4XErSnhdwQOqC24P", "selectedActions": [85, 40, 36]}, {"groupId": "BqMmG9J3pGMGbkO3", "selectedActions": [20, 91, 9]}, {"groupId": "HVkrQvTa6hmDy9Le", "selectedActions": [24, 33, 52]}]}], "namespace": "uWDHtPyJrQHGEcJj", "oauthAccessTokenExpiration": 87, "oauthAccessTokenExpirationTimeUnit": "Tldhex20RVkEzjB9", "oauthRefreshTokenExpiration": 48, "oauthRefreshTokenExpirationTimeUnit": "OOmKYQC56CCXxFtI", "redirectUri": "v1sB61Iiv9hjT828", "scopes": ["2M4SGMrSW2PwXMvi", "6WfhjoYV8ir51ZtJ", "gecKj0G9ZKpxrITj"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateClientV3' test.out

#- 129 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'jiAJEObKEu3r7BCI' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 31, "resource": "qtvQYk1tFY0eu43O"}, {"action": 77, "resource": "i4HZWNL1wy3CuEWx"}, {"action": 19, "resource": "GY1IDTz8yKE5QxsK"}]}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientPermissionV3' test.out

#- 130 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Nxq8tE53Xma5u3fg' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 83, "resource": "c5FHrDHXYLN2OwQp"}, {"action": 35, "resource": "4t8jTt5IhOXeYz4N"}, {"action": 85, "resource": "HL0QoNlcOQ6RMNZ8"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddClientPermissionsV3' test.out

#- 131 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '68' \
    --clientId 'rKGCXlfdOvS2suuX' \
    --namespace $AB_NAMESPACE \
    --resource 'pYHAbPoBlw06OhD3' \
    > test.out 2>&1
eval_tap $? 131 'AdminDeleteClientPermissionV3' test.out

#- 132 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'MzxneMycCqah4byg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 132 'AdminGetConfigValueV3' test.out

#- 133 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
    > test.out 2>&1
eval_tap $? 133 'AdminGetCountryListV3' test.out

#- 134 AdminGetCountryBlacklistV3
samples/cli/sample-apps Iam adminGetCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 134 'AdminGetCountryBlacklistV3' test.out

#- 135 AdminAddCountryBlacklistV3
samples/cli/sample-apps Iam adminAddCountryBlacklistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"blacklist": ["XW1vFgFn1qjGiVZv", "HdBhPin45FsPfi75", "jAruMXZ9AXe06KoS"]}' \
    > test.out 2>&1
eval_tap $? 135 'AdminAddCountryBlacklistV3' test.out

#- 136 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 136 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 137 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 138 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '78' \
    --offset '51' \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 139 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xdkOcsMthl4myPAA' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 140 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xbKiQG7jV2AgeR5b' \
    --body '{"ACSURL": "MwFrKLbuVGxGrZAq", "AWSCognitoRegion": "Q4USjwYOMWg2XtBx", "AWSCognitoUserPool": "Ca0ycQ0GqWIGEvCq", "AllowedClients": ["86AbUvvLwQTcved0", "rf8206P4q1Vi4sU0", "9Y35XhlMG1TsumZ6"], "AppId": "8VK036kPYanrzcWH", "AuthorizationEndpoint": "cbJJDaQkmDOzavR0", "ClientId": "I2LKQAbTbdzDxyb5", "Environment": "zmkVeLXAq5FHUjAQ", "FederationMetadataURL": "E2mbExJkI2qh2wUl", "GenericOauthFlow": false, "IsActive": true, "Issuer": "gtsWt5C3JT0CyKEb", "JWKSEndpoint": "fBxYrBNjPzNO3nHk", "KeyID": "HVamvCwo6WcdaAOO", "NetflixCertificates": {"encryptedPrivateKey": "k5TUGGDe0YRQR14l", "encryptedPrivateKeyName": "fF7fVjrK2Q7Bh4Rr", "publicCertificate": "0bO4668Yk55EPJKI", "publicCertificateName": "evzWY403R22ruXdr", "rootCertificate": "sy0mSv5H9mXk2TEq", "rootCertificateName": "PhEEgKSjTgr4ZQw9"}, "OrganizationId": "U0Eheo8OekB3Mqbl", "PlatformName": "gP0bfRoqHQheE1qs", "RedirectUri": "Y2NuaTmzcKREQZwW", "RegisteredDomains": [{"affectedClientIDs": ["KhTH8c9MbmEEFczJ", "Ly33TUSVtKDabDUt", "HDHvZy3BHFpHhOl9"], "domain": "skDqshISy7wnHmvA", "namespaces": ["w7cTawGWdWMSoNqg", "rQS9iUqudoAIDz3i", "ZU0O64wb6pWamvt0"], "roleId": "u0ohJkOm8cxPeBlm"}, {"affectedClientIDs": ["BMSQ0UyXkZuPwDd2", "rs8VvwSV0DFKgxSh", "PLfVdAI0xqclgx3F"], "domain": "mIZFUjHYlIdbcjQl", "namespaces": ["NoaYh1vULc7HyMaz", "1cH4exB4a9GDX1G8", "cT2RFN58JRXzecQ1"], "roleId": "cYZ0OqiL3AZmZczA"}, {"affectedClientIDs": ["xZpzd3hqYW4NiCFQ", "1bf5JOONrfUQy3PA", "CSsEPIbM9n5NWzwY"], "domain": "Ku7Z5tM9en5khZTo", "namespaces": ["TnAOhD5QXZNqKTEK", "syyI8rrNF3JlNGSn", "IqZGZsHQb319Onv7"], "roleId": "7fnOdSd3x2VD5AXU"}], "Secret": "Mm6p826lhaUYN84W", "TeamID": "TcmHo693pVLlBON9", "TokenAuthenticationType": "wkuJLrwsoYCVCxrj", "TokenClaimsMapping": {"3YDeaGHred4oKIY5": "YRRuE7AYrGzWAwkm", "w3rcG5y9NBQFlEgC": "g9SiRWmvc9gEzHJE", "7DRAlhtaY3S4pUqy": "ItZTHd4tbrvQft8X"}, "TokenEndpoint": "pQqmglljovoDT5Ye", "UserInfoEndpoint": "anx5VaNT4ABMJZtf", "UserInfoHTTPMethod": "BUGHMtVr7uxCms30", "scopes": ["M3toHosomKFzmUG8", "SqGbpkSpb7cdkAxf", "6kzV94JN4oosgi9e"]}' \
    > test.out 2>&1
eval_tap $? 140 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 141 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9T5zSGHyeZoiy3SA' \
    > test.out 2>&1
eval_tap $? 141 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 142 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'N7c6SnasrvWEHuec' \
    --body '{"ACSURL": "ffNzCrsT7qYa2zKI", "AWSCognitoRegion": "5ltO5Ve89PmSSPds", "AWSCognitoUserPool": "VQ1AdyOGI9b7femT", "AllowedClients": ["g9DoJBQBnvnEU63W", "T9YYP3rMWp93VAMQ", "sheakQQHi16Z1G6T"], "AppId": "dvbGcBUBHCaYu4DF", "AuthorizationEndpoint": "IoZH3JFNHUG1mHLX", "ClientId": "XCai30x3pzglZt3V", "Environment": "Syb2hFTJGqRCVjVZ", "FederationMetadataURL": "lHJ8ASLYuvwtjPbC", "GenericOauthFlow": true, "IsActive": true, "Issuer": "6InEVkKV5Co59ABM", "JWKSEndpoint": "KXu5GkeF0SY1nAvu", "KeyID": "89eW7HsxlzRcgHpz", "NetflixCertificates": {"encryptedPrivateKey": "Ac8jPvhIYSfBvlIg", "encryptedPrivateKeyName": "izAjeONGkwLD8ksc", "publicCertificate": "jpDmqlgLlhEz6wrj", "publicCertificateName": "lwBSYjrW5otjCDzk", "rootCertificate": "2fGIIKyqxUQFql1I", "rootCertificateName": "QCpMxR9kVwideB0y"}, "OrganizationId": "GQiOYbIHrWFbMQO2", "PlatformName": "ZtKrLwvoadDW56zh", "RedirectUri": "9jKlAV5daGaEaTrl", "RegisteredDomains": [{"affectedClientIDs": ["9L0wF1y8ZXuUxmwy", "7bzmESx5SL3gtOQo", "siFcp0kGRJgqGSXf"], "domain": "9sUm4NWHcBUeFA4E", "namespaces": ["s7AvE85ig8UStnn5", "06rsVSJlSUzu3Spu", "bMkchq1lMddSTXSH"], "roleId": "Kt3h7Hn6pS63AfTt"}, {"affectedClientIDs": ["2g9ssQGM9eThjEQA", "jALRX9592g2V7gde", "RC5bU9vsOdktrQsN"], "domain": "J61yrlhDBpb1V6fw", "namespaces": ["YHKsrBjdD3gpyl3t", "9SU0tvC5QXk3nIyR", "EM6vwY6hPKBAADYK"], "roleId": "m5ylEYo6GiBah34y"}, {"affectedClientIDs": ["jaScLIqUiHLDHs1i", "BZzXeLY6Ht4oaZ7j", "z141UDqgbA4MMfTt"], "domain": "3VR1ecfVY1IBi5mT", "namespaces": ["OB3IWkF4QMAoqDyY", "BhH6TwjUyRQFu76n", "WYrvShdPb0s18QYZ"], "roleId": "l2MdKg3Rxmy4oyel"}], "Secret": "XT1S9ulHEubdV7Mq", "TeamID": "JWgjs8XLI8Qu6dDK", "TokenAuthenticationType": "eZhxICFdzN2k9KYP", "TokenClaimsMapping": {"wpqFE4bcPlr4tx4B": "WlBSLXYGwryzcfyI", "Chtb6XbzPqphWt7w": "nNWY224cj7RyPRlZ", "H1BntK0OFeZu4dKa": "SSBMBNnWwSu4Kao1"}, "TokenEndpoint": "AlpLwzFG00BXdw8c", "UserInfoEndpoint": "hr5F2TQXoYSmrRrK", "UserInfoHTTPMethod": "dyUZQfy6JVLuvoAg", "scopes": ["zzSy6fLPcLWIZsiE", "kzdfSbKtrLO98cMf", "01RVghiPWtIGh05U"]}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cDuBvrPYq6VwhwNZ' \
    --body '{"affectedClientIDs": ["Ve0LLRAOnfWO1UZz", "lZheQwY6CCqlRQAM", "u2sAV8nqUWrN9cAn"], "assignedNamespaces": ["XgGPlcSyJygl6VFt", "QMrhcLuHAD0tzV2I", "8cRYVjh546pShD79"], "domain": "UDEbnVkzU8O0CJLJ", "roleId": "SkCuqup7fAmikskw"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 144 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '44hLaIO2hxl3I4kv' \
    --body '{"domain": "qRh6rv1Ku5OLvBZm"}' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 145 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'iSe9YDXLYisaPtaA' \
    > test.out 2>&1
eval_tap $? 145 'RetrieveSSOLoginPlatformCredential' test.out

#- 146 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'KfdoFZMLf8nxqhi0' \
    --body '{"acsUrl": "5PA82ks2yDwsWweq", "apiKey": "ojAkqQZYl0V7VwJb", "appId": "Ayhmo3b7Mn3CJSv5", "federationMetadataUrl": "cnII2ltBZW5NMivG", "isActive": true, "redirectUri": "UXgHwWP2zJUTfnRm", "secret": "bOSgfyD5G8sP4bOk", "ssoUrl": "dcmXQqtQQBWmg6it"}' \
    > test.out 2>&1
eval_tap $? 146 'AddSSOLoginPlatformCredential' test.out

#- 147 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tRgqCo85VlSJkXSC' \
    > test.out 2>&1
eval_tap $? 147 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 148 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'jULgIuvKm6ktsv1r' \
    --body '{"acsUrl": "WwXTByPFepIxMRYF", "apiKey": "Aq0MIkP1oZOtNjph", "appId": "ut9cFYvRqUtVU1JU", "federationMetadataUrl": "saz5X8pa3PPAVlWM", "isActive": false, "redirectUri": "o2fWFnUzXAyAYoWE", "secret": "gZBijG9FGPIAo0Jk", "ssoUrl": "KF6rfCdFDI54RBh5"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdateSSOPlatformCredential' test.out

#- 149 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'UWpSoyDd8raEAZA7' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["fDlHEAagPGu61viP", "7tchnK0BodpnZUgQ", "PbgRr9AZVAIeRa1K"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 150 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cn5vQCk5ANTOHfqt' \
    --platformUserId 'GUiMEA5L4R6k9Efd' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByPlatformUserIDV3' test.out

#- 151 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'TdtA34SlFWVk1HXA' \
    --after '77' \
    --before '55' \
    --limit '61' \
    > test.out 2>&1
eval_tap $? 151 'GetAdminUsersByRoleIdV3' test.out

#- 152 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'tbGomMkQBXB3BkWJ' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserByEmailAddressV3' test.out

#- 153 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '2qP86wSPmYKOCegK' \
    --body '{"bulkUserId": ["bmiHc1iFJprnZJ3d", "t5xyCwNo7fB1lPS6", "IORJt6328Ywk42ft"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetBulkUserBanV3' test.out

#- 154 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["PEhQ0mkXPr0n2N0N", "OBF9tLVh92yGZqly", "RPRJQtlYcIx5hqNY"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminListUserIDByUserIDsV3' test.out

#- 155 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fM6Uv7M6VqheJSc9", "LNNR2s1g23UA3A9K", "ZsUwzLjaATSjmXj2"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminBulkGetUsersPlatform' test.out

#- 156 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["M7AG6Y5y1t7G9mhR", "c7q36ZCLHQfN9Bii", "Ah7BGa7JTr0UDnkS"], "isAdmin": true, "namespace": "1ASYx8t1TXLNjbsd", "roles": ["KMGFY3Ii82bBDW4I", "JzfeuMgEOGfuGeFb", "7KI7vXNxGaDmnKux"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminInviteUserV3' test.out

#- 157 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '9' \
    --platformUserId 'w0HcVrvIKHSLMQAt' \
    --platformId 'koocYBoDu5GPTpt2' \
    > test.out 2>&1
eval_tap $? 157 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 158 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '49' \
    --offset '33' \
    > test.out 2>&1
eval_tap $? 158 'AdminListUsersV3' test.out

#- 159 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'tgVpnw81eq9IKQeH' \
    --endDate 'MVwMWHrSh6yh1QeL' \
    --includeTotal 'true' \
    --limit '9' \
    --offset '74' \
    --platformBy 'djc3O0m8MLRpswcR' \
    --platformId 'slhTXRzSB7AiKQnv' \
    --query 'jeozPo4Yd1xmN7nv' \
    --skipLoginQueue 'true' \
    --startDate '9J9JQFyXwQSKAI7P' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 159 'AdminSearchUserV3' test.out

#- 160 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["e5sRlRIE7UFifMP6", "wmVAzKktBMon587F", "51wTtegQf1eOMLsb"]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetBulkUserByEmailAddressV3' test.out

#- 161 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JLYmhdHdinCBOMis' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserByUserIdV3' test.out

#- 162 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EQMXTEiPQIcDEyxR' \
    --body '{"avatarUrl": "MqQdFaqjG4TUe0Bl", "country": "8UNYpKTkEIeQStlY", "dateOfBirth": "5E4yjYf1SOmsnwQw", "displayName": "e4PTst4JhVE1qOSf", "languageTag": "II5iJbJPoCvEzngy", "skipLoginQueue": false, "uniqueDisplayName": "JqNjMniPAfWyU0vd", "userName": "hTTmKiikvsUOITOg"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminUpdateUserV3' test.out

#- 163 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eAQFuE9ew8zzmSRQ' \
    --activeOnly 'false' \
    --after '6JCzJ17snjsxqW11' \
    --before 'b5WOjqlsUAyPT6xT' \
    --limit '29' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserBanV3' test.out

#- 164 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'JDqNJS5XMbcToUwv' \
    --body '{"ban": "Ws4SMJNMcf8GXfOA", "comment": "nCt5fMRRRajrTiJb", "endDate": "4GE0vz1eRfPBDBt8", "reason": "jhEazmMHd1AvMDlR", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 164 'AdminBanUserV3' test.out

#- 165 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'jLJCtJzZvMAodUSn' \
    --namespace $AB_NAMESPACE \
    --userId 'JILFFnByl9jMxH6T' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserBanV3' test.out

#- 166 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iaSk3tqRQUsKIxB0' \
    --body '{"context": "0UeCczXOeHvqwW3f", "emailAddress": "26quiWGdFfBkjN2c", "languageTag": "ZGGjoxJGB9HCOyrD"}' \
    > test.out 2>&1
eval_tap $? 166 'AdminSendVerificationCodeV3' test.out

#- 167 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wS1Zv5tR8OnbtVt7' \
    --body '{"Code": "6B5SWOLSrDNeRXJA", "ContactType": "2MbhbrW0NrwQij8q", "LanguageTag": "2lw7ruZeqNfVO4BK", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 167 'AdminVerifyAccountV3' test.out

#- 168 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'y7WeCrw0aWq6HGfi' \
    > test.out 2>&1
eval_tap $? 168 'GetUserVerificationCode' test.out

#- 169 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '1rA1R6V2g4UCh5sb' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserDeletionStatusV3' test.out

#- 170 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bL8PnMjqJvhLtrUn' \
    --body '{"deletionDate": 55, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserDeletionStatusV3' test.out

#- 171 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eBt5z95xqisoxZvA' \
    --body '{"code": "mrU9jNoQPPTVLKVK", "country": "SJ9zbOA92qyZUM8s", "dateOfBirth": "ijvcqH3Ir78nV7ce", "displayName": "smAdsrfdoLJTqjKA", "emailAddress": "g2QtBWWPOBbGk89N", "password": "FyVTWnDhyQrYI9u7", "uniqueDisplayName": "tGgzuJKfyyTwKOyo", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 171 'AdminUpgradeHeadlessAccountV3' test.out

#- 172 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AovYii5waOVeEBrt' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserInformationV3' test.out

#- 173 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Cgr64eLbZCZ536eC' \
    --after '0.34533755737215666' \
    --before '0.47744154622091595' \
    --limit '93' \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserLoginHistoriesV3' test.out

#- 174 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZlQMkciTaa1Qx1qm' \
    --body '{"languageTag": "wd999JkA5mWbFSlK", "newPassword": "nqPcjoQi7S5TZar2", "oldPassword": "SDvF3g0W8JyWcnaA"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminResetPasswordV3' test.out

#- 175 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'a7wrirmaOs0ROUhk' \
    --body '{"Permissions": [{"Action": 75, "Resource": "6aSmzQ5nqpFyRSRq", "SchedAction": 2, "SchedCron": "zaxmc7Vb44shiZDd", "SchedRange": ["kxOuFoTosownzEER", "VvQhYWJvYcXd4QYP", "lJfyKZDVc761gHFq"]}, {"Action": 19, "Resource": "iDctJu7cCmBWAn8G", "SchedAction": 21, "SchedCron": "XmCxPqWJhFAzF249", "SchedRange": ["OGM596ucjxiDPZYU", "MJl9LTxr9KhvX4H3", "2AAqVaePhpdd7iO3"]}, {"Action": 81, "Resource": "yvqEUwCaoNTSMzyB", "SchedAction": 58, "SchedCron": "VyyKM3koRf8LWr91", "SchedRange": ["Y4jXHXmQRozc94Y2", "OrXauG0ww5Kbd1OA", "VsRoBfuB2HBlH7oI"]}]}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpdateUserPermissionV3' test.out

#- 176 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5iA3jNbzknbVQwse' \
    --body '{"Permissions": [{"Action": 5, "Resource": "iIUQUM3PCoXZPHjx", "SchedAction": 47, "SchedCron": "yVko0UBHfe2pIXJJ", "SchedRange": ["aRLbN7GbnhCw8hsX", "MHbHm2hV0Rf7JO6n", "abOvhqZNLnm9bjUs"]}, {"Action": 24, "Resource": "BunAe753kMIyH5YV", "SchedAction": 2, "SchedCron": "Dr7v8knlCk1d04ov", "SchedRange": ["Q9kSqf6vrAm3VVxq", "aUvdpwcibEFKgOgE", "ZcrWkZJWiK2nLC0A"]}, {"Action": 58, "Resource": "er1FL1MCOFNjl9CD", "SchedAction": 65, "SchedCron": "3H7irfmSrjScfkM9", "SchedRange": ["vypLbOn6qs6gSgwg", "OggqfPwis6oOMIty", "k017v70T8nr5gXv1"]}]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserPermissionsV3' test.out

#- 177 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VTnAWgjmUvehURIM' \
    --body '[{"Action": 79, "Resource": "C47vs0fzTu9EFfcU"}, {"Action": 59, "Resource": "T15XxbLcDNkBsHq9"}, {"Action": 19, "Resource": "ijfuWV3HxjojWsGS"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserPermissionBulkV3' test.out

#- 178 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '23' \
    --namespace $AB_NAMESPACE \
    --resource 'uobznORZDudRfTfI' \
    --userId 'kmN2KIuykSnD4ilR' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserPermissionV3' test.out

#- 179 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hISU9ycnhtAeVDHV' \
    --after 'CHVvGwHFmTNXm7OQ' \
    --before 'fwVRu3SBq1XXyIti' \
    --limit '46' \
    --platformId 'NQCjY6Jf5FXAIz1G' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserPlatformAccountsV3' test.out

#- 180 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'EMweAcgYEYkR08Ak' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetListJusticePlatformAccounts' test.out

#- 181 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'SidY5l2RIduNVvR3' \
    --userId 'hZhUArz4oqi6BYBG' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserMapping' test.out

#- 182 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '13dsys4IUoiy7VK6' \
    --userId 'jQudtYmd7kzO81OG' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateJusticeUser' test.out

#- 183 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'hAQdl9TdFaWhcngK' \
    --skipConflict 'false' \
    --body '{"platformId": "F4hMHpxsdfMlIZiy", "platformUserId": "sJgvPZmkzfGLTHO5"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminLinkPlatformAccount' test.out

#- 184 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5a3T48gCCKEE305J' \
    --userId 'GS3WAVuutlfcu4EP' \
    --body '{"platformNamespace": "RRwP3KCYRtoMVGrR"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminPlatformUnlinkV3' test.out

#- 185 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hMrIhvAxJhgM6mw9' \
    --userId 'OL7dVgn4zunBHSia' \
    --ticket 'qSo8Y4LNN4JV8KBh' \
    > test.out 2>&1
eval_tap $? 185 'AdminPlatformLinkV3' test.out

#- 186 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1vD5qibFNz8ziIru' \
    --userId 'ef7k6oc3qhq4JY4g' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 187 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uvMxmKwXMAAWcbbS' \
    --userId 'Lyl4UfzuBrtFPdIw' \
    --platformToken 'kg4gV2VJIBbgXSrq' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 188 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'cXno2B0q0zL6JvoI' \
    --userId 'Kx9glRc1cYdFmDBO' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetUserSinglePlatformAccount' test.out

#- 189 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zvJwC0Yyeu8jUkca' \
    --body '["monk5RjEDKQo23Q5", "HqBkn7bSeyK19MVs", "GZJBjaQPriDup5Ot"]' \
    > test.out 2>&1
eval_tap $? 189 'AdminDeleteUserRolesV3' test.out

#- 190 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UD3sxppOlgnjWMIe' \
    --body '[{"namespace": "dag39qt9jBkmARK7", "roleId": "RWxpei7Ac39IH764"}, {"namespace": "j75lG9Mnc36pAKvu", "roleId": "nfNYOvMh5B2FMksY"}, {"namespace": "Eb5mK6IQreij3ljF", "roleId": "Q2iqTQg6j4necvoK"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminSaveUserRoleV3' test.out

#- 191 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'bmeEavr8wjHgKtjM' \
    --userId 'qrRkt5usNH7iTR82' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddUserRoleV3' test.out

#- 192 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'DZFUSOgxOU8sTYXi' \
    --userId 'MpoRdKK02RkrGyyg' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteUserRoleV3' test.out

#- 193 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0bvnXdbllWopKbTS' \
    --body '{"enabled": false, "reason": "IU1IZ87PjL69DjLT"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserStatusV3' test.out

#- 194 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'sqOf6fuHBb1fmPtB' \
    --body '{"emailAddress": "opR3jfD932MkbRkY", "password": "4Vg3ZS6mVRylLRyz"}' \
    > test.out 2>&1
eval_tap $? 194 'AdminTrustlyUpdateUserIdentity' test.out

#- 195 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '332WvePGATtskrs0' \
    > test.out 2>&1
eval_tap $? 195 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 196 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'KGD1pHJbKzaiSLmg' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "Vo9jCXERWZBYlxoY"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateClientSecretV3' test.out

#- 197 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'o4tKn1GNiNnACfg5' \
    --before 'B9gWsonFCArECi9p' \
    --isWildcard 'true' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRolesV3' test.out

#- 198 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "managers": [{"displayName": "VacdZGiHyU9ZqnCK", "namespace": "E12aqUzlFE0TrmZ2", "userId": "8MNg0wGG21DwXP8y"}, {"displayName": "Qdgv53Fh1t3ACHIK", "namespace": "inR5VAAMNbZDrYdX", "userId": "QTaQ96kMRciPyYSb"}, {"displayName": "MxWQd2tk8BoAXTBR", "namespace": "udLLXjdTZWXt8fYw", "userId": "ylbEt7FgZrm3vE15"}], "members": [{"displayName": "RLLRNQaS7otwKURR", "namespace": "s9qEXyhfWo8IWqZx", "userId": "z797IB4wMboQI3jI"}, {"displayName": "KBjRvuQWylLw1X2j", "namespace": "WlQjUHyTu57207fZ", "userId": "WxbupYfcgQRH5tLe"}, {"displayName": "p0kDp0mri0Bul4as", "namespace": "3fUYEjSJWcdjRnE8", "userId": "8yWW3OhIBxVCfivk"}], "permissions": [{"action": 11, "resource": "9gxBuOEcEzotK2ly", "schedAction": 3, "schedCron": "3TKi1T2MxQFdtd9W", "schedRange": ["6yixfV2k6b8FcwRX", "HK48brDF5GWlnoHf", "voqMi3M4py9iyOAW"]}, {"action": 13, "resource": "ZyFU2ZczQeEwmotu", "schedAction": 30, "schedCron": "W8esvi0EE8FJopfk", "schedRange": ["usu6KljGEc3Nkm5k", "ZMSO2RVUYUdtzngy", "sWl1k9t3SWPjO7UT"]}, {"action": 61, "resource": "wvSKvSd8em9XGNoY", "schedAction": 0, "schedCron": "j3nyL5xg3xO7T5rL", "schedRange": ["4x06EBNZ5hjCJsgc", "XpjtbdWADOcKAhjm", "vzFCbx0isf5PxN97"]}], "roleName": "ktTkx40QlAiR73BY"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminCreateRoleV3' test.out

#- 199 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'goxjeq6xUQLhwirn' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleV3' test.out

#- 200 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'MR9lKsxu3kMs3Pe2' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRoleV3' test.out

#- 201 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'xmshJZ063VoP4v5a' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "UgwILK5s8rsfwU9K"}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateRoleV3' test.out

#- 202 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'Q4ZhBNUyDdLpvwKD' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleAdminStatusV3' test.out

#- 203 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'DGWlq9jU6jbOyMpr' \
    > test.out 2>&1
eval_tap $? 203 'AdminUpdateAdminRoleStatusV3' test.out

#- 204 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '1yzQrRjamsf53iCq' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleAdminV3' test.out

#- 205 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'OK4Vw80UCfgm43cp' \
    --after 'ldjIpZcuEKV7ZjYn' \
    --before 'qKUH8z2WMZaaVcUT' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleManagersV3' test.out

#- 206 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'LN2VJnWx1x2DOzKm' \
    --body '{"managers": [{"displayName": "FEjJIrY7n27YjRjm", "namespace": "cUXSZeJHLNuiitbt", "userId": "AcYxFngIxCcBp6Uf"}, {"displayName": "w4wjoUZSxUQKVAfh", "namespace": "QJZFNI8iLKT6nhPk", "userId": "m3hNFZA2RIuim7jW"}, {"displayName": "soe0BjPSoEia800Y", "namespace": "6IvmjaHKCmS7KXxS", "userId": "A9yjQ4SmGB1APjjx"}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRoleManagersV3' test.out

#- 207 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'Mflo5pntaMEFiAud' \
    --body '{"managers": [{"displayName": "iuOVxhBHxLTWs5qU", "namespace": "GDrg5RZyJtw79aGb", "userId": "fenKfg4QgNueZrGm"}, {"displayName": "RmDgVjVzpYuIeX7A", "namespace": "fkxzYzZaohfG05Tl", "userId": "jsyxY9fGWIZ5RrJJ"}, {"displayName": "imWul4zZDa0pF1Zg", "namespace": "dB0fXtyiE79mgZsF", "userId": "LRiqfI1p5rTe7GCy"}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminRemoveRoleManagersV3' test.out

#- 208 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'OUF30SBRqMtWBZdF' \
    --after '0qFkiSKzXjD0s5bA' \
    --before '5fm93kSPxGj9fYpd' \
    --limit '2' \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleMembersV3' test.out

#- 209 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'plr19sjBbDaYIPgp' \
    --body '{"members": [{"displayName": "klFp1QlApWIMFvBz", "namespace": "fnlOHnIBK4Hm0sGm", "userId": "WnWCPgtGOK7WB5LC"}, {"displayName": "zBygttprUYf8wCax", "namespace": "rGO2wZyGmZgnto4j", "userId": "SHZs1yJJrReiWhCG"}, {"displayName": "NoxIift5aKpfq9kX", "namespace": "ItgO6CV5MZ8ZJcVQ", "userId": "NODm43Pw4zh1c5Aj"}]}' \
    > test.out 2>&1
eval_tap $? 209 'AdminAddRoleMembersV3' test.out

#- 210 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'mHwjjZRMCpRLqZ2b' \
    --body '{"members": [{"displayName": "mofaXooa4xmOXvsC", "namespace": "qwbb6oVnjYbmeeyU", "userId": "S90tqGR7QF7GWdX4"}, {"displayName": "CL1ug0tnzQaSdXIn", "namespace": "g6K2Mw6qkw16ZhpX", "userId": "lJWM9R6ZdCgccyVG"}, {"displayName": "hoixIhzqNY4irQv6", "namespace": "RHtB8DZwuUjISODD", "userId": "3AagJPWP1DV3WHrU"}]}' \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleMembersV3' test.out

#- 211 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '1mVcZHUXnDf3VeYi' \
    --body '{"permissions": [{"action": 51, "resource": "AhLUQCvlqlqfP3sC", "schedAction": 96, "schedCron": "Hn8rOgXr76aT22P1", "schedRange": ["29W27Trav5Z5GqA9", "PQRol80RNGuDdUyG", "XBbgLlVg15iwvACr"]}, {"action": 91, "resource": "eHFmStqyeWwJ7x5x", "schedAction": 90, "schedCron": "sFx0nIfncAdgsmj5", "schedRange": ["CVi9d2iBZBDaJBDa", "No9YFbeYavARpJS6", "4FQGe0CVhfYcHETW"]}, {"action": 87, "resource": "49vGGUqsPkstQY0k", "schedAction": 46, "schedCron": "CgpPzpeT4S6z7wr3", "schedRange": ["zTLQKH0DavPxTCVf", "SOvNxrrS9NUs3rsd", "qgxBUVJe0U22cQVB"]}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminUpdateRolePermissionsV3' test.out

#- 212 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'Pvtxqa6TPPnUWPap' \
    --body '{"permissions": [{"action": 2, "resource": "3yzCbMI8yep42XRp", "schedAction": 7, "schedCron": "V7vSmpoF01NXrCit", "schedRange": ["vXF88krjlYRwWtb4", "5hb8mYWZsxF7zYNQ", "Tbk3W6dsTCFbpoIY"]}, {"action": 47, "resource": "7O6wtAE7ppNmphhO", "schedAction": 57, "schedCron": "VXbRhIYpC7iYoVf0", "schedRange": ["V5ZkKODzmdr4Mzt3", "82aNDr2zNr5PDTJM", "HLq1g6QDFCEcvfbk"]}, {"action": 76, "resource": "P4LBi2GDOnwiHAiM", "schedAction": 81, "schedCron": "yX0NlDrG0rvAmT4a", "schedRange": ["L94WhNkS1goJxMD9", "8bjNSIlf6EYaIdDT", "g52wgRazpYqz0D2q"]}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRolePermissionsV3' test.out

#- 213 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'De0pltvyfOLiM1H7' \
    --body '["WR3c6GwM4B8MHxhC", "x3HwCysTAIozsT5d", "DTVn6cRwgMCmtMxG"]' \
    > test.out 2>&1
eval_tap $? 213 'AdminDeleteRolePermissionsV3' test.out

#- 214 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '15' \
    --resource 'rL4xQklxRltQvJk8' \
    --roleId 'vTBWx7cvjxMEptVu' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteRolePermissionV3' test.out

#- 215 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 215 'AdminGetMyUserV3' test.out

#- 216 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'EIXghv2XaAOLCX5v' \
    --extendExp 'false' \
    --redirectUri 'di60Awo2vhmPmlu1' \
    --password 'IVMJAqpRY7o5Xzqx' \
    --requestId 'BfzOSgEdPMp7CFRZ' \
    --userName 'tlTcr7UrrygioxKK' \
    > test.out 2>&1
eval_tap $? 216 'UserAuthenticationV3' test.out

#- 217 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId '4mOVCKldd67uA3IU' \
    --linkingToken 'ZOMLSYRrUxs17Gm3' \
    --password 'lRBbi75UUzko5gNb' \
    --username 'ozf3gQ7wkaRhqLKk' \
    > test.out 2>&1
eval_tap $? 217 'AuthenticationWithPlatformLinkV3' test.out

#- 218 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'ZJvBhs8tDNuo2sKA' \
    --extendExp 'true' \
    --linkingToken 'DYHHTIXkzSg8PW7g' \
    > test.out 2>&1
eval_tap $? 218 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 219 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'o0VE09FFBUGGz9eb' \
    > test.out 2>&1
eval_tap $? 219 'RequestOneTimeLinkingCodeV3' test.out

#- 220 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'Q5XVVLQna5kNpOQd' \
    > test.out 2>&1
eval_tap $? 220 'ValidateOneTimeLinkingCodeV3' test.out

#- 221 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'gBx4pVcKBQUOjV0Q' \
    --isTransient 'true' \
    --clientId '5iscNq0N1h2Dwk3e' \
    --oneTimeLinkCode 'adGFT3j9oPEclloa' \
    > test.out 2>&1
eval_tap $? 221 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 222 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 222 'GetCountryLocationV3' test.out

#- 223 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 223 'Logout' test.out

#- 224 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'jSIJgzEtdB2JHe5g' \
    --codeChallengeMethod 'S256' \
    --clientId 'dGQhxUvrG23jsuRL' \
    > test.out 2>&1
eval_tap $? 224 'RequestTokenExchangeCodeV3' test.out

#- 225 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GI5pVwMLuzsHCnNq' \
    --userId 'Ue3OaMHjh6ob9WXb' \
    > test.out 2>&1
eval_tap $? 225 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 226 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Y3fJjR3mRcduQjOu' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 226 'RevokeUserV3' test.out

#- 227 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'Ruzcpzju2t21ICD6' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'tu8mOvHxgpz3ZvMQ' \
    --redirectUri 'Q9lSMQnetMHeoRkZ' \
    --scope 'NTC5umlcKK18nYZ9' \
    --state 'RxFPHifErbC8zJTu' \
    --targetAuthPage 'RGlgyK3mCDsvGN0R' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'wEfmyqROGLDagjuB' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 227 'AuthorizeV3' test.out

#- 228 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'DP9eCUrGpjbbg84f' \
    > test.out 2>&1
eval_tap $? 228 'TokenIntrospectionV3' test.out

#- 229 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 229 'GetJWKSV3' test.out

#- 230 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'VbmmqyfUplro1KnM' \
    --factor 'MZOo1N461GcXvti4' \
    --mfaToken '7M8qmReLAkVAynU6' \
    > test.out 2>&1
eval_tap $? 230 'SendMFAAuthenticationCode' test.out

#- 231 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'YMJmWVfiEMiGuR7U' \
    --mfaToken 'wnPl41Bd1wTKCyMq' \
    > test.out 2>&1
eval_tap $? 231 'Change2faMethod' test.out

#- 232 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'aW0i9SVDeYkJpLIK' \
    --factor 'GdN8QUOGMdwmWLYK' \
    --mfaToken '4ZJwag8XENA4qPRt' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 232 'Verify2faCode' test.out

#- 233 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'thWtUhtmtuF46WDb' \
    --userId 'xAvFUtN8M27p4RJ9' \
    > test.out 2>&1
eval_tap $? 233 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 234 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'xGKBiRq5W6hM33qT' \
    --clientId '9oDNy75obfseL7hb' \
    --redirectUri 'Mt6w0mD0xkaUxhgO' \
    --requestId 'ZF5djXJp75OR8wlX' \
    > test.out 2>&1
eval_tap $? 234 'AuthCodeRequestV3' test.out

#- 235 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'hk5e8Ulr8Mir3CdR' \
    --additionalData '8tjUmCMQqf7v1KXh' \
    --clientId 'OUZQsju7nvSOHVSv' \
    --createHeadless 'false' \
    --deviceId 'pUwp3TcQM6kZJHFM' \
    --macAddress 'NrF84L7kCA299ar5' \
    --platformToken 'y5hbvq4EJ4ObZcqo' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenGrantV3' test.out

#- 236 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 236 'GetRevocationListV3' test.out

#- 237 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'hgx6zFkpQquLf2T3' \
    > test.out 2>&1
eval_tap $? 237 'TokenRevocationV3' test.out

#- 238 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'ZYIkbdT4Se5xwL7s' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'jTD3gIRCEwHh93yC' \
    > test.out 2>&1
eval_tap $? 238 'SimultaneousLoginV3' test.out

#- 239 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'I8J5DninFi1PwuJL' \
    --clientId 'V2LPcxDkWXELFlgm' \
    --code 'mf7ovXJU9jbTLQOY' \
    --codeVerifier 'Dz69ssB3UT9T8Gk5' \
    --extendNamespace '1AshDwGED0QXSr0E' \
    --extendExp 'false' \
    --password 'pdR1EafzpRLKCo5F' \
    --redirectUri 'eisFpiTMjY7rSZiB' \
    --refreshToken 'IKTUBxLyWgJMJDi8' \
    --username 'PeJlBazzNZb1y5H6' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 239 'TokenGrantV3' test.out

#- 240 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'JoAsQ64pTmxqj5RP' \
    > test.out 2>&1
eval_tap $? 240 'VerifyTokenV3' test.out

#- 241 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'nZ0bceLUeor5SL2R' \
    --code 'nQXWc2fDj6IVgtT8' \
    --error 'nE8DBJVNaMJ5wCDC' \
    --openidAssocHandle 'HvH5GaWjkvE02FxK' \
    --openidClaimedId 'BHzuTvGtt2dKE9WJ' \
    --openidIdentity 'QeluEyz7ehJsGbQu' \
    --openidMode 'Y1Wf7hO0PcEMplbX' \
    --openidNs 'FFlPRfrVASogyvZq' \
    --openidOpEndpoint 'MZArNgRnkKwfoNIv' \
    --openidResponseNonce 'xhsGm0ptQUK70z5i' \
    --openidReturnTo 'Jvz56k5K1mfdn7W9' \
    --openidSig 'XGhvGndJP62DmOxS' \
    --openidSigned 'kvh3A3wyDMPuKMIi' \
    --state 'mCypahjB3jfNvdHf' \
    > test.out 2>&1
eval_tap $? 241 'PlatformAuthenticationV3' test.out

#- 242 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'GHI2wlBhfsl3Oisd' \
    --platformToken '17dtJdmcZezOgvU2' \
    > test.out 2>&1
eval_tap $? 242 'PlatformTokenRefreshV3' test.out

#- 243 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'zXFXg6wu2q4y0NJD' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetInputValidations' test.out

#- 244 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'snzt6kkHCe0JPEEw' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetInputValidationByField' test.out

#- 245 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'MQizgQJuZvmYCn52' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 245 'PublicGetCountryAgeRestrictionV3' test.out

#- 246 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'LksdG5FPuyQyJUo8' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 246 'PublicGetConfigValueV3' test.out

#- 247 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 247 'PublicGetCountryListV3' test.out

#- 248 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 248 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 249 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId '0mN7AznBJCRHj9LG' \
    > test.out 2>&1
eval_tap $? 249 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 250 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'P4mQMN5qqpATGVOn' \
    --rawPID 'false' \
    --body '{"platformUserIds": ["LB49Z0yBk9yunPgd", "iACmng7pYRyOyhVk", "o3E9rGgc4CSdxePD"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 251 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'L5dIMfMcyj6lhUHW' \
    --platformUserId 'IzvH7psAKlCO4stx' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetUserByPlatformUserIDV3' test.out

#- 252 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'nN23vSJe2y1TVKfL' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetAsyncStatus' test.out

#- 253 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ADgM6IpgD5Ae5e4n' \
    --limit '68' \
    --offset '96' \
    --platformBy 'fMr0xX6GbOxHZFST' \
    --platformId 'jaooaEC9OAqUjcMV' \
    --query 'DGTdazzPz2bhYkwr' \
    > test.out 2>&1
eval_tap $? 253 'PublicSearchUserV3' test.out

#- 254 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "mZ1iDq6Wf7jXk1H9", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "KNsoNBJDMnIdwPRU", "policyId": "yFKcmaR37jMKEH60", "policyVersionId": "B0srabvSkN2AWd6G"}, {"isAccepted": true, "localizedPolicyVersionId": "m0A23ZTiC7trh4Dg", "policyId": "EVIVGaO0uAUwTpDD", "policyVersionId": "jVu1G68AZYylrqX2"}, {"isAccepted": false, "localizedPolicyVersionId": "NftKet1cb0q3sRCX", "policyId": "Ecjy4Y9now8BzRwd", "policyVersionId": "i730Mj4bFgfWm0PP"}], "authType": "FqUi16glH7POVJCz", "code": "2ig4bBkJd5breLJo", "country": "hEQKGmKMNfMuOWox", "dateOfBirth": "ZTTFUIZUzIiGlUyO", "displayName": "e13dL5O8e8DwWGgl", "emailAddress": "IR6SkL0phmmh5vjJ", "password": "yPGShmYUR31aPLlw", "reachMinimumAge": true, "uniqueDisplayName": "lme5pQfEGKy1d342"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicCreateUserV3' test.out

#- 255 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'M0Edoalc1pDWaI5W' \
    --query 'DF84CWJKTYzh6zGI' \
    > test.out 2>&1
eval_tap $? 255 'CheckUserAvailability' test.out

#- 256 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["fTN5LtiGms7wiD4y", "gib8zer19eJqrVsj", "ZDzJoDd073C69VEH"]}' \
    > test.out 2>&1
eval_tap $? 256 'PublicBulkGetUsers' test.out

#- 257 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "vTObTmyW2PzWdtBZ", "languageTag": "4FOc2vs05Qgicpnm"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicSendRegistrationCode' test.out

#- 258 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "4qtZ4WFgUqMdJLFa", "emailAddress": "Rva80mWg6qneu28a"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicVerifyRegistrationCode' test.out

#- 259 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "2I0fm6nqya5lF7i3", "languageTag": "9T75XtxrfNiIe3z0"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicForgotPasswordV3' test.out

#- 260 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'oapk1Fqm3qlWFg1T' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 260 'GetAdminInvitationV3' test.out

#- 261 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'VEhLC5VP1VCA4VRX' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "3uB2XmNpJxhHj9Ht", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "jojFhxcyS5BZ59AC", "policyId": "peIUWbjZsWe6k2UF", "policyVersionId": "uw3eiswkoS6sWOpF"}, {"isAccepted": false, "localizedPolicyVersionId": "qHTCeuhjv0imUIqV", "policyId": "3inVrGYYzZWIAVW6", "policyVersionId": "20hgitccDQ9FJexv"}, {"isAccepted": false, "localizedPolicyVersionId": "vYBiSvr7xtmzW7sw", "policyId": "wWdZcRs9o4Gb7K3o", "policyVersionId": "zXUXdluKmhcBWo3s"}], "authType": "E4VIRpqV80BjExi4", "code": "Oc6CX1k0b4ShLI30", "country": "sAeC1WokLay2t0yz", "dateOfBirth": "8a4yebZzsnAbvU1t", "displayName": "CJUYJJHTrAaLPR1b", "emailAddress": "kfGKPPiaenvaSNO8", "password": "MvtJlOWVdbbZAmCS", "reachMinimumAge": false, "uniqueDisplayName": "1KuS04XbVV14S3D5"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateUserFromInvitationV3' test.out

#- 262 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Rlyx9vd60MuxIWO7", "country": "GB4UQVHvYzPCNfiB", "dateOfBirth": "WW5PzAb824uTQlN8", "displayName": "uNYakE8uiEEPe0SY", "languageTag": "eyoQwlOIqfTDmf1k", "uniqueDisplayName": "ynlqjOZfNgVYhYh3", "userName": "4YjTFhndmJFFV10r"}' \
    > test.out 2>&1
eval_tap $? 262 'UpdateUserV3' test.out

#- 263 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "uwacNgGNo2HW2pBy", "country": "dskQvQ2cY71Ogtxe", "dateOfBirth": "AJYGPBjbCJdUNLVW", "displayName": "s4PVbrqwXZ1vOVJ4", "languageTag": "xnxyxAxakppExuWe", "uniqueDisplayName": "wGDuZZaSwOjdXeCM", "userName": "dq9dvoeeRqLDxFwA"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPartialUpdateUserV3' test.out

#- 264 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "fMmzI6nETSzFWWJX", "emailAddress": "fWh6gRc7Tp8rBw3s", "languageTag": "eGB8rWNerptT9gRy"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicSendVerificationCodeV3' test.out

#- 265 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sBeDEbDEwW08AVWN", "contactType": "x2o8wHjqA0bPnxWi", "languageTag": "cCsphLfZ7sC9epun", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 265 'PublicUserVerificationV3' test.out

#- 266 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "2dMCFVL48UjVQdxt", "country": "xXL4sT90iLqMqSD9", "dateOfBirth": "wjNR6YqttuGa3KHa", "displayName": "gIP0NaBazOB9qUxQ", "emailAddress": "S8FDHyRFCPXnxcBI", "password": "glgJbIWrAwC3xmEh", "uniqueDisplayName": "XOTP1Vvih4VC1rqh", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 266 'PublicUpgradeHeadlessAccountV3' test.out

#- 267 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "q4IqiaXjzZyXLBLC", "password": "A4zopwAgIUzoXkkz"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyHeadlessAccountV3' test.out

#- 268 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "hdrIuerGy0wFMuHF", "newPassword": "hn6mpYhOXCcrzh9h", "oldPassword": "j7uFLrLMgNWtrduA"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicUpdatePasswordV3' test.out

#- 269 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'UJOV02qIMLafXJKP' \
    > test.out 2>&1
eval_tap $? 269 'PublicCreateJusticeUser' test.out

#- 270 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'n4Tsbt85CG3MI3HM' \
    --redirectUri 'c5z2VPuhcU3vHd6J' \
    --ticket 'rX78KvNh5X1tmIZi' \
    > test.out 2>&1
eval_tap $? 270 'PublicPlatformLinkV3' test.out

#- 271 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'IhryubTvBMksMD2a' \
    --body '{"platformNamespace": "EXK343Bzb807j7bQ"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicPlatformUnlinkV3' test.out

#- 272 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jME5hMSzqrgCrlVp' \
    > test.out 2>&1
eval_tap $? 272 'PublicPlatformUnlinkAllV3' test.out

#- 273 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CC3pGdHez69EB7Ny' \
    --ticket 'cf35xYBLC8hsQmpu' \
    > test.out 2>&1
eval_tap $? 273 'PublicForcePlatformLinkV3' test.out

#- 274 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'YGbrHvAtlGwdLYaj' \
    --clientId 'jJj7WZ0ekudKgUy0' \
    --redirectUri '0rKIv4nUdLw2h0oE' \
    > test.out 2>&1
eval_tap $? 274 'PublicWebLinkPlatform' test.out

#- 275 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'c7e01wYGggTGn34y' \
    --code 'WeIAIvOQRCsSD1ef' \
    --state 'DgOStG5h7FtUKkvk' \
    > test.out 2>&1
eval_tap $? 275 'PublicWebLinkPlatformEstablish' test.out

#- 276 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rUl382gt5oUhO35x' \
    --code 'VShncZitvSJYzaFk' \
    --state 'iMIOQIj8CS5hf3nE' \
    > test.out 2>&1
eval_tap $? 276 'PublicProcessWebLinkPlatformV3' test.out

#- 277 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "hoJDwjcSfkEcXXB7", "userIds": ["d4KKbdKrBdZlZWMO", "M7ejfu0Xh8CwEybc", "J60iJEN84M7cQIIs"]}' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUsersPlatformInfosV3' test.out

#- 278 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "UCZuey4F9JLAECrp", "emailAddress": "0E9vj3AQOnEkBjEG", "newPassword": "tXnSxpGGQH7I9jco"}' \
    > test.out 2>&1
eval_tap $? 278 'ResetPasswordV3' test.out

#- 279 PublicGetUserByUserIdV3
eval_tap 0 279 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 280 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jP8eQhk47G8hvJ5b' \
    --activeOnly 'false' \
    --after 'CvgKugTQlF7tLe6O' \
    --before 'htqQtfjmolIlkNjf' \
    --limit '47' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetUserBanHistoryV3' test.out

#- 281 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '9NmF55mNx39RaABt' \
    > test.out 2>&1
eval_tap $? 281 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 282 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ay8VX70cKZ1SO07D' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUserInformationV3' test.out

#- 283 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Nbbw3hLTnzOrROxH' \
    --after '0.680182918807619' \
    --before '0.29132477432921877' \
    --limit '27' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUserLoginHistoriesV3' test.out

#- 284 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WT79MXmiheecVFfX' \
    --after 'XosdjefcIA4LRd5b' \
    --before 'owxKrvwFxhb3vb0c' \
    --limit '14' \
    --platformId 'bBdnM2itQ8H3nD6z' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetUserPlatformAccountsV3' test.out

#- 285 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tww3gVlKyAQf56sq' \
    > test.out 2>&1
eval_tap $? 285 'PublicListJusticePlatformAccountsV3' test.out

#- 286 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'Wy3D0e3h6rqIuYra' \
    --body '{"platformId": "htrWidbiBlSp9dSh", "platformUserId": "R6b5x0u9HuswGSXx"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicLinkPlatformAccount' test.out

#- 287 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'RLSvUQOirm3muca5' \
    --body '{"chosenNamespaces": ["xR71Nna0gFRI9mjT", "dn235o0bx0K2rgRx", "VEP5U1KORDCH4xsa"], "requestId": "xEcUnwKaB87Qi6vW"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicForceLinkPlatformWithProgression' test.out

#- 288 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm0PkhuLEqVAwqbRt' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPublisherUserV3' test.out

#- 289 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mZA5DNoZOewCnoCI' \
    --password 'HXnLTQkv06Y1JiYf' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 290 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'bXQvtG2NNDq1SFHn' \
    --before 'WuYirsFyJkUu78hC' \
    --isWildcard 'false' \
    --limit '91' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetRolesV3' test.out

#- 291 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '2c8njX33OreUcXeN' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetRoleV3' test.out

#- 292 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetMyUserV3' test.out

#- 293 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'XoTTJV0ryfnrKJM4' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 294 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["aHkiotLjUGhfpqF4", "woqMj7lIuKrGDf0o", "xI6CtTSPfnz3lgtW"], "oneTimeLinkCode": "Ao08fQlEpsbqkxRD"}' \
    > test.out 2>&1
eval_tap $? 294 'LinkHeadlessAccountToMyAccountV3' test.out

#- 295 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "JvYvwUvdQiu5nNG8"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicSendVerificationLinkV3' test.out

#- 296 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'kiO54zdd47m5bWy4' \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyUserByLinkV3' test.out

#- 297 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'BW5k6RbzMp0ddqKD' \
    --code 'uBSSPIGditWdRdkq' \
    --error 'GsK2BJgKrdmf3Tbw' \
    --state 'JhwuOkbOOwfU0YTf' \
    > test.out 2>&1
eval_tap $? 297 'PlatformAuthenticateSAMLV3Handler' test.out

#- 298 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '8G86KyXtjEN63aoV' \
    --payload '8DQ62xNN5no3bCxi' \
    > test.out 2>&1
eval_tap $? 298 'LoginSSOClient' test.out

#- 299 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 's1hESF9bjIeL2MZb' \
    > test.out 2>&1
eval_tap $? 299 'LogoutSSOClient' test.out

#- 300 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'wWOoPFBhAZgYYMNZ' \
    --code 'WhcJaWgJsDV0ac6D' \
    > test.out 2>&1
eval_tap $? 300 'RequestTargetTokenResponseV3' test.out

#- 301 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '96' \
    --namespace '1ekyYiILduse6Eov' \
    --offset '31' \
    > test.out 2>&1
eval_tap $? 301 'AdminListInvitationHistoriesV4' test.out

#- 302 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '9wuEYpHkd9e9yJMr' \
    > test.out 2>&1
eval_tap $? 302 'AdminGetDevicesByUserV4' test.out

#- 303 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'h5jfvjqephN3s7R7' \
    --endDate '8LIX7iYbxnE5Pcfm' \
    --limit '34' \
    --offset '19' \
    --startDate 't05w4uTefpXXZqzD' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetBannedDevicesV4' test.out

#- 304 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'eTGNdAHQ2tHOeAv0' \
    > test.out 2>&1
eval_tap $? 304 'AdminGetUserDeviceBansV4' test.out

#- 305 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "VuuLFb445BaiytRB", "deviceId": "sCnVpEboUeokec7o", "deviceType": "wETIYaUb1UV2NEKF", "enabled": true, "endDate": "UQ0GYzOnHKcvLSgg", "ext": {"wJ8HsoldPt9qe4tk": {}, "Mf1DDdNTs6zRnfKZ": {}, "yA3QlZ1u86ll5CSi": {}}, "reason": "wB3x0jDEwbTyzseH"}' \
    > test.out 2>&1
eval_tap $? 305 'AdminBanDeviceV4' test.out

#- 306 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'ocgJP9TZzSQZrHji' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 306 'AdminGetDeviceBanV4' test.out

#- 307 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'grnnT6wP1LnG6plL' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 307 'AdminUpdateDeviceBanV4' test.out

#- 308 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'PD5clmwixJk4SPLy' \
    --startDate '7hJ882vbEg3OXvvi' \
    --deviceType '5utFnEjMXfVFVrqx' \
    > test.out 2>&1
eval_tap $? 308 'AdminGenerateReportV4' test.out

#- 309 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'AdminGetDeviceTypesV4' test.out

#- 310 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'sK1pkfKd8tGwUhVn' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 310 'AdminGetDeviceBansV4' test.out

#- 311 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'z2VxKgLVuTP32WQh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminDecryptDeviceV4' test.out

#- 312 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '2j4vkxH3EglgfVLk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 312 'AdminUnbanDeviceV4' test.out

#- 313 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'nYoAE8U0HzhvTN2F' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 313 'AdminGetUsersByDeviceV4' test.out

#- 314 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 314 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 315 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '88' \
    --offset '20' \
    > test.out 2>&1
eval_tap $? 315 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 316 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 34}' \
    > test.out 2>&1
eval_tap $? 316 'AdminCreateTestUsersV4' test.out

#- 317 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Xxy7j2Bu3lfq9SEr", "policyId": "BDAsMFzpRqKZfgta", "policyVersionId": "GHEeNchuYlMPlmy5"}, {"isAccepted": false, "localizedPolicyVersionId": "OtkwryJ2yJ63zttM", "policyId": "QaxeAhbOih5DLz2n", "policyVersionId": "lMqWbe36wX86yBFJ"}, {"isAccepted": true, "localizedPolicyVersionId": "WHpYUolArbgv9N2W", "policyId": "mECSS5lruFjhsSTi", "policyVersionId": "ndbZoJRdykNzq6a8"}], "authType": "EMAILPASSWD", "code": "MiTUHJEvASxu8ucy", "country": "Gm3EUjxhXlk08qKP", "dateOfBirth": "DG3LowvTDGMqoh4A", "displayName": "FsRvCnEGuhmmEYeD", "emailAddress": "fucHls6ttujNuPp8", "password": "dKvjEXyefN64rwAp", "passwordMD5Sum": "vmGoTHrC4MTiDIxz", "reachMinimumAge": false, "uniqueDisplayName": "0QYpM0ktnTOAJAnu", "username": "pgMy8MWjPofOz1lE"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminCreateUserV4' test.out

#- 318 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["ctbhVWqTvEPu5EtL", "redULC9exPo6Viw6", "YPvZOy0FQHSrJDB7"]}' \
    > test.out 2>&1
eval_tap $? 318 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 319 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["HVP6bAyu44ZKmWmD", "nB84ckqIGxjrXV3R", "llzcqb1C4DAM2Wes"]}' \
    > test.out 2>&1
eval_tap $? 319 'AdminBulkCheckValidUserIDV4' test.out

#- 320 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aSYHZywcjZts3TSH' \
    --body '{"avatarUrl": "cwRLi4QbmoqXAnmB", "country": "hXMu0loB2x69yIWr", "dateOfBirth": "FmzRr14EdlqDQsLG", "displayName": "T47i7mqqdjrDeb9k", "languageTag": "4rLIM9dZ16j5C7zK", "skipLoginQueue": true, "uniqueDisplayName": "HR0v74osP9f57IKU", "userName": "6rmAjdSp9TniDalP"}' \
    > test.out 2>&1
eval_tap $? 320 'AdminUpdateUserV4' test.out

#- 321 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'O4y2VfHpeV3PsmRQ' \
    --body '{"code": "cwXWnxZ0qJZyJgkv", "emailAddress": "fVWadz1s2K9duZS8"}' \
    > test.out 2>&1
eval_tap $? 321 'AdminUpdateUserEmailAddressV4' test.out

#- 322 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GvfiuPP4KyAdkibt' \
    > test.out 2>&1
eval_tap $? 322 'AdminDisableUserMFAV4' test.out

#- 323 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'JYpRVm0kYZlWoJxw' \
    > test.out 2>&1
eval_tap $? 323 'AdminListUserRolesV4' test.out

#- 324 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hQ904s22vVqgyOSr' \
    --body '{"assignedNamespaces": ["TRlboPJvFjrkh29n", "yayi02IQ7Ps91LSl", "obmuqn0DouMRvSEs"], "roleId": "WzuTXp3oCyy1dwPp"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminUpdateUserRoleV4' test.out

#- 325 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'uaU1ALos5iNVHVlZ' \
    --body '{"assignedNamespaces": ["3vX3afUkoQvHw4Kt", "hWv7VExuyQKYOOsb", "RCzs3jQpJQOA1vcl"], "roleId": "R9qoMdKLyldQwAQe"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminAddUserRoleV4' test.out

#- 326 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZmaF66wZbjmgtvKK' \
    --body '{"assignedNamespaces": ["tBT6LRUN2py13ze9", "npGzfMAfBTi5n9cA", "ruLrYMXy70LcrlGs"], "roleId": "fBENizvh59iM27Z2"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminRemoveUserRoleV4' test.out

#- 327 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '48' \
    --offset '56' \
    > test.out 2>&1
eval_tap $? 327 'AdminGetRolesV4' test.out

#- 328 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "591hGbtG0EGLag1h"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminCreateRoleV4' test.out

#- 329 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'VlRfL0tUnJu45Vlq' \
    > test.out 2>&1
eval_tap $? 329 'AdminGetRoleV4' test.out

#- 330 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '8v87RL0Mjt2ym8NB' \
    > test.out 2>&1
eval_tap $? 330 'AdminDeleteRoleV4' test.out

#- 331 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'O4gNy5lfDi3kedcH' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "3AMJHWFmzPfjeQMG"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateRoleV4' test.out

#- 332 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'E7EiVs2A4wuYT3hv' \
    --body '{"permissions": [{"action": 43, "resource": "JxRUC9dxaoPS9U7I", "schedAction": 61, "schedCron": "NvMIkLwyHVrg14tt", "schedRange": ["BhG8QyxJbcWEXXCS", "sfAdpntiQG8odlNp", "kQsmd9kQqpoSuyhA"]}, {"action": 69, "resource": "eVGb373YIVHOVZ7T", "schedAction": 75, "schedCron": "Hww7YwJW02LZmesc", "schedRange": ["gaSfIIQLXZD1o6zp", "JaVjWZiWgUJyUh5k", "xNNdLnPhfKjjsr3z"]}, {"action": 86, "resource": "hqbLLkLoJtC3qWVx", "schedAction": 81, "schedCron": "QcL2s96vazz7GNwf", "schedRange": ["W5fYENxf4wMgSjhS", "HrqPhi4YcBmhKJpz", "vCNwzi0VRg8dh4qj"]}]}' \
    > test.out 2>&1
eval_tap $? 332 'AdminUpdateRolePermissionsV4' test.out

#- 333 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '57Std3tjHkv4k0xw' \
    --body '{"permissions": [{"action": 67, "resource": "947lx58AAjsQVPig", "schedAction": 23, "schedCron": "j8qkdryoMuXSCtC4", "schedRange": ["0I3LDkfEjzo8mhib", "T1GyGrLIBKK3597p", "Oo29hfotUtSKv1dJ"]}, {"action": 39, "resource": "WaK34BhkvaAbCw9G", "schedAction": 60, "schedCron": "aKY2zhftFLE8GH4i", "schedRange": ["MGqICRXDXp3rU01x", "Y9F25GzUQIwx6Cgg", "ZIxgrTZKYMxruG8I"]}, {"action": 60, "resource": "cWucX2Igj0gAQwaR", "schedAction": 14, "schedCron": "3p9jY6F0NdNDhKhO", "schedRange": ["EBrNfJIh53UbklG3", "UmQkoRKn2AQWMZkl", "Ujpm5YpxVaQQ9zBv"]}]}' \
    > test.out 2>&1
eval_tap $? 333 'AdminAddRolePermissionsV4' test.out

#- 334 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'UdrGUe5VsnuWLS4I' \
    --body '["t2niiQL5XqFzgghT", "dHYDKrKkzHBTjuNj", "crx3YoVEqz8m9UzP"]' \
    > test.out 2>&1
eval_tap $? 334 'AdminDeleteRolePermissionsV4' test.out

#- 335 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'hKL2NjNMGadV41ag' \
    --after '31PAy0aH1rGongrg' \
    --before '0K1abH60lorTPYf3' \
    --limit '15' \
    > test.out 2>&1
eval_tap $? 335 'AdminListAssignedUsersV4' test.out

#- 336 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'qENWkdtHyRSinLu9' \
    --body '{"assignedNamespaces": ["YkJ6wXF5g3jQ90zD", "vVq88dARfqLF99yY", "86Y476b2kVbNFwhn"], "namespace": "Re75AJnQJr1XPgWk", "userId": "325kjUC67Jr0NgYD"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminAssignUserToRoleV4' test.out

#- 337 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'gOzqv5r3wBePtsdb' \
    --body '{"namespace": "tYE4RFMbEvZAFWI7", "userId": "tZ3V5zHIQi0vcHJs"}' \
    > test.out 2>&1
eval_tap $? 337 'AdminRevokeUserFromRoleV4' test.out

#- 338 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["EZ5LBot1aQpmKkTw", "zF76qRafsFAC5o7a", "EWLpZxhEhzK4AqNX"], "emailAddresses": ["1fDSj0ScA8SLuR23", "JDIkKtaGWPxqr02H", "dBvRXx7MGoQgasYj"], "isAdmin": false, "isNewStudio": false, "namespace": "yo2datxZlOAviSc2", "roleId": "SG9k1eRi2MHRXocm"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminInviteUserNewV4' test.out

#- 339 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "eSieuIxJiW9rJTkX", "country": "qdiVEy5N5zo2CivG", "dateOfBirth": "4tN3IcvpKnxMkxcQ", "displayName": "i0BSq3CilwGfhK2n", "languageTag": "jeJt31VYFYGcChRa", "skipLoginQueue": true, "uniqueDisplayName": "B2ivvrtkvJH8YOF9", "userName": "RAcmkYrtZ8CI2xsg"}' \
    > test.out 2>&1
eval_tap $? 339 'AdminUpdateMyUserV4' test.out

#- 340 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 340 'AdminDisableMyAuthenticatorV4' test.out

#- 341 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '4Xs715NNBJziTtCx' \
    > test.out 2>&1
eval_tap $? 341 'AdminEnableMyAuthenticatorV4' test.out

#- 342 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 343 AdminGetMyBackupCodesV4
eval_tap 0 343 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 344 AdminGenerateMyBackupCodesV4
eval_tap 0 344 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 345 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminDisableMyBackupCodesV4' test.out

#- 346 AdminDownloadMyBackupCodesV4
eval_tap 0 346 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 347 AdminEnableMyBackupCodesV4
eval_tap 0 347 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 348 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 348 'AdminGetBackupCodesV4' test.out

#- 349 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 349 'AdminGenerateBackupCodesV4' test.out

#- 350 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 350 'AdminEnableBackupCodesV4' test.out

#- 351 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 351 'AdminSendMyMFAEmailCodeV4' test.out

#- 352 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 352 'AdminDisableMyEmailV4' test.out

#- 353 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '7kMfsHlpHjG8PYh4' \
    > test.out 2>&1
eval_tap $? 353 'AdminEnableMyEmailV4' test.out

#- 354 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 354 'AdminGetMyEnabledFactorsV4' test.out

#- 355 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'aT6NMv9DvdbulsfW' \
    > test.out 2>&1
eval_tap $? 355 'AdminMakeFactorMyDefaultV4' test.out

#- 356 AdminInviteUserV4
eval_tap 0 356 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 357 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'T06ZEb39wFXZ8t3q' \
    --linkingToken 'xEdRFP5wxe3AUF6P' \
    --password 'c7lDz5hnCuw5V2M4' \
    --username '73p7zk3G21I2FywB' \
    > test.out 2>&1
eval_tap $? 357 'AuthenticationWithPlatformLinkV4' test.out

#- 358 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'emAuNd63LcNw3KNX' \
    --extendExp 'false' \
    --linkingToken 'kjGqha3TR5jPjGAO' \
    > test.out 2>&1
eval_tap $? 358 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 359 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'vShY9UGEo1pslDZE' \
    --factor 'mPOGkdziStFAPjMQ' \
    --mfaToken 'RHHyTL952TWAs61O' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 359 'Verify2faCodeV4' test.out

#- 360 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'PRv2UYIz7sWD201i' \
    --codeChallenge 'ykmlEO3oDday6VFY' \
    --codeChallengeMethod 'plain' \
    --additionalData 'BV0MrFBNAtp8pfYO' \
    --clientId 'jhtpEVCozkoa3if5' \
    --createHeadless 'false' \
    --deviceId 'ZF7aOtPYX1LQ8aYD' \
    --macAddress 'A1nvaSowhXT0Dsm9' \
    --platformToken 'HwfRNDbymJKAr8ga' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 360 'PlatformTokenGrantV4' test.out

#- 361 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'WpZZYtd90Syhvu0m' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'wtzF9W9kRUA0sBRy' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'Cd4U733Xd2u7hgC3' \
    > test.out 2>&1
eval_tap $? 361 'SimultaneousLoginV4' test.out

#- 362 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'VeyT3K9213A5kx1V' \
    --codeChallengeMethod 'plain' \
    --additionalData '6VRaoPYhdxvW9MPq' \
    --clientId 'wfQK5JCel6B5rsSC' \
    --code '71frw7qWvEI81fZz' \
    --codeVerifier 'aYtZrs1plyDtdQMA' \
    --extendNamespace 'q5knH92dQQllioMI' \
    --extendExp 'false' \
    --loginQueueTicket 'BTAumGMmQz0ulpH9' \
    --password 'zGDnkdfqDogMIFKY' \
    --redirectUri 'ruU7DmVWsr7d0Ujl' \
    --refreshToken 'aD4NzA6TEFf324sH' \
    --username 'aQrdTou7mV9euUa1' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 362 'TokenGrantV4' test.out

#- 363 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'VS1He3swhreNPZ0c' \
    --code 'NwtC7PV742rn7j0p' \
    > test.out 2>&1
eval_tap $? 363 'RequestTargetTokenResponseV4' test.out

#- 364 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "X8Dx1GIkFPVvCIVi", "policyId": "7qyT57VRsuMUIuCT", "policyVersionId": "sHpt1RliK9uX1av3"}, {"isAccepted": true, "localizedPolicyVersionId": "t4u5K1V6Nj0dQ8ux", "policyId": "VFH3IOzZQDc5J4rP", "policyVersionId": "NBHN8SDdDoR5ePxo"}, {"isAccepted": true, "localizedPolicyVersionId": "MW9q0uRHAMo4vR1t", "policyId": "0zluYqa4zMpG3oLp", "policyVersionId": "uy07IgnWSoR791P0"}], "authType": "EMAILPASSWD", "country": "ZQGvIRT9zG0cnCmN", "dateOfBirth": "uZkoEAriOIQzjs0N", "displayName": "D3MmOO4TRbsbGAS7", "emailAddress": "uj77XSPQDoJhV88h", "password": "wko6h0mr9wGlRiiG", "passwordMD5Sum": "cwwGVMTAPJMRYO6Q", "uniqueDisplayName": "Av2FZSIWYLChjHGr", "username": "T12lAGwEHQGRWeKq", "verified": true}' \
    > test.out 2>&1
eval_tap $? 364 'PublicCreateTestUserV4' test.out

#- 365 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "34ZlkpL03EMhmnUW", "policyId": "OFrO24DIUzphktkp", "policyVersionId": "eOk2nS4aUV81WdAP"}, {"isAccepted": true, "localizedPolicyVersionId": "Hka2eaPGTFNib1EI", "policyId": "DVp7NpJaUy6WJHxS", "policyVersionId": "RkXYYdILvtzIzoc6"}, {"isAccepted": true, "localizedPolicyVersionId": "AwovSe2p04rfeK3L", "policyId": "bh2loqqit8TkpTcu", "policyVersionId": "aAL24Rd4ryZzrbwG"}], "authType": "EMAILPASSWD", "code": "fuVnmQkowUmOpBHv", "country": "IlMnQL7kgtfdXiAk", "dateOfBirth": "s2432Y0xNzcckJ4U", "displayName": "2LjpohNjBqr5NdbW", "emailAddress": "eBvW2l0U6JHIl8nb", "password": "GrFrgTwKubTv7a8U", "passwordMD5Sum": "JG5oNWPrmuBqqCRK", "reachMinimumAge": true, "uniqueDisplayName": "Y3avcGOprZa1h79S", "username": "k0u4gzqlXjraGrQD"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicCreateUserV4' test.out

#- 366 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'eiot1sBHLcb5pChh' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "qMwOWj0ghvuIo4NE", "policyId": "OKdw3viQ4rwBMJ85", "policyVersionId": "U5MYdpvnM1jfK5HB"}, {"isAccepted": false, "localizedPolicyVersionId": "ZGp47pcW264LJ6Zn", "policyId": "6J0trs2KyU7oaPJK", "policyVersionId": "ir4kCpsyIwFXkENY"}, {"isAccepted": true, "localizedPolicyVersionId": "ZrKrtwaYhXqNhpSm", "policyId": "gxan9sHbm9dtAiMD", "policyVersionId": "UaANmwEISFb1phSW"}], "authType": "EMAILPASSWD", "code": "zYQ7af6uDzXCn30Z", "country": "iZ3Uh1D3ZFvCBe3L", "dateOfBirth": "Sg8uuknKiO9OntNV", "displayName": "rxopmCRZHzRPIMJt", "emailAddress": "kan0kgL6In8HMidE", "password": "pBUPtX1gZiTyhIlq", "passwordMD5Sum": "yZNoN9hqD2oqXnq6", "reachMinimumAge": true, "uniqueDisplayName": "i8INDSpdwcbRmyKc", "username": "FDHjTXXDdCFIx8iE"}' \
    > test.out 2>&1
eval_tap $? 366 'CreateUserFromInvitationV4' test.out

#- 367 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "uCcMw4IEn72txfuy", "country": "KKEtRnnEQnDvpsf9", "dateOfBirth": "MVjxO3KgTdpyMSCo", "displayName": "aZMDX5L03rRpDEXI", "languageTag": "RjXAx0TSHx7lQSe8", "uniqueDisplayName": "OaQJ4sZiZEDBnkhI", "userName": "cW24bfTUor78rE1j"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicUpdateUserV4' test.out

#- 368 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WijDS55itLDdPKNI", "emailAddress": "YIoNUlj969sr7GhS"}' \
    > test.out 2>&1
eval_tap $? 368 'PublicUpdateUserEmailAddressV4' test.out

#- 369 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "KsZ08vmar5UOmp4E", "country": "loTAsux6XXYc2VOF", "dateOfBirth": "B5JtHTGrEtwep20a", "displayName": "2Q3sv8oQOu4P6lMG", "emailAddress": "IH58UdPlPydWYpPI", "password": "VGEF9ki7cWsHut42", "reachMinimumAge": true, "uniqueDisplayName": "15wUj7U672jDIg9R", "username": "u4mZa8eEcaGR9p4y", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 369 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 370 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Or3XSwH3LrHAr6kO", "password": "E0lqUNHikBd8CNy2", "username": "sEiAUc82kwM3txds"}' \
    > test.out 2>&1
eval_tap $? 370 'PublicUpgradeHeadlessAccountV4' test.out

#- 371 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 371 'PublicDisableMyAuthenticatorV4' test.out

#- 372 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'hFPS8XYgtvGGShK5' \
    > test.out 2>&1
eval_tap $? 372 'PublicEnableMyAuthenticatorV4' test.out

#- 373 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 373 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 374 PublicGetMyBackupCodesV4
eval_tap 0 374 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 PublicGenerateMyBackupCodesV4
eval_tap 0 375 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 376 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 376 'PublicDisableMyBackupCodesV4' test.out

#- 377 PublicDownloadMyBackupCodesV4
eval_tap 0 377 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 378 PublicEnableMyBackupCodesV4
eval_tap 0 378 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 379 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 379 'PublicGetBackupCodesV4' test.out

#- 380 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 380 'PublicGenerateBackupCodesV4' test.out

#- 381 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 381 'PublicEnableBackupCodesV4' test.out

#- 382 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 382 'PublicRemoveTrustedDeviceV4' test.out

#- 383 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 383 'PublicSendMyMFAEmailCodeV4' test.out

#- 384 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 384 'PublicDisableMyEmailV4' test.out

#- 385 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'OzkvaMWHG9uVzng0' \
    > test.out 2>&1
eval_tap $? 385 'PublicEnableMyEmailV4' test.out

#- 386 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 386 'PublicGetMyEnabledFactorsV4' test.out

#- 387 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '53OxFKwr6GCAYRZY' \
    > test.out 2>&1
eval_tap $? 387 'PublicMakeFactorMyDefaultV4' test.out

#- 388 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LDWBqKNZgIzXYxF1' \
    > test.out 2>&1
eval_tap $? 388 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 389 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "iMhev754xfAhCCHi", "emailAddress": "4MirSALY2KRICQ0N", "namespace": "T0G4qomzpJJ908aC", "namespaceDisplayName": "Awki0W6wjXQBQzEq"}' \
    > test.out 2>&1
eval_tap $? 389 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE