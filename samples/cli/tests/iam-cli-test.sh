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
    --body '{"modules": [{"docLink": "osCTq1g6nvNg5LDF", "groups": [{"group": "0ViFcSytV9aMFu5H", "groupId": "QTtRKiIMyiOGTZpg", "permissions": [{"allowedActions": [29, 17, 41], "resource": "moShXPlHefdsag3m"}, {"allowedActions": [62, 18, 80], "resource": "5ERQ2Eey8oqPyrzf"}, {"allowedActions": [0, 12, 100], "resource": "DJbSvoVysLpSIECI"}]}, {"group": "vxJRV1FuXKEcfSKe", "groupId": "NOYjvxTj1fs0YgQn", "permissions": [{"allowedActions": [52, 20, 60], "resource": "603vfKQVm8Dhs5HY"}, {"allowedActions": [51, 66, 7], "resource": "PkjBqVQh2R4VGhAa"}, {"allowedActions": [67, 36, 10], "resource": "iLtlNAbJydxGmLnj"}]}, {"group": "6VamogciVl7DDTsD", "groupId": "ofhpAANoUcqarb0f", "permissions": [{"allowedActions": [93, 26, 3], "resource": "8Ej6fZPOYNnEyENF"}, {"allowedActions": [24, 18, 77], "resource": "EyrKXuBwAa0saLv7"}, {"allowedActions": [44, 27, 0], "resource": "bOwFSvAl6vdeiONG"}]}], "module": "2Zkk1bET9tig8TFh", "moduleId": "G9OPe03TLrTmJudC"}, {"docLink": "LXgXiqAbMzOq4BUM", "groups": [{"group": "nQSm2TU5VEiVQc4L", "groupId": "mTzpDoIBd8X4r9LC", "permissions": [{"allowedActions": [15, 16, 85], "resource": "qspJL4zBKjx7od7t"}, {"allowedActions": [1, 75, 34], "resource": "bXEjZnhkMNSbjzUB"}, {"allowedActions": [45, 11, 6], "resource": "i4fqRuM6doT5P1ag"}]}, {"group": "3Eye6VU9pzi8sGp7", "groupId": "nJLZ6x3GV5SCNJq6", "permissions": [{"allowedActions": [23, 20, 74], "resource": "eQGvZjNgqPGJqFtZ"}, {"allowedActions": [76, 17, 38], "resource": "sHzeymHHsn2tdcN1"}, {"allowedActions": [96, 27, 43], "resource": "VAVzzmjAm4Wv30v6"}]}, {"group": "KHqXFg4clk5W93ae", "groupId": "3lUOatmatgDfnfNh", "permissions": [{"allowedActions": [41, 85, 49], "resource": "1GsNSmwBL039OcmP"}, {"allowedActions": [30, 51, 27], "resource": "MploJbY1YbRJSPt4"}, {"allowedActions": [90, 73, 64], "resource": "enuZ02XZlvPwxXQp"}]}], "module": "1uPyjCHXZmh8vrWc", "moduleId": "1EKLCZ5cpKHaKHCW"}, {"docLink": "Q53Mp1XOcaAr75fh", "groups": [{"group": "LgYpSdBg3Cbrr5qO", "groupId": "eE6VxYcpIi6AgUH9", "permissions": [{"allowedActions": [5, 87, 61], "resource": "NDW0hGmPP4HNBQSq"}, {"allowedActions": [94, 70, 41], "resource": "6Bm8ODIPvwZ6ZvkD"}, {"allowedActions": [82, 36, 37], "resource": "q6zqf40nWdATCbrK"}]}, {"group": "HylEzJIbOgSZyC1X", "groupId": "hqJO3xEBxCKWqIxx", "permissions": [{"allowedActions": [71, 98, 75], "resource": "lTxOvwNGsNcjEvck"}, {"allowedActions": [21, 23, 91], "resource": "vJQSAyGL4DbzPRDU"}, {"allowedActions": [54, 50, 38], "resource": "OGsuNnJfuy9iwlrB"}]}, {"group": "6scJxr2Za1CjzOhs", "groupId": "gzg2m0mMcaBMgUYk", "permissions": [{"allowedActions": [31, 35, 23], "resource": "gDifdqa36dErxpqX"}, {"allowedActions": [34, 19, 29], "resource": "u7YBrBF4qvaGwezy"}, {"allowedActions": [55, 27, 45], "resource": "OuLlpBy8ipwVz7NJ"}]}], "module": "uqtuhbL3jEC55f93", "moduleId": "6nIqN5DCAvtvIz9J"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "vwoNwBGUWqkgXGW6", "moduleId": "SkQ3IU9cZ7PXkUqX"}' \
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
    --body '[{"field": "mCaFGyDcmwvvXvOT", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["hnkGhVXym0Wceqmt", "b1UbMBKrwlEMTYSI", "sr7BtKhIxiAXA71F"], "preferRegex": true, "regex": "8XDhSEyL9LyUUftZ"}, "blockedWord": ["TAiVTjQIG6dTkZwd", "NMAbFtmbDcMmwX50", "EUfOjPAXYonwNfQ2"], "description": [{"language": "IvLF3PfnKO9uBA5V", "message": ["E3qXMyhWumM9pnzR", "uWqJQRbDOf9zPC87", "VNCCcIHHKxm845A1"]}, {"language": "jK6Rle7sYtWjHCUd", "message": ["4AX7Y15sxnL04Gx7", "qnmKZJhEPPwXz2cH", "PPbcYNzf9pbRMtpY"]}, {"language": "BlsG77yvBLGRZEt4", "message": ["22ug1j4KUTRtbuAR", "K3cqqBAZkbOBWdOI", "bA4k9S50zqRJtxqo"]}], "isCustomRegex": false, "letterCase": "KrgzWzDlMU9TJuUN", "maxLength": 69, "maxRepeatingAlphaNum": 13, "maxRepeatingSpecialCharacter": 87, "minCharType": 84, "minLength": 9, "profanityFilter": "K0sjFnDxizBv57UE", "regex": "e6SO4Gxq5PcU18r2", "specialCharacterLocation": "JuA3WqnfF1y5W21X", "specialCharacters": ["3dnCUGBYSdmqqwI1", "Ohvzg7eSUMBySqbk", "gpY7Kzng9YA2gVcU"]}}, {"field": "0frQ3klWAARpK0XG", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["gYxaNzYm8fNXMtxv", "IF0GIo2jGeNLlFuC", "JOGMRoO6Xu03Q0Uh"], "preferRegex": false, "regex": "rylIu270juqcIbHM"}, "blockedWord": ["81ZBL9pB0S6r7Uhq", "RY8kKdVcoL8dOrAe", "DYwftiOfUyISi3y8"], "description": [{"language": "DDUaDQsAYVhS9LDq", "message": ["hfb5tryWA79w079F", "gb4OB67opSapVhsq", "1JPDw7zFoCGmGu89"]}, {"language": "ZIWoOdm0lDnT9bZK", "message": ["FdLfv2fAkPZaQOCe", "4d7z7FjFJr8elf2n", "lU2hpxyJsN2VEtVg"]}, {"language": "e5nc3yNI8jeunGcT", "message": ["QI0WJA8m9QlqlIGn", "CJC4k3UOALgvlTr4", "Dnoae7AoHXtGytIx"]}], "isCustomRegex": true, "letterCase": "1JhmkURkrbt9fBQ4", "maxLength": 29, "maxRepeatingAlphaNum": 1, "maxRepeatingSpecialCharacter": 92, "minCharType": 89, "minLength": 60, "profanityFilter": "SiTm0Eqt3LwnPHcH", "regex": "fFolXtLTcEQvziV4", "specialCharacterLocation": "nGmD8NaEqnQeYVFw", "specialCharacters": ["2sJWmi4sWdXGnkbn", "sQNfe9isDJBaPkJk", "uh8BrK5gmkL8MREu"]}}, {"field": "2VtmhjwJEs9BcHoB", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["06KPqbkCqQ2HbQIP", "uUNs1ClbSRe3Rz83", "f0VvKQMxhiNq8VWu"], "preferRegex": true, "regex": "DfQ4gUte3WcymbRg"}, "blockedWord": ["J1NkGgIQ8UzhtZCX", "jcElGpmtGmgwtuUs", "rK7fvFUOaTHb1s2B"], "description": [{"language": "WgTaFRtrWFvn57dn", "message": ["TEBuPhfLUrPEJyW2", "4DsF9kNCxtnHjvin", "m9f1CuGjwrEveOrW"]}, {"language": "DlgySze8qwfnWmhs", "message": ["ObHPSxqazqrYeS9l", "d514aISZDsQByAvC", "40vsAgoW5Mj5em53"]}, {"language": "YrihGnmCiAsR7rE5", "message": ["tfoc1xd7xVsylz8k", "hmgRwMErWHLiCIzf", "NZh98CgLycWylQX9"]}], "isCustomRegex": true, "letterCase": "ci8tK7GaPtgf8xIW", "maxLength": 11, "maxRepeatingAlphaNum": 48, "maxRepeatingSpecialCharacter": 52, "minCharType": 90, "minLength": 33, "profanityFilter": "vHM1GJtzKtto47O7", "regex": "pcEFw8YzYrEZ2LyP", "specialCharacterLocation": "ULoLOGXIXiPIG8qS", "specialCharacters": ["4ltfyr30ZiANbmxG", "6yDvmqaknkL777aC", "kZDN1RXLGkss4wBC"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'iz6FpEsUPWU8PKsM' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'JbgWXcjq1Em4tkBT' \
    --before '7oSae7R6O2LFLniF' \
    --endDate 'o7m1SeBSenyBB6lO' \
    --limit '84' \
    --query 'RXr87vksTudQz9uP' \
    --roleId 'an8P9JlflwEyvBzE' \
    --startDate 'yJu4a7ShEfmAOipb' \
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
    --body '{"ageRestriction": 14, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '3FQ6RuSdNx6c23LB' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 88}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'I5x2MOSmPXEiSGKP' \
    --limit '20' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "ysnaM9twlP9P5Sfk", "comment": "ItcX6bSrybHPdXHW", "endDate": "xK8akEVux7ViCfit", "reason": "bBcQMAZC80dfpv4W", "skipNotif": true, "userIds": ["kzsWwVxYmL51PJlx", "YCW9HokPbncEJsJl", "na8Ur3oHGncD53ax"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "5GGna6TAPWtA5KwE", "userId": "i1c4i8Qwi6NFfyeG"}, {"banId": "hz197U7iArY8HUVn", "userId": "0BPJSH9wC3rBFZeR"}, {"banId": "g9k9MmXELEwVCcd9", "userId": "xS7zwtyYsxDPY3vM"}]}' \
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
    --clientId '0L73BB0IeQOhdAQX' \
    --clientName 'IzT2e2DMqIx6oNb3' \
    --clientType 'u1sej8Mxhw8nLJ4g' \
    --limit '76' \
    --offset '99' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["TGp0J8mEGo025x8L", "ezFbxN9xHIqLU9qB", "cOf1Pk0Ag5xXvsSs"], "clientUpdateRequest": {"audiences": ["SXnorGiHEYmsZiZK", "mMtu8aJEDRPMnTy1", "BjErgzI7V1T6xsNG"], "baseUri": "iohew69RUJLcD12m", "clientName": "1LgoziHLQrVrE99W", "clientPermissions": [{"action": 85, "resource": "CuJN5bVc653XXjQB", "schedAction": 17, "schedCron": "r0deLKmn6G4V8KMq", "schedRange": ["6ZwBUpIVA7h74KHn", "v6sG4pyCo4waDAKW", "kTyjgGYBi39xqHLR"]}, {"action": 74, "resource": "YiO3t0xBSzzmOtJh", "schedAction": 47, "schedCron": "GPOI0qxFgoTOTaAF", "schedRange": ["kd073DtytTYyamfi", "sPfrDYBFaDG0HlgV", "XanwD9Ncu41MSXsL"]}, {"action": 56, "resource": "Us5mPkw3LGoiABBi", "schedAction": 48, "schedCron": "Bs7K8i40xMmPoqDr", "schedRange": ["60mZsKibnWRHuA1j", "zoLmXHCwBwThH9Ws", "mwT5zbiGzCRfvk2H"]}], "clientPlatform": "hDdkIWVAzXeYj9cp", "deletable": true, "description": "0DEOXy9o88WckGBz", "modulePermissions": [{"moduleId": "wSNVZC0b3T8VoDMe", "selectedGroups": [{"groupId": "pfsriU3x5BGiCKV1", "selectedActions": [73, 59, 47]}, {"groupId": "9FDi6DNNnkCGa8Zg", "selectedActions": [79, 64, 83]}, {"groupId": "diIVPgO3RrdgTO9Y", "selectedActions": [44, 52, 13]}]}, {"moduleId": "oF6FPj2ERVKaGLXx", "selectedGroups": [{"groupId": "TAghtpna268GCvsW", "selectedActions": [31, 85, 59]}, {"groupId": "ukemeYZbtoUiQT9g", "selectedActions": [28, 51, 53]}, {"groupId": "kRD57dYz3XeRfOmf", "selectedActions": [35, 57, 39]}]}, {"moduleId": "qqwZ4UVU5ELQNA2z", "selectedGroups": [{"groupId": "Cedfzx8eG5KVEKQB", "selectedActions": [70, 71, 88]}, {"groupId": "WAJ0jq7GHLHQIgAU", "selectedActions": [7, 72, 48]}, {"groupId": "pNKbsx4gf3PvYIrz", "selectedActions": [83, 23, 81]}]}], "namespace": "2YJYKyq8kIJWkVfV", "oauthAccessTokenExpiration": 59, "oauthAccessTokenExpirationTimeUnit": "9NeDnJ8Gk0HztXVi", "oauthRefreshTokenExpiration": 23, "oauthRefreshTokenExpirationTimeUnit": "ywQvXdsKmQOwMuwP", "redirectUri": "jrQSDJhVxY9PTFf0", "scopes": ["mfEufOhXCsRqPEdl", "ncOyHhmxyusJyiJa", "O68exJHeDmcFNVEX"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Sw4y128KspnDtdvc", "wqv4P0WKSF0ZLE78", "x03Td7vuKdjd3lTY"], "baseUri": "W9xy4j2LrqQVgreT", "clientId": "IYGn2byTtRUcHg11", "clientName": "WA4K9aHrlfases0q", "clientPermissions": [{"action": 0, "resource": "2WGM8HxRX7teCv8X", "schedAction": 92, "schedCron": "eliClBdtNgm3jNJJ", "schedRange": ["wQUa4mDeRT9nIpCu", "vafmfD7Kdkd88iqf", "FUzkuC4uB3dIZY2S"]}, {"action": 81, "resource": "bafnhGkbIT8Kk71T", "schedAction": 30, "schedCron": "vZNv6zO3GZrOjsQn", "schedRange": ["hHuvK4vUlko19QJh", "glGN1T14s0wHebwa", "Zec04M7hriuHNDvf"]}, {"action": 11, "resource": "pFCBOiGUMFMO6zLE", "schedAction": 74, "schedCron": "pkS42wXdTYujqU2X", "schedRange": ["O2IqTTYxEs9lKQ62", "8ClHMeI9cFGvf3E1", "QyTiIS2ki8mEmtzV"]}], "clientPlatform": "lxQaJmwGXGHXyNhL", "deletable": true, "description": "q1Wi3IiPTnYs9o7t", "modulePermissions": [{"moduleId": "34WoRdMNXJHRRHRw", "selectedGroups": [{"groupId": "SnspQ8QdhGJvedex", "selectedActions": [66, 25, 25]}, {"groupId": "AkBYaLTatO8Z8wL3", "selectedActions": [9, 68, 51]}, {"groupId": "dwjbBzciZLyXos5e", "selectedActions": [76, 28, 66]}]}, {"moduleId": "jbKbnDVqnjgV61bX", "selectedGroups": [{"groupId": "sEOi3aEyOq0H0Rsh", "selectedActions": [91, 20, 2]}, {"groupId": "SN3pSSGAlHGv2gn1", "selectedActions": [14, 19, 91]}, {"groupId": "0r0b1I9sNAgZhwwg", "selectedActions": [58, 60, 100]}]}, {"moduleId": "EDHNUSQMzKYFyBFR", "selectedGroups": [{"groupId": "xQzhfHDzPfKTKDBW", "selectedActions": [8, 64, 88]}, {"groupId": "Yt3A8pY1L3McYmkj", "selectedActions": [46, 13, 86]}, {"groupId": "cUcqipy8zYzYsNje", "selectedActions": [11, 73, 82]}]}], "namespace": "MFfuHFI12D1iuXJs", "oauthAccessTokenExpiration": 0, "oauthAccessTokenExpirationTimeUnit": "IeiRu0IuDrxUgsA9", "oauthClientType": "knmlP25z8eWnC2mw", "oauthRefreshTokenExpiration": 5, "oauthRefreshTokenExpirationTimeUnit": "X1WgcBC4V6AI5HtY", "parentNamespace": "ziOEhtTjXMfGxZc7", "redirectUri": "oWRkpnHjWir05AG2", "scopes": ["4Hbai0PpseoVYfTj", "KmuvulSh7szGxczz", "oxGDVQPRMMTJfn7w"], "secret": "POOGJXAfGO3q7VVR", "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'TIgiwhJeX1GGO2oN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'CJQRG9f6COy5b9Bh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'QKp1YVcLTT0ouMV8' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["GCu3Osub4Kfdvdxk", "xVfCCJd4N2HyeAfz", "wHjWgamVGqKJwy3G"], "baseUri": "Fmb2wBR6Nrtlvi5c", "clientName": "3aNyZWNbv2UGMIH0", "clientPermissions": [{"action": 96, "resource": "NpqF3DZYPO44Inqe", "schedAction": 98, "schedCron": "JB9QzEbpsZOBAnsS", "schedRange": ["fykCyk2QPWNTgrXd", "6MHcoAOvTEP2v8Eg", "0Zwz2hZVD2ljSjAN"]}, {"action": 41, "resource": "fqrHDcP8MjtTJuvt", "schedAction": 39, "schedCron": "m0ZTC222vKq6RjjN", "schedRange": ["MzbvDI8yCKiWkCOT", "Ol34LNQtp5ACG2Ty", "Ep6E2IWbDdVn0onZ"]}, {"action": 10, "resource": "nSycTevZg9uNTYbB", "schedAction": 88, "schedCron": "3sjx9aXxhGDOIftc", "schedRange": ["XQN8xeiVvBIE8f2F", "8c2AeCFoP4WFmEmJ", "y7FbUM1UBUt6kvv7"]}], "clientPlatform": "P6oRsD9RL3JCnyfS", "deletable": false, "description": "IjnWIt3jvXkNKcku", "modulePermissions": [{"moduleId": "v8lW6DVF9Slk6F2o", "selectedGroups": [{"groupId": "zakZcYc6PaBYiWz9", "selectedActions": [75, 51, 82]}, {"groupId": "Fz93nu2kx6sdI2ZG", "selectedActions": [72, 2, 3]}, {"groupId": "y0J4Ibg9ngzGEhY1", "selectedActions": [46, 93, 56]}]}, {"moduleId": "pR5BgEekqh3SVYYU", "selectedGroups": [{"groupId": "5jPAfluFxolVTH2e", "selectedActions": [10, 30, 17]}, {"groupId": "GQS6iySJ3Y3kLoUG", "selectedActions": [47, 33, 96]}, {"groupId": "h4o1v7FB8DD7prmz", "selectedActions": [68, 84, 44]}]}, {"moduleId": "9Fe7in0zr1HR9adj", "selectedGroups": [{"groupId": "4gdD0SzW0761sxYt", "selectedActions": [53, 90, 49]}, {"groupId": "xsSl9ylYfwbfBRm7", "selectedActions": [49, 0, 83]}, {"groupId": "akmX3MZgYSagldry", "selectedActions": [87, 80, 33]}]}], "namespace": "NIP0vp3umM5algky", "oauthAccessTokenExpiration": 18, "oauthAccessTokenExpirationTimeUnit": "5Ujog2n7zYnYalJQ", "oauthRefreshTokenExpiration": 86, "oauthRefreshTokenExpirationTimeUnit": "5Ylw7OkrUWBXTzcR", "redirectUri": "tm2xM4OeJ9ov90aL", "scopes": ["XYo4l5dhUFtDIkvk", "EHRJhjKJVhZOFh3B", "ZQjiRJ2BN2JyoIoa"], "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'PKWZqpUZ7AhBR0Yv' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 90, "resource": "IJ9VGfeDpCl1WGas"}, {"action": 96, "resource": "DSgPo2TKkElMqHIA"}, {"action": 90, "resource": "C7S9hLErd9YskaTx"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'mEluCtPMQMOzhtjM' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 46, "resource": "lRSMNBNfjKkN0B35"}, {"action": 92, "resource": "b3fAvwecMPxufDOD"}, {"action": 92, "resource": "i1idSeXa8GIeuZpA"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '58' \
    --clientId 'Ot294uoA8pixcxEM' \
    --namespace $AB_NAMESPACE \
    --resource 'J8aFonYPJ3hDI75z' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey '5vO3KGxb6NUMD55P' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 133 'AdminGetConfigValueV3' test.out

#- 134 AdminGetCountryListV3
samples/cli/sample-apps Iam adminGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    --filterBlacklist 'false' \
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
    --body '{"blacklist": ["oRlESzOB9T6gMZ0a", "4ZbqdGXzj52A3OJV", "31IRJP9YxyNeMqCU"]}' \
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
    --body '{"active": true, "roleIds": ["ANX2j0s3ABj6EOap", "Ci3rHEdiUfPlq6GF", "xDjMPTR6z0Fqh5jp"]}' \
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
    --limit '1' \
    --offset '61' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QiobwsWGOXSPg5U7' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5bt99315ytdIvnjT' \
    --body '{"ACSURL": "yWpG4WdTYW26xKnD", "AWSCognitoRegion": "MuIsFpWDznX9jr4M", "AWSCognitoUserPool": "yjHqRaT5AiZbP2LX", "AllowedClients": ["m9QG4N3rFZZYTZ3f", "lB7GwLRAt7fxA9qQ", "bGC9EIn05d1Vc01q"], "AppId": "RLqmDO1GdTOEPP2T", "AuthorizationEndpoint": "Cey9tRiXZbZDEKbm", "ClientId": "pqsV3hiemeV5Ha0O", "EmptyStrFieldList": ["m2jqn0dGql7B7ygi", "H4j5iMlyrjHay0r6", "SVxftyngPV4KlBJB"], "EnableServerLicenseValidation": true, "Environment": "6Z04TjqY5bfNQxJF", "FederationMetadataURL": "CuF5FCsZvhafvU1N", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "a1om9siy6VD8s3J8", "JWKSEndpoint": "5ubyv4cU5zoY4kNX", "KeyID": "mGL5rbUTjeZ6NOR0", "LogoURL": "79jjSOvBvbvh23nb", "NetflixCertificates": {"encryptedPrivateKey": "VsJjkkPVOLJXyUOD", "encryptedPrivateKeyName": "6VpWQ7GIq1N6TXiX", "publicCertificate": "EzDK1ltKc4fXWEwZ", "publicCertificateName": "9DIcj8n5Cz2n8N6z", "rootCertificate": "vGKokL4YS4pnxRNT", "rootCertificateName": "uUlExfKjaPjWGBxx"}, "OrganizationId": "qcTXfOkz4tlbUVCF", "PlatformName": "USLDuc7KYoFYF5Rj", "PrivateKey": "6cGg4frXqjPsbv5h", "RedirectUri": "i977WxaMCrXtUSZS", "RegisteredDomains": [{"affectedClientIDs": ["tNb8uZI3ILoRYeSd", "cO0HQDR5fZ1EhwLw", "FmSSgGXU0i4sivju"], "domain": "M2bfhDr3EPowMyaQ", "namespaces": ["Ll4yG0xgJd5vvrKg", "KQyiHcfRAO4EqYcM", "7eJHslAyJ4pI9o1a"], "roleId": "Cd0HpfMBpDNuhK5B", "ssoCfg": {"googleKey": {"FUQb7bB75TCWeOdM": {}, "N3sYzL2G41yMN5n7": {}, "TpEcKYECAU4VHWRr": {}}, "groupConfigs": [{"assignNamespaces": ["lNgR6A91XMqDQdfB", "WxXaIpQUsh0CZcLW", "DRpVgGrzo2ATyG4k"], "group": "5DhJMee4SlQGUDBA", "roleId": "sB4fbKBKZCR4UqPr"}, {"assignNamespaces": ["xd92rm0hzg4QJTFa", "EK68A72DxcEIsiFq", "sd7cP2IS5jXETz56"], "group": "kohS2Cswd4X4DZmT", "roleId": "ANYKRiq6UZctf1Ei"}, {"assignNamespaces": ["rzDkl8QFLE4RiqkC", "jZIFxgOCqx6btPlw", "25IF6O543zbB5oAO"], "group": "nKb5FdUcw2nLd50L", "roleId": "sZPHL2iKvfyNYAOh"}]}}, {"affectedClientIDs": ["DAvY03WHvT6PX3ny", "eOuXHroXW5PD2HN9", "7xOT4Swu3hAjbZEO"], "domain": "Hdm20mSaZP1WEeop", "namespaces": ["iZwlxwmAuS7uaqwA", "Cj2qGeOcTsUIx2I9", "S66bk0mJAw9jz6FL"], "roleId": "Ywb5zOmzg9ZYUh7M", "ssoCfg": {"googleKey": {"Z3eXAkpUTHbxzjE4": {}, "fAQwz1umuI3wtb7B": {}, "YzpdiCWpW0Czp2j1": {}}, "groupConfigs": [{"assignNamespaces": ["wKTnUF2ouIXFwzJD", "Abuvnuqbw9pBxOTs", "iXxYPzxQ0MZCPG2X"], "group": "1IIiUpwBZIvKAQIb", "roleId": "ZM8B2q9JzuAFKPXm"}, {"assignNamespaces": ["ocdw3gDDiQhYe7Bh", "833lrsLDtr7wFCo1", "7sDHHF2Wp0SNelxc"], "group": "dhmIg9iixJHh33KZ", "roleId": "yEoRS0HekbviRDQT"}, {"assignNamespaces": ["4D8xYCsEOfOI1SIQ", "MR0R5qFgAHX6PxSs", "8umZSILEW1a9EgS3"], "group": "IrbNShj9n4a0Me88", "roleId": "0WHAxYMVDJSrtO1M"}]}}, {"affectedClientIDs": ["eOrHsj8ZuOri0ElX", "ZyTwixxF7DTRNsVo", "qTDHQLAuh3IunDGH"], "domain": "Wk6Qj4Xfe0vtRCjR", "namespaces": ["0I4Vb7rp38DkzMxj", "Ii45iiyTAlSmNVlS", "fy6dVJftRCTNu2pL"], "roleId": "JnyqeESQ2NNyfpmA", "ssoCfg": {"googleKey": {"uY9xFwQozRhRlw8o": {}, "apEGjzQYgPatd2fc": {}, "woYebMb26ZbAb7dc": {}}, "groupConfigs": [{"assignNamespaces": ["HPrzhNLMngKUuecW", "eliKq7vI6F9DSZB5", "b8iolMX8mftl63ai"], "group": "l0x43gAlaY6WuQbB", "roleId": "h4ADoV2o6ZrR4gUW"}, {"assignNamespaces": ["w8HGB1UF05XEaBRm", "9UqyT087GVFGRfGB", "w06cypu1N5aumyJQ"], "group": "haMduej6JJ6sE2S1", "roleId": "btP2ksSDLu52PQ98"}, {"assignNamespaces": ["pOt72yhaHlPrqczm", "2ZWNmUZvctq7iDQa", "r3ocKcay0nDJrk1M"], "group": "BvyemK5prkL57yvF", "roleId": "wN8dTkQ3TV9T4y6Q"}]}}], "RelyingParty": "YtMoNwdS3JljfljS", "SandboxId": "81u71aMQtMXHs9h3", "Secret": "FDX3OtxvLkOuC6t9", "TeamID": "rEB8ToCu8MhzzPnd", "TokenAuthenticationType": "XkjHhYYnQ0k3BpMQ", "TokenClaimsMapping": {"Jq92ln37oSoMtS0p": "3QLQ5vlYO86ZF0dO", "iENQWWR9bldCoIFs": "hVLv9b18O5jcgxok", "7ZPU3pJIQ2xMbjCr": "lwtpslWLixzLfJPt"}, "TokenEndpoint": "hGkIDmV6qlzVdbIt", "UserInfoEndpoint": "87tqhvItgrfs37Ll", "UserInfoHTTPMethod": "dWUsYGgBIDKVJVY9", "googleAdminConsoleKey": "uVqx5hHH5K47B499", "scopes": ["OukSR0UEkmCiTkoB", "SVXEO8LEGN9l1cZj", "8kgZ8hNjB83G3eOU"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BZOuE1OG3zRjVCVT' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'f9Vc2WWm7FcrW7bV' \
    --body '{"ACSURL": "IkzSqiirh5NRgFFT", "AWSCognitoRegion": "vF4q2d0RQ89WEJQF", "AWSCognitoUserPool": "08vm1qlXdCgUm5If", "AllowedClients": ["MvimwjtYAyo8S3Y1", "3x7iEDPeiT9PgLmX", "CRBvNKj6eD7VrZ5u"], "AppId": "bjVwULoCKKG3VQ6T", "AuthorizationEndpoint": "AQ9YqfPmzA6Dlnoe", "ClientId": "FnznRAdkGqjelLRO", "EmptyStrFieldList": ["QaRE0ZFfQ05hAfGc", "xeBb6OgQki2kN5Lr", "QnqqwoLZVFj0BIQ5"], "EnableServerLicenseValidation": true, "Environment": "GyLOPXLolTgE54TD", "FederationMetadataURL": "YHqwcmEHHmlzvIjM", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "TeEMC5F2TImqrUx4", "JWKSEndpoint": "cgXCK35O4TXOzA23", "KeyID": "HZQr75kNjTsNZLm4", "LogoURL": "okJPlSELTa9pADoT", "NetflixCertificates": {"encryptedPrivateKey": "WCqbS9plhVoQ4ley", "encryptedPrivateKeyName": "pNw1v23pekxCnqWJ", "publicCertificate": "NtvA4dUNeYX3pty4", "publicCertificateName": "3w0zoxpsKvLW98Oq", "rootCertificate": "BgaNH4b9SfDrzgW6", "rootCertificateName": "xxuseZ5HNHiO5J4f"}, "OrganizationId": "z8dgNQ2O1DiKRLBW", "PlatformName": "LdJvg22UGIt9dL2Z", "PrivateKey": "eAXNXBY02ohZfGDT", "RedirectUri": "CbevVlF9Zv6PEk2s", "RegisteredDomains": [{"affectedClientIDs": ["E6adhTZ54t3JTBK2", "s7J0VwH8NHXThJSI", "NFkmv9Z9HOvEVyHj"], "domain": "O6R5tBoJ0oZ3bdnf", "namespaces": ["F9lncUsPjGRGyzFA", "rVHh9mjGeileazwe", "lLlFQZmPc5lRoroc"], "roleId": "vlgO4kWRKQ5Yt8JF", "ssoCfg": {"googleKey": {"cmjy2JqI3thkUcFN": {}, "LNtCFmFyEHaGg9eW": {}, "UWc6a68BUkKmMgYG": {}}, "groupConfigs": [{"assignNamespaces": ["5niMJfXS27cEQ5kK", "vx0dMX8GWYJ58eXM", "M6w8SXxEs1hUWCI0"], "group": "AEHc1L16vbMNij0A", "roleId": "nrHfT4NpJoZds7Bc"}, {"assignNamespaces": ["ZTQbE2PPe7EVdLxR", "Oeb9OtVVFsE3ySJX", "rZLMo2ID2ESlqCBU"], "group": "xGKjLZJ7v5OtPg86", "roleId": "pioin45yv51fSumC"}, {"assignNamespaces": ["OIkkkN7svQQrEszu", "OCssLAGUNfaoHOup", "RthUFyAy7P33yDpt"], "group": "n5K1AhdfsGUnF0v6", "roleId": "FEsCaAWOFuZfLi3E"}]}}, {"affectedClientIDs": ["AdfQ077wl6cxVm2s", "28Lklf3CtM4u2LhN", "iQeoBPC1o7780IQi"], "domain": "Ze80LXxk2btF9HdO", "namespaces": ["yoxJJOFWur1TWopq", "tu3VP8eoSkDKuU9H", "AOUsVTVlerAF1Ehe"], "roleId": "n8oUC3KURrlCZrUK", "ssoCfg": {"googleKey": {"9kHfOUEvaKbmiNEo": {}, "oa3ZzyusoE1SzFwt": {}, "K1q8dV8zlbQFNxdf": {}}, "groupConfigs": [{"assignNamespaces": ["WkIPZtUpv22TD1rZ", "s3D8TlHaF4ffjhAb", "LD6MC1gPDXQTx31O"], "group": "Zi7p61VsubITxKOL", "roleId": "2hGnjQyDd1yZ9fjK"}, {"assignNamespaces": ["5QGfFyW8d6aXpQXF", "7Vcz6uaAbSTqCq9j", "SOwWa7oaRwQkSAkj"], "group": "TqPm6olyb5rcjOk2", "roleId": "XHIVGdMqfkCXQM6b"}, {"assignNamespaces": ["s1S6LS6IyfZA8871", "S4zTdycA6obiUFDd", "b0m4d3ZxUCpEXQ2V"], "group": "mTKsQIM4vuoryqzA", "roleId": "yViW79AQ5I6wBIFM"}]}}, {"affectedClientIDs": ["kwnk6aF3S8tNQ9Uf", "AA5yGtJMsk1oPEUq", "cUnooO2LyILQOESR"], "domain": "lHbfPXXl2nwzxV2B", "namespaces": ["cfQQoYxADLd36SNu", "DTSCJWdantqpY2Fz", "6Biqry4WFtYa4U1W"], "roleId": "WhyEo44DCnHDmzuQ", "ssoCfg": {"googleKey": {"dzRm1133By3a3SC8": {}, "Sao7n3XSAxVDjcS2": {}, "Ei96gwXMJV5KBCo8": {}}, "groupConfigs": [{"assignNamespaces": ["tqSsv6JrgHKSqNSY", "ymD1jYMPRrQHUwnu", "WezZP9ZU7yxq9I3s"], "group": "NRQQ8onR8CdM0pnq", "roleId": "OfXcj5AOgdcyoCxc"}, {"assignNamespaces": ["uuQ1UjP3tvTaIEm9", "ZZMUvy19KubrxkcL", "kzCtfB0iywp6QYSc"], "group": "A41ErxE3BXiACEGv", "roleId": "qh8jjjanDjxX0kEd"}, {"assignNamespaces": ["4saSblhPam0drkzH", "kexQRofTSqWoKgXh", "fEDEJ4ywNq3KNwe7"], "group": "DGjKqRLz658KrrPM", "roleId": "QlzXUf1HB6eBA5gC"}]}}], "RelyingParty": "Z5gFjVzhXZwfZ0BE", "SandboxId": "8TdwBcEMN0hTiHXj", "Secret": "RPxHIDAxKp8szQri", "TeamID": "tqv3u3hxZ7DGnxG0", "TokenAuthenticationType": "cguHaNoBoBTrzj1C", "TokenClaimsMapping": {"DGBFrhn8MOSnk0CL": "0CVV48W8KYPdRsRO", "06CB03qSWcz49fFt": "3f2jv10Dl5jHC8rr", "GRbaurcX7cXCTDzG": "grHE73uSff5ln3qv"}, "TokenEndpoint": "AWLl6hbBtP6DFeSL", "UserInfoEndpoint": "8P1IOCWc6bPZGa0R", "UserInfoHTTPMethod": "LGCYSnua4ZssPP3r", "googleAdminConsoleKey": "0dEa0ERruk9MY5TE", "scopes": ["Nt3Ek4pwUMJRaV0g", "IL4oTQfMKsmp6H9j", "j2jdP29h9YbUSuoz"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'puiXGBMO99bId9e4' \
    --body '{"affectedClientIDs": ["q7WxGxsbPbeMUbDi", "HmHyK6d7SdEOGDig", "EJqkqnskb6ujFmIF"], "assignedNamespaces": ["Q1Sst1yLf7vJHLox", "fw5ecfmGnvSugAUc", "OkQqwUNYQ7PFtTLI"], "domain": "frtbbD417KXERWij", "roleId": "ZBHo1ix4YMKwtXNx", "ssoCfg": {"googleKey": {"4MTBinmXUIJJdt3c": {}, "05t4HGzB73zXEbS1": {}, "efnHJ9dXOB3qPQ6E": {}}, "groupConfigs": [{"assignNamespaces": ["tfyld2OlwvVAgRdo", "l8Iy3mABoTRkje0x", "Gif1SfGncUHjQvs6"], "group": "amSdMdiIUJA9nRvX", "roleId": "D6o7N4wBa6CLBoMG"}, {"assignNamespaces": ["adDhBfEVb5KeMkl9", "giDuAL5Q2Eo0xWMt", "p8IQ81GB5W9vaDrV"], "group": "0dw73p6hpf6Z6uUp", "roleId": "8xzGw0MbYTZ69ryo"}, {"assignNamespaces": ["OArVzmYP48Oi4WVI", "SbkFDULqxtRhJtV5", "4eRml93hClvCgNMK"], "group": "zEH7oFMb3QlV61Vn", "roleId": "hQCz7t3QAsiPe2MW"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'O7tcx42vKdrO2Efv' \
    --body '{"domain": "DP8oEn2TwmgHkbIG", "ssoGroups": ["HQ6jIQ8rezwsIyAE", "IDT2380X2FAecZr5", "vIeuunWLkWP3IEUl"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CWpai1F9GgUBUtnJ' \
    --body '{"affectedClientIDs": ["UiCwxUy3Pg4Z5ylm", "WEsut1PgdUE3uY9d", "DMEJ5gD2QqMok7li"], "assignedNamespaces": ["09snC86G8x8848OJ", "jJQgtMrjOj11SHc4", "V6WLqJhEGIcgVy33"], "domain": "ZbbKSITW7oUeTIOJ", "roleId": "YHXWZEUY6LhfMCyH", "ssoCfg": {"googleKey": {"wt7fVGAOTMoPkESM": {}, "usGE3usPUGWS6INe": {}, "OdEA8JeRGqrHNnfp": {}}, "groupConfigs": [{"assignNamespaces": ["mCFHUEjavTJJKS44", "14CtaHOKFokpEqDk", "YT5CeQMZE9GWVvrH"], "group": "5ospo3Si4dr2NQxM", "roleId": "KRcRtUIbbijkP27t"}, {"assignNamespaces": ["YnPUQRhgEUYwbbMu", "knc6gsoPnNKGDJs8", "LPBHF6yAnXXL4hyW"], "group": "Iyf3wou8YxrLm4nT", "roleId": "B7sYjRmxO9WqOb96"}, {"assignNamespaces": ["epq7QGtm24cxF3uY", "iGaMLwI0EHM4v61i", "DsopQzqKr1Ufx7nb"], "group": "bpsgdTVycYOcz5Mc", "roleId": "aPvLsncphCtUGjj3"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'KRTNytCwo1678IPR' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'FjJTyqv2LdK2mc7m' \
    --body '{"acsUrl": "GRZ2DjX6m2Q6LQmi", "apiKey": "EDzVKhKHQwGi5OWE", "appId": "7PeZ1eCGrZfOZgLp", "federationMetadataUrl": "VD5NRjpcIUr0PhZe", "isActive": true, "redirectUri": "qMwhB5Z75wp8DTdO", "secret": "QZNIozQRsrpSYobJ", "ssoUrl": "Mr6tDhCcZAzi5NgN"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '59SfeFZtpSuNemRU' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'BzCcyyV605y7KfFF' \
    --body '{"acsUrl": "Av2lOqcId5rgdJ8l", "apiKey": "Za8zifCG5A6CXc9u", "appId": "nd17ae0CQndIvuuK", "federationMetadataUrl": "skhUHnyTP0161mjA", "isActive": false, "redirectUri": "Z2yvQPVcslapqgoW", "secret": "sl1sXfIWjjuAh4oW", "ssoUrl": "LS6JiT0OKWakqb7V"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId '735Ukhqs0ndxQQq4' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["qhn8xbNb48QFDUzY", "FZMqWoZadp4T7RCI", "ZuJjbt77TvIe6BAA"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0tf8qKcw1qnuNk7m' \
    --platformUserId '1xKqMkguoRK7Ccl8' \
    --pidType 'QpT5cK3yRMobs7Zy' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetUserByPlatformUserIDV3' test.out

#- 155 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetProfileUpdateStrategyV3' test.out

#- 156 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 99}, "type": "V8Y7bxXSLNv6Ut9e"}' \
    > test.out 2>&1
eval_tap $? 156 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 157 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 157 'AdminGetRoleOverrideConfigV3' test.out

#- 158 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    --body '{"additions": [{"actions": [61, 75, 24], "resource": "oOFVpkxshL6TFRR4"}, {"actions": [71, 88, 35], "resource": "n1IxoRdkwxbsTZt2"}, {"actions": [8, 6, 90], "resource": "4FLRikBfnQBwESxq"}], "exclusions": [{"actions": [97, 82, 11], "resource": "FoCWG7pxcvwOv1s3"}, {"actions": [45, 58, 69], "resource": "yN8xdBXvAZXxnvYY"}, {"actions": [89, 97, 44], "resource": "NoDshg1l336n0SjE"}], "overrides": [{"actions": [17, 98, 85], "resource": "aZ71Wvl6HciTHQi2"}, {"actions": [2, 51, 15], "resource": "D2Kivx8yqTomqKTJ"}, {"actions": [52, 13, 65], "resource": "oEiUPNWiJsFPzuMF"}], "replacements": [{"replacement": {"actions": [24, 85, 71], "resource": "TWCS8a3K2sz0yq3J"}, "target": "KDL2I101pKpOAjaO"}, {"replacement": {"actions": [8, 28, 70], "resource": "vNnPctpCiHm9EDbH"}, "target": "O4sjyAsqBbQQrfrW"}, {"replacement": {"actions": [63, 74, 71], "resource": "FSfRmCJiMOMf5Jrp"}, "target": "FCK6HkwMmuMfVuhF"}]}' \
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
    --identity 'GAME_ADMIN' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'OOkD61Of7DG1qgro' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'kKfizjryPf08IDxT' \
    --after '72' \
    --before '66' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '97' \
    --offset '42' \
    --tagName 'eXzRna3bZowwv9av' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "tL2w8O78ld6t7EF4"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'JBSXiEbsIU7WSEnd' \
    --body '{"tagName": "C1uqswGSictSDotV"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'HLYWSLBa14u43HJO' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'ZgKBDg0OOQpdgBaK' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["tERqhc9VeKxeks9v", "EP5DdtuWAmE0n8GL", "HPLSG2747SwNjuU3"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '9ZviDUSkkFlHEo4Z' \
    --body '{"bulkUserId": ["sH5xyRRQ5rzhfAik", "E6hCDzsrXs1T09p0", "uwZx3MMu5sj6vbC7"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["zwnOPIRZuoMpObxk", "QaBClDpK9m9FreDT", "TAABtJTYZZOMksLg"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["mqlf0SSfKDNPJfbg", "ZEYMknMOY3mcMrKn", "W0GvKsNwsY0RahxD"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "DJXyTBcioMAehbmg", "userId": "F6VqGwgJUgOmK0cN"}, "fields": ["xneIXcyn30TJrJVz", "yqtd8Dxprsy27HfK", "ROf2D7IL3N9vO3Ll"], "limit": 7}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["E4ZSZiWVuipR04I0", "SGeG8ollO1JM1EWS", "MHmw0v1r0SfXDvlg"], "isAdmin": false, "languageTag": "MQI0XGQaufTD5nmb", "namespace": "EWXYNuMKK6i60NtX", "roles": ["M5fmeIoINgnju2Aa", "ySg4xplbifNmlEty", "Jhhq0vadOCAE0Qzl"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '32' \
    --offset '62' \
    --platformUserId 'jup8i8yRW1QCjHtq' \
    --platformId 'mjlLwl1uIXtmhlpN' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '1' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'DhZTjyXjsnPQRI6o' \
    --endDate 'tSR4tpBIvYjTggxy' \
    --includeTotal 'true' \
    --limit '43' \
    --offset '89' \
    --platformBy '3op15SvS2cXqXh86' \
    --platformId 'PTMheLcsailYUiBe' \
    --query 'NoEWLKt10wPhuCaI' \
    --roleIds 'iDXuyZM3b2RgAKT2' \
    --selectedFields 'PZl3NFIm3RDN067h' \
    --skipLoginQueue 'true' \
    --startDate 'YkLlAmCCnYiINsMZ' \
    --tagIds 'WpY8gmFczfBr562z' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["jtUQWeXjoAbuxJPi", "IShbvTbfVf6geF6R", "e6WNieJvtOZR7chc"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '53beCMIjqwmniVnY' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xCyY3LLrs5O62Vas' \
    --body '{"avatarUrl": "iatf3ZXBZts5NetZ", "country": "gqw0y0KerUlg4ux9", "dateOfBirth": "065betgHTk83eF8u", "displayName": "AGCe4qhM7ANBe2df", "languageTag": "trLGcmf6T6x3MEUj", "skipLoginQueue": true, "tags": ["pOs6K1KOB9yUHvnv", "Gl0CzOUhdrBY64kt", "zcWrKjfmHg9wFIvF"], "uniqueDisplayName": "E623Q9jnb9XexfqB", "userName": "68iQl68jakzSjfhe"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vjZzYp4cg5jijvO1' \
    --activeOnly 'true' \
    --after 'RNC7TiD7uQC2X0aC' \
    --before '51noTYlt8XytdERz' \
    --limit '68' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'itu9hh6A2x3cnAj6' \
    --body '{"ban": "tkMg82QjTsQqlUKg", "comment": "MTcCxXZqsWDoYEBD", "endDate": "X00TPlysgWNQYcRn", "reason": "olEjeRK6Vwp7RUnQ", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pDrFYxZzw7lkF37t' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'FkKTCSK0VuKz1hDO' \
    --namespace $AB_NAMESPACE \
    --userId 'A7VrpfBRuLISxriI' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CBvve7vHM8N8X1jN' \
    --body '{"context": "INIj2xukxxjVVs9r", "emailAddress": "OvydWEpTb0kZQssw", "languageTag": "G2xoi2maljHBIlHg", "upgradeToken": "ouJw0WLFhJ9oGvbW"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '5uaPo4lcjWzQ2F0D' \
    --body '{"Code": "U0L8EmiA7v9WP8hg", "ContactType": "cUjDPVoDif57FMMl", "LanguageTag": "PDxkC4wuP1WXOyxL", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'ix8x8rnXlPjujtA8' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'WHQIlT33yvpKsVPB' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'umpPRxoUE2YooaHu' \
    --body '{"deletionDate": 39, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId '9vJrhT0AlUnoVuZ7' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XzURGbPTzstDTLnA' \
    --body '{"code": "64mYx5M4gZ9GPfcf", "country": "74RIhpVKDmPMNTeI", "dateOfBirth": "74E6STsYQpJXRLA1", "displayName": "xnnllvNIr1vlk0ZP", "emailAddress": "MKPMsZLu2jDsyAMS", "password": "ApvTVu4CLVvhORjo", "uniqueDisplayName": "x4ft5U0exGjLVpf1", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BWo5BeSlwPuLuf5O' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '7s8BMEK33dNybI6X' \
    --after '0.5833455857295002' \
    --before '0.21740048278074853' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jrfUsx3abByumRbJ' \
    --body '{"languageTag": "q7bjP7mXzSaDLodU", "mfaToken": "6n3ZvCa6Z8SSV5ad", "newPassword": "nJNIrpeu2HGFtL8V", "oldPassword": "86C67Mcu6RmZ5ZCo"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dGwRO3lpIgNfL3td' \
    --body '{"Permissions": [{"Action": 0, "Resource": "TLHHBM1zoRlhidR5", "SchedAction": 42, "SchedCron": "RheRiy3wHuKH9dMt", "SchedRange": ["taSH7CPdJelfZNDM", "1iPERBg8l0iY1TpL", "5aTXDcp5aRVF6lan"]}, {"Action": 84, "Resource": "JDFkoC9Wfl265k6x", "SchedAction": 11, "SchedCron": "Hg2oCZuRBo8Hqxrx", "SchedRange": ["hCPnlkvgJhNLQayB", "fUIBuKjpn4fC27Yy", "SYBMftXVg1LfLZtw"]}, {"Action": 80, "Resource": "1PRYkjAdIBl2LaBu", "SchedAction": 49, "SchedCron": "HYmrOTKQ2VEIwApQ", "SchedRange": ["YKV58bJEIA4Oj2mR", "dn9rX9aZJTjgzXF0", "AuYA2UrmNZ98sown"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Lqoym5aOvI5Xyc0W' \
    --body '{"Permissions": [{"Action": 37, "Resource": "5NBVt8twx5FfiTJA", "SchedAction": 19, "SchedCron": "CfUK8D8paUgTBCK4", "SchedRange": ["3ylsNY1kYxegsMYz", "epKpjYpzj7wkzej7", "llIFVof0q7KSu9ez"]}, {"Action": 96, "Resource": "PhebCBDy6dbsdh0d", "SchedAction": 34, "SchedCron": "K8m4UTxoOEOre6nW", "SchedRange": ["8zZRu5O0FcU0XpGz", "dqu8JVCLtyCPn97Y", "egJOrBSVuKN6Y10s"]}, {"Action": 72, "Resource": "WWMpjvk1fdXeAimT", "SchedAction": 28, "SchedCron": "J8ZEV4oex2Kmsy59", "SchedRange": ["qZ8tIUim9nIKqPxr", "WVcHm41F5sZOCv5P", "V7ce8PynDdjN4rdE"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'r7Asaga51X04jdED' \
    --body '[{"Action": 44, "Resource": "XuUMRiRwUD9Nmkyy"}, {"Action": 42, "Resource": "wsYdHnygahGY9t32"}, {"Action": 67, "Resource": "wyrJ6ZD8YdpMoXUI"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '96' \
    --namespace $AB_NAMESPACE \
    --resource 'He3CdGiFrKlU0G40' \
    --userId 'ScDSBOuAx0AQ2i9O' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '7u5ovUOaRoIpZ9TX' \
    --after 'O5iSTlMt71zTN1Zg' \
    --before '5rHv2nyjs9knVixe' \
    --limit '92' \
    --platformId 'WgkLfiHfS9AC4Pys' \
    --targetNamespace 'JchmqLOHhDiEO2jZ' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '2DT2Q44yws9gSJl6' \
    --status 'FJDiVLgAjcRO93qU' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'kGhiy7kKKqDIA8AT' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'gQsLwau0Li5ORbR2' \
    --userId 'TdFcE4BCv5VuM3Jy' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '1AHzHVv4fItX8XFo' \
    --userId 'gwp0quU1aih5VWEZ' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'RQ9O3NGTHdBdcDpU' \
    --skipConflict 'true' \
    --body '{"platformId": "pDMa0aZ4oGXR0YIO", "platformUserId": "Jhul5zvoaX8Ww3D4"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SFvuBJBzuu829gqC' \
    --platformId 'NwPksHssw46TPK72' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'KUMdXbQfvflVhpJf' \
    --userId 'bmGNo3IBzMVzhc0E' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Oh9wqlEEUTjwB24s' \
    --userId 'c8ooOakq56ICaTcm' \
    --ticket 'ObEK57SliXvrQLAL' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZXPXxHJL4JWTJLwm' \
    --userId 'oEK9fWiDVmRzrhQx' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1aUWB3ldaFeyRwc4' \
    --userId 'lMU2FV9cvitoyki3' \
    --platformToken 'P91dEf45bflv09G4' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'eYvYKg4Xw6cDvaU3' \
    --userId 'eRR6E3BdN85YBZ3b' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NTiqWeGwqs1Blvta' \
    --body '["KRbSR3Y3jZrcPy4I", "TloRbpk2unU7TyK1", "poM94JfrClpeGewS"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'F16QqiMUNUMR4a1O' \
    --body '[{"namespace": "GXANfhDfkhkGaC5Y", "roleId": "j4oioseYAepcddBv"}, {"namespace": "kV7NOnyHaqQZAnVV", "roleId": "fiVmsBbiHF6X1j8t"}, {"namespace": "T12b6thnJntcFi3t", "roleId": "lTt6k3XAm6yryQHx"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '0Z7D9Cl78T4d4hiF' \
    --userId 'sCIJYiSCG1LyIr9H' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'tLeNJpFOOaDJ074u' \
    --userId 'AYODRjZYAGBvUSzD' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId '1Eo4besUcEje7pyM' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FY73Svr3OKKVZPpK' \
    --body '{"enabled": false, "reason": "PlZ6xyEQDPb2gaHI"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'OZNy5hSLF0UjLh0F' \
    --body '{"emailAddress": "k2ebbQNYn4vuiBmy", "password": "FhcTcHWgeuDA6R3j"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'foCj581VcqvbGTSs' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '1MnFThwUnjzziTW0' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "EToeY0OVCGPqJNPJ"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'U3jO1T7bx5AnM4an' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'rAdZvwjodiIiZdpS' \
    --before 'aIBmVFdc2GSQNPRb' \
    --isWildcard 'false' \
    --limit '42' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "managers": [{"displayName": "i4TSfG23G6fS8SUd", "namespace": "AkZVwm1DYJ5VOknP", "userId": "MRDkCqdNBGctT3Z1"}, {"displayName": "O3ex1NFfPOXAU2ZK", "namespace": "cGrTacFhmytL5qow", "userId": "ZA95GnbYNs9tHbtc"}, {"displayName": "xXRKRr2fqHWF7Q8x", "namespace": "WD8Q7237KUoxN2TS", "userId": "GoBQ2pWqslbA4C0P"}], "members": [{"displayName": "Vv9T8ojaUrH4Do5Y", "namespace": "EVG5wj4c2YtXBihh", "userId": "Wp6RXHvX0wOGVyip"}, {"displayName": "uZfHondM8SQLeHhJ", "namespace": "RSY8Wp7p8J61p5DN", "userId": "Ct3h91sUx3pTVkw1"}, {"displayName": "rllwntm8b2ADypmy", "namespace": "lRPNNfxAvCG99syI", "userId": "iaIEIhyY1F3pY70g"}], "permissions": [{"action": 41, "resource": "6c8p8wBxk6sAVNnJ", "schedAction": 97, "schedCron": "Bn4P4yGVByFMwFKD", "schedRange": ["2hUTeDVQhDftKWj5", "HAROwYnS3KtZr7yV", "LWB5iW7mybYFEZzS"]}, {"action": 79, "resource": "BPacDzkYDEw6IriD", "schedAction": 80, "schedCron": "p6hb3B8Jq2k0v9kW", "schedRange": ["hIIFSe1wSdC6jc9D", "7wLcDsRi5J1d3zD7", "VmGyvA6sB97q5dPi"]}, {"action": 49, "resource": "j2KdQwvbNiBgRp28", "schedAction": 67, "schedCron": "xycSG6v9QhvHqKFG", "schedRange": ["zPaecFjqZVlKRv31", "NBzjGsmkQcMlCJp1", "VrrmLGTDxtf6lfQ0"]}], "roleName": "LorFg2TGl3diT7ar"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '5nsmnF7A0xLtaYx1' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'K2hablwWeZpYl9dz' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'XJqgucPoyyRgMTN4' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "YcHeXmaceDtEAmkq"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'MRoinL3lJjYF5pDu' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'K62rOScwrIcNpiSr' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'hWwyX8374aQkARXS' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '0Ya80BvCnRJtEfUO' \
    --after 'SkQ8f0xMpCRfOfk3' \
    --before 'ePZAlvhXnS6qY6nd' \
    --limit '70' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'jx41C9dRD4JTmgVl' \
    --body '{"managers": [{"displayName": "zrBfN9YoRRd29e9D", "namespace": "PJVd4zSa6Xr6Lg5K", "userId": "FkUrP3dddxn22jx5"}, {"displayName": "9QgRNH0SXUmwI2bi", "namespace": "K63WBFGiy01bBEwE", "userId": "p7VOqZgEFlVBQL4r"}, {"displayName": "8sWetyoHZWYNKp6S", "namespace": "xsoYF8CtvXLZce3c", "userId": "hxyZxWZ4bDguhf1o"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'quZKcQ83GnaOKcye' \
    --body '{"managers": [{"displayName": "U04bsZ3dHGqlmMDH", "namespace": "YkMdwtYP0axDcGPh", "userId": "rMeLg74h3g0AFPG7"}, {"displayName": "1f9ILr7QCVDkKGYy", "namespace": "ZAsHEi0JbbOoQwi1", "userId": "xKDlTwkC3vNAMfL3"}, {"displayName": "b8A9Z2g6KCe7vQis", "namespace": "O5ysI35HivPp2omT", "userId": "jpaZjSWJ3lZ3SqEn"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'vX6PnsLvIulH0QHW' \
    --after 'T5022SxTsdFB34Dg' \
    --before 'RUYa26EqdqZcyO35' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'Aw4tEInib42Qmflg' \
    --body '{"members": [{"displayName": "iyEv62q31w2Aquu5", "namespace": "VvzGcMrixPLd4l6B", "userId": "OjjMHD9j1oQojtac"}, {"displayName": "rIze87ufIOK0W8Al", "namespace": "bIgelkSzhiWVHX3W", "userId": "KWqiU4lXfqyXNkWj"}, {"displayName": "QQgttsQ1SmldTSEe", "namespace": "FMrCCMurpSmchxqo", "userId": "AtEAnlrcAENSfUH0"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'WJB21SfzSB9rYhgQ' \
    --body '{"permissions": [{"action": 95, "resource": "Utdry0WxCguIVhDR", "schedAction": 95, "schedCron": "a2pIzmngdJggnPll", "schedRange": ["HpkRqqqsN2aqVWja", "AKa54NgsikfoetMZ", "q96i3hEok4sfpanG"]}, {"action": 82, "resource": "ILDmVSf3QlihMFmg", "schedAction": 28, "schedCron": "TdntzGEyrLosqBAS", "schedRange": ["J3A7cLfsUXCLbcFc", "AbocxzfZsJmBxtrq", "ZHUNBFQiS6hbB6s7"]}, {"action": 10, "resource": "j14Lzq9nV4MO1pMc", "schedAction": 12, "schedCron": "nAKSYFDmnKJn8Qg3", "schedRange": ["7E3fdfhuXdKWLdy1", "sxmZsEKi30qf00xV", "pqc3bkJp5ZmkYSas"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'MVKb14cj7Llp3st4' \
    --body '{"permissions": [{"action": 54, "resource": "7MvWm45iNNiHKvIT", "schedAction": 13, "schedCron": "ExXGwgjUQ1BpFH8x", "schedRange": ["LbJagpFElFDoIU1f", "WOWkXwbIvS3fdz7N", "p9PKAcacQzdp7SYd"]}, {"action": 2, "resource": "5TsgCm0c9dWrntwX", "schedAction": 66, "schedCron": "uapxbFGb9CJuNB4T", "schedRange": ["jLbYmudZKi0snDFH", "vd0MWs6GPPn87rbS", "YoB3nAEiOu5h7lcK"]}, {"action": 22, "resource": "qbhCB1nDgjVeNemd", "schedAction": 96, "schedCron": "ht5AonRDWhaJyDCL", "schedRange": ["zBuTlPhUSwlvToZb", "5Eefnw9shJLGfa34", "nR7tSOXi1PpBaE79"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'J5awVsESbva9vbbB' \
    --body '["wYunxKB5QYUuQtga", "Z1wGsUQtN3jnptEl", "DnXHeh0usJN7O0Cx"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '4' \
    --resource 'cpL2IiKH0U6lrd7i' \
    --roleId '3Ga2iqeh0Sek8jVs' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '3RJkmXl0hHotUGrW' \
    --extendExp 'true' \
    --redirectUri 'Knxx3qXCXYy0x2hn' \
    --password 'D2v4LvgL3R0Rwo3K' \
    --requestId 'MPSf2sRe0viSnlPC' \
    --userName 'AoFkOUuGzFBA9lNW' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'XnXdUrHWGUitPxmC' \
    --linkingToken 'sylKYlSZd1gH4i1c' \
    --password 'SIr0qGkw3IYUp1Cj' \
    --username 'lzejO4pzAjemxaHu' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId '7gtcAPk9IQpJ1uCX' \
    --linkingToken 'UDD7Wu0AbLb1bHlL' \
    --password 'bVQP6gqd58FLcJ4e' \
    --username 'GtBjILbiKXWoGBtT' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'PhxKoSsME3vTa3cY' \
    --extendExp 'true' \
    --linkingToken 'iaJDFfWSAPSDuX5e' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'F8IsH89DH0mImjjP' \
    --state '1tNCzWRBWccohRGb' \
    --platformId 'btbnQtiPG7kwBsnC' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'mw98ABJNQcU4b5T6' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'e2ttb2loYo9US7ZE' \
    --isTransient 'true' \
    --clientId 'ZiwL5zgiJIVodThX' \
    --oneTimeLinkCode 'wU9NEgPi7za5TNKB' \
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
    --codeChallenge 'AWNR7atr9dcPKLgf' \
    --codeChallengeMethod 'plain' \
    --clientId 'uzYNLauUVHoC1EQk' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GNTnYJENdnapvEGC' \
    --userId 'saevSaBJZnN0hOZr' \
    --platformUserId 'jDl5NV1cBnbqWg12' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ooQaCMu5obwFn9zv' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'ej02y0ww1sZDNqiT' \
    --codeChallenge 'SBA7TRp151VspzdZ' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce 'Q60z9gdsDB0VZmXV' \
    --oneTimeLinkCode 'd8jOrSHGjkYY4mwp' \
    --redirectUri 'llP6q0JCHHWcEGez' \
    --scope 'QvZRLOKzEaDzMiKP' \
    --state 'fCNTcMFkQnRjzLxR' \
    --targetAuthPage 'VXY512F22LmvjJfE' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'jeyuJTwjWfDqbcX3' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'kZPzdQ2arwG4TLnv' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '4u9c0iIg99jmtqkD' \
    --factor 'HyJ81sLspLcpQoaN' \
    --mfaToken 'DNQexpcSU29ZuNrP' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'uOyggTsV7H6BviKW' \
    --mfaToken 'NAZVQ93j4sBg6uhI' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '8d8epjf2Hd7CWMOm' \
    --factor 'lgpG2pd2eX5vuEqN' \
    --mfaToken 'z43EDgSbjNsjo7kT' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'NLWyCLQb73UdsebJ' \
    --factors 'JkhUSkTPaMDprty0' \
    --rememberDevice 'false' \
    --clientId 'lzTXFy1aeg6jnttp' \
    --code 'eNp3V1N3aIJ7q1tE' \
    --factor 'CW8oEEyKxVJAifjo' \
    --mfaToken 'KxOdJmN7q4FUUGhX' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vd2KNXwzbXd4GXh6' \
    --userId 'pnZil37b05NtphUT' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'UauypsaICTJ4dLjq' \
    --clientId 'Bpt9gibnGIc7FRkc' \
    --redirectUri '7yEMmHx4yfPPcsSa' \
    --requestId 'nF74Lv5s2ulQjPUo' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'SuXJIve3mPRrk0vD' \
    --additionalData 'ymE0gooIVkxjVge1' \
    --clientId 'MEUSK9GPdHqfdyqS' \
    --createHeadless 'true' \
    --deviceId 'pGLSAZW6TDAVFdom' \
    --macAddress 'XALc9RQGgXwnHNTc' \
    --platformToken 'vgHQXr8wQ5hTpakF' \
    --serviceLabel '0.0434400261950586' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'X0Y0AcFdFMQb7COd' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'gRKKuOBEZZCb2Yc1' \
    --simultaneousTicket '2TFu6MUG4CR9QdIp' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'NOCv4XEnIssHw8d7' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'faHsXxA137u0M9km' \
    --clientId '1isMhE7vEIlXh4Hv' \
    --clientSecret '361qQrJk5hltsWPG' \
    --code 'Y2vc1jTNZzRO2LMV' \
    --codeVerifier 'HbIcw2fhDRPvTmlf' \
    --extendNamespace 'V1PNa5QT2XeEcCpR' \
    --extendExp 'false' \
    --password 'LXRqoeVHQXnbPAuN' \
    --redirectUri '6eWYGNIkd04bzmTC' \
    --refreshToken 'HW9y377Lu3Op5T9W' \
    --scope 'NNqH9ck6CPmbbFwG' \
    --username 'g7Tc1hcJGkuCAra2' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'u6CdRTKo64x1n07P' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'D6wB5gsaGVnnugqE' \
    --code 'rjIL4ocJvJp1n0d0' \
    --error 'yNpuaL6Fi9IKIQyE' \
    --openidAssocHandle 'bZ2XRdRZtspk8hdW' \
    --openidClaimedId 'ZPEsBWhlheIiFqir' \
    --openidIdentity '5e02e6VeCoEUqQCg' \
    --openidMode 'pi4WMndESM7Oi10w' \
    --openidNs 'tNyQue6WEqgSv7Ud' \
    --openidOpEndpoint 'swGbxICfV6RYy8Fj' \
    --openidResponseNonce 'ZINZOwhVXB5DgQff' \
    --openidReturnTo 'OiscMvyXvXKK3K2g' \
    --openidSig 'MoK9wmQlNNKuJRUQ' \
    --openidSigned 'FZaZqJZAgoBPQZJp' \
    --state 'SXAcLDiJs9nXFlsQ' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'PgTIcUJbffbfbCm8' \
    --platformToken 'I74O5MQuSoCZzI3X' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'yHgYP5FAHRkhorN2' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'lSUxxn7sJttcCGNf' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '1J5eXZhtYV1lJJLI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'ZaSGvIda19Ce7YIR' \
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
    --clientId 'coahg61Z5aIaJ4bL' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'country' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'iJuNKxAc3b5hJQK2' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'rnlYwNE0wg6HiA3y' \
    --limit '30' \
    --offset '13' \
    --platformBy 'Nw8d4eNezPm8dDAp' \
    --platformId 'p2uAjdgNImA59qTP' \
    --query '3eXg8GOLvSgvaFw0' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "LADwUjyzWfL7QGi8", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ZAqSzmgtvRdghDiY", "policyId": "exhQiRNthKE1tEq2", "policyVersionId": "bPBq7xrn5NodFJWm"}, {"isAccepted": false, "localizedPolicyVersionId": "7WcuPdMTYT4uhWbJ", "policyId": "ZYoTOo8KDFQPhH2Q", "policyVersionId": "3Pu2FNrmKmVlQF86"}, {"isAccepted": false, "localizedPolicyVersionId": "32RMoaItvDZgtaVT", "policyId": "6tMI7roOp7GPFCng", "policyVersionId": "BVzEb6h6au4F06vP"}], "authType": "fNs8YqvrTmHSSZGz", "code": "97tdQuItHaDRy0pi", "country": "PAfVIt3VoGyJ7QBr", "dateOfBirth": "7Vnd6qau3kKNtliN", "displayName": "rqWgtpI7xq9qsW8r", "emailAddress": "mO3nHiOdhg0KnAqS", "password": "XbW5S7hOu2DEcAEw", "reachMinimumAge": false, "uniqueDisplayName": "DbS19PZWWNdm9lvQ"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'zK1gh90eXN4SFVaq' \
    --query 'GVTpuGPAvduyzBhA' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "UV8ErOptMPScnoJ7", "languageTag": "FLXBz6wXzN0PiRxc"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "TSNh5ZXsoZZ2sU34", "emailAddress": "GJwxkXGMHfB4SNld"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "Evtoh5Jwb1tbxWIk", "languageTag": "1qO6Te1uS672Kx9q"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "kbYvF9wapHk7q2aw", "password": "8ZxtKiReadYQWrSd", "uniqueDisplayName": "xzjlwpG4Da5r1q1j", "username": "dp97UCP1TTpmBvaL"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'vQHsBkIFYLWImr9o' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'x5w5AOyaGOVXLDz4' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "AkFbUW4S0NIiiDSB", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "JLgDM7xhgNvWTWdW", "policyId": "coRCRAx9sV3kiBdG", "policyVersionId": "R5c9D3wizgVkt6kt"}, {"isAccepted": false, "localizedPolicyVersionId": "doxlGdcVeT4TGS6Z", "policyId": "Gt81LS5GQOhJ6vWs", "policyVersionId": "SZJgos62khlCfin7"}, {"isAccepted": false, "localizedPolicyVersionId": "7gNr9XhxpGfcW9Hc", "policyId": "o1UmgAyIVQ5YCjlp", "policyVersionId": "Yg9DJv8XFy6T92l9"}], "authType": "xD5LRWTScsvn6HuB", "code": "7ZCQp04gZpGpbef6", "country": "1f8uwj8o2a7JCqmA", "dateOfBirth": "gzIb5ssFVVVtaR8Q", "displayName": "Z8pSjA6FWOH6lRjE", "emailAddress": "RVPeuU5PfbaXPcEP", "password": "jXAJzKNBbXMaYMu9", "reachMinimumAge": false, "uniqueDisplayName": "ui1IBNSRbLk3WF0g"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Cp3UPFbaDClVvqd6", "country": "fZz7DSuRFSn9QMMN", "dateOfBirth": "njSvnC8evjDiHwrz", "displayName": "OraLqHtHpfcRSr0G", "languageTag": "QSYNu0OWsFcxxZrD", "uniqueDisplayName": "veJwMbIQer3VTtNA", "userName": "HcUwHgykco0FxM6N"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "k8XymQyyUsINBxIt", "country": "FcsAV789RtkZZBVt", "dateOfBirth": "5fGoU9oKoBPZ8WcE", "displayName": "TfRKgkOtViUUTQZS", "languageTag": "H8tqKMOz4SfErdC1", "uniqueDisplayName": "iIcAVGErV8YFm18j", "userName": "OydMWaAVN4eeoU03"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "tNwmTmQG0Q66EFYw", "emailAddress": "cJpNeAemgvJX1bDz", "languageTag": "0flaTtBQEov6i1dB", "upgradeToken": "Y6GiiZk73W12lWFS"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "nhxLXNyvC0XWDktp", "contactType": "aQNS9TPzEVaMXf1S", "languageTag": "Qc9Gw2mCa8uOcPUB", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "OauXVxMSKMLopJ5H", "country": "ktBJLpeRlTIK7jSW", "dateOfBirth": "r4EwH5EyVdhJWXdq", "displayName": "3QEkpale5vfe3Yue", "emailAddress": "MjFsMrPh2KsZFFKv", "password": "KP042etkziCQECLr", "uniqueDisplayName": "hdB2D2tX0uEQ2ReG", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "lpnOoadILQJjidse", "password": "mDY67xjbVarDi6DU"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "NKLRmEt9HVRD8oT1", "mfaToken": "ytGQyGsaEnc7PV8U", "newPassword": "vEeKqQ8jGoTpa13V", "oldPassword": "brrVwBvVJyUuwXrk"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '8OLfnhpf5vigzovD' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WnjSqLZoEGEzGXsb' \
    --redirectUri 'nwM7Wrv6HDyRzkC9' \
    --ticket '13ocrKFHCR92XfAR' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'SQAxjQm82mqUw7fs' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Ihwe1VvfNtDUI7Ku' \
    --ticket 'FB5WcWV0hO5HIWMp' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'bjDwDHeb6WWZhOwq' \
    --clientId 'XQS9UahXDGvPNB7s' \
    --redirectUri 'js0EZrRaEX5OGu37' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'SQEjkG4uO5T4Pe5S' \
    --code 'qhSEmknr6mgUKGhu' \
    --state 'darn5pUykcBe0mR8' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5IHL8vwLWDsd593q' \
    --code 'hdOIOQF77JtmSxHd' \
    --state 'l0wJmwdoxj2E8iEQ' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "cgjLCYs8XgtgDAmc", "userIds": ["qgwG9WoZcThXcMrZ", "okzL10bHn9aKTMqO", "cQlIRbUAnDRC7Czk"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "DbLDWhpuGNhsPpUF", "code": "0yWCa587iFJSk9U2", "emailAddress": "uigzlHgsnZzLfKpE", "languageTag": "U6nTWm5tEqLJA9qA", "newPassword": "sYrYZexG0eZHUre9"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hA13CRmn2rKgzENP' \
    --activeOnly 'true' \
    --limit '34' \
    --offset '4' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NiohXurIqp4dhIOP' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YdHiQ8b9JLpgDanG' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '20hCKhGVzgJBKeEP' \
    --after '0.824471007039693' \
    --before '0.6804611770337027' \
    --limit '4' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vBrV2HVhMAH7z3ci' \
    --after 'p6ZnPdikvDvF9N4Y' \
    --before 'YY7p9xVOBPnvl1nH' \
    --limit '60' \
    --platformId 'WiyMPnhegwtG7zyS' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hfQNWytDS4Vv8gFB' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'SG2iPsqH4wfEYSoQ' \
    --body '{"platformId": "rrwoEAyBy0e7pCrS", "platformUserId": "AskUuGFmCNHTTgUv"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId '0poH9ZNnedvZc8pP' \
    --body '{"chosenNamespaces": ["d2GKL5oeRWVzWFUd", "YMoD1gtnYWR2JmGl", "Wqn3D67eBLaTyiSZ"], "requestId": "QQ1KqyCA5eAQqKld"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '1mw571ng9ckFf67M' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dZEyQMOPN3LtVcup' \
    --password 'EC2F5MrLjDWO0yyH' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after '71bSrTy0NHHRTKec' \
    --before 'zIO4Z0BYhR8kOyB5' \
    --isWildcard 'true' \
    --limit '11' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'oG9zJIs0kAhopoKS' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "zjy9yxOu5f5N95Bt", "emailAddress": "HhIqMlMG2CW4tdMn", "languageTag": "ir4r4TiCR2wPOjej"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "sdcQv071kupn8n31", "emailAddress": "tGXnMrRN82v0A4Jr", "languageTag": "Kc0eIVPQ4gLS1Iqd", "upgradeToken": "xYrXMyOTcVQF9361"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'VnSYUB905L7HisQC' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["2O1QCiSTMKQu6YQP", "X6UWtzltf5G9dwou", "dJW14xLUte62N0sw"], "oneTimeLinkCode": "c6z88H78OJs9k5Jy"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode '4wUrhKsB61Xsdvfn' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "DGE0RZuxZ0U2KGa8"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'ndDWFpgqHi8A2IH8' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '7aRr8339mKVn1jBJ' \
    --code 'owBAdm1l1H0rTyLP' \
    --error 'KMvSVhZzr6qc1Ns3' \
    --state 'iU8c5PhOVHg4nBMt' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'FtlyN2k3qmDB3JuJ' \
    --payload 'wiD0rnfa1w5oGtuV' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'Gw4cN2bWBr8EDtXJ' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '2z7J1NHtYSvMh9fU' \
    --code 'm1D9wVLjWCkHqI2D' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'K4qONHM3JnUQn9Jh' \
    --upgradeSuccessToken 'RSwc03qwKhsffhAR' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '25' \
    --namespace 'EiZSKPRiJ77xijIv' \
    --offset '32' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'kZ3eO6Kvfg9u4nLu' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '43s4KsFbG7uhESiO' \
    --endDate '9b467pMaXesi7cyC' \
    --limit '10' \
    --offset '4' \
    --startDate 'HOXzoKSB12INy5jc' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'timJlJHeCfDZOlfC' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "tHO43oz2qytoKYih", "deviceId": "LnfvY6CF3odF765o", "deviceType": "x3QfbMrLPaOwplA2", "enabled": true, "endDate": "kucIUF4NJZicrQeH", "ext": {"VaU92wYEbrBdlei5": {}, "GK8dh3y74pIVhU9S": {}, "jlzzBsfWdd6KTY0X": {}}, "reason": "O6fDsK8T4yqAMuqk"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'qnTwgCYqJkLPNMR6' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'Dc4uiktxjNl2FB2Q' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'AqGYnhkCf9jdFFYI' \
    --startDate 'dLeGFnUe8lbJILTf' \
    --deviceType 'gBu7YezRFQ4tNjdr' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'qFje6ZZPfVov0INf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '8XnrNLNhtuOMINff' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'IXFzUGzWgjdr35ta' \
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
    --limit '46' \
    --offset '25' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "6kZVIqzH3sJRsfbw", "policyId": "lyA5czMmg5SYqil1", "policyVersionId": "6CNUHZkI6weCC6L5"}, {"isAccepted": true, "localizedPolicyVersionId": "ypn966V1oKcgZbs6", "policyId": "BGEWZEOxTuFEmB8u", "policyVersionId": "GNPEHGaWH71jpWUo"}, {"isAccepted": true, "localizedPolicyVersionId": "kjmhCO8vx5D8S7I6", "policyId": "9gxJGPNDsZVTyK6b", "policyVersionId": "Eqa76JwHxxZmTGE0"}], "count": 93, "userInfo": {"country": "aMomVFt5WjPjuGh5"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "7v0dNvJ1s3trmRpU", "policyId": "FCsKyxhrXH4M1Q6H", "policyVersionId": "05AIlPJFnEhrjQfH"}, {"isAccepted": false, "localizedPolicyVersionId": "m7yH5ecQnPiMHUz7", "policyId": "aMQSZqWlgfRgtBeu", "policyVersionId": "dKP1xPLZ6SLlwMjW"}, {"isAccepted": false, "localizedPolicyVersionId": "jbd9EkbEWy5M007s", "policyId": "F5gluVaTEZAi9TfG", "policyVersionId": "ubmFwlKLR2PLBV2K"}], "authType": "EMAILPASSWD", "code": "Tf54ht3qlCpe5BK4", "country": "cR2ANjAx01cGil67", "dateOfBirth": "8ZS4te7oZKUEknlH", "displayName": "TucDf2Uln1aUWzWc", "emailAddress": "sFtlY7QjrRfPTlIg", "password": "GN4fSmmHrO2JFdd4", "passwordMD5Sum": "xbHGMWSlbvvftUEG", "reachMinimumAge": true, "uniqueDisplayName": "UUqyODNOAUyxemBY", "username": "te2ZqDQqrdL7K6NI"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["8iXv1nMNx19yMcuE", "YeCUV09Ahq6DQcB8", "4JgkByWOgrBOjnn6"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["GznmWSyQSYxgQC4Z", "KT9SzWKESwxyKTgr", "xJdiwua1VC76gQTJ"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '9A5yw1ycDWnRa9dv' \
    --body '{"avatarUrl": "EPp4BFle0NPk0Twi", "country": "JJbcU0vQFURtj2OU", "dateOfBirth": "skJWpKIRAswp87XN", "displayName": "rp2jABPk2IWqUzCQ", "languageTag": "yOObPc9tznNqbluV", "skipLoginQueue": true, "tags": ["frUhgDHclusSn1Sg", "dGJjNfjnIlNRNk9V", "l9qvwZHcP4BH0IL9"], "uniqueDisplayName": "pf9NDct43qs3XJt7", "userName": "34T1Jmjeox0sXkwq"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'xsOIvxOFMefF45J5' \
    --body '{"code": "wjOi2QrfKNy7JYKi", "emailAddress": "NNT7z07rYvow2i90"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GMVt4S3Qg5SWWJn2' \
    --body '{"factor": "LOKFJ4bOCjd7ty0o", "mfaToken": "eedO2A7RMwEUFxn4"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'DAWy58XH3dz2Vnjp' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'IJPKcHIv9wvpE1hg' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'aBpE86byByc0xTSm' \
    --body '{"assignedNamespaces": ["gpvUlWMjbPc8UyQ3", "zpKXF0z59huvKikL", "4Tuzp2DMTCE5yDWq"], "roleId": "XRw76EtnnFygopTr"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'UEvwjV5julgPHtlm' \
    --body '{"assignedNamespaces": ["hmHnDD9bNWTbUd5o", "y8le9KscoNsBOE3E", "dtvGM20eElj1yLEE"], "roleId": "WPIkW0Hz5f28s7ij"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'GkyF0qwGc7HmA9YG' \
    --body '{"assignedNamespaces": ["yLMeDrv97YTh45fe", "IlVe224kFogUHfOT", "yh60tgjxboFAKJNI"], "roleId": "ZiEyWVipy4XPtzhc"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '26' \
    --offset '7' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "XHLt3XXT2i2a649j"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'R6ee1G8yBplnrg8b' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '08bWEQEunTsirxbK' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'jBKdgp7DPwHWGpRd' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "KsdEKeOq3EXNEs7f"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'HVeOlqmyel84H6LE' \
    --body '{"permissions": [{"action": 99, "resource": "iNM1Iy7beSoph70Z", "schedAction": 59, "schedCron": "ZjR9uNtoB6ZfRt5m", "schedRange": ["QWjFntAA3ZbKnHWp", "ePXCHskdO8ii47ux", "dTPCgBwP49rXeHhy"]}, {"action": 46, "resource": "vgKfccZNywAArOuO", "schedAction": 21, "schedCron": "sZZF63wi1pB5iAay", "schedRange": ["kQRNiHp2Bcp0bj8B", "oDiMswrs3ipxDJ5e", "KcO4X2Qn0uzJ2Ybs"]}, {"action": 92, "resource": "Pjs4U0ITvrgoVPLx", "schedAction": 46, "schedCron": "pebmF80poJDvDiNK", "schedRange": ["3Kcxu8iWLhOY0Nnr", "EyT1mSOCh42Ajh0d", "J3aYBUU1qE3180YB"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'OlDD6rFW5pI7vw3L' \
    --body '{"permissions": [{"action": 87, "resource": "uDI8uCCgII7uIZVh", "schedAction": 43, "schedCron": "tv3WXyj5ooPZxehj", "schedRange": ["N5ol1lgq2UwT8jzi", "Dv4SE9Uc2UkgA51G", "8e4Vl51sW1Jt7mug"]}, {"action": 54, "resource": "5HO8TvW8oiR5hTT1", "schedAction": 26, "schedCron": "mWyNLt0Y2HhXCSXq", "schedRange": ["a27ZtE2aziDAXszs", "zULzUQA6i0Ml8yNi", "mS830kgtdD9KK54Z"]}, {"action": 81, "resource": "qgPbX4slSM0ZVjak", "schedAction": 19, "schedCron": "fiEfE7CsYh0fpwRr", "schedRange": ["LjvnvTLgF8C7v3bx", "ojTEtRO7f91b6Arv", "eJerXEaGlgMiLrg1"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'NNU7SJNCw0q9glF9' \
    --body '["GDUHdkNWOuF8mwEl", "8TspLoBvxmGbHkVm", "TAejltEiECJkgeKI"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '0NxYqUFPRXxrcFjm' \
    --after 'YAkj0M85jKTsB98D' \
    --before '7uAtDRyfc5Gwh60x' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'fc3vmTFXSkKkf52v' \
    --body '{"assignedNamespaces": ["4tmaK0NrAPDRbwW1", "NvgrPzH9kTsIDetx", "7a1nEFekYPcG0vGI"], "namespace": "Bm79cC6OeQDKqBus", "userId": "5dR5Ssj7X9UmSivt"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'kLeZAPayJJiXoV9P' \
    --body '{"namespace": "hyhSD4dDGkjOASbm", "userId": "Lemq3vUqjmgqNOtj"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["RqdfkeTnLnSrgNPM", "7Wr0CxiT5SQfSsAU", "g31szHeb7SONoBeJ"], "emailAddresses": ["N0IH7gQ43WPmCXpn", "cFSDiNftPLpqe8z2", "eWvgdag31rSObxb2"], "isAdmin": false, "isNewStudio": true, "languageTag": "63zwCuZvxx8NTzC9", "namespace": "3NPjdgL9TagxgHH3", "roleId": "nsM4QAvY98VL1JnF"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "GMCCMR1U6hXKDEt5", "country": "IwIOb9FdCakIGoyI", "dateOfBirth": "d4YB0hr5UVlHb4eJ", "displayName": "z3Wlqfe0x0qzd7oM", "languageTag": "7z946PU6bSrzgRzk", "skipLoginQueue": true, "tags": ["4JH6EZ75zgD0VEOU", "MRzm70z91kaiGpG8", "n7rl2dyJ8W2Lslw0"], "uniqueDisplayName": "8u42dUZu8QUGzSC3", "userName": "0xOjOwxAARgTqjPX"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "kxMWLoM3BbevIMcB", "mfaToken": "SZShY0yle5lLZWIe"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'yXzIgbzugwCcJcDD' \
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
    --body '{"factor": "wSShK7vXf10R6cop", "mfaToken": "DH1ayKIJz6H7HF7i"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'RvvDNLXQ0OpIgD3N' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'i9IiuI0w5cWe4n4S' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'XlVaDZZZzT3ax5yM' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'r87HvOczRHGIpj5h' \
    --factor '4fOAnHFB3Y9NXbsN' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'dnaACGUePlBnVEw9' \
    --languageTag 'GuxF0UmkAFSQGtmz' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "snLnl4Q19KYuXADZ", "mfaToken": "zkw7fn0ctpMNunFE"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'VNDW1ZB13HcMdfm6' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'crMb1vgyEHkJJcI3' \
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
    --extendExp 'true' \
    --clientId '6erQcF6m0TOG2pdm' \
    --linkingToken '5fZZ1EJiZMA7W5zY' \
    --password '5m8jggeMaAPTVpmV' \
    --username 'BX3F4AnCQuPhN7nd' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'KCidTW1tIa7moH65' \
    --extendExp 'false' \
    --linkingToken 'dsi7Rpt3cGmsgYGz' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code '0LacxbsIT2swqG4I' \
    --factor 'jn6LyWKbZotnUkSi' \
    --mfaToken 'qWPaFQmSTH7HylK9' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId '5Qwz9Vp8WwZZbnpt' \
    --codeChallenge 'x4PIZnhw9u4zXBxD' \
    --codeChallengeMethod 'S256' \
    --additionalData 'Zv1qTHjcyGA2Lfnq' \
    --clientId 'fgDPtiRwlSzDf9zf' \
    --createHeadless 'true' \
    --deviceId '3Mxk52Fgq55ldHVj' \
    --macAddress '0Vw9nXP62mMGdIPk' \
    --platformToken 'P9GtFetxUhHNwB1P' \
    --serviceLabel '0.4295528428977845' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'cl8xq5s6ncDrmhtk' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'I53m0ZCmXHaV0NOL' \
    --simultaneousTicket 'MFX4zV0o7n0R903O' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket 'boWCQbb9CotdjCBC' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'Ms2B6K94qFjUQWAM' \
    --codeChallengeMethod 'plain' \
    --additionalData 'onBXz1RzCPWIIIqJ' \
    --clientId '1TdjnVWZW4zYCas4' \
    --clientSecret 'EiTm6JUmERkHNh8F' \
    --code 'cX929w19xUQ8LXCG' \
    --codeVerifier 'TFeIeEV8kdVeRLNR' \
    --extendNamespace 'YRzW7vqB7HN5jHwI' \
    --extendExp 'false' \
    --loginQueueTicket 'i7JwMnPXHAcLnD0s' \
    --password 'mnXx0aXYodH1Be7y' \
    --redirectUri 'i8CysrGiAVNyby44' \
    --refreshToken '4EmwWs5Alg7RQvkt' \
    --scope 'N17eWFcvSfJa9Soa' \
    --username 'AvGZMAuHm8foiMuR' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'L4Gv0IMV6lZrEPjr' \
    --code '7A9AMmoIhjKIrVL0' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'SCj8vQzSUreT0bB9' \
    --rawPUID 'false' \
    --body '{"pidType": "JbdhCbHDOKdHRpw5", "platformUserIds": ["U4BlaloWgi2r2WCi", "WwLwUcTlYO4neeVd", "Ghbuu6LySrPgnIxy"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'HzVR0GAWYmuD5ZtO' \
    --platformUserId '5BNpzyM5nSdAHdvf' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "Nr9oY59W7p8u1amG", "policyId": "vCzJxjQaSOtRhON0", "policyVersionId": "Gf35evHcPgnJzxsG"}, {"isAccepted": true, "localizedPolicyVersionId": "KzroEAXdmkOhhnLv", "policyId": "Sdo1F6Bd8LTkARBM", "policyVersionId": "xRTMePqPiVuxAvhu"}, {"isAccepted": false, "localizedPolicyVersionId": "OHN2a0MnaMHpd2cA", "policyId": "GpeWVaI1TCd24YiX", "policyVersionId": "JWEqg3htk3LvZEYl"}], "authType": "EMAILPASSWD", "country": "emtz4fT1vGueV5O9", "dateOfBirth": "TtWUTn8nSZk2MopL", "displayName": "woD6P50ekuRWd4St", "emailAddress": "M28fQ8Sjelr0DkN2", "password": "PyWALmnXUvo2DwGX", "passwordMD5Sum": "UrzP4RlCsJL8B1fX", "uniqueDisplayName": "ayhpeQjelu2DNmja", "username": "62AqR5bHFsn5wJ0E", "verified": true}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "iH4e9JLmgscm7hBK", "policyId": "D5US69ajJZ8C6VQS", "policyVersionId": "i76RFjv5fYxBvJPa"}, {"isAccepted": false, "localizedPolicyVersionId": "QwGKiXTk0SCq1iOR", "policyId": "Tm46wMU6jfwNe388", "policyVersionId": "QG0gvba4l6XXd62J"}, {"isAccepted": true, "localizedPolicyVersionId": "3cyciNoejYghJsRZ", "policyId": "9t9zRvN3l5aoicLV", "policyVersionId": "WMYXTk2ZLpTx3th6"}], "authType": "EMAILPASSWD", "code": "p64STenLyLCNYd0z", "country": "PVvJlU8s7waJjVoK", "dateOfBirth": "p3sNUNKEbf6TI8HQ", "displayName": "L4ITTJpejtCf5o4b", "emailAddress": "WKnEZxDg0kzmnhnF", "password": "kXrBM0uY9wA0rJgS", "passwordMD5Sum": "TN832uIGUH4YCES9", "reachMinimumAge": false, "uniqueDisplayName": "XFlLKtrqj6Ic7SIq", "username": "dxCs1KEk7RSSwxKZ"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'v64jOk9rhU4Jta5Y' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "YMiMFUPW9SykS2BL", "policyId": "712hSRayye9hg8KE", "policyVersionId": "FwylWWq2uTleTLZl"}, {"isAccepted": false, "localizedPolicyVersionId": "848xZYrUVrrhuSkm", "policyId": "TMUnDRbkgeF5Chwi", "policyVersionId": "syjVjntVoZSfpM5G"}, {"isAccepted": false, "localizedPolicyVersionId": "FJH6IbqljEnBJyUm", "policyId": "BBzy7bXVhG1TCJQi", "policyVersionId": "K8DT1OqCqh4OCekB"}], "authType": "EMAILPASSWD", "code": "52Eae6ZNefuAFepk", "country": "JJjZLqbmkoccv2gg", "dateOfBirth": "HZN8t8uw3CV2KwV5", "displayName": "ZfqkqAJI2FLg4xJk", "emailAddress": "nusTXK30CwSFKJDT", "password": "KUAYoW1Vu50t6gRy", "passwordMD5Sum": "VPkRbkRTfb8S3YZv", "reachMinimumAge": false, "uniqueDisplayName": "S7shvhbw2ZnK7GXV", "username": "MtVIk1KEqAPhywfh"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "eR36YThPKZEzsIdp", "country": "cFrLMH8dxrzBFWJN", "dateOfBirth": "u5but28orXeJ8jPs", "displayName": "8i0HaAQi6jlfeLTD", "languageTag": "fxiKDzQrgLYxZyP4", "uniqueDisplayName": "HbrxbmBsVnWBD0D0", "userName": "5x76L0pJdUJ1fBVC"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "yMH5lxYPQl44Gqkl", "emailAddress": "9TvMtkuxsmfnbJeW"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "Cu8ghDEial4J2x2Z", "country": "L6Ej3EYtRzbX5K7v", "dateOfBirth": "Z9wcEnYqVOeK8dJe", "displayName": "gRvN6ToultkSeI2Y", "emailAddress": "qVvhUf2Ao6oBaPMA", "password": "VAoSWKrAmKuL1zlV", "reachMinimumAge": true, "uniqueDisplayName": "pz1lAcSm8bXX7gwu", "username": "5JWXnc2TCdfNjRgQ", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "QlSk0wVATlGlZlAX", "displayName": "T6UXHJWNfMJkjgtb", "emailAddress": "rgtB5Z8ne6Uymfub", "password": "u2nEj1KXdmJPo4El", "uniqueDisplayName": "yM2MnUMPJTqn7PNS", "username": "2OiXVemeHBrAbY1I"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "F0XnZlYDo8QHvtco", "mfaToken": "DhomGBDItuqvQPku"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'h61mpUXZNHGqK2Lb' \
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
    --body '{"factor": "EgBKnrE9e9a9V3qa", "mfaToken": "EBn1tnVXgvR5Uw5q"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'DbTXddlvY0Se1QJb' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'jVBxRT5xQRjTZ3bG' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'zjy5vxdAINGlH18Y' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'SExdm48OWjxlBrgA' \
    --factor 'i8QhxFipBdHlVdfK' \
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
    --action 'k5aTDcGdHb0Rocs5' \
    --languageTag 'Qpbg1GTJJIVsJX8f' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "qiXWydqYdJN1BXOv", "mfaToken": "HLIZutMMFoQVRHWf"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'EdWcjEJBZlgxXVV9' \
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
    --factor 'RX91BfdituHeco8g' \
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
    --userId 'Bx9XEvCILhPsxuY5' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "2KehR6k1P3hlJUwH", "emailAddress": "jYKtM62xn0rJzPBV", "languageTag": "vKNh3CvcfgbiCxXn", "namespace": "9xES55Oo3qaCSI5e", "namespaceDisplayName": "OJBtZ56IrnBRVKiH"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "pPZjx50JLwdi7nx7", "policyId": "24tRlMDmZWMxF7cz", "policyVersionId": "VoH1QV4tFy42hJVd"}, {"isAccepted": true, "localizedPolicyVersionId": "Jm5LU6LcxAVCVhGN", "policyId": "Z4HE8vshS2aImgI1", "policyVersionId": "2naY7K11CPmdgI3L"}, {"isAccepted": false, "localizedPolicyVersionId": "O2dx8MoFhUfcldvX", "policyId": "n8jXsHyUsez9YOZc", "policyVersionId": "ssl7L0lFz4WcO6bq"}], "code": "yGnAHJmcKlB59b9Q", "country": "cIjIQHVMp4dUTxnE", "dateOfBirth": "RM3aV3H0j9GbysMR", "displayName": "pdZNogarxFFHXjh5", "emailAddress": "nWtkADykhZiaM7Ib", "password": "AYpwDwJqiVyfDTSK", "reachMinimumAge": false, "uniqueDisplayName": "GbFYJ4j9rHgM7pEI", "username": "5t2yW4rkLBdfMPug", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE