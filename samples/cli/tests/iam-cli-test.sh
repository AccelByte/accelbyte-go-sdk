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
echo "1..435"

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
    --body '{"modules": [{"docLink": "28dhjIvxNue6sveg", "groups": [{"group": "ebjH8IMz2LfhGBBE", "groupId": "SJfIPODArnStPuW7", "permissions": [{"allowedActions": [88, 79, 8], "resource": "cWmz8zbfjgwbW4Ax"}, {"allowedActions": [43, 15, 0], "resource": "HzPpC2IVU1ub3JZP"}, {"allowedActions": [66, 70, 50], "resource": "Zr2TiPJ8uLQ4tW78"}]}, {"group": "cdBj7ZZSxWJFinpc", "groupId": "XkhoTaYN5Bjz5l1j", "permissions": [{"allowedActions": [96, 47, 21], "resource": "Rvrq2T5k1eIt1hw0"}, {"allowedActions": [88, 98, 36], "resource": "7LqpGhH8T7gJzUec"}, {"allowedActions": [67, 2, 7], "resource": "ItZ4J6Z7KE6oAv42"}]}, {"group": "NMxP2UjpGsNxMme7", "groupId": "kSgl51BI8h905LiM", "permissions": [{"allowedActions": [57, 1, 75], "resource": "Kv8CfZzkHCMGcoqV"}, {"allowedActions": [27, 47, 83], "resource": "P3m3BRlqkRcHved7"}, {"allowedActions": [5, 85, 56], "resource": "E25WWy5F8G3dibRb"}]}], "module": "3bTQzbZ0i4tgHTvh", "moduleId": "1nc1RlmmWjbH1eWn"}, {"docLink": "ayHtuNAIIttQRGRA", "groups": [{"group": "M8N7jmwXLKBq6Gd8", "groupId": "KZGwOQyAeUHKszgI", "permissions": [{"allowedActions": [72, 29, 9], "resource": "k581A9r7vAwPN8wD"}, {"allowedActions": [51, 58, 41], "resource": "HKTSIRxuep1njIiv"}, {"allowedActions": [81, 88, 70], "resource": "hGlGvQErUYOKtOxA"}]}, {"group": "vF1Xj1ouuC2mcADp", "groupId": "VAh5DDU7Pl0u2cDy", "permissions": [{"allowedActions": [82, 38, 55], "resource": "LJRkduoGC5PM3AGG"}, {"allowedActions": [41, 17, 56], "resource": "8dnGQrnIcYS3TW3i"}, {"allowedActions": [85, 79, 99], "resource": "goQblKqsvnGuN5QZ"}]}, {"group": "OHIVcL7XZBo9XOJp", "groupId": "8ipBppKBdmWmdwUW", "permissions": [{"allowedActions": [51, 27, 52], "resource": "hUSegLZRC2echf3x"}, {"allowedActions": [26, 29, 69], "resource": "K5V9Avqb9tFPXfoT"}, {"allowedActions": [19, 64, 94], "resource": "fhg7M0OhsGGKH542"}]}], "module": "a0pqSWEBOUwizy68", "moduleId": "btRcOCdyOViKzAc9"}, {"docLink": "52QZnPNE0yUMYqNa", "groups": [{"group": "4eBc62jZVWgkTDYO", "groupId": "QkjCLEawpGNsHopP", "permissions": [{"allowedActions": [39, 34, 18], "resource": "gBzR5NleJ07tneSe"}, {"allowedActions": [84, 9, 72], "resource": "iVaqQ2U93nHsgiue"}, {"allowedActions": [61, 54, 8], "resource": "6csfHVKwK7YSE7Xp"}]}, {"group": "WT34xJxuU1ARl8zM", "groupId": "GwuZt5p9xzRvmvbY", "permissions": [{"allowedActions": [66, 24, 40], "resource": "NLpVBPlNJvq5UvIs"}, {"allowedActions": [0, 12, 58], "resource": "DRbc5y8Y3a0ziLpt"}, {"allowedActions": [0, 20, 77], "resource": "sMpyZExZ788H3ZgR"}]}, {"group": "w12Prx5EiXTIw1wG", "groupId": "bBAx5Vkcd1Wgx144", "permissions": [{"allowedActions": [11, 15, 32], "resource": "WYvptqt7blh1FWVc"}, {"allowedActions": [54, 99, 52], "resource": "cAs8a8UtpC01djEQ"}, {"allowedActions": [52, 52, 23], "resource": "hZZN1eNsaLO8iTdK"}]}], "module": "7ryHQAby5KYcuXUU", "moduleId": "vhc4F7lMLWrLpLpw"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "CzUs5ZmN6M7yNSg7", "moduleId": "k6ZfKGw9dkv5CtHn"}' \
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
    --body '[{"field": "bY06gqmGz0aZYja8", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["3oj4wW1GoOV7gn4k", "Fl9Ej3kVqakCYPGV", "FwF6Q0QZiUmP9yS9"], "preferRegex": false, "regex": "hx0yscGPlklS7l0j"}, "blockedWord": ["2dxQHlKExZWJtig5", "F7GBMSWe4Zp9bgVb", "O2TsnGk6KHaI3wvH"], "description": [{"language": "Zzdj6ngXJOUxeCKG", "message": ["A0ZyOxMKDIf4QPDK", "5K2PdEBaRvDKOZ2S", "AK69RzSyMg5FE0RH"]}, {"language": "7E6SGKCqdLrFAFlH", "message": ["QRKg5XiLU5R54flC", "cUTo0XYhL24DPcKs", "xY0x7PFMxBP6LTfP"]}, {"language": "z9eOgNPK6m2KL2O7", "message": ["W3nIoszfR8jAdw9z", "IfZ2jfPnCi5nDyTi", "s2HlpYLjcFWy5fdt"]}], "isCustomRegex": false, "letterCase": "EccOk7dCy01fH4si", "maxLength": 91, "maxRepeatingAlphaNum": 8, "maxRepeatingSpecialCharacter": 57, "minCharType": 30, "minLength": 1, "profanityFilter": "CO1aByrC4wciuk7z", "regex": "fNnk4GWdeaLoxSSh", "specialCharacterLocation": "lbVCFkc7YjgkUgW1", "specialCharacters": ["1CWmW4FlP3MOflYe", "soBAi63qgTfscQ3v", "QtqYccWlWUPVxXya"]}}, {"field": "5fc98F9jbHAUc1wr", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["lSooKFu5LSkC7PY4", "l2EJksQuX1vsC7dZ", "9SizJJyGmAb62Dgu"], "preferRegex": false, "regex": "7aRFTx01p3bEWmiH"}, "blockedWord": ["naFmDgnu3y4AmPQp", "2yS1pdg7N96jAewp", "sroFMEb8zI5VXgO0"], "description": [{"language": "75fJFjHP1Qt8ZpJV", "message": ["nWnsysDDJqcNbrXM", "1nvo29kmfaZKO4E4", "7D7cUuDGuVN3ZM3i"]}, {"language": "FB75H2eYtGBbMdpt", "message": ["46F4WcWbUJVoK06t", "ZqEY9K2ZgtCG3rjm", "0BgEfJne4EuPDNo5"]}, {"language": "fiJwmvQL9Y3fV32h", "message": ["ByGoAc3xM82LsLjr", "q0HcUHS4ExbANhlt", "HwD9E1mSdKE2uCj7"]}], "isCustomRegex": true, "letterCase": "6h5ZLIitarQPwwn1", "maxLength": 38, "maxRepeatingAlphaNum": 51, "maxRepeatingSpecialCharacter": 40, "minCharType": 49, "minLength": 80, "profanityFilter": "DebDfUHRhUatpd1U", "regex": "8mnaoINnHR8you0G", "specialCharacterLocation": "OBcCK9lBUtVZGjNC", "specialCharacters": ["LMPzPExVMcB2BiAD", "2ayUz8N56RdIaOpH", "7OpoGg18q4uAZEQf"]}}, {"field": "atqiOmjyfuthVKKY", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["dHtr4bIYRIafrWl9", "LFsAdWJfR4eJN5PU", "MUmxyDIldxb3sZL0"], "preferRegex": false, "regex": "4JQK9KCGf3q4ncd6"}, "blockedWord": ["7w6RFJ0hLcnnH2yG", "lEFjNLPUdDVU7gRL", "DDBw2CTWuPHCLT0m"], "description": [{"language": "15PlSdJzcmZyywMy", "message": ["wPcqBzRQkVUqjzF1", "JalDE2HGp6LWyct2", "6DQOhUD3bltfuHB8"]}, {"language": "IFZotymA2Mez2POl", "message": ["fgmp3M3MVktwKfcd", "vu8rZ3H0OkyU4FzR", "HGxX1331fH19f3IN"]}, {"language": "L45Uj0Pth3wNdZRU", "message": ["I7djB0qrU3Aua7bp", "0PJHTGe4IVairwhS", "V33XD38WZ2frpoLt"]}], "isCustomRegex": true, "letterCase": "UfntQEIFlbg5T8e5", "maxLength": 33, "maxRepeatingAlphaNum": 78, "maxRepeatingSpecialCharacter": 24, "minCharType": 69, "minLength": 29, "profanityFilter": "gNbk4qrBFLJBDvC9", "regex": "DgOfVcESGtasC30k", "specialCharacterLocation": "jDTmHfJ6Pzp0alQs", "specialCharacters": ["U3MDQvfCIToBxAht", "gINVeFVPS2CJSIlU", "9yOeT7rVH981F1ud"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'rK0NpB5SQlbOpbEB' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'TeA73FASuEjWqMDf' \
    --before '9MfQjDvLjVNqs9Xy' \
    --endDate '14sG0jEJjJEazIXF' \
    --limit '72' \
    --query 'PXl6vO7ogMtxfXHF' \
    --roleId 'Obuv7ImNWI4y2Fw1' \
    --startDate 'ZbtKUTsYFHaB7fR1' \
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
    --body '{"ageRestriction": 30, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'AMkQKVFjs40zDWbA' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 99}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'Pic5QNgJGD2rTpZL' \
    --limit '43' \
    --offset '5' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "Xgm8jrmNVXKXemcE", "comment": "CDkfUvl0vJN5zbGl", "endDate": "RWaugPuO1dzg8Vfl", "reason": "i5s1th11kBEbUZi8", "skipNotif": true, "userIds": ["j6XWzNZfRdIeDRpV", "nLKgPbByawqNKuqw", "KavUZQ6pyvemt5dG"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "ubnCMKDPrwWSa4RD", "userId": "Yd8hwzqT2w4Ek8nS"}, {"banId": "5YC9hZK7EAs534U0", "userId": "BS8bx2bHhG1WDTki"}, {"banId": "mNw0u7xbXCErdsqe", "userId": "GflUKLBjYGW5qMsT"}]}' \
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
    --clientId '0XoqVTeqsZi3B827' \
    --clientName 'umUASvMvHVE3EUtM' \
    --clientType 'PYdA9ZNTau1ZIFLv' \
    --limit '70' \
    --offset '93' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["jsDk0Pd6ecPqCjde", "xKkfh3XItj3phwrF", "Q9WPsfh9ROCnvr3Q"], "clientUpdateRequest": {"audiences": ["rHXtKRT2g5xBN1cQ", "hMZyTjL7UH55eMvJ", "o9XU7GQbNpTvwhwO"], "baseUri": "JSEhHxjYM2jQr2FO", "clientName": "FYpMJDpXRuDVE5jQ", "clientPermissions": [{"action": 77, "resource": "aZPpgZLbdcFav7r4", "schedAction": 30, "schedCron": "z6l8paaD9GvuaiLd", "schedRange": ["GPTRSSX1rZqbGBvD", "QCTtOkSUlSNw5apG", "orx2vZ6SAvhNCBY4"]}, {"action": 0, "resource": "25Jg98HAMDnm3r4b", "schedAction": 85, "schedCron": "T6A6tMZfsiNGR55b", "schedRange": ["rw40j3bacDfnFiYM", "77AJ9WVu56DpO7by", "qQeZJaMzXFCfB6Zi"]}, {"action": 75, "resource": "mrVIjqHew1gsTPGx", "schedAction": 16, "schedCron": "YV7XyCVde4kbKUkx", "schedRange": ["CrLDvmOCSDMaMV1Y", "LBrLfPoujE5uSO9m", "vqqQ9F2KkblurIkQ"]}], "clientPlatform": "zyHsKMzdzhtVTKPY", "deletable": false, "description": "n3kFgej1sNhLKC4M", "modulePermissions": [{"moduleId": "PToxncTBXIeos0MD", "selectedGroups": [{"groupId": "FtSQksgNyvVUDRLC", "selectedActions": [2, 12, 32]}, {"groupId": "Gt8m6ZrsnGEmPwOf", "selectedActions": [26, 53, 34]}, {"groupId": "zMQ5FqPT2qHANUbl", "selectedActions": [82, 21, 19]}]}, {"moduleId": "QMsb9rUHCckpwkJq", "selectedGroups": [{"groupId": "SvCeXWYQva3mo5Yr", "selectedActions": [71, 32, 8]}, {"groupId": "KSktRkgzVirKoUkA", "selectedActions": [55, 32, 3]}, {"groupId": "pk0XDU9AXou17SoH", "selectedActions": [69, 1, 22]}]}, {"moduleId": "zmOZ116dBfLntsWZ", "selectedGroups": [{"groupId": "YnmS4Dteg9og5XrC", "selectedActions": [13, 76, 97]}, {"groupId": "oeiKMEXn8GyrTmqA", "selectedActions": [66, 24, 14]}, {"groupId": "SSJ1NSvpAyKtleX1", "selectedActions": [57, 25, 67]}]}], "namespace": "Zhuzsa8MHiRJygB0", "oauthAccessTokenExpiration": 21, "oauthAccessTokenExpirationTimeUnit": "cUfyi5CpxO0KGT11", "oauthRefreshTokenExpiration": 84, "oauthRefreshTokenExpirationTimeUnit": "GcUwbM7Q6Sm8ha0n", "redirectUri": "TOiCpQniK0MnH7QT", "scopes": ["Y9OLXI4Tv9KP6ezf", "RTy4ew7DEKneNalo", "CV9zfFS6Gfd4V0eB"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Gzy1TxXWNH6LrPf6", "3ubxdIqvAlXcdlXN", "IEnjiarROHaGhKiT"], "baseUri": "1mm88kmTT0CCbfZe", "clientId": "9xN9Uww2Wt87CFyb", "clientName": "ObipAi818MrAQaAt", "clientPermissions": [{"action": 42, "resource": "rBkShgiT4laIoXXX", "schedAction": 50, "schedCron": "iYYNvK54U8fxIMZm", "schedRange": ["1nS5qckje6mhbj7R", "gbo1iyUjkqPm24lH", "mhk31zXTXjr3mY3I"]}, {"action": 58, "resource": "ATULAr7yc7PNim50", "schedAction": 20, "schedCron": "dwlQOclFjUxuuGgT", "schedRange": ["tVdevYqw0Sej0iiY", "ZhHPwMGqkL35bgaH", "jRzCrzq8N34j2hp1"]}, {"action": 54, "resource": "6jxPvmlLub4NvZzR", "schedAction": 2, "schedCron": "GeuZFXbzNtHSb4S1", "schedRange": ["lGmiR27bo8DmUgIw", "IW94DBVLlo0FHDul", "UayaxcNlyWpykhAo"]}], "clientPlatform": "YQrvWtyXH073lfK8", "deletable": false, "description": "Bz6bX1imG6ve9BKw", "modulePermissions": [{"moduleId": "ePrN2zulKJD8x2KG", "selectedGroups": [{"groupId": "QFWol8670klY9Km8", "selectedActions": [95, 71, 37]}, {"groupId": "TkdkPMn1Abs00dtK", "selectedActions": [37, 93, 0]}, {"groupId": "cs8BPdfDZrQdO0G5", "selectedActions": [8, 55, 34]}]}, {"moduleId": "4w3YAQ3X1qfm9v1P", "selectedGroups": [{"groupId": "K8L0mYvLdIQBiLvp", "selectedActions": [49, 80, 48]}, {"groupId": "rBRj9Nj2QgL5f8GF", "selectedActions": [61, 0, 66]}, {"groupId": "oqYRSmW81yAQblPD", "selectedActions": [32, 2, 44]}]}, {"moduleId": "ShdEpr3WfwWiQY74", "selectedGroups": [{"groupId": "XeUOBpRtGvSy7bqN", "selectedActions": [88, 71, 91]}, {"groupId": "e03HELYpz6ev8BBz", "selectedActions": [33, 23, 78]}, {"groupId": "cZYKUnsRpEd1vL5J", "selectedActions": [88, 95, 89]}]}], "namespace": "8Gq7Z9qVsnNMXj4P", "oauthAccessTokenExpiration": 74, "oauthAccessTokenExpirationTimeUnit": "l6ZGvBph3368ffjl", "oauthClientType": "ryqXcV89ugNOPdAy", "oauthRefreshTokenExpiration": 25, "oauthRefreshTokenExpirationTimeUnit": "Ek7PIWq0chIRmC7q", "parentNamespace": "fEAaMlHFKLIFHfVr", "redirectUri": "v779pYZRY583ZtQs", "scopes": ["hzHJRDumx80hboWp", "LU6GrU3JqydGrOQe", "Hkv41MpRyqxZ3hQV"], "secret": "hQVNg3etAxZhn8eA", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'tHGvXNOIW1b0wr0O' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'o5sarMfKzm4I7hSJ' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'NGyAFQ2WfttGjfoY' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["HzgDPKrc9oZyPla6", "ULwh1NYfA7znKzO0", "1NsZkhkeG2yWYzOG"], "baseUri": "OhF5OPJW59exJSVF", "clientName": "RICjGjsAYTeFvvde", "clientPermissions": [{"action": 61, "resource": "S49m9YFaIDeALGqo", "schedAction": 5, "schedCron": "vENKAVpOtwj7EZo1", "schedRange": ["YKljcXzqkyXRc9hN", "oT7LwtpdO8iHjmUx", "4F7CdoeSKCzaA8Eg"]}, {"action": 92, "resource": "qT88rHqsTKawcIGT", "schedAction": 28, "schedCron": "SyxH961MlC11fpt4", "schedRange": ["vPiyvpiuiKEpq80b", "H8LmQK40Pjuj1lNv", "yLX5jvKExtHKzZ8i"]}, {"action": 30, "resource": "fCiuj1M6YrdjXQ3t", "schedAction": 1, "schedCron": "mVmJy0Dgiu3pRLOM", "schedRange": ["nr5llzUErxeTZy0c", "rN0BAfExhVD02otg", "7xDn9v1pqfBEDoSj"]}], "clientPlatform": "ew88OpDDlClZ0c3Q", "deletable": true, "description": "VHg971z4ORwYEd7O", "modulePermissions": [{"moduleId": "eojv4sFEZk0CSEff", "selectedGroups": [{"groupId": "hvrErTm6eXaFwABu", "selectedActions": [65, 24, 64]}, {"groupId": "acuJIyjGQ48YeA6z", "selectedActions": [15, 80, 64]}, {"groupId": "exTnyJXQIRZZr6Yd", "selectedActions": [96, 91, 35]}]}, {"moduleId": "LqFfH4pjigU5zWNO", "selectedGroups": [{"groupId": "8ZOr9UfNskQIAQWD", "selectedActions": [9, 37, 47]}, {"groupId": "AOzyfdqXrRAzWG7U", "selectedActions": [41, 33, 74]}, {"groupId": "Xd6DWbQT9x3GN7nb", "selectedActions": [50, 29, 30]}]}, {"moduleId": "phfBDEKXGu6i2GUF", "selectedGroups": [{"groupId": "wQAnNGvDgUkky64R", "selectedActions": [25, 23, 64]}, {"groupId": "EYKLwAED31QBCVPJ", "selectedActions": [9, 92, 91]}, {"groupId": "jUC6hSwylU3ttzKp", "selectedActions": [84, 20, 94]}]}], "namespace": "4V0CwVbniu4Qp7gT", "oauthAccessTokenExpiration": 51, "oauthAccessTokenExpirationTimeUnit": "EVkf4w8MsbpYahg4", "oauthRefreshTokenExpiration": 64, "oauthRefreshTokenExpirationTimeUnit": "Zl18BI65S7Q6evR0", "redirectUri": "0OhX7I221uiXaMfz", "scopes": ["hXdGJGLqVDYHUXmD", "dANr5Q3xhxjEhMAy", "fQ1IRDN8G6oSG5Yl"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'ydn8Q93DuQI5cS7k' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 29, "resource": "li8tXjnM60ZYgFHR"}, {"action": 75, "resource": "al5GmkSRFnJHEQDH"}, {"action": 79, "resource": "PBrJbIUCCL0jxRch"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'WyLyTUSa0OGwp19q' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 17, "resource": "vlpEkB2DRmZ62Z7S"}, {"action": 4, "resource": "LU1GHUJ5aqPhiD5P"}, {"action": 40, "resource": "VlvUZugaPxTp522e"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '59' \
    --clientId 'aJtwoSwPlVsnOOqM' \
    --namespace $AB_NAMESPACE \
    --resource 'tZ7vA9OOiASNuMlN' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'ZvcHL8ipZMceD2xo' \
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
    --body '{"blacklist": ["BlTjS5v9Qrdk5XXj", "8Rhm3b8AgJts3J9T", "FegGfvNe4IXWGLbS"]}' \
    > test.out 2>&1
eval_tap $? 136 'AdminAddCountryBlacklistV3' test.out

#- 137 AdminGetLoginAllowlistV3
samples/cli/sample-apps Iam adminGetLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 137 'AdminGetLoginAllowlistV3' test.out

#- 138 AdminUpdateLoginAllowlistV3
samples/cli/sample-apps Iam adminUpdateLoginAllowlistV3 \
    --namespace $AB_NAMESPACE \
    --body '{"active": false, "roleIds": ["jam2DiEIJbjZY22s", "wDZnqcC21GgUiLu0", "SeFWoJGIAIFi2URo"]}' \
    > test.out 2>&1
eval_tap $? 138 'AdminUpdateLoginAllowlistV3' test.out

#- 139 RetrieveAllThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllThirdPartyLoginPlatformCredentialV3' test.out

#- 140 RetrieveAllActiveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 140 'RetrieveAllActiveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 RetrieveAllSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveAllSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --limit '31' \
    --offset '16' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SrMYXBayPNJvrGPi' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'B0mhaMZzPo8ic7B2' \
    --body '{"ACSURL": "u63uh4TVJH7S1Zlg", "AWSCognitoRegion": "RSvtEjckc91TLD2Q", "AWSCognitoUserPool": "TNhamKlCC5dUm06M", "AllowedClients": ["pM5OBGjwP5Esq77T", "gGapYOY3FPSlcotL", "R5fosG8inISp4clE"], "AppId": "JBRtQ2a9W4TT49sb", "AuthorizationEndpoint": "EB1Iy56C1lUAzjyI", "ClientId": "A70jI78YffArsqTw", "EmptyStrFieldList": ["JhHdrQMKazPcuuLR", "MI6vhqpuu5CeTU6i", "aGIjnOJ3h0kvZGlt"], "EnableServerLicenseValidation": false, "Environment": "IZLz0cc4nahch3bS", "FederationMetadataURL": "5lmkJrXQkKerqfac", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "b2BT9sLlJWnimZbl", "JWKSEndpoint": "AUfSNPcwZX4jD7SU", "KeyID": "56MeoHobB6pRmVF3", "LogoURL": "7hNsjk2DbDtOjopI", "NetflixCertificates": {"encryptedPrivateKey": "riT2xG88WleTP6d4", "encryptedPrivateKeyName": "0EIUaTNGwmuMo0Fh", "publicCertificate": "McXFtpsfT1Np7Nb1", "publicCertificateName": "4tqsjmRpBriWXk23", "rootCertificate": "hvXzNz4MFvv0RBFT", "rootCertificateName": "Mw0UuFgt1Jgd0CGK"}, "OrganizationId": "gHcP3oxZe8Ib3UGo", "PlatformName": "n9RU8JlP1wUBx1UZ", "RedirectUri": "uRwVBwps2F8dkcFc", "RegisteredDomains": [{"affectedClientIDs": ["OGxJ7dxqdY8TWV0W", "K9zH8evN23C4lOtF", "d2mOHoObiuWY7PUh"], "domain": "UqLMEGbGJIT8e1Xv", "namespaces": ["es2aqX9TIw1eMgoX", "4bkAfkqiGhcxJ1LU", "1hzDNH0xCfp8cy1C"], "roleId": "VQ1J44gcAcFZc0yI", "ssoCfg": {"googleKey": {"rwDBaS6EYOamsMy1": {}, "ckYk50lkeyF8jAH7": {}, "sI5muzdJbYl8OULK": {}}, "groupConfigs": [{"assignNamespaces": ["apqXrZAMUqBFKydx", "OG4jAZK9rcnQJrHD", "uO2JAybeJf4Z9mvu"], "group": "xRMJGWa6QnYwCMTn", "roleId": "p7Er5FUgWX2TiGif"}, {"assignNamespaces": ["zucr0aidISmUZjvN", "ektXBq2kEJTy65jp", "q7y9NGytIRVFn16T"], "group": "CSdhHVI4GMU9uJI1", "roleId": "JjgLD9x1yAEGpiOq"}, {"assignNamespaces": ["BnndMKKf8umhq8pg", "MPlt969kltgO97Hq", "DvKnXBKtS8kt9cUr"], "group": "xkN3HINCle51P0hN", "roleId": "clsKsnktE04YtYoe"}]}}, {"affectedClientIDs": ["jcprI01ybWfeUtx8", "YL6nEFH9bTHhmnsk", "u8jR6iqKMkM7vTUv"], "domain": "1JchH9qtxQUccQyq", "namespaces": ["gGAGiyDv6EiRBOOC", "V54ZUMPP8Ng9Vw6g", "oBVqRMfnngbqQCyw"], "roleId": "jDmmOTZlWTeMpaHf", "ssoCfg": {"googleKey": {"QR4nIW3Xn9iduaNx": {}, "c2yPX67PgTfO4FH6": {}, "pOeBhVeQ3VjHoCOR": {}}, "groupConfigs": [{"assignNamespaces": ["gAq9ZjgT40swJKl5", "z337mtZsQi7qhmZz", "8cMJGqy9UO1S1z0r"], "group": "uZbOIXKy8fvOBHog", "roleId": "fMy5VOANOvcm29eF"}, {"assignNamespaces": ["bUfTzRDpusIZfynn", "u1SfSjWnLrZu418K", "SCBQrimU2p4XB1HG"], "group": "reHw3AtXIjDrR6yZ", "roleId": "nNEselqjPPeMdWY8"}, {"assignNamespaces": ["BU4H24d9wyeKPkKv", "ljxzkIWcQRcTEiz3", "FQ92zKfCTjHTBpsl"], "group": "MmgygSwlOIQBBibB", "roleId": "HPeeRv4ODLWTAI7W"}]}}, {"affectedClientIDs": ["yQJLMUJgIAWZDMCz", "lvBOgk5xRGxfirEh", "YE1EIudO453eli5V"], "domain": "U9HuMXorlxoUXFtV", "namespaces": ["Bh6MNl8WRRqopbbR", "rwZiw4JQBrv9XJTj", "rUjGs6lh4RfvVkKx"], "roleId": "XMoVg5SYLv9luSaY", "ssoCfg": {"googleKey": {"1XDbIMWIAmizabpE": {}, "bjyJVepD2qgTK386": {}, "rLk82DPtnQLzL1YZ": {}}, "groupConfigs": [{"assignNamespaces": ["WB4EnPgd5y4sVfl1", "Jw4tFdSULLPHYVkI", "l3uhHx2WVH1a5PLz"], "group": "87L57qLAueGDsU6x", "roleId": "3lJ7eoSP4W06YSL1"}, {"assignNamespaces": ["pw4CyxDca5Iqiz4P", "h8Aq5vXMDNUQ2rnN", "AoTsxtsPcVaqLFi1"], "group": "SONE5SkDYcxSykLD", "roleId": "oGi3xNK8bAhY2by9"}, {"assignNamespaces": ["ZLifLT1nU6mwrVVp", "xLAegAU94pMhaGyi", "jJnWkPzWIWXNCPgE"], "group": "tsEI1n00ENP0alnW", "roleId": "0CqMr0Oox2wC8g9O"}]}}], "Secret": "jzVfZ4oobDX3afU6", "TeamID": "Hupy0abO4W0b12Z3", "TokenAuthenticationType": "fCk4jJ6VtsiiPFeW", "TokenClaimsMapping": {"wCyt1N4UVQ1ZaqTl": "5JTgXiYagO6QLi5i", "4e6AXG30LuZVdwmN": "tO6Dp4SdCYuWHVC5", "UjTGkyRQN0DmGLls": "k5CdNQIrgaRKdo8q"}, "TokenEndpoint": "mTxWQyqarpD5RPNi", "UserInfoEndpoint": "6U0lMCgpxlE5E2bI", "UserInfoHTTPMethod": "Z9tfoJUzRykWGPiL", "googleAdminConsoleKey": "IwIHFod8O2VggtnI", "scopes": ["KkOjmm4h92PdIsLN", "ruFxh1Y3o9bbC4lM", "w4IhxWociBbQdEVE"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yRElmynXX7kAytmU' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '41UeVQAuH0LHyK7B' \
    --body '{"ACSURL": "IsMEK0eokYe7WReO", "AWSCognitoRegion": "cUc4epYLurIh7BVA", "AWSCognitoUserPool": "J8OqPiG5u8q6T5nY", "AllowedClients": ["J3Rp4cedaAChJKb0", "MFbZzCWDg2z9irrI", "RsAZrwYDr2vUVq6W"], "AppId": "U7XMyCSt8QQl8Yzm", "AuthorizationEndpoint": "THwYiV291w8V7Sxc", "ClientId": "qejC09jYSej1lVes", "EmptyStrFieldList": ["Kb7va6DMJ3ZDkpwO", "GjrWdpUg6chM7JZ2", "o5NRqIcIxthScWKr"], "EnableServerLicenseValidation": true, "Environment": "WxgCTEGbYI6vS5mn", "FederationMetadataURL": "YKXfMv9v4UEr34cb", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "02NoNsAErWJLGiov", "JWKSEndpoint": "97KKzh0DpAAgcU3M", "KeyID": "9Bz9n6OBdhaZz3rT", "LogoURL": "DjHWOKAAPkElbE2G", "NetflixCertificates": {"encryptedPrivateKey": "YKtApuAUCq8zgYPW", "encryptedPrivateKeyName": "xrsCzW3X4Zg44LV5", "publicCertificate": "UBe5ZYHPeq48xM5t", "publicCertificateName": "ropgn9PC9pv7TpLy", "rootCertificate": "7RTq1dTB5ecPY9q9", "rootCertificateName": "uRJOcE01Kwo3pAsR"}, "OrganizationId": "QDfVghKqDr4CmnBy", "PlatformName": "rWugmb5Oq21Fn097", "RedirectUri": "mxn7CqlQXNNF69Rs", "RegisteredDomains": [{"affectedClientIDs": ["MkhWMu2n6d1f0lCq", "DIyYsDaWcaV3mVaU", "YqlLTYfz3mu1qvhV"], "domain": "XnkwbbwaRAHRaOk0", "namespaces": ["Y7yFaMT2taRLtw7X", "uY8aHw1bEzxb63B5", "cAVPijH84E6gIwnT"], "roleId": "bFoJW08gyOdizigp", "ssoCfg": {"googleKey": {"gsCM6oJyfUw4f2KS": {}, "CV8dYM9PDwXFY0ys": {}, "UWehcsVD4mFWnGwT": {}}, "groupConfigs": [{"assignNamespaces": ["dP3o4p7reTwxjV7l", "3cn2xY9JRd7rfIuP", "ds6p9zU66dhAkdbX"], "group": "Gr1OuzUDBsrBPQb4", "roleId": "mEnuwUTNzWCMjLyI"}, {"assignNamespaces": ["GQxEqyUl6FKsXSPY", "n5SDFydwZ4YXxCup", "diPl6LFP8cixM8qA"], "group": "7q1degthYUsLv4UH", "roleId": "NJXxcYoQ2C9obVw7"}, {"assignNamespaces": ["cZSS3px7yHLsboY9", "DacvWhWS43cprigt", "ARWYYHPkUZs9pLaw"], "group": "VPQzrT4cTszozVmg", "roleId": "L6GSvdEAv1Py28my"}]}}, {"affectedClientIDs": ["QUf8rrtnC6ZgWlPy", "UUISkGhN4G78JV57", "2WJf3go3bj5kHX2U"], "domain": "2uMPSnyXljBtCYew", "namespaces": ["lOaJuVoxihJG9wZE", "6ILDjR4eel8VsLiU", "kRiEWimeXFsH4fhz"], "roleId": "rql4nWfhGwlQOq64", "ssoCfg": {"googleKey": {"zfAKqUf5wLxRvjiN": {}, "5F9N32YdtG4JE45F": {}, "MICHUukiuhO7x3qf": {}}, "groupConfigs": [{"assignNamespaces": ["MQZ8yXHPB198N6Y9", "AS0xORtasG95LwWL", "93B1lmdruKTs89sz"], "group": "wNY5JEEHYxfHOecg", "roleId": "xD3MAc8z9OCCcXqP"}, {"assignNamespaces": ["LeMtmVzIlHKzYXkJ", "oKIOGgBRc8V3qvRC", "k7q0jupilHP1mKke"], "group": "w5GdcrQWal7zibuK", "roleId": "HcYr1fIib4um0ECE"}, {"assignNamespaces": ["E8tibIGigKlcVLcW", "htQMdk5RN3PKDZN9", "nbG0kSBosyWRmTMI"], "group": "07oZ0bjI59aYaiFk", "roleId": "rhiqjtkX9OfIDGqk"}]}}, {"affectedClientIDs": ["v1UAbl8tnAIym2BH", "SX8LKGxLJsD4nMe6", "qcmNBr3j9Yidgbao"], "domain": "kCGbBsr1cuhF2Ryy", "namespaces": ["m5YsDpIQxt2Gh69m", "D2VoxZAyXX1pkh8Z", "nXa0ERc6aevbJI0j"], "roleId": "Dawtb7hSQmasvrqO", "ssoCfg": {"googleKey": {"gGEl9R4OmYu1Di1C": {}, "gSvXHjeoJE3sFOzM": {}, "EuR8irwQIFDai5Rf": {}}, "groupConfigs": [{"assignNamespaces": ["pHlZXhEEIuyXmXc0", "unysAKHAtIvIXjeK", "6bXyOj5G6nC713WA"], "group": "G4x0XmbizDG1EsLT", "roleId": "2QM0kCh0EhrEX8OR"}, {"assignNamespaces": ["wWPKPlaPBiWZlcSZ", "Jrk5rYNPpuDIHGqH", "IFvyVI1OtiZ5bYaL"], "group": "nMgbSthqpNw1XkuM", "roleId": "4itHEDQzwtLdSPrU"}, {"assignNamespaces": ["XpFGqZYztZbji55m", "SkKduPJy0qEsNcah", "6e2ipns4Ai6JoqdP"], "group": "s02vF5G59mnTReiW", "roleId": "B5fSWhZplTJhVDDw"}]}}], "Secret": "QM9ahQ4wXxVBnqVE", "TeamID": "iO6rnHP8b4NAnLXk", "TokenAuthenticationType": "g07JpIz5WIGQUjqm", "TokenClaimsMapping": {"9UuPjMVTB0diyo1t": "kD9rSUkJiHvXbOX7", "C6LemX7qYt56OedB": "z1qw44nQ065LJVL8", "hV80FIXnLjRsCC4W": "zq9YPexfIE4NxirY"}, "TokenEndpoint": "p0sxjXFzcqohsRzH", "UserInfoEndpoint": "V9M4HBwW2BzCNOtR", "UserInfoHTTPMethod": "tgGcDig1TsSPaXgJ", "googleAdminConsoleKey": "d2z50dOmq1PO1oHZ", "scopes": ["jShTIrXBdi2ToUHB", "o8QS8fUL8Tjx8Dps", "rEQaAvh0JO36QKDS"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DDFbcXHhh7MTLuNU' \
    --body '{"affectedClientIDs": ["QfZusTOs1kHJIUqL", "ehjNaXftUqfSYUJp", "EStMyjCOYFx25H3B"], "assignedNamespaces": ["zYIanmVvUnteqT3e", "SQzCNeR7HSvNuL5K", "bwXIqOeV7id640Yj"], "domain": "QK3nKXTuvC2X5GsP", "roleId": "2i0asDjtqnsukApJ", "ssoCfg": {"googleKey": {"MtuaJYsOBb3L3DkM": {}, "lNkkjOOli8K73SSB": {}, "6Is5FZ9g3tSzNW0l": {}}, "groupConfigs": [{"assignNamespaces": ["rgo8NI6qFiIbfJtK", "DqGUkX6VzFVhILKK", "mjvqAzFxgDWCvjFx"], "group": "Hw28aNgQSNSLNkeS", "roleId": "KYcqR0zKoC3oWwjg"}, {"assignNamespaces": ["lnFprD2dTIm36l1I", "fnVk6fQ45DInmx7l", "VihvKaDAX9RlYQSe"], "group": "bKBSwJ8fszWsz8DQ", "roleId": "96PqsPZbUrxbF2r8"}, {"assignNamespaces": ["WhqIvbJjK4rMt2dQ", "7HEMnHuWhPadOXIk", "VGgFlvymaexKVBpi"], "group": "UCYz8u8mGDQbMtvy", "roleId": "hAwIpmZzx6z5s2XC"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aXJuK4DmckGODBtK' \
    --body '{"domain": "VJC78YuID88YGCA6", "ssoGroups": ["xZQoE7wUan7SwskW", "CAzUTF6gQgC5BlzX", "WBri6COks2tlpgYf"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Saxhwhybss9xjtS2' \
    --body '{"affectedClientIDs": ["zX0Mn6zYQiL7hqTM", "CZxUhQryAkBE0jPn", "t63VKq7I7UNrINjn"], "assignedNamespaces": ["yST2KOeMMaqxUu21", "Sfei2L3CwnWWlaRb", "OYlMYQP3apidIO0U"], "domain": "xaXek57FKNjHGm5D", "roleId": "KLt204lLP7YreNQX", "ssoCfg": {"googleKey": {"3NSxHjtFElIi7Q90": {}, "J9Osemqns3sB8xph": {}, "IvToEieyZJRBzQdn": {}}, "groupConfigs": [{"assignNamespaces": ["UL50txfE6TkmOKvj", "h9o3TzOCCK86lGLw", "dMEbJ98CzdCqcpJn"], "group": "MxAY4aeBHpi7rvSx", "roleId": "a88FlqFaFiSn8laX"}, {"assignNamespaces": ["RnFief4F1LyHi9bV", "jgb6QDn7lQuBpMWc", "wk6vSmusfgTbRueN"], "group": "F1V23WCcourVnzQl", "roleId": "izntgCX4Ydy9TUFX"}, {"assignNamespaces": ["WffniGwD7DJVOVoU", "we9tzm2oUElhCNoj", "iGvBuEjlwO5OyRjC"], "group": "TD1T8f0jnBUziMzp", "roleId": "PSVztuFBMkFLCezU"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'dTyMvXL7T0k3krM2' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'zxP1H45VtghYgaVI' \
    --body '{"acsUrl": "bdjkFq2omZDrqpzp", "apiKey": "LLDo0hbQBZSCHLol", "appId": "z3Nbz4o73t9DLXTq", "federationMetadataUrl": "4WPsVGfN2UgquVxt", "isActive": true, "redirectUri": "gURzKPI0W7vxJuLR", "secret": "1JUANT7kt7r48k5p", "ssoUrl": "I5w1xggT0THwfKMP"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QnMDQYdi5Bw8iY6K' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'piWII7ZdUgOQXz7J' \
    --body '{"acsUrl": "6pHeHGOrVVC9K5vi", "apiKey": "gHX0jA4zfog68xrj", "appId": "6IkcRncqeUlvi4bp", "federationMetadataUrl": "fkCzeXGe3UuWaBd8", "isActive": true, "redirectUri": "NYK1i0enSdmYMial", "secret": "JvDpZM7tpBKmJ9JZ", "ssoUrl": "8QnQtX4JbF9J1OOc"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'XSUfa0I5wMBhwH6q' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["7CA5Wd8cyRQreSIk", "mNaSYbu7DJxQR2Aa", "ymIJ2rGy0Eo974LQ"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'eFUSikXE9jX3WRUz' \
    --platformUserId '6eRtFm61QESwclgj' \
    --pidType '3Kqel76GtWNjkQaF' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 87}, "type": "bQ7B625H6LH821dl"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [75, 85, 95], "resource": "OJyWj7L68JjgewBE"}, {"actions": [93, 76, 18], "resource": "dEbDKIp9bDkRQ7E9"}, {"actions": [79, 63, 87], "resource": "5guDFsJTWrNofsaX"}], "exclusions": [{"actions": [34, 41, 77], "resource": "D0r5rl0Gx2hFFNFr"}, {"actions": [6, 81, 35], "resource": "u6Ve03XVzT5EquvS"}, {"actions": [13, 84, 55], "resource": "XCDts6rJbaAUPxLm"}], "overrides": [{"actions": [35, 79, 1], "resource": "WypNViExbJHjFDBP"}, {"actions": [93, 21, 98], "resource": "FJQdRFu0aA8pHDLt"}, {"actions": [95, 92, 78], "resource": "F6D5MSjVRu37qIQ4"}], "replacements": [{"replacement": {"actions": [6, 53, 50], "resource": "0v4sN1j3QyU7WYnd"}, "target": "m5Oh8MFTjxye6cUF"}, {"replacement": {"actions": [5, 35, 51], "resource": "2iEeDePrPgwjojij"}, "target": "gaxRs2vKwKaFYvFb"}, {"replacement": {"actions": [39, 3, 100], "resource": "J4XuUcjPNUmY0nbE"}, "target": "t4TPrFgFaSIGV9Y8"}]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminUpdateRoleOverrideConfigV3' test.out

#- 159 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 159 'AdminGetRoleSourceV3' test.out

#- 160 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId '4dPFkrruzvjqEDGz' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'VdqqyGR6pCiBfieM' \
    --after '56' \
    --before '36' \
    --limit '39' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '29' \
    --offset '27' \
    --tagName 'Od3sj9gnSdwtENXk' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "Vd08N0AYR8fwTd0v"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'zJNww3d8XLXVxi2P' \
    --body '{"tagName": "T3P3wtaHVwFbmMcp"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'uzAxE4dcf5XvdLuB' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'aEc8HhGtFM5cQq57' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["73gs3j4WPYCFWDfV", "JgneInk5mkGgJsz8", "U2si0myiXMxyYFA7"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '64Nq1idA9J99tYQH' \
    --body '{"bulkUserId": ["0l4xPchsAoPSq2Vg", "qhOhqUSHznEAYHVk", "f2GmRIw2UM6G2XBu"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["7noAq6q7OJc0LpQW", "O9aQV3HsAQ4pokL2", "iJMGY0EnBfbsWSQM"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["AfeQO17MnKnaEmli", "zOy7VXtvSOx0S4HQ", "Mh4jlSyNLX9GqhFJ"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "nTaniwdDdseHOd3D", "userId": "sMyPoUncpGazWXDL"}, "fields": ["WIdaxmt9QSEuMzTJ", "oVJ3wA7z8uG3fsf1", "4ITL6Ml73itfwunM"], "limit": 8}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["CpqGTIAhm8V7wTca", "GsN1OG3DrQhTZFqq", "2FZS8Igtad4cYdpg"], "isAdmin": true, "languageTag": "peixGZoaxNiEyAji", "namespace": "O5UaQRIdxcoth3nT", "roles": ["LaltR1Izc9yKizGp", "yw1WPkrGqLf7CwL1", "GGcjdR1MUVBTHbj2"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '2' \
    --offset '94' \
    --platformUserId 'M5r81mYXG62M4Zg8' \
    --platformId 'bbL3r2BnjoV3LvRe' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '46' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'EqVfBZvlklWwdXM6' \
    --endDate 'fk0YfWhVl2tlzV6K' \
    --includeTotal 'false' \
    --limit '58' \
    --offset '76' \
    --platformBy 'P3q1BEqbhF1EFI1k' \
    --platformId 'OhmAvP3OwmV8nG7l' \
    --query '4ixzVp8IEzsp7dCY' \
    --roleIds 'zgY8eb2WP3hw3SZM' \
    --selectedFields 'tGdZe2yFdFLqiWqY' \
    --skipLoginQueue 'false' \
    --startDate 'tGxx2vu1i51ciRlL' \
    --tagIds 'XzzTPFJsH7xs2fEF' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["0OPgrbaRur3XXKpF", "F6MwgOKEdRVRrkHc", "sSwBAQcp8EjNQgg0"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gsUWMzn7grdCyvDm' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7Ln1DOyBDayvlKKW' \
    --body '{"avatarUrl": "UjaaOttzLvOJzAKS", "country": "qu9C3lJO75f2f7hc", "dateOfBirth": "XJpnHZ8sL7sR30yV", "displayName": "86pP8qUPHpqpmFiL", "languageTag": "YDKMP5S2pKDL5T79", "skipLoginQueue": true, "tags": ["dcrEws6QNyMgXI9W", "NHmPqBdZsO7cV5w2", "Td0Jau0GbYaTAi1e"], "uniqueDisplayName": "oJbTyXBxyAzSIgSE", "userName": "QoSeDCJFDoIftQeN"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gfjSfVQVhFWaf35M' \
    --activeOnly 'false' \
    --after 'U6NvVKpzkQawS0Qs' \
    --before 'Qvm1xqU4TyfetdPu' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XWS6KYcBiJq8kRlp' \
    --body '{"ban": "QYqTQaHDGjwk5SMJ", "comment": "MawW162Q8uJlY2Nw", "endDate": "7rfdnI4iyjO2fqyC", "reason": "VfWDHeeeSwpOQBGl", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '83b5Da9LjZ4dURlW' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'jhdhyhVEQ3BJSqAj' \
    --namespace $AB_NAMESPACE \
    --userId '0mDTioYQOFBLIDsn' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wK7hsvbMz2cBxBA9' \
    --body '{"context": "WblzSmoelLzDkUnj", "emailAddress": "EP0QQ9pstu9udF9K", "languageTag": "r8ZJWiZbzxWooznE", "upgradeToken": "UhrJZAI4CIytyymX"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'V2grqbb4YEAxn12K' \
    --body '{"Code": "UtmFWNeDREQytDdn", "ContactType": "KbiwFR892WbimOe6", "LanguageTag": "WOURtQi7SYnHdf33", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'YQbuVmQExTLoU2LC' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ekp47QxCV78EkIsh' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qHgO5itV5nMMzZbJ' \
    --body '{"deletionDate": 20, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ewxpxNWbdWf0BFnK' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z0IlifLHNzB8nFzF' \
    --body '{"code": "Iz1OsoRmzpfOGZuX", "country": "E4MECxpCJEG8afQl", "dateOfBirth": "MW0ao28rKyFoutsh", "displayName": "iDeolCC0cNKi4RNL", "emailAddress": "EngtMPMcxJ0avmHP", "password": "BcjIbAOj1SagPOMW", "uniqueDisplayName": "UoPKy15wEJtjau4E", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZGq2NEcqfsLHWDqB' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vHRkpDsjnu17s2Do' \
    --after '0.23113993667979083' \
    --before '0.6498042465284616' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'r9aTWY9FDDGh0ktg' \
    --body '{"languageTag": "ItxLuY6HvfyWdAIq", "mfaToken": "hEuUuorE7MWJJHeZ", "newPassword": "WnyTIFlHliLvvaWZ", "oldPassword": "utJ4jA81IgPikszY"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nW3Ih37iEASZ1VEC' \
    --body '{"Permissions": [{"Action": 12, "Resource": "qxNotcgCwi21zhyK", "SchedAction": 25, "SchedCron": "t60NhoEkpGe7tL4b", "SchedRange": ["vhTKsXBCBgQjArJu", "goWzwUA7D60wMpLI", "fDxfn7XOErUG5Fmu"]}, {"Action": 9, "Resource": "VCEFTUKkTgKvQTgr", "SchedAction": 2, "SchedCron": "xyQ1UTDLVZvsIKbG", "SchedRange": ["fh4PllYbMJjGV6g5", "xCeP6iMH4cTK0WmY", "yZSdAMYESv666wxv"]}, {"Action": 14, "Resource": "P99BQuLVkehy6kOM", "SchedAction": 90, "SchedCron": "e4agQJq8dbcZCUOI", "SchedRange": ["FEblsVcwqtKXjibU", "rn4ZSNcdOPtLSVSK", "kIsaTojpVZ7Rf5qB"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '75QMH5yhRQxN47Ni' \
    --body '{"Permissions": [{"Action": 30, "Resource": "LFwSV0wWIHPkj8Xg", "SchedAction": 42, "SchedCron": "h1RDETINNaeOuG0p", "SchedRange": ["muh42inoqJmF9JlA", "aRwDWdxiZ4sVjsYl", "FVpQpdD9qI1isFG9"]}, {"Action": 46, "Resource": "h05cWgXzUjoGAfP3", "SchedAction": 8, "SchedCron": "APySGlpVgKb7VeZ2", "SchedRange": ["Vjv6DI2TMieJxUcY", "NeRbj80llXGlluov", "VCIlfokadS5m4Gye"]}, {"Action": 22, "Resource": "oG67PUQmxscvAzdX", "SchedAction": 96, "SchedCron": "56K3KCmVLtL3A9A1", "SchedRange": ["5Qm5auC806TjSmSx", "j5C9UKCsg7egwEoi", "346XzmZLNj8Swz64"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YeNCeQsjMCkOzVjA' \
    --body '[{"Action": 8, "Resource": "Ne97WITLE0i39ViC"}, {"Action": 31, "Resource": "EKPNFzmooMkNbDzf"}, {"Action": 83, "Resource": "YzlAEeOEjnENXlcv"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '22' \
    --namespace $AB_NAMESPACE \
    --resource 'M1JhpqUefvewXpK8' \
    --userId 'meVzhRh5i26LJOVX' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fqKDugZT4cjKxLRw' \
    --after 'tUywBf0XCUYYbPc6' \
    --before 'oIxaUVWYaoDotYYj' \
    --limit '2' \
    --platformId 'gX5trdEuRX5gPyV9' \
    --targetNamespace '2HfNRrUlDHoxkrn6' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wYSvCUZz8trmVK2J' \
    --status '2EXCnMpK1J0z3oX0' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId '2V6YAOU40Hb3laBh' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'QWFbHHcQGI4hvnUv' \
    --userId 'vTThTziFAv0porSY' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'vQfgFATdBghT52jF' \
    --userId 'XWgE3Va5ZleXJRmt' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'ueLtCR4yt4WOOgSC' \
    --skipConflict 'false' \
    --body '{"platformId": "80uNliveylV2nCV4", "platformUserId": "ekfUlCRDFbaGzvRv"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EgJnRGiUPFBQA8wG' \
    --platformId 'p5VMVYn74uAZZ97p' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4QXRM130kYfKHePZ' \
    --userId 'H1DULsHaKZzXNosS' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'F9OuiOVWw5Ew0rF8' \
    --userId 'mrtl6KCRAfntceoi' \
    --ticket 'tjg9Ge1hkQo78EK5' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ATFVCEgeD2nrCnjW' \
    --userId 'PvqDlnv6LoLO8xjI' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'P2CXinOyE11xw1mU' \
    --userId 'y0DTB97NLLJ85Y2R' \
    --platformToken 'KGwdf0CQi02ytbiT' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'Ls6zLjQRmY3Ix4Vj' \
    --userId 'dtsbIo3FKhjl0nK7' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f1NdXkwPhnyMzmPg' \
    --body '["GP595g3EBaQRDsKw", "ZqWuW4KfppxFKGWZ", "AjxuG84tkD2qsD2p"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IbyXGU2rGRdSGyVW' \
    --body '[{"namespace": "oe5b7m54Sguer7S7", "roleId": "pMdoiD0zwemVDncW"}, {"namespace": "8HYj56w0Pc5yCw4E", "roleId": "nYpCNFtLaztXZ8B4"}, {"namespace": "YUq62hYWKBZMfXBY", "roleId": "CwtlisJla5oT3LUg"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ZZPK5IRjBj0alhOs' \
    --userId 'rE3ocBeQz0Flxpcn' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'dqvi9vj7y68XqaSC' \
    --userId '0c3hZyvm17wBnjaZ' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zpiIaCCmuWDf9vfD' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '0VetR4EzEFowid7O' \
    --body '{"enabled": false, "reason": "aEc0HVWACHRMjW2b"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'Y9gdV5TmMys0T0K8' \
    --body '{"emailAddress": "o0eg75p0EUfqRI0o", "password": "Os8MYwZlbRdbAG2X"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TZoZKzynSx65PRwZ' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'CMFl6jTBXXTHX1O6' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "kEYwJeyDYl1Q46kg"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'AUyAjGiWNSGR6PhR' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'qwcDGhA3wdolIgH6' \
    --before 'OhUvJVOTZoXouF9r' \
    --isWildcard 'true' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": false, "managers": [{"displayName": "TE67lcBAbrRrH4Wy", "namespace": "OSS7Uh6atZciqiBd", "userId": "6Yi27Z9X2KasxEI2"}, {"displayName": "G4AcEKu4dSSvW6pE", "namespace": "vGLc83VwJPYUFXG6", "userId": "hMUEbAICHfB56HQX"}, {"displayName": "4zZqVPNyY9NJQDof", "namespace": "umBYiwIMJWT0r9yL", "userId": "KSxe5CmILolqz1R6"}], "members": [{"displayName": "NcYMdqFw59sR4wfR", "namespace": "iXCYSPZcBlKQLVPZ", "userId": "LEbVOiGfKyr87Eiq"}, {"displayName": "c4BTdD6OHGtlRhgN", "namespace": "YhNyGWAtrk8dlYav", "userId": "5lMRoikJYXUjhjKW"}, {"displayName": "YUs1gjBYjxcixE7A", "namespace": "eLsVUtMjrweBBqoL", "userId": "7igLGPSaoj1zmrcc"}], "permissions": [{"action": 93, "resource": "ARKM6FuXhcZT2X4E", "schedAction": 57, "schedCron": "6O5gS6DQJQnP0hcY", "schedRange": ["EaDrDTwrAkqfnEMB", "BE4U7Io9vex3uDLl", "DslObrjKpYZcJsin"]}, {"action": 15, "resource": "x3ixSfm3HCjFfYD0", "schedAction": 12, "schedCron": "HbUU3zl4gpyRFl0E", "schedRange": ["jXfJljx8Ibdo02Q4", "pFNZwRcemJpOda8w", "Olw6qYjZtDFpeLtS"]}, {"action": 44, "resource": "LlajM228mOBqDZ8d", "schedAction": 52, "schedCron": "g0CAXONOLvBjHMmP", "schedRange": ["kz0Z2rzqJ9IXBUBs", "Pev320BORWogv0nM", "PvyEVzDMEG8LIFBC"]}], "roleName": "P1QFzZNW1U3ldanU"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'wi7mHG7KSFcfyDmK' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId '7CGptAMdyVIvjbJy' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'rCU8BPkgL6Vl8Jy6' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "A0CIqHhREsvWnMn7"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'eSAEymKHi7PKBPwl' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'URN0BSM7Ow19xCWG' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'NwT1Cx1h1F94DSjd' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'WiDeeBDC1OJnq9pi' \
    --after 'oLZExipi3c9YP8e0' \
    --before 'iupmAh3mRVfHKnsA' \
    --limit '78' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'UnOEZFODNq9tw7Ij' \
    --body '{"managers": [{"displayName": "DmkONA9J1qALrEbf", "namespace": "jiarFeYGoj37yQ3y", "userId": "K0rq17rwrMDQSebP"}, {"displayName": "1oXBMh7V2P3wwK0d", "namespace": "kvoGgknVQo6p4k1J", "userId": "pp7Twf1jfsghF1hN"}, {"displayName": "jaWPrGKuhg1LpxWJ", "namespace": "cpTk53uqrnT0x7Wp", "userId": "ZXnHiDqRnjjXGm6J"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'SlCy5I6Gn0WE1ZGv' \
    --body '{"managers": [{"displayName": "SN1uzpcGUzBANQyJ", "namespace": "hknCjXVSR6a3IyZW", "userId": "IZ74x71Qu1l7ieox"}, {"displayName": "YvMrYJMAhe25J2Xf", "namespace": "7glnNQMhK7o8LL2t", "userId": "CgTBwMmEQOa5wOCy"}, {"displayName": "4GueC1dlFZkZ27Ne", "namespace": "YUf2HnEpVeEoKABJ", "userId": "epuk6lfpLGKQNDPC"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'KP4HwhEVntcHxvnD' \
    --after 'knFYoJ1e06FmlHNI' \
    --before 'Ex79vL0fBCP8afSc' \
    --limit '95' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'LA06AXgqMfw3PJu5' \
    --body '{"members": [{"displayName": "iqcTtRDFrZJsw2z5", "namespace": "338xk3gbcYvCYB0Q", "userId": "YbS22OJ8hhkTP9pt"}, {"displayName": "lksvxyS4HkuoHBmZ", "namespace": "h8NyJip11VDCWIY5", "userId": "rM3ZPXHTOl6cq6kO"}, {"displayName": "7EH0HkSayqtUv8FB", "namespace": "rE0XmzfGG1L9QiHy", "userId": "UyJlbdZ7dgtPik0G"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '7zgazGMcjghtcSO8' \
    --body '{"permissions": [{"action": 61, "resource": "GycLrUx1XkaCH9dd", "schedAction": 3, "schedCron": "yB9sjKl0kLmyBYY9", "schedRange": ["qTI0AhSLzCYZdd42", "S3eXfdMhRqMzRR8V", "2ggMbhyAUG5dBPus"]}, {"action": 61, "resource": "6bRI4ESxAaHoZBW6", "schedAction": 82, "schedCron": "d7eb4buT5HY2pvOI", "schedRange": ["02XFsO7lZABAU8iv", "isiVfU1ACkULuauu", "EocoVHhMLiGM6owu"]}, {"action": 17, "resource": "2WqG1bzKDA3YaBYw", "schedAction": 27, "schedCron": "6YQIXc9jk20gVCb2", "schedRange": ["XLlWrMiBASAqTqze", "ALPh2PWZlCd83Uk9", "s3DBRwDhyVqiEFYp"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'P5mZPJqMX4lq9xx5' \
    --body '{"permissions": [{"action": 30, "resource": "OIR2F7UXM2P58IjG", "schedAction": 99, "schedCron": "i9ftUJbyYHvTtLK4", "schedRange": ["Lv14RoIJTaMK4sjO", "ytxu4UxaYv3ctwo6", "SUZMShZdLZPYk3k2"]}, {"action": 59, "resource": "uT5DNUG2v1pi2Y2V", "schedAction": 6, "schedCron": "iy4ep2FXyn0K1eol", "schedRange": ["b4hExTSZDL2AABvb", "83Ult1NoLOQEkYII", "zCTtFj96dkNm5c7k"]}, {"action": 63, "resource": "VzbPyAdzKerfgp0K", "schedAction": 78, "schedCron": "mu6IEq7dmt7N0tKJ", "schedRange": ["gwvMhD1vqS1q4OHX", "p5qtL0acRhc9HJGp", "LuiZQHhdcY7qy3tI"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'q8CHDLEmQKRHX5gO' \
    --body '["XRReeSCOjEWnRxwb", "ORGJak3q2cpadvNK", "n4ppTcg74srZTirY"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '12' \
    --resource 'HaX3xEaNqIwArscW' \
    --roleId 'iBH5zlFxR65ukCdv' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'jtgbUCscfqnHWJXY' \
    --extendExp 'false' \
    --redirectUri 'nUf6VaKaEX3ZCoKl' \
    --password '3SiM0fXGKKqDIRut' \
    --requestId '0sbeezK5BfWkaGio' \
    --userName 'mZjaa25R2a15SHUn' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'lQyPYJqMeRSPcP1P' \
    --linkingToken 'LVcG7ISYjVLzq6IF' \
    --password 'DRMf5wvWnnB6fzBA' \
    --username 'I688Hu0RiiTnALNy' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'QwGWCcTTK6rMMxN7' \
    --linkingToken '6KHUFr2WdcxHBRfI' \
    --password 'KwQaG3eUwLmOTWzX' \
    --username 'NG6rzqym6H6uQqGv' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'pIGHfPFu1iCeRffd' \
    --extendExp 'true' \
    --linkingToken '64JR8mEdSGFPqplx' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri '0sX8TCqVLYKhcfeA' \
    --state 'EgQKv8XmQzNXwCjh' \
    --platformId 'T00ykOc8TcwwpEQV' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'yvSe2nxgD61WkUPn' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'OgLJnNeF0xDmUGDw' \
    --isTransient 'true' \
    --clientId 'WlHxoeoAdHWRKNOp' \
    --oneTimeLinkCode 'wOMFCAW796YJTroQ' \
    > test.out 2>&1
eval_tap $? 248 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 249 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 249 'GetCountryLocationV3' test.out

#- 250 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 250 'Logout' test.out

#- 251 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'ihbaXcfFQDsLfp2G' \
    --codeChallengeMethod 'plain' \
    --clientId 'ekQIilYjQFTnp7kH' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FP5W0W4ATmKrlB4D' \
    --userId 'qHP3JHyt3zIpGUNs' \
    --platformUserId 'viyZRqccosbbmy5r' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jtlSv4lltCWBxkDh' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'NlHkHdIZE3K3kiNz' \
    --codeChallenge 'uicI1eP9NGbcNjeW' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce 'vOZG1Oi4o9xaZlcX' \
    --oneTimeLinkCode 'k55Ax5W1NATtkJr8' \
    --redirectUri 'Pjfq8ITDy2mC4uqP' \
    --scope 'u3NrjUImEaOmSVdm' \
    --state 'dSfgfLnzB9tQnGrr' \
    --targetAuthPage 'gI0ltjQMe0gSJIQY' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'Kr2Xz2H8gDuSFyAS' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'swm8qjEEf5pgxqD2' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'ynfZTgsXQqTqxoE7' \
    --factor 'p9eM0FW4Z3BQqJlg' \
    --mfaToken 'VU0ziwBbQ85BDaQL' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'N4OF3wgCzjsd5xm5' \
    --mfaToken 'EQLkPkdH6fEGSFr1' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '5mvwtLSf8NINBwsn' \
    --factor 'uEBtVb3ZNsildPKP' \
    --mfaToken 'p8sUaDuHarbjFc2l' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'lwBL71dBkHH3Q2dy' \
    --factors 'JnpgzcUAoreHdZfN' \
    --rememberDevice 'false' \
    --clientId 'CijoPjiV4Dskrn0N' \
    --code 'AcoWskR4OjhEQnDa' \
    --factor 'uQjfxGiWd9li7Ya5' \
    --mfaToken 'LUF2eqg8fsLpYiLu' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pzDPj2Nm7svUexPV' \
    --userId 'jYtm5KjleGRObYuH' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'VC98k0tGCNnYZqbI' \
    --clientId 'w5yqphh95fYo5hQe' \
    --redirectUri 'GAQeNfJFHu2ihv8H' \
    --requestId '47ja5WCPEbi9SrJd' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'VoEc89us3TjHmmnr' \
    --additionalData 'Bexo8rEqXdY6M3n5' \
    --clientId 'R0HX0gsZSOhHyyng' \
    --createHeadless 'true' \
    --deviceId 'lL5QMyvHeDmPUVyX' \
    --macAddress 'gDAuwRpBw7So8G7w' \
    --platformToken 'CEAblnYvq9snAbw5' \
    --serviceLabel '0.2605386298071848' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'LFVnffqhV35S02fZ' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'LUahiqEtZoZDuYqJ' \
    --simultaneousTicket 'Ng0nK91f1E5CJ9vT' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'BgJgbNrIguKMaSEt' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'quD0D2v3c0uD8RAZ' \
    --clientId 'O78HrCzVIlm7yP8c' \
    --clientSecret '3lTmhXRYyxnwJLO8' \
    --code 'wmeP7IvMQTPkm5Si' \
    --codeVerifier 'mLEuqTyUV2TUFuBV' \
    --extendNamespace 'sBc7WPzRtQfnKPxH' \
    --extendExp 'true' \
    --password 'VxCFJLN0nKF5EK4g' \
    --redirectUri 'K9wI7AfMmWIgi05L' \
    --refreshToken 'IOaNavAHxySmU5hq' \
    --scope 'Xd1cheDBSyBVZeeK' \
    --username 'PZVX3DHXJkiCoWm9' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 't4g0VnOqw11yqLRU' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'fYQHNsCV0AxWWEDU' \
    --code 'vMjRnt7dR0zSKaH7' \
    --error 'bmgjKnTtQrRVdsGO' \
    --openidAssocHandle '5hYF7zEWLH8vgozo' \
    --openidClaimedId 'OZfXpqol5Rm7ORNe' \
    --openidIdentity 'YZHBMgalWsUGgqvh' \
    --openidMode 'FnfRkcf4fbkti1rS' \
    --openidNs 'k7dWNKRszMuIEURg' \
    --openidOpEndpoint '1iuobWCvifDCy4Pc' \
    --openidResponseNonce 'zYNQVbzTTBlyCx3M' \
    --openidReturnTo 'zMHKPb2wVrToqJXF' \
    --openidSig 'r9UqlJm6IUaseLcj' \
    --openidSigned 'tqHihkYjz2yh8ghN' \
    --state 'A3Z6sMoKJ5R68qRO' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '9kK2TLbKBvSbZDx7' \
    --platformToken '2TvZtGpmCh5bWUMW' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'qjlxSk7njpMrxq9P' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'hiABHVxAk4YU9yC9' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '2IrU7JnSnE6GGBZE' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'wUh1eJFyjkDqqISb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 274 'PublicGetConfigValueV3' test.out

#- 275 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 275 'PublicGetCountryListV3' test.out

#- 276 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 276 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 277 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'hNd8ofKNPU6Pc4iD' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'mZHQRa2qV58KRx17' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'Xv9wK6U5AG7JmcbT' \
    --limit '16' \
    --offset '41' \
    --platformBy 'nYQqGqBE9pj660z4' \
    --platformId 'NV8NVCPQ9kZZeiKI' \
    --query 'f58AZldghkzVONlj' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "sHB22IBRQHDI4QsY", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "jcMFhqFCKN4Ue4vC", "policyId": "oa3VbDzzOCWuoqjN", "policyVersionId": "eU1XOPGOBODqJj00"}, {"isAccepted": false, "localizedPolicyVersionId": "dVTqjeG3CRZpTQCx", "policyId": "lZFJXFn7hWjRotvL", "policyVersionId": "HYhno04mXYWMLzi5"}, {"isAccepted": true, "localizedPolicyVersionId": "gtBAWjCYAN62bkT0", "policyId": "QPEGWA11lqSK282F", "policyVersionId": "mc455Cf9RT4VRqSZ"}], "authType": "ZruUNtBmlWgk9hgo", "code": "dzjCv0ydISFbyzjh", "country": "fmROevNzc7QZv7J7", "dateOfBirth": "RV8k7uO3dn9POTno", "displayName": "VZwg7PtBM6UcXT5p", "emailAddress": "4ICS3pKFc8I8nvEY", "password": "oZs061txAWC6gE6f", "reachMinimumAge": true, "uniqueDisplayName": "lIgyGcaZWiQiPV2A"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'eJlv3DwX7axLLgU6' \
    --query 'E4ox15zVqJus4MiY' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "h2dDRpGhF6YGLDpR", "languageTag": "dz4wMvbY2SStd7Um"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1INW7Bi599BT0SkD", "emailAddress": "8IaNqjCwTLX3XW8i"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "7XP1xhzMkoLcha7G", "languageTag": "05IbgpKbWyXULB0U"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "LuFHwcH2m9DefiJj", "password": "Xv6qv6AQSHMJqb9h", "uniqueDisplayName": "L1vEEP8wFePiDLNP", "username": "9y1K02droDLcIZrK"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'NegVHw07lRNg6aJb' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '8G82rjjJJhws5mU3' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "BXKRYpK6qSbi2Cgx", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3sQTAG4u5R7q3cfA", "policyId": "JP6p5MSZ352vUj3a", "policyVersionId": "Wk8nVFfUgTOciMN4"}, {"isAccepted": false, "localizedPolicyVersionId": "CNg5lqd09cx93Jls", "policyId": "yhao8WzALz9CCzgg", "policyVersionId": "f6yG7oTiPw2bFWbQ"}, {"isAccepted": false, "localizedPolicyVersionId": "Z2Ctw7XpbAdWR0XQ", "policyId": "NHGEsdTieF5f6VfH", "policyVersionId": "tiVM9oaS8J2Xy3hf"}], "authType": "b7v4PID8x0GXuyhE", "code": "bLRIgF7YU83f4uYR", "country": "O6ma2G5DxRbYn0B1", "dateOfBirth": "1yiv2fSTQv4rxuDd", "displayName": "S1UE1AoTrdvDb8xD", "emailAddress": "27jeSFKsLOxeIofs", "password": "BgN3i0Mw59sT1STZ", "reachMinimumAge": false, "uniqueDisplayName": "fAurzpcigkh9p7Dt"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "hg7qHiXWn7wvBRyi", "country": "vazV4Ni1RAkcaZsT", "dateOfBirth": "ZiYuVerLYe2ptHHd", "displayName": "KdQO8USZJWzYnOD7", "languageTag": "m8JtLuCkts1ObJUI", "uniqueDisplayName": "OzyvvUFdk1T5Lmxa", "userName": "dY5kKTWmBV4ZIF2m"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "1PRVXdIps6V93cQV", "country": "At0znxy1dxspTdzY", "dateOfBirth": "Q9fdrwcbjQu5vBIU", "displayName": "WwcgT7GFzmBcO9ca", "languageTag": "UwmFqOZS7zhtMQhz", "uniqueDisplayName": "GuCmQ5wfqgoD4dQt", "userName": "GJX15aPuOB17RBF0"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "WjFCuUT7s1hJxMpk", "emailAddress": "xayTbnC5PJ3EZeEp", "languageTag": "CQewgPg8Himu9J6P", "upgradeToken": "EsgtKDIHB4CEDNhh"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "ySQzzRrrEQnYcqZg", "contactType": "kJWZCzsuhW7ZllS3", "languageTag": "bXs7o2VYSfgL698G", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jdRQd75oBvDr4n4d", "country": "lo4yHk4OK6X147hN", "dateOfBirth": "Egm7vduo6I7iEIm8", "displayName": "vUtTJLuzaPdLun3R", "emailAddress": "rDVEtSwBX8plo9Pm", "password": "iEwCGrapCk69lixi", "uniqueDisplayName": "wTISleHakaHiT1zL", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "8wuRrBD46F0pI14P", "password": "EqpsE7KryFHLTfOf"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "cCfIgj9ckHmQCqwu", "mfaToken": "979wjMGeUNgvIqzS", "newPassword": "4RttTZK31tiJ4BjN", "oldPassword": "QqIQfXtCGP7c5brv"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'qo42Ab8nDEqlO7MD' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QVFYZXnMvaT11vV3' \
    --redirectUri 'sRfr2igOWM5hTUoZ' \
    --ticket 'xMYFVQixTkRpdk1j' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZqTyeXcVsl6fcEpN' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6BfZT8By8Uu5SeBd' \
    --ticket 'eW3HnbeOyyck9F5C' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'EcImnbjoH0uw6rzQ' \
    --clientId 'JfjckJ0fEXLkVz4j' \
    --redirectUri 'FBqAHJtxZdID6yIx' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'l47LgrbEFU7ePe95' \
    --code 'PA1ldKeHTzectw1l' \
    --state 'sbKER3o8VD6sm8ZE' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'szjd79zdACKD3XiO' \
    --code 'Oa4ZUa4oZEoyJRsQ' \
    --state 'uX2oeQt4tAiIDe6v' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "OCef78oy1gj1UZaJ", "userIds": ["a8c2hIBrf4dd2sOp", "nsUJbbov7yZbZM7v", "LIEVZIw5OlHGehTx"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "DeEND7gDUFqyl27S", "code": "87nWrw9XvpSz4cUz", "emailAddress": "0gslkQ3ZxfEPRiPv", "languageTag": "GPnxTnneUn99S7jN", "newPassword": "PnZDC9xh0rxOf2F0"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'HdySsapf5K3kVLWb' \
    --activeOnly 'true' \
    --after 'MxI3i4H18rdXwTwL' \
    --before 'BUCCwjqdg7a7SPyK' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'd0cyDspXkECEgbHG' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ku9EotoABREd0oRs' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '9Rhd8tbYnTWnW3KU' \
    --after '0.004597541413690842' \
    --before '0.996616225808924' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j7kY0mmEla7E0nfT' \
    --after 'JSRARoQSThUozTnJ' \
    --before 'oMdytbcpnjKxdEDx' \
    --limit '6' \
    --platformId 'Mn4VSnh6ZW0h5rDo' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F3JGDe9rsNwXmlyc' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'SbMCoUhCEhDMrE3b' \
    --body '{"platformId": "CrPLkN7QTYycNU4r", "platformUserId": "Gg5RcDwwpX8jO8zx"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'rzg7ij8fJlSkPPYV' \
    --body '{"chosenNamespaces": ["0iGzsvVvDL2tBzri", "ym4y1BoKLoJAO6xq", "1EXlkVAqoeyaOgmc"], "requestId": "Pf0ND2en4XAE3DI8"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ks8Z0ycplMtASziG' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aejZMctMOnPYFBwu' \
    --password 'ScKmaMkiom1x2syx' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'fVf7bfGR83LfLggl' \
    --before 'qS6dFF4CD8PPmD8i' \
    --isWildcard 'true' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '5a4Qpcnte0tApXAP' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "eB1TqhPXclHK5wZg", "emailAddress": "kYAOfUIV4GvPEZp0", "languageTag": "vH8YEQdGVfBsWoKU"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "EJ28Obg5kTqWvYTa", "emailAddress": "wrvDDt8ooKFJNynd", "languageTag": "VHau0C8P2UgBLTap", "upgradeToken": "5V3rmVjZjcmw2BSc"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode '8oMvsEnAl21eJgAm' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["49cECite9ZqhQNgG", "rfI53grY6egpFwWD", "8WvEOJyFMzL4vvNl"], "oneTimeLinkCode": "NsdmQYitUqVM2klz"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'qvYyISCvtkVIhWQ8' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "4EyBekHIdjAEWQOQ"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'ANltf5kgK1449fRX' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'zahhpOuTRuNC23LN' \
    --code 'XmOUsoETaajgIgsb' \
    --error 'apR01nMTuBhfFsxx' \
    --state '8IqGIdAYhCqyPjLs' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '1rYG1cj9nTkKo5aj' \
    --payload 'TLn5bep909vI19I6' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'mqKkHz0BxSNFa9za' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'V6gnfzyRraa9gUEv' \
    --code 'TAhGBktisFSrzEzb' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'Dc10byhaGk5epxaV' \
    --upgradeSuccessToken 'vNQ1ViI9yIBvNrCo' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '79' \
    --namespace 'AYaWevJtlROh4CLS' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UE4ehdcyDlZyIiUr' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'dIju3H4MFOv3hk5M' \
    --endDate 'QViB4JKDO9imUkbA' \
    --limit '94' \
    --offset '48' \
    --startDate 'lVnXrMWOYSxBnu37' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lCWxqp7FESWuniSQ' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "d16GJjtISnND85dI", "deviceId": "0m5wQWtBaldbXczc", "deviceType": "nR7nRWNB2SQPAnz4", "enabled": true, "endDate": "uAA5DCe9Y4Z8SIWU", "ext": {"0shEw1J0CqIXQtR3": {}, "ubZEi7CC2XkLl185": {}, "qkvlraKWoOr1J6e2": {}}, "reason": "BWHCXaklX438oug6"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'aAB5G5W7a7fRy5bw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'sud0ugBPTGDNrxMY' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'z2h8RPY3BNuq3j8K' \
    --startDate 'yLgBaFucJr2lbFBl' \
    --deviceType '1iKb9AyK84wV7yG1' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'wyfbptQqkhUovqTd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '893b5YQCYR445c9h' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'IvCdq7ZopSwbc8Kl' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 349 'AdminGetUsersByDeviceV4' test.out

#- 350 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 350 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 351 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '6' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 40, "userInfo": {"country": "EtFVQ1sdwoglwLx1"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "9Z5EnpA6hfnH5TNz", "policyId": "To99QySWSSIA1X7s", "policyVersionId": "PL3Zl6wyPY4d7qJH"}, {"isAccepted": true, "localizedPolicyVersionId": "NdptbuKS9bNS1DF7", "policyId": "oo61Be8grPIvLIjg", "policyVersionId": "XpIMOdWbD4a6BCu0"}, {"isAccepted": false, "localizedPolicyVersionId": "2PCBRcNPmddnl5yV", "policyId": "ym1bIEoVCQq0Yw8s", "policyVersionId": "mI9DZnbgq0iEsXEL"}], "authType": "EMAILPASSWD", "code": "LOLb5sQyT79isbeM", "country": "mKm3Pc9dHNXMVbHw", "dateOfBirth": "580IEO4ZTb4wD11t", "displayName": "rjeDmiEhPymwrl9y", "emailAddress": "CbAKz6q4NC0Y5weB", "password": "EtIgO5Rtcsg22G6f", "passwordMD5Sum": "BDbZRnSv6jUr4YES", "reachMinimumAge": false, "uniqueDisplayName": "kUZIQffz83U5qrwH", "username": "zlnVD5fZxfTHQbIy"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["uQzG8UtXY9CR4Akd", "S6kSaRxQB8dgEC0q", "RGHIFsokFTqQIdMq"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["xocg556NGmFEXzw5", "OfOJlfJnrKGGG6dc", "1MVfRhKxXbk82twY"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Gs0hukzSkPM9C3Ol' \
    --body '{"avatarUrl": "M4F24C5H8hjCFMe7", "country": "NRyyVHMBdFAtSU4f", "dateOfBirth": "WKhIeFtvgdcUxwpR", "displayName": "YpXGZgYC9OF6uKzK", "languageTag": "4Nvy9m3a83Nj3SXq", "skipLoginQueue": true, "tags": ["weCa5lLsGpxWOqdt", "Q3WBkL4P5kmXiNiJ", "0DZnIH2lHpR7F3No"], "uniqueDisplayName": "RT6chokRHZOWeliT", "userName": "yWu4TpJifWFx4n8Z"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AbDlRiMHZQMf5JCD' \
    --body '{"code": "uty0SzMZ0j7SbGwL", "emailAddress": "kH2QAd2VdmWII2eu"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'lCIhzMb9lF2IZ3Vr' \
    --body '{"factor": "ObYsScv8CnZ2zQDw", "mfaToken": "QOLjMkjwseSIKiza"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WL0Pqs1SjlGqSfjY' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ielaJWGsYpsD8j6S' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'MQi9he3bvkiaSzoh' \
    --body '{"assignedNamespaces": ["EcFf76nti0meGBF3", "kiPfVsC3Ys34HGA0", "dEL9xNRTkIrPptU9"], "roleId": "qlCqvfzOsxBqsgXZ"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'OrLmwfHhyiQb9ihV' \
    --body '{"assignedNamespaces": ["Moz200Bk44kOWnMi", "2uy16X0v5KPtSRxu", "x689YuTGEgEdG6cG"], "roleId": "gGfT5Dk3ibXRheJI"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ddVgZ6V8yvqQiQ9z' \
    --body '{"assignedNamespaces": ["zG6Si3E5od4ONB6R", "4rncWVwiI1I9A6cW", "DLMG2Kwrz2RdpJYC"], "roleId": "AdNgrOZa7X0bKZLj"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'true' \
    --limit '13' \
    --offset '23' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": true, "roleName": "Is6ivl73G5lJEtF0"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'miqAQvm9ocHgComr' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'KoOGw8dgrSIQ3u1X' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'B3Y8Nf1pZnqMU7s0' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "MYL3cDH46DpmEwq2"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'vQPOF3CnGBoZyHq7' \
    --body '{"permissions": [{"action": 28, "resource": "B8ashgH72odB8wdU", "schedAction": 35, "schedCron": "0sICLy52PJvKDqfQ", "schedRange": ["pT0gx0wOWH2Bg2xY", "wfAaRDsCrdi25xAT", "PGUBar8viflEIi1Z"]}, {"action": 53, "resource": "xQcRbxS9LOTWnEcg", "schedAction": 3, "schedCron": "eaHaEPGKwgEt7y4x", "schedRange": ["ptZOEok3gtpdh7Ns", "TpCpRrd9ibmmM1DH", "ApFQQ6rOihnYYJbl"]}, {"action": 37, "resource": "31DDrcgngPuBYQeY", "schedAction": 74, "schedCron": "VXUCC1dOfXtibPvb", "schedRange": ["MOcC6RO2jDQqKk0I", "9g0c6eYXIKUrUqXW", "jVfckrWko5bz7NLs"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'sxsVlLzuISGmptRr' \
    --body '{"permissions": [{"action": 78, "resource": "mvaTLaTEtvUlwqm4", "schedAction": 96, "schedCron": "kKRtQjvZa8LiBlo4", "schedRange": ["319hWXQYp58OoQTM", "zw0zz8DgBhW3FZCI", "vlUW23RRC9Wj4PX4"]}, {"action": 67, "resource": "YjaIdqQ4101uwu0a", "schedAction": 48, "schedCron": "QMu3om6mcJ6F9aC0", "schedRange": ["4EZHWMwLZYzryJLN", "feA8WjGS5P8V0TMp", "SGE5lRLZMl3XBcd0"]}, {"action": 80, "resource": "sIroUegf1BiUAHHo", "schedAction": 19, "schedCron": "Yzetq5LnrcuNH8PY", "schedRange": ["4KGdICL0wsnpklGE", "9AnKNZD30Ae52oMM", "5WRxlCbt7LvrmTRn"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'XLhkf2aKPU6kbfRs' \
    --body '["y3fasE1QVCeCZ835", "RtOp64kBnBDb734s", "beTQwLCrg8EGW1Ae"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '2aAPKZfoxsNTz2Kc' \
    --after 'FVPjtPWcKNxvBoi5' \
    --before '9MleCyILuL1ON9mY' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'd9EbajTygpHN0RNk' \
    --body '{"assignedNamespaces": ["gw60c0URNGurxZQE", "771Dao8WNwO7jTER", "RetGi6JMrLaWgeJM"], "namespace": "jLJKvGKoJ9a1KNmH", "userId": "MJONvOmVrx5AEbcC"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'EQjyzsnXa8coynQP' \
    --body '{"namespace": "6aVGheP2vAaHGvth", "userId": "9UV8kugCsjRsebNg"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["EI2e99nwG3IPzy9K", "h2BuY7sM924ibFVg", "zgMu0npF3HeREKtz"], "emailAddresses": ["vM7DBBejRU6ORbLw", "ai1xg0iourlH3GhF", "1fVYPkvi5WJamEzF"], "isAdmin": true, "isNewStudio": false, "languageTag": "OXhyjgu24pGW4MuL", "namespace": "mqZ1EskKdAAhqtxr", "roleId": "CdQoaxKSbZ5T9OCw"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "24aEIiZLuiZbLNrb", "country": "yEz7I4pXf0nyq1uX", "dateOfBirth": "sANLUBgxdKHCcQfJ", "displayName": "bnIlSB3EvupU3sxE", "languageTag": "8R4XqOP6LGrkLSj0", "skipLoginQueue": false, "tags": ["MEYVA3AXfBpiEu3L", "PKQmtOuQBiIR2kWg", "zfsBD4grrWOIxIRw"], "uniqueDisplayName": "Ahuhm1pv3IGsidip", "userName": "jQHrLv0clCVKHKYc"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "SSuX2IpYSaOrgs8q", "mfaToken": "aIiVTw1NteyWH1ir"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'nimcQnnCxWs0ROyI' \
    > test.out 2>&1
eval_tap $? 378 'AdminEnableMyAuthenticatorV4' test.out

#- 379 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 380 AdminGetMyBackupCodesV4
eval_tap 0 380 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 381 AdminGenerateMyBackupCodesV4
eval_tap 0 381 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 382 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "NaHdQZI2fB5NAlH3", "mfaToken": "FKtPnZ1cAYWgTa5o"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag '1Eb9ZyRS4htWJukk' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'Z3UDQXvVZcG8irs1' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'oIWpBQM1TAzhe9Gq' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'ZcHa8ufi6H1k1hkO' \
    --factor 'tDOf5A2XspJDxiGp' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'ZtVnSHayHIIoT8r9' \
    --languageTag '9DbuwPu7leTSPrza' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "1IEmnHmedjHIwdO4", "mfaToken": "ZkdFylApaCOMObsE"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '54hfz7DengoYMcFe' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor '0tIPFRJ6u6SHz9sY' \
    > test.out 2>&1
eval_tap $? 393 'AdminMakeFactorMyDefaultV4' test.out

#- 394 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 394 'AdminGetMyOwnMFAStatusV4' test.out

#- 395 AdminGetMyMFAStatusV4
eval_tap 0 395 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 396 AdminInviteUserV4
eval_tap 0 396 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 397 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId '1ytIUA0dLzo5DaLu' \
    --linkingToken 'bJ0RzalcCdeUBzrZ' \
    --password 'n17svSoknfYtIRsM' \
    --username 'v1xojhmDVHOoGdpU' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'R5UsUxvHYF1skWgr' \
    --extendExp 'false' \
    --linkingToken 'vn1uVuTzQv1GlTMp' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'dP64zM0xS8AQgKwn' \
    --factor 'FSf1CIw2AMDooZwS' \
    --mfaToken 'f2GNP2MujnV37ix4' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId '3CthnBOnPGOskchW' \
    --codeChallenge 'Bz5NZ5nByXYx5t1s' \
    --codeChallengeMethod 'S256' \
    --additionalData 'YJgrRcUSdlY9w7Hb' \
    --clientId 'NzpiIAftutMgA17N' \
    --createHeadless 'true' \
    --deviceId 'u1N4E1eD2JtfWvRS' \
    --macAddress 'Rh1XJGL7649A1eyh' \
    --platformToken 'a5A7DgmYUF9p3Hcz' \
    --serviceLabel '0.09251581644930318' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge '2RNrpnD6R0bBWJ24' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'te4yuNCQAydBxogL' \
    --simultaneousTicket 'DZBprjsxxu9aJByN' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'bFjTq04fX5hihLXd' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'g1txtu7rcD6IQITR' \
    --codeChallengeMethod 'S256' \
    --additionalData 'QJxmqXrNx2RFalI0' \
    --clientId 'dpLM5Iz4xWEc0oe5' \
    --clientSecret 'sJ1ZfdP40og8Q8RY' \
    --code 'IlvFhSv2zi0SS9s6' \
    --codeVerifier 'lWrsBceQNdx1nYcs' \
    --extendNamespace 'RRXUuhdfzqxzYnBq' \
    --extendExp 'false' \
    --loginQueueTicket 'knQUGjeNg6W3fK58' \
    --password 's9G89v2LRYIp2vDt' \
    --redirectUri 'NQv3Axwd534ZYAjT' \
    --refreshToken 'xXSMlnwjENjERYFx' \
    --scope 'HSTrS3c0qG8SsAzV' \
    --username 'OWudXHU6XeGuRvDI' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData '8QmfFRloWscVzRwn' \
    --code 'mAfREnB8t6lhgfUQ' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId '8n2mMGwTd2QH5ou5' \
    --rawPUID 'false' \
    --body '{"pidType": "zEtJEa2GtUrO8Cou", "platformUserIds": ["29DZDDz5ZmOKw8wX", "36Di7rtxbrGw2kD7", "HdJtvnF5TNsmQkgV"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZP4uD4eDRyYTQRkg' \
    --platformUserId 'oZW7qHk7RAQMN2N0' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Nw71dQEaLwt9uBtM", "policyId": "Fk2HkXNGMw549GHk", "policyVersionId": "04zSdza7oTbMsiqw"}, {"isAccepted": true, "localizedPolicyVersionId": "fvwAVySprlw29UQB", "policyId": "WwN6dgjQ6e8RIuWQ", "policyVersionId": "Sk1gygRWLq8GE4ul"}, {"isAccepted": false, "localizedPolicyVersionId": "56PrVdxWHPaE3Crm", "policyId": "4Dzed3hXqAZJfrOZ", "policyVersionId": "Vu8pzWJCBqkUUfAN"}], "authType": "EMAILPASSWD", "country": "LzIe7AMTNwOixn8Q", "dateOfBirth": "7Ls411r9CwtAM4RX", "displayName": "n1KZ8lvzikSmGHkW", "emailAddress": "5YJjCjkX1tE5OUDs", "password": "Q8Gvh94GWLdZeYtC", "passwordMD5Sum": "CmDcmnapZoQ5spfE", "uniqueDisplayName": "0EkxjME62UMEaAIF", "username": "qlnuIBtS4wO320uv", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "oaCt65M2iMwV0Qzq", "policyId": "5vOXo0ZCPRGo9chT", "policyVersionId": "7JVY7s6ttmVRibNF"}, {"isAccepted": false, "localizedPolicyVersionId": "q3CZ2F8Nxkau8Jx6", "policyId": "FZ2iAIfg6IZ3WctR", "policyVersionId": "t7c4W2wYfHKBnH7y"}, {"isAccepted": true, "localizedPolicyVersionId": "olNLYwAD86y7J53w", "policyId": "HEz6DhFkbEGsTApl", "policyVersionId": "ZdwnnPLdcoqev4KV"}], "authType": "EMAILPASSWD", "code": "mMDtBdbuN2w5ojXb", "country": "n4jdgeFhWGClk67D", "dateOfBirth": "ERuYvdiQ0FXmfQuZ", "displayName": "ye50OxAKEao1GFc3", "emailAddress": "vs2rRmBod8GoYgew", "password": "Hukd2nYak5oMzmPJ", "passwordMD5Sum": "r4rU2yun3TYQtc2w", "reachMinimumAge": false, "uniqueDisplayName": "jdWnZ1Onc27kW5eo", "username": "TRoXXY345M4y9CSC"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'XIVEFkBClmRe7LWq' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7uB6j9Qig44efrjc", "policyId": "KJqZjifTH7JoeTkG", "policyVersionId": "Tgvc9C0808cz07of"}, {"isAccepted": true, "localizedPolicyVersionId": "wZTxGG0qzW08Jn0z", "policyId": "745J0Mqak2sW0Ejj", "policyVersionId": "dwuUqEARfhEDaUKZ"}, {"isAccepted": true, "localizedPolicyVersionId": "dGDSnSzOYxMGYbrT", "policyId": "Ch8b5U1dSRodjqyh", "policyVersionId": "1JOJkPmaWL4rFdfl"}], "authType": "EMAILPASSWD", "code": "GtvVGqnrbNAujmW6", "country": "haNTizcLGSwbPRnz", "dateOfBirth": "QMvrwUynktgxoeNX", "displayName": "o3EJnq49ErJFNFb9", "emailAddress": "AkaCvYnkAsBr9giD", "password": "KNKgn8OsF0JDp8S1", "passwordMD5Sum": "ldI3WqjWDbT4iMap", "reachMinimumAge": false, "uniqueDisplayName": "vQqRFpDDBA5oqZU1", "username": "AYUIEAl5EKKQfsQJ"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "7aVhpHiYdAw4QO6g", "country": "UugkwsUV5rUNp9z1", "dateOfBirth": "4k3qJN0h41aekoSL", "displayName": "ziDSoI7XcuedgS11", "languageTag": "uHDGprJT3kRFQDaY", "uniqueDisplayName": "zNhUK0iZhwBG5cw8", "userName": "U1uIkFxsMftwCdZJ"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "l0f9Ug0U8ivJ3zLk", "emailAddress": "v6RDYZ8Q4hGxFx11"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "jJUZJnGYM7EDGgFx", "country": "TWgfSFuvptKUhSRE", "dateOfBirth": "8JJqNRP7UBkZJ2cK", "displayName": "eyA13UbQrohFEmIy", "emailAddress": "H1FxTmszjtRI0dZr", "password": "piUakkiuMG7NciIM", "reachMinimumAge": true, "uniqueDisplayName": "eEONC8eKkll4wyxY", "username": "cwbdbqfM5E6gIkfc", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "Vc8A50aPS0s2KUek", "displayName": "q8I6A1tty9rcj8li", "emailAddress": "nc23EQER6cCUynDz", "password": "sHIdS54btlhKn4Ve", "uniqueDisplayName": "lEX6l9AvnGQzsdy4", "username": "12Mw3FNObreDrWoM"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "6qbGT6wYK48rSVKN", "mfaToken": "S2Ia8jPVcQgekCiA"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '9Il0sFF5wTOyq0fU' \
    > test.out 2>&1
eval_tap $? 414 'PublicEnableMyAuthenticatorV4' test.out

#- 415 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 416 PublicGetMyBackupCodesV4
eval_tap 0 416 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 417 PublicGenerateMyBackupCodesV4
eval_tap 0 417 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 418 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "nZDsA2htLTpQ0LOu", "mfaToken": "0EWGgk9D9V8Zzkgo"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'jNgA25n2NC3iP9xy' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'aiEFO5zKTTyQ0dTZ' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'pUNGKrQyck5dhrzA' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'HPFdHLdp2OtfOTDc' \
    --factor 'CPet51cdXtALeBlv' \
    > test.out 2>&1
eval_tap $? 424 'PublicChallengeMyMFAV4' test.out

#- 425 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 425 'PublicRemoveTrustedDeviceV4' test.out

#- 426 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'PacZwYvn7ya6QgcV' \
    --languageTag 'jwKi8WNna9PHvfkt' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "ODjEX67CoKFU8dPA", "mfaToken": "eVtwKauLgFZT0131"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'uUfEtO3u9nVPzBVF' \
    > test.out 2>&1
eval_tap $? 428 'PublicEnableMyEmailV4' test.out

#- 429 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 429 'PublicGetMyEnabledFactorsV4' test.out

#- 430 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'jVRwH6gslSDcIn5k' \
    > test.out 2>&1
eval_tap $? 430 'PublicMakeFactorMyDefaultV4' test.out

#- 431 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 431 'PublicGetMyOwnMFAStatusV4' test.out

#- 432 PublicGetMyMFAStatusV4
eval_tap 0 432 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 433 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'epRaIoI9pDOyH0dG' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "u7b9OFhVpQ3P2w0R", "emailAddress": "GIkqZLy6Wtul6T9R", "languageTag": "AhqzZO01IZbO09H2", "namespace": "abU31ptrUJt6nlye", "namespaceDisplayName": "MG3yWoI1JmBUXkiY"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "DdQtUdRbDvuBd66v", "policyId": "MrSnSi4KxmxgQWzB", "policyVersionId": "EUAElaZTlInSDmi8"}, {"isAccepted": false, "localizedPolicyVersionId": "xFO6tQg58LA3rpbL", "policyId": "WsPmSHFcOmauqpgx", "policyVersionId": "FoXvulMksjhGKIzw"}, {"isAccepted": true, "localizedPolicyVersionId": "JWOgxraZ8141fP6l", "policyId": "3BleDZZJPmxfMMX1", "policyVersionId": "freVBb9YIUE0osZe"}], "code": "evqqtdyC5Vol0jJE", "country": "VGkrtWLHQUUImyxP", "dateOfBirth": "ZzjTrXxvjEf94czz", "displayName": "JQOrv1ayDqrTX8MH", "emailAddress": "ZD3c8Rm60grOTHvt", "password": "LGD8fvhREZROIETR", "reachMinimumAge": true, "uniqueDisplayName": "3u50KG5JJJ6qEnn1", "username": "X9kQHFg22uW0ZHCA", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE