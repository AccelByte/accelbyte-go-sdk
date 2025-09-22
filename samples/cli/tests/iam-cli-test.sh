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
    --excludePermissions 'false' \
    > test.out 2>&1
eval_tap $? 108 'AdminListClientAvailablePermissions' test.out

#- 109 AdminUpdateAvailablePermissionsByModule
samples/cli/sample-apps Iam adminUpdateAvailablePermissionsByModule \
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "MPvrE4i0JftparxM", "groups": [{"group": "ompK4zxtMYvQTHu8", "groupId": "uanyxWZEQC3HEDvt", "permissions": [{"allowedActions": [80, 60, 84], "resource": "fSMJQIHCEPGwOaUE"}, {"allowedActions": [33, 46, 8], "resource": "M8MZN6A8B7ChROaD"}, {"allowedActions": [63, 55, 84], "resource": "Q1zbgDF6htJiFJR8"}]}, {"group": "Y7oHhkJbV9U2uWiE", "groupId": "hsSjkXSNEvNd4yTO", "permissions": [{"allowedActions": [45, 76, 79], "resource": "nKjwg4s2W7MAaZLV"}, {"allowedActions": [81, 77, 99], "resource": "MGM8UX9nIIIyhfmY"}, {"allowedActions": [28, 0, 65], "resource": "CpTeA80emXjY5JTg"}]}, {"group": "iki64QCxHbFkRdrh", "groupId": "nK7oRtLo5KkTqN6G", "permissions": [{"allowedActions": [80, 42, 36], "resource": "JlweeNGuoNHs3EAh"}, {"allowedActions": [10, 8, 69], "resource": "kbJ9QhWRZXuKWglM"}, {"allowedActions": [20, 9, 31], "resource": "zysjbjW46Pum88h4"}]}], "module": "Q8WWo6LtAElSjgQr", "moduleId": "yYxlTMxq0c9havAT"}, {"docLink": "MewNWMHOTChxxVsu", "groups": [{"group": "BRt4fhmPeo2urSgT", "groupId": "uYCQHHbMC9PcQx4O", "permissions": [{"allowedActions": [54, 35, 87], "resource": "szYKYpUIwjxIQoMW"}, {"allowedActions": [82, 58, 5], "resource": "y8APKPIiIg4g01Xm"}, {"allowedActions": [79, 5, 58], "resource": "NlWc5CBsJQT8FPJQ"}]}, {"group": "DQ0Gua1hPSiMpZir", "groupId": "34HoyUeTkL85fqfH", "permissions": [{"allowedActions": [81, 84, 24], "resource": "HP7QQBaMpLysEBo6"}, {"allowedActions": [23, 12, 90], "resource": "WgclsNjq1uSFmGGj"}, {"allowedActions": [25, 64, 17], "resource": "wLoLIjbLM1IXrWBy"}]}, {"group": "7L3917WbsX5g2YBm", "groupId": "lGrh84CdbyjE5GGM", "permissions": [{"allowedActions": [20, 93, 4], "resource": "Yss8pjZfwENU19yH"}, {"allowedActions": [55, 36, 46], "resource": "PXlUwCoicMJo0tms"}, {"allowedActions": [23, 24, 74], "resource": "ZWzomccjQrRb3VX2"}]}], "module": "PKj4rvsDSaJ6gE4X", "moduleId": "xSTXRiFlLv0YDWpz"}, {"docLink": "VzNxrokjd2Tl2OoS", "groups": [{"group": "RzXn8I4wApYWSnOv", "groupId": "HNCGpvITahswOeOT", "permissions": [{"allowedActions": [66, 97, 17], "resource": "uZp56tii9bgeSAqt"}, {"allowedActions": [10, 73, 40], "resource": "UI3rySgRZjY1iD1f"}, {"allowedActions": [94, 62, 62], "resource": "D7V0GFRw7Vz3EeE5"}]}, {"group": "XaHSMu6m4NTLvQOg", "groupId": "pDQEdPM1oevg6Rcw", "permissions": [{"allowedActions": [98, 63, 7], "resource": "7TPGg4cagRoLffVm"}, {"allowedActions": [66, 71, 8], "resource": "RZcnCS1TscJUGPsb"}, {"allowedActions": [81, 5, 17], "resource": "0W58LQYd3t9ZNGCp"}]}, {"group": "X3eel7qTYfgWLmBI", "groupId": "z49YZtIQDdZHkZfk", "permissions": [{"allowedActions": [35, 76, 80], "resource": "PaYFAxac5u0xaP7K"}, {"allowedActions": [98, 86, 91], "resource": "YgkXMTtWDeHd01Pd"}, {"allowedActions": [8, 7, 97], "resource": "6ZEHXJ6LIacpdMqM"}]}], "module": "jN0RQysdtMC2hpg0", "moduleId": "eMuN8aP7A9l13v5M"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "dsrQrFn0zRy8ltUf", "moduleId": "cPNTabWIj13TgnGE"}' \
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
    --body '[{"field": "Xz5o0srqvpElugvN", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["5YysFO2ZomlN9UAk", "Gt1LvMbYbmLy8XiC", "aTxKuVVDNZcmQxA5"], "preferRegex": true, "regex": "Mou5job5qcK9Pyx8"}, "blockedWord": ["4M3VmZLvzMxeOEh6", "O0t8UKOPV4m1HOXW", "uqrG9mzjZjOreL1s"], "description": [{"language": "lIhG7hP1SmVH5e4D", "message": ["WCzxX8PHGaigHc2C", "tSfEzokOG1Fxewkl", "wZvdXZJ2BdAX8atY"]}, {"language": "erUfaWcWqW1BeJbg", "message": ["EQVBCY1NRWv1palp", "wnL5gcEQBrmukYa4", "cExnBnZrmzd1CU2Y"]}, {"language": "WPTBPZBohHikcLUv", "message": ["H4qB73i8gyjEIAyp", "2Lr2AlKEHKhudqKy", "5Y8Nb6MibqlqrgVB"]}], "isCustomRegex": false, "letterCase": "HJp86aLDsjdWDUFA", "maxLength": 45, "maxRepeatingAlphaNum": 82, "maxRepeatingSpecialCharacter": 53, "minCharType": 53, "minLength": 15, "profanityFilter": "I7NGl3c2R1JintXc", "regex": "8r3dzaCwo4MJUSbn", "specialCharacterLocation": "pZMtlcppeuIsowNe", "specialCharacters": ["lsX2ihtyDH2vbQ0S", "UIEAyQUvRoJ2x0Du", "lq7OGeb0PoKseeJk"]}}, {"field": "zJ7rOfmoLXUdCSIw", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["mZFMWmYoDdGbDDFd", "rP9wQMNBItutGqTK", "rLgAAI2LgM20g2v9"], "preferRegex": true, "regex": "99UIlOMeh7Za00Cm"}, "blockedWord": ["lGQKi3T0Mbs32VAE", "K95xUIfFSJGInXMR", "L2IhYyJ8zQMsHtsx"], "description": [{"language": "x4mZzhfegIYJV3hJ", "message": ["Q6Uh2bpccBXENPTj", "GhrsuypptOfLGTVt", "vo0Diuv854j5bP9y"]}, {"language": "mZlcLxfdGifzcinQ", "message": ["KA5I0iA9s7QhGT3H", "cGfi6PLVzcz16yVY", "ULhOpoLvaSzg6Ws6"]}, {"language": "d8hVSDFXqSXyvhm5", "message": ["WpFn35kjezXICHmO", "g8vIYUKszLgQDrY8", "GpYIWBoubfkTa6Ue"]}], "isCustomRegex": true, "letterCase": "iyM7pz8Yw2GKUeGl", "maxLength": 73, "maxRepeatingAlphaNum": 76, "maxRepeatingSpecialCharacter": 74, "minCharType": 94, "minLength": 79, "profanityFilter": "yULJEDejzJ1wMS4j", "regex": "vzKQJC3gi02bW2zR", "specialCharacterLocation": "Fe63839WGCvfwU4o", "specialCharacters": ["r9OqR5KIMz6xjNLl", "lCgiG7AXvqQeEgpA", "9LkSFeyeraqAlul3"]}}, {"field": "Qp8BfBeqSCWdhlsf", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["Ne18lE2LhtBkp5WA", "wQkoOyCk9PxEv5pN", "EptekKbSNRCJF71X"], "preferRegex": true, "regex": "LWtDwAAhLOwtYq0N"}, "blockedWord": ["Hq8Ad3Hc0rf6sCek", "EVLbI4jCaxFbV1pR", "bpjc3aF0DvUPRjsL"], "description": [{"language": "1EJyqZb2TqrPcuYx", "message": ["0Odavb5gz1sjLtsJ", "mQryhr7gHWLra0co", "x9P2vVD140Y3p2Po"]}, {"language": "9jjJxdY3OfeoX5c4", "message": ["mPXOffSPh5WjSRjH", "1GXoYjTu4FQMFY3f", "Eg6orpISj9Y1ovDp"]}, {"language": "pHxoww8t5uF9czBm", "message": ["eBAMVfmA7ObNkjsr", "pl6TGqSCOZvcUpck", "pELUPiRLd1OLpTjK"]}], "isCustomRegex": false, "letterCase": "bmiZJJDTMTjBrzQS", "maxLength": 20, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 37, "minCharType": 32, "minLength": 100, "profanityFilter": "gy7Gtdg4QkYPvprR", "regex": "1FCGaHph91JRKK7f", "specialCharacterLocation": "y8dimk2TJuYcKxk5", "specialCharacters": ["2YaRHtzI7NHeEB3W", "CJIO76OxtqYLKtYw", "OL9200VM5UKV0fzO"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'P08RHUzo2d5hz3wj' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after '3zYhhyOVGNXquHid' \
    --before 'LrwhBgVsK9onS22p' \
    --endDate 'leqFG0uVtnAhxiVG' \
    --limit '92' \
    --query 'lDCgH4GydVOdGn6v' \
    --roleId 'dcLXQHUx1MteSewp' \
    --startDate 'b1EAsexqyKkTPdWJ' \
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
    --body '{"ageRestriction": 2, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'lhP1yXpr9dQHNAaT' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 92}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '0WLn2XLGqL8Z6YTG' \
    --limit '81' \
    --offset '42' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "Ck15vJVyw9kz3PaM", "comment": "gcmJkitp0ZelfisC", "endDate": "iXbcD9EhwgeYF2ux", "reason": "qddG3kfVJm0D6gG4", "skipNotif": false, "userIds": ["JRIqXGqSJRr14mDY", "rUSmNlHrw7ojUxin", "3sUOvgWKSa7T3b8B"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "ytZvSBZLdlWJuoIE", "userId": "SpDeDxFxC9LLyDDo"}, {"banId": "JredNj12eE8HoiW1", "userId": "2ihw2HQebLrSUlDO"}, {"banId": "Mm2dpkAlBmQbPoeE", "userId": "L5jxNzivYYAwGaTu"}]}' \
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
    --clientId 'UdeikK5KjLt9sNvp' \
    --clientName 'kWUnC3SNRqbO1pMp' \
    --clientType 'DGPIrQDaGET2SrvW' \
    --limit '34' \
    --offset '42' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["uuYgBr4BijiQ2KYj", "ao5vDC0tS47YlxP7", "zZzDIMqWHZD2dtyX"], "clientUpdateRequest": {"audiences": ["2RpHwhNSYnbITY8n", "eliIk5JlQIC4JGAL", "icqGf3SvJrRztnpv"], "baseUri": "bzB6rL05X0Bxh7Wh", "clientName": "UIBVKCM0xR3Pbqk4", "clientPermissions": [{"action": 18, "resource": "grCAn2vOEM4rtvu6", "schedAction": 58, "schedCron": "l4z8KxczyC0Wo9ra", "schedRange": ["A5naOJhNBISrh4bL", "KwsTZgFo6opTgnZ8", "i4Ei8fUF1UaS9OCW"]}, {"action": 59, "resource": "stg3Pb0iGAmhRFa3", "schedAction": 11, "schedCron": "C4f8HU7gG2JVB8GT", "schedRange": ["xeChoqkqkS9E5d9w", "Jdqbxsh1dEwJaT3q", "Ix45iEBJiqYSTdS8"]}, {"action": 16, "resource": "9pzzQ9YXWFyq01XA", "schedAction": 4, "schedCron": "fO67TJaGCbpib7ZW", "schedRange": ["FBiX3mJSmskOJb6j", "pfksu8WZadWIZMJB", "NkiwqTBA8qK2xx3n"]}], "clientPlatform": "ismese7sFu4kqJgf", "deletable": true, "description": "a7TNCFRC2FxzxyOt", "modulePermissions": [{"moduleId": "ccK0W6oB71ApjsTk", "selectedGroups": [{"groupId": "7aZMYbyaxsmWkRRX", "selectedActions": [41, 53, 43]}, {"groupId": "GeMm96r0INzo80hu", "selectedActions": [58, 81, 13]}, {"groupId": "48vCUrQeKm5y2rji", "selectedActions": [11, 82, 98]}]}, {"moduleId": "kyAk1aKHV8yFLkPp", "selectedGroups": [{"groupId": "hobtsumGcPClSXgU", "selectedActions": [7, 90, 53]}, {"groupId": "jOoXslt1iGt2wRye", "selectedActions": [56, 54, 80]}, {"groupId": "NXe9CPZRO1PFIFq8", "selectedActions": [1, 24, 69]}]}, {"moduleId": "Vdxc9ddLNNnlqMqz", "selectedGroups": [{"groupId": "SOVbhBSd4NO4RaYK", "selectedActions": [76, 2, 98]}, {"groupId": "l5VMehIE0WxSggQI", "selectedActions": [49, 3, 85]}, {"groupId": "BanY17lqBncdnil1", "selectedActions": [84, 35, 71]}]}], "namespace": "11tSoT7raXQdaTep", "oauthAccessTokenExpiration": 84, "oauthAccessTokenExpirationTimeUnit": "R5Fy9b2fcdh6ngoV", "oauthRefreshTokenExpiration": 5, "oauthRefreshTokenExpirationTimeUnit": "9zZYlIe8WPvzMVwE", "redirectUri": "rDSoRRobujAEp7Rw", "scopes": ["LpkwXlXO9gvaQ5ef", "cQCRV5rHcDhideQm", "xafRYwUZsiwKvVPh"], "skipLoginQueue": false, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Zv2xqmXOVUAZsyQw", "A0F6DQgxl5uUR82B", "wRd7A5psi4TIsWoK"], "baseUri": "wqcCsteC8i9vYTyc", "clientId": "WXKDcJOAyiOaEKaU", "clientName": "ZvUmJ9gQg8yqKozI", "clientPermissions": [{"action": 89, "resource": "Wad1MPFPUYEQjfZ5", "schedAction": 86, "schedCron": "ELdh2icJd6k5DKnY", "schedRange": ["7ES2K9shzv7Xeqr0", "QtUw2DkkvobYce4l", "pf1zf5IPE4wdRenk"]}, {"action": 19, "resource": "ZIW0LSLp6rjQe04m", "schedAction": 28, "schedCron": "2rUxzLW5bmpUqAAO", "schedRange": ["1pHj69oQfnjHPNlF", "X9yum2WsyC6dFsA5", "N3lntZHcs444AaRh"]}, {"action": 55, "resource": "7moBL08S3Hr68JRE", "schedAction": 13, "schedCron": "ScZgd5j6qrs7upZs", "schedRange": ["lrxWiaO5y2YlZ5CH", "5Ud0SJPjpSCDaLef", "8AsjhjaauCtukwKq"]}], "clientPlatform": "EuYcN8OoKd99W6Co", "deletable": false, "description": "yM7T9KNCzWmhk8KT", "modulePermissions": [{"moduleId": "PHjG0SabqZkJsTbj", "selectedGroups": [{"groupId": "zi0etM7GYwepD1Vy", "selectedActions": [42, 90, 70]}, {"groupId": "3u7eaqJV5qL27hO1", "selectedActions": [45, 36, 47]}, {"groupId": "kkrONh4akvHPM2Kw", "selectedActions": [89, 12, 37]}]}, {"moduleId": "WvVWR0BvpBbVSCoa", "selectedGroups": [{"groupId": "bcK9zqUqwmxyaBQY", "selectedActions": [11, 73, 4]}, {"groupId": "58SuP205kj2xwmRI", "selectedActions": [10, 53, 46]}, {"groupId": "zmlk5SKPIcwvBeTW", "selectedActions": [85, 94, 73]}]}, {"moduleId": "FLKFZdw2Wep0VWGm", "selectedGroups": [{"groupId": "jcrbxSugQhJVjbbd", "selectedActions": [74, 27, 7]}, {"groupId": "9RInm8zHbuXkQE5q", "selectedActions": [70, 63, 18]}, {"groupId": "sMIupooYPLa5si0m", "selectedActions": [13, 97, 59]}]}], "namespace": "1UZxATIgQN03CgML", "oauthAccessTokenExpiration": 89, "oauthAccessTokenExpirationTimeUnit": "OZbV7XcgyjA1I46l", "oauthClientType": "x3oEr0DeyTn4y951", "oauthRefreshTokenExpiration": 54, "oauthRefreshTokenExpirationTimeUnit": "apg7lb23DBNwC40g", "parentNamespace": "LgTalTvbLeoig4fB", "redirectUri": "HjQOS52GnJwgOOJ6", "scopes": ["9WQ4iNPEAjWMJ8Hm", "4SiFoZEwIoqMgkUW", "KZLkWF8zdrl6ln3W"], "secret": "aUPRxlo4tHUKcUIA", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId '7b6MWr2Jkpu1ryIh' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '3bPZEmcdsv151J8M' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'B1m4Nwr50nTW6dl8' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["spVYmsGFAHMAlAFr", "zOnhuNZin2lc2Q4J", "yOBLxavNnqTgOcRK"], "baseUri": "qwg78ovDSAx4iNl1", "clientName": "EXn7bARTddSjOQ8J", "clientPermissions": [{"action": 35, "resource": "jXZ4AwRqgFlflwoC", "schedAction": 68, "schedCron": "CmPjqhDzOTZyUVhF", "schedRange": ["rkspz6gXVmn9SX2J", "CoFN1Jjimm9kB4hf", "lGqz2wZ0jmW7fryU"]}, {"action": 20, "resource": "r1fHWmSfnfHDdkee", "schedAction": 62, "schedCron": "iNcQDO6h4Xb5VAPe", "schedRange": ["RbR1Qgn8yRBM28lQ", "rFOA1ePIHbLutAW6", "MfcdkAfku2Nn3tBE"]}, {"action": 92, "resource": "uAQLqx6B9BUmZxti", "schedAction": 95, "schedCron": "lUer2nk6IFbpO3bD", "schedRange": ["I2MCJwWyrxjNL39T", "cRFarQ8Ye71taQnS", "hmhOd8omUQRxvriK"]}], "clientPlatform": "AZQTmqn6Qz2PN6sZ", "deletable": true, "description": "wRyAqYzQrttrodk8", "modulePermissions": [{"moduleId": "GO1tdZFUuHtoWq5O", "selectedGroups": [{"groupId": "PPTGLaF1SFtnWB5O", "selectedActions": [59, 50, 84]}, {"groupId": "J3K4znwSfBjyyUFV", "selectedActions": [20, 66, 7]}, {"groupId": "Cb0v0MU8DWCF4dFE", "selectedActions": [25, 38, 17]}]}, {"moduleId": "rB9qplkidEfojpYi", "selectedGroups": [{"groupId": "ztle0VQbZVp5v0CN", "selectedActions": [88, 14, 26]}, {"groupId": "MS4buHXh739M8dYs", "selectedActions": [55, 11, 39]}, {"groupId": "0DtbmDg5hAfBEqqg", "selectedActions": [51, 75, 79]}]}, {"moduleId": "j7xWrwRcuonwIT3s", "selectedGroups": [{"groupId": "mdRadefpBTcrXleh", "selectedActions": [97, 80, 51]}, {"groupId": "AGLr2vLHhNFdpICR", "selectedActions": [75, 3, 72]}, {"groupId": "4WTNmi4F98TP2RSC", "selectedActions": [58, 80, 8]}]}], "namespace": "wbHKpBPU6vXaiJ1B", "oauthAccessTokenExpiration": 2, "oauthAccessTokenExpirationTimeUnit": "jI0dtMX53m35TwHU", "oauthRefreshTokenExpiration": 54, "oauthRefreshTokenExpirationTimeUnit": "WwABDYSr4ahx2Y9r", "redirectUri": "saUdukC9CEt8psTJ", "scopes": ["V1OlmiSYJAq5fYp8", "RpXcIGbOFG0FgGWV", "m1t8OxX2Oyw8BZni"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '4Hbq3LhnWnDHkef9' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 57, "resource": "s6Er4DTZRDQAKDNY"}, {"action": 97, "resource": "6MeBHTINAwmKap3v"}, {"action": 85, "resource": "atKjoKkuv6AZmAF4"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'lZFZV8IQtDsoEKMq' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 95, "resource": "vBJ7IWgmziIaahgc"}, {"action": 14, "resource": "LxYdqLVsZXL7mts7"}, {"action": 99, "resource": "P1jdV2hCHuh8Yxyx"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '5' \
    --clientId 'o1QwFisZCnQkYrTn' \
    --namespace $AB_NAMESPACE \
    --resource 'yGnYotA6w8CpEa0l' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'DERoEN7HkCJMi9iY' \
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
    --body '{"blacklist": ["pNh4vipkSWv6ihnn", "NIsvw0iLiAwLY8Fp", "aiEn1CkGbpn89mvl"]}' \
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
    --body '{"active": true, "roleIds": ["3zKcSg0wpHvOAlOG", "HJDwO55Y3LrHyDFo", "byUhnpfQVBDujhKd"]}' \
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
    --limit '61' \
    --offset '74' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gAhaJ7cd08aRrTI6' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'giPMbzHqpEzm35xQ' \
    --body '{"ACSURL": "zUTUb7UCCRI2RXwi", "AWSCognitoRegion": "0ITgIIBGhHzyu5ou", "AWSCognitoUserPool": "svwBrYoyzrYUVApK", "AllowedClients": ["ghbtIzSatMliJ4ag", "DAG8wqFcKfg8COvv", "NY9Syhnw41y1eEyP"], "AppId": "0seqBxQSBdD5l3uc", "AuthorizationEndpoint": "MpuQPjIAM3wKGy3b", "ClientId": "5Ea3RWIomwXLPNC4", "EmptyStrFieldList": ["3dsb98i9cXsDUTfL", "zyNUGuphG60D4SW5", "NiNFYNFERDH8lyuq"], "EnableServerLicenseValidation": true, "Environment": "HAgQwOADZMCNmlQ9", "FederationMetadataURL": "VM5zZFtQgAERs7K4", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "zq1HVx2v4b4iQTe8", "JWKSEndpoint": "YLrE78wYr6h5CWBI", "KeyID": "dtMbIJ7YuMwBA8TY", "LogoURL": "LjicUk0AEqjW3itU", "NetflixCertificates": {"encryptedPrivateKey": "DWnIanSFklkMleSE", "encryptedPrivateKeyName": "wrSBX7Xa5JXycLgC", "publicCertificate": "ufroftQxPJQwgwM9", "publicCertificateName": "KLWK6gRPB64AJgqO", "rootCertificate": "QAHEMHfrbEqhnN9B", "rootCertificateName": "hNJuzalVZ0XZwuhO"}, "OrganizationId": "wEIR2rPbS11pMaVY", "PlatformName": "nPdsvt9ZHrLuDeOP", "PrivateKey": "whnmPdDn5lGRRrIs", "RedirectUri": "GaaCrGlhGMuZXMFh", "RegisteredDomains": [{"affectedClientIDs": ["V61jyHZxxTGkeZj5", "ViTaYNN3p6zmYkFq", "dt1zRN4q6qlpgw12"], "domain": "O024u40ygisDPsaf", "namespaces": ["AEnzWTsZyYbCn9zs", "TUwoIrhnYIYDJEVl", "KLyhLIViUfuCt5WM"], "roleId": "rItfsLWvDc7vgVBO", "ssoCfg": {"googleKey": {"HhJ2fzTzbikK8FnL": {}, "ywefolSsxE09d8LN": {}, "X4XBca8EpUH1CYVP": {}}, "groupConfigs": [{"assignNamespaces": ["Uh5sNdVg82mHQj7I", "dTSN7n2BzXWbiHYs", "pSyWx9ffo8DX4Sqo"], "group": "0lLakE0CJdyJDuh8", "roleId": "Y0GpLmqwIGW3Z3Vu"}, {"assignNamespaces": ["ZjVyBvSROgCnY2Bu", "qDmiUlWQ8ryI7VGC", "GlX2IBuaXaInrQBm"], "group": "R4YmPsKQMoDBheVl", "roleId": "tstjnHLMWfi6jPNq"}, {"assignNamespaces": ["in72d6A1HJo0mv4h", "7ImbDl3UecYCxtSo", "QBfhkK7wCaP6wOMw"], "group": "ODF7KRQVWbEyKogm", "roleId": "KnVsn7f5KRKOTQp9"}]}}, {"affectedClientIDs": ["mC4ElMVgbWMK1T68", "hEZ5heLdjucc1MDd", "jO0B4QN4xjRIiTo2"], "domain": "gz73YzuYz4YaAQ7B", "namespaces": ["gmHeaqiQG1xD8Mt8", "StAsLzAj4JQQ9xjU", "BvhidhKYJ65UAnZG"], "roleId": "bhqF4wt5B00rtPs6", "ssoCfg": {"googleKey": {"elYLanpnlOcpJd8E": {}, "bn6oCoOFLHGv1D0u": {}, "gdT1QgUEP3o8IYGN": {}}, "groupConfigs": [{"assignNamespaces": ["YAxXvvInm5JdJu9F", "BMWfqxpI5w3eqqzI", "AUEZWXGWwQ5ViBDA"], "group": "YTs8B1jn3yQ1mDEc", "roleId": "uhap67zqbhtKZCVy"}, {"assignNamespaces": ["Aka3Jh315TFf5Gw1", "EFgmQxoSxTmhSpZW", "Xi6QQVdNmYs5RVkX"], "group": "bO7eKcRoHY92ogYg", "roleId": "5ZdcxHzzknrKkhvI"}, {"assignNamespaces": ["Of9AECbsWBDjsVJ3", "aK5H1i6XU6rSqp0N", "r5uPPTTGdnWi5wPZ"], "group": "rBm3ZMELhIP4IT4u", "roleId": "ySiJ8KB8KjTF2WcF"}]}}, {"affectedClientIDs": ["J9qHAKkGaLeHQUgS", "oiQhQ1n2FZjjDOZG", "uizjJWU2ah1a4PLs"], "domain": "jVZd6qX5i86s2ntA", "namespaces": ["Tx1y8gWqmJAgNlRb", "NOUEA55xWImdAp5G", "PTzVygA4rdlHUFtx"], "roleId": "y3C12wA87hJeldY0", "ssoCfg": {"googleKey": {"TXVgyOoqyZpQoBgM": {}, "J4bJp9qS589r06Dd": {}, "wHLDpHa5Fi1i1tSB": {}}, "groupConfigs": [{"assignNamespaces": ["ZsZbmP8Hn0snbxqj", "yjDpHkMezNdALQDa", "QJYVmtTa9ZiRI41Y"], "group": "ejNpyhiLb8J63Jf4", "roleId": "HtGv1zWyVJ5fYPF6"}, {"assignNamespaces": ["DBIOJLFD1r1Q6m5Z", "xa3zFf27Sgj63MJv", "2mFh8i4jlCU5oMLD"], "group": "yYeefT9SPNwpPvvQ", "roleId": "j5JjDkCKEfmXItQi"}, {"assignNamespaces": ["h0y6XVeXGy2CKjHZ", "TamsNVVJUDUp43il", "jMT8Wf1WGu2ObY1W"], "group": "SmTRNzvDlWmcXyN2", "roleId": "CiT05IP6vT7X4iWY"}]}}], "RelyingParty": "3pX2EMLT6G8RFrI9", "SandboxId": "tHyFGVpXVZgnEBTl", "Secret": "7di8KQo7V6KSxWXD", "TeamID": "Vi6kK3vxqb9KXKtc", "TokenAuthenticationType": "OSvWuUVuyY1XB75B", "TokenClaimsMapping": {"ndL6YJseiWNlVTUl": "BqoyMnkqWInajrOL", "fjsYVJfXdl2W6UVc": "KiFWJbKhyfaHU4DK", "9PiYcpvDWRNj6gE3": "xG8DZ2nHGwjyplko"}, "TokenEndpoint": "vV2QvEKEFvxhWGpn", "UserInfoEndpoint": "7V6ZhvioNgRZ7XfY", "UserInfoHTTPMethod": "sOCmailkbZ5FrhGR", "googleAdminConsoleKey": "ey8gWPAoGwsNUYS7", "scopes": ["hA8Y25udwEZcy2aZ", "HnT0RqSRk7OETFEo", "4E4zfAp4zUoJPLsy"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MlSfExyM5UIrhls6' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OfrB8r4qvkQ5bB5S' \
    --body '{"ACSURL": "yw6iMqqge9AR28j4", "AWSCognitoRegion": "Lwhh9athVichY1Iw", "AWSCognitoUserPool": "zs6KVHLVSrkJOX9p", "AllowedClients": ["MymZHFpxFxjaN9BO", "XhX2iOnxkjtL2cBO", "iZ4CQSLsjjQtFujS"], "AppId": "pQGRix4WA8Bd5Hio", "AuthorizationEndpoint": "Y73zHV8zx1RPljHq", "ClientId": "LO0kmKZLOwj1YAMl", "EmptyStrFieldList": ["K4SaJpES4vJeMrp3", "IprCszXUNsnBmEpZ", "AXt6M0OAUAA07km0"], "EnableServerLicenseValidation": true, "Environment": "WUNVdcrpGIXVLMvT", "FederationMetadataURL": "cQzaPC5F69XWMuBy", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "1AQ7yR6Q1eLx4zE2", "JWKSEndpoint": "aVOls7TFqAHmKLVR", "KeyID": "SgzWw4aT53akmxAw", "LogoURL": "iS8rt3kTMEtCCtMD", "NetflixCertificates": {"encryptedPrivateKey": "AbLsAmBI0wNcyPIP", "encryptedPrivateKeyName": "V0eqflzGUJL2BwFN", "publicCertificate": "NDoaBC9g7h31d8vz", "publicCertificateName": "88NUEAEAN2WxSjrc", "rootCertificate": "90hKyFMlGJXzmrWJ", "rootCertificateName": "sJRYpTPFUSsEGPXd"}, "OrganizationId": "SjALYxfJ7TtVGW6r", "PlatformName": "tuGL68iJOzlKMxUM", "PrivateKey": "5EGPVlANCFb6oOKi", "RedirectUri": "uRUSlKoPHZy4kGlm", "RegisteredDomains": [{"affectedClientIDs": ["k0z8UXYEouv3wZc6", "kD6f3tYGKnuFqTsL", "35EScKv9BP2FVedl"], "domain": "lYGpe15PDdovCsdd", "namespaces": ["1RDbnXPW5vWOY3o5", "g7CtvHfIQEWC7lWx", "Y1bujtjHyldUEoJo"], "roleId": "4Nc32YzvqlkKsmpF", "ssoCfg": {"googleKey": {"2mLvplcLyCiYojtm": {}, "jrs7mRfjkYDarzLK": {}, "tPoAQ7KQH4iTAuhX": {}}, "groupConfigs": [{"assignNamespaces": ["4IH4rO0s5c1KaK06", "sQ5QgcHY3zx1vA5T", "QN4RmAaJpdxxUPU3"], "group": "NAqOfsKJXpv9gVrH", "roleId": "ClZM5nQcFD3TzTD3"}, {"assignNamespaces": ["lvupknmwSHxZVEaL", "DNDqblyj7VV9YUTc", "YVK2kKRfNBOhmt8x"], "group": "UM2GIzL7vHybvECe", "roleId": "5Db482FPFXLSYeDV"}, {"assignNamespaces": ["yS6MmAUS8niuZWju", "j6Zrur41c2DL6wkE", "wCfte11s5nsQpwSe"], "group": "Iq6WcsoejtXFbnTd", "roleId": "qoKBJcRmsoAnQTLz"}]}}, {"affectedClientIDs": ["XNkfmOiwpymPzzoA", "gjd69HfsSjTq5ndV", "xEGdZSnJ30329Zd0"], "domain": "NiIrY9jGYrND4xBE", "namespaces": ["0dRh0o7QIcxF0rCB", "zGt6nJMcLzc5zaDn", "bvjewP4VSG8bM2k1"], "roleId": "IjHv1P2hu4j5Etez", "ssoCfg": {"googleKey": {"Zbgr9libXzGa8PhX": {}, "GUIB3HiyUF4MJCPI": {}, "aPvp1N6GcJNLZnL9": {}}, "groupConfigs": [{"assignNamespaces": ["XyXJ4d72kMJkKlmh", "pEpaHB054ca56VEJ", "sqWsrTP1WHvQyjPO"], "group": "4RSbPF42nms6peJm", "roleId": "vb0iDAsxfPbP0gqT"}, {"assignNamespaces": ["lZ5CKjuIVgOloVZV", "xbexVODHSX3KIFUl", "XTvRn2xt7tfNPIys"], "group": "WWgJMKHoLjORlQMt", "roleId": "456K6xrjAs89EidS"}, {"assignNamespaces": ["PReA26ToXLpGLtDY", "wGIFzWeXFBhVIUHr", "6YQpvBYmGo3R9xDN"], "group": "L7GxfWW4xUv1H2vC", "roleId": "aDU7UE5zXeGg2044"}]}}, {"affectedClientIDs": ["krAtDZYAIDB8XJl7", "eBbGdjRC9EYturh0", "UR3jfzbFeO3aSb8d"], "domain": "enp4RjNbglSn45kz", "namespaces": ["bpeyKR8vqldxo9O3", "d8bb3JN15dSgrV5r", "YAOIekJQQHqlKwvf"], "roleId": "7x8t5xvYTOrVDdjJ", "ssoCfg": {"googleKey": {"CTCttf4K3nSRyQ1w": {}, "IWwF0qkPFczajEPu": {}, "9jDKNhGq4Us2gn7C": {}}, "groupConfigs": [{"assignNamespaces": ["pQY76bt0dvPrJQWv", "2oeRZbK0RctUVfY5", "LKZiRaU01iIizi5S"], "group": "epKrSuJGG7e9SLNm", "roleId": "32tjyJtybShnB2EW"}, {"assignNamespaces": ["a5QTE0wNpBl9GgWv", "nKV4yDnWJuICdrKj", "1m13YAcsUYqHAQ9h"], "group": "TJ3NFleKZOQKzcOH", "roleId": "cc4lYd4Je0GZBzsB"}, {"assignNamespaces": ["CbUqjDtDZaY09iK6", "e0w8hHfMQbSP704G", "uh2ATh0ikLGCvpki"], "group": "nt51vQx4psHS2KzX", "roleId": "GIKcLUynLB8qDNPU"}]}}], "RelyingParty": "T9hHAha42Mu1Cakk", "SandboxId": "VP35utvoklK2Ja51", "Secret": "7rkyMDZu6DVFm7uV", "TeamID": "fhoMuOWgReF5MQqL", "TokenAuthenticationType": "y45BLaQ7J1l1HYDM", "TokenClaimsMapping": {"uS3nOMVsAqogo2gn": "OrbFFR1dg6Xqz7kr", "9W6EvYJ8qeHZQJym": "9ojOEDUuA4pjAzfd", "MgiUq8IvYyl5rwYD": "Qw3gAN09EBHyPIzr"}, "TokenEndpoint": "wLjogsWopEozMTy9", "UserInfoEndpoint": "NG2VlsdobHRQ5dT4", "UserInfoHTTPMethod": "N5XYvw7Kc4vmQVvo", "googleAdminConsoleKey": "DjcfQJrG4j9qhrna", "scopes": ["HImb79MKIrGs18BA", "wBgAnbv8AjxcTTSh", "qr1r7YqSjT2Mlzbm"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DglmS4Je0aQEmVKF' \
    --body '{"affectedClientIDs": ["Idn2X5f2CQMlXdki", "WumiX1qAyb6iOTkh", "OaifQMCq91fTpPGv"], "assignedNamespaces": ["BV5JSgDEEaNpeDf8", "ezTHFpTF4pnEAEOk", "OEwSb9ECjrn6c6p7"], "domain": "HYJToICxdRSfvRWG", "roleId": "zbFYpRGABCoqtGvv", "ssoCfg": {"googleKey": {"Rr4rli7q2GaoHUkf": {}, "p2UE98YV5Qkx7FQf": {}, "Bqo95oTjj1Cec6ad": {}}, "groupConfigs": [{"assignNamespaces": ["ZPMPHkeZpDvGBwms", "a32wRRr0ArHdyHMP", "70vfyIJxmKw6H3hT"], "group": "oK1881fwCWLQIg6K", "roleId": "9JNlWnrzDlIlcUWn"}, {"assignNamespaces": ["eEuj83FLQ4CfSG9m", "60FQmlCRcVnfDfpx", "pgwKfcE8CY5Zp9Fj"], "group": "V0hleYqXQLA1Ujcq", "roleId": "jFcQKRLixRm4OGvp"}, {"assignNamespaces": ["ICCteOQNbJdDuntI", "0SmJh9aKPOc3kMY2", "PnPG5SwA71Hhrv7f"], "group": "s9Zz0GrrwUOmldhC", "roleId": "0glQ6giKALmH6uSc"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cUNJVS3C5JcKufmG' \
    --body '{"domain": "tOFa8wjUnBGf4s0b", "ssoGroups": ["v1R3HdsALDSJodsI", "Plqcn5pOx43NXSHs", "ykupfnNs45CqVDBH"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'h9XT6imZVVZQVOBl' \
    --body '{"affectedClientIDs": ["ThtfHFYBV5ZahtpH", "ITBADByq5fEJ2nop", "juc9qSsm1bDuLYiQ"], "assignedNamespaces": ["5UQciDO7Pkq6SqiB", "9W6pUZW6P1C8mI18", "mhu25zxeW3P6VQbS"], "domain": "vZwP8zuTVvZ2BxTw", "roleId": "I174Qpy5CBr4OjXJ", "ssoCfg": {"googleKey": {"clKowcxFxmM6zYML": {}, "s8V2Rcnhebg6YYud": {}, "Brup50zByuQXIGNz": {}}, "groupConfigs": [{"assignNamespaces": ["DhZjUzyR6DsKmPgz", "DvmDnoIYb2p1i063", "4iozEZzlPOGaugfh"], "group": "27aFWhayzOTNWQH9", "roleId": "vKhlTW8Ad7nR6Ky6"}, {"assignNamespaces": ["CmOH7mO55BDTStTp", "hHJHHDz914dDHBaf", "y0Chj8AiPtkvd0Q8"], "group": "LFgo09A34MVW24lV", "roleId": "qGxH5yaTpxexile0"}, {"assignNamespaces": ["JpN3720v4TSPPYdF", "ZZfQfqotRI0Ze1te", "1qpVegElNrrk3yBo"], "group": "jWZmTKDhqxyT135p", "roleId": "iUQUSEJLCEF0AH36"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'BgHeoA4J4WYKuhB8' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'XnRJyFTaz9MnUuMy' \
    --body '{"acsUrl": "EuvohrwgvhvUW2dw", "apiKey": "2B8dztMDM9Dc9ZkM", "appId": "vnoaRivS7xeKr9lo", "federationMetadataUrl": "xW35T8idpeQwHkPl", "isActive": false, "redirectUri": "Zj7egCb461H00m17", "secret": "JN6mjPwlYSoga9H8", "ssoUrl": "G524CjW7HuUYISqI"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nUuoXcqYu1y5T6zP' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'GQ95pqorPq4Ar2da' \
    --body '{"acsUrl": "vQy35A7OGa9fdSEq", "apiKey": "42OiKPd0TTzznBVv", "appId": "pDDOgCTMno9mjxZX", "federationMetadataUrl": "yKGAeu5vnGSLP9Vk", "isActive": true, "redirectUri": "sIhz0Id4PECjj4sf", "secret": "3xYJ80O7kGatnCNb", "ssoUrl": "iAt22mLNNNdxOgup"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cbvzq1LyyMVwdtNO' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["TZSD3j67QRN6jtWm", "mlSLJVtnbSPdMCTP", "PpUS1tSejK3UKXfY"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hQVkz5Up1rG25Qd0' \
    --platformUserId 'ceJ1Cf9f8WPXaobU' \
    --pidType 'Qzyf1D7SM5JhKTq4' \
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
    --body '{"config": {"minimumAllowedInterval": 49}, "type": "CGIEQHB8Gn36HE2a"}' \
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
    --body '{"additions": [{"actions": [74, 54, 11], "resource": "hHcwsfgPm5gEVm7n"}, {"actions": [81, 57, 68], "resource": "hVhc3tj453MMYsoF"}, {"actions": [31, 1, 12], "resource": "BFfCqygY7MrmDj44"}], "exclusions": [{"actions": [43, 91, 83], "resource": "7ssh9W3N4f83GCQC"}, {"actions": [72, 52, 95], "resource": "S5BnNDJTpxucJYms"}, {"actions": [12, 40, 44], "resource": "ftEcwdptKVJ4GYb9"}], "overrides": [{"actions": [66, 40, 11], "resource": "m1JcsAwUus9CP3xn"}, {"actions": [13, 36, 60], "resource": "d1RiJBWkgqaNmJiV"}, {"actions": [11, 17, 45], "resource": "t3pv5zqL6yJvAXR5"}], "replacements": [{"replacement": {"actions": [4, 16, 87], "resource": "tx0mRTh4b0DCSmt7"}, "target": "3dHN1dGk8bEb8Z2m"}, {"replacement": {"actions": [27, 94, 34], "resource": "a2A5FICOkb5x87RX"}, "target": "DFS2ACPZ7Kdgte4S"}, {"replacement": {"actions": [7, 40, 72], "resource": "YFkFQSeWQ44InK4R"}, "target": "O3lLhzlUbtPCY7i2"}]}' \
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
    --body '{"active": false}' \
    > test.out 2>&1
eval_tap $? 160 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 161 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'nJS3Dgk9lzLZ07Kl' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ctogNHccUPVRcc1e' \
    --after '98' \
    --before '5' \
    --limit '96' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '69' \
    --offset '99' \
    --tagName 'FCHMK0iEsB0Ti7tT' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "7G5m7NXXWww1hves"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'V0XlOodDCzZaBTMH' \
    --body '{"tagName": "s1qzKV8h3T6yPdlU"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'tEkc29bzIy1VjAFS' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'flIOjx0TUus66pPq' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["3qZlDMhHWNd6ZTZ3", "xWEjpWjL2wfg9JBA", "ItPGHY6TPcxsyZBA"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'bZCykJyAsh8EcgWu' \
    --body '{"bulkUserId": ["QxcLcflPTgxzQ2Ov", "UuwxPaySMSKukGKL", "BIiu4XzxpofM9bnc"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["o543hqGgxWaz1CeZ", "U5LYSXoZ6U6BiIG9", "ALPoXBawX6wbS29P"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["HjgFpQhiQup3mNdG", "GJ5q7nRYLdeaMYvk", "SJ8FaFDbMfJnSOx5"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "FB0Xm3fPbffgPZ0f", "userId": "FdDfXrtIXDHatlPK"}, "fields": ["xFkeffOcwmHqpbwZ", "m38flsJ3zKKt1nQf", "DpqvZChiUqwId3Eg"], "limit": 56}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["5T6VaWvxxQ7N1ZMN", "6F9Bg1MLvbSZ8EbK", "1st6Sb9UZt9CT7bL"], "isAdmin": false, "languageTag": "HZdb43yuVebFxNke", "namespace": "W2M6d9iwXzp9Jqdk", "roles": ["Mo5qcvwArUMCTV29", "skuwLzoi88Lpea30", "mJuWmmyxLACYb7At"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '79' \
    --offset '94' \
    --platformUserId 'Q6Hr6rCJ2QB1vUlh' \
    --platformId 'cuFMT9z4wuZKpRKw' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '2' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'QPQk7R0zn2qAdvxu' \
    --endDate 'iGtjY2AkF08wGe0a' \
    --includeTotal 'true' \
    --limit '46' \
    --offset '12' \
    --platformBy '2z8wCB1aK3JdQUNv' \
    --platformId '2Dx1bbeaKQXsyDWw' \
    --query 'RDDaOzATU6AXvoB1' \
    --roleIds '7sP4AR4J79RoHV6K' \
    --selectedFields '8i8peLDCAz9gnSar' \
    --skipLoginQueue 'false' \
    --startDate 'ice5FJc1sijUFdN4' \
    --tagIds 'wT5cgoBaERrew682' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["BUTVcAB0ouJmjZv3", "FQxj1rAXCmNFncjb", "7ZfY2CzEfiOZOSEB"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'f725VgtyA2Z0ZTtS' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UvfFaW4vKq3vsSGc' \
    --body '{"avatarUrl": "Afo9X4teWsHIojLP", "country": "mZoMB1yVKba5SUSu", "dateOfBirth": "AKHkxuEvDpo5Qv9T", "displayName": "bnl1rJznoD4UG6Ng", "languageTag": "GbcTIpidXMxFeAca", "skipLoginQueue": true, "tags": ["dcTtGwrf7V6JWpU8", "49PpDiEEzVkAbJFZ", "C4PoceiOzTKMUY4h"], "uniqueDisplayName": "SYI1xekWaReKswri", "userName": "IygrpFT3xozhc5Ga"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N8WO9QzP0Cs2cMQe' \
    --activeOnly 'true' \
    --after 'aAXT4AjhvnjCMICI' \
    --before '39ghHb9i4Zwwxx6q' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o2ppB8mLeuZkGO2s' \
    --body '{"ban": "c5FPdnRw9R9HfvUG", "comment": "uwkO7lmgT3xLlwFd", "endDate": "TSulAhjIqAX0RjJD", "reason": "pog20SkDDcwpjZme", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Ig4c9oN7bvknpuaI' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'jfu8kGnZz867C6DJ' \
    --namespace $AB_NAMESPACE \
    --userId 'jhO3MCQSh3mSg7gN' \
    --body '{"enabled": true, "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oSl0GBAwEFhAM9pO' \
    --body '{"context": "YDA10zU1uc9nKpji", "emailAddress": "74L6jF3LZF73PkFK", "languageTag": "oBOKhbqvWsQbqVG1", "upgradeToken": "l2Bys3bSyASX8eVW"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pAaZog3ZA579C5lB' \
    --body '{"Code": "oVf754G35OcuSjGB", "ContactType": "PifD6oQ22b0u1cKV", "LanguageTag": "27nhhVlOuvg16yyS", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'LprzN77eaKNmIBbw' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wY9tjM5FUd06lpWy' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '83XIRABIqDeZ92EM' \
    --body '{"deletionDate": 94, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bcgnf1jVhO2IPawo' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zWY3LCjoPD4qUsPd' \
    --body '{"code": "8MwUBQ5JXWfdsxs8", "country": "N9IGAHBD4b6fW7rU", "dateOfBirth": "K5ynixGNC0xxKy05", "displayName": "RvmNNQWd8zgYCIT6", "emailAddress": "XPS8dehQshJCZb1C", "password": "Kse3fIhkcGRfMzGw", "uniqueDisplayName": "5LrQpQ9ons9NweBT", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'u3C6FXSwDUywM4oe' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gTRzd8KvB1uou5Bw' \
    --after '0.7823249266751637' \
    --before '0.8545611816144599' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NmmZ0S35gwp3R2iU' \
    --body '{"languageTag": "y9vbMADbw5O4P0yI", "mfaToken": "QhJPtW8mrN5hkI4G", "newPassword": "YiLC0mnC9EVld6nN", "oldPassword": "NALMVICbKOCEwB4Z"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'L22eLdF888WZpqou' \
    --body '{"Permissions": [{"Action": 19, "Resource": "DT6mtAoofnee4c7f", "SchedAction": 87, "SchedCron": "iWixaNrSiQKGY0Gq", "SchedRange": ["k1X5Kh9gEdPp06bg", "IZC0ElBECubZR2bI", "pnQ4UIEPJ5VXQw06"]}, {"Action": 45, "Resource": "7AFwO8SrNgXPwMHF", "SchedAction": 22, "SchedCron": "Qxc4ChZsgQ8zwvXj", "SchedRange": ["rXvkwfvvrKu50uRx", "qBSIKWJ1YPqYQNbQ", "4oBHVhNHTkOuMvY0"]}, {"Action": 59, "Resource": "FQVJ5vqfuZNfzpgv", "SchedAction": 44, "SchedCron": "vBK2F4eIaiB4Sk44", "SchedRange": ["UMWkYeqgNnQC52fe", "C19Jj1DbOvIOetPA", "yp6RzM1nqHeyxtQ0"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ukNAIWEdnH98nPGO' \
    --body '{"Permissions": [{"Action": 67, "Resource": "30pruMceC3xbY54M", "SchedAction": 39, "SchedCron": "f0mNu6P2ZF1Y5HfG", "SchedRange": ["llvLvq4MY92A2e9Q", "izXchH6sK1dS4x8N", "pLzEEuLnofBuNp0L"]}, {"Action": 75, "Resource": "jbYbcRD5a8iaLlPp", "SchedAction": 89, "SchedCron": "H9GVcxL9K3Iih40k", "SchedRange": ["A9vmIgm9NMx7uHWo", "8QkDuMQIdXEAJaUx", "Jkro1dTB0jQ5fpxS"]}, {"Action": 82, "Resource": "2UqJXJ0mLOajdYvd", "SchedAction": 66, "SchedCron": "onvPj245gNXVtl6b", "SchedRange": ["RtMHzHCTskOhtCgo", "M89GQztKI7HBi9XT", "kCxo2hxzlsmffRGo"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '3RIb4WgHulbyhbo0' \
    --body '[{"Action": 5, "Resource": "TYO2iQrP8pLBEh4K"}, {"Action": 32, "Resource": "5Fr18aTbrNGDOEe9"}, {"Action": 72, "Resource": "N2CmFrvxk13Ropm0"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '30' \
    --namespace $AB_NAMESPACE \
    --resource 'rAlWRZs0kXYDEQMt' \
    --userId 'OupchJVLCez2P4tH' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'z5t0CAej9MHCOxuB' \
    --after 'prmwr8lqYyZ7Msrb' \
    --before 'OfygkON5bfsqRwkx' \
    --limit '36' \
    --platformId 'fFcUs1aFfz3FSfji' \
    --targetNamespace 'ikzFR9qKgza4L5dU' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sTl2n24wEvrOwxUa' \
    --status 'QrLSG3SE7tl3i1Bm' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'lnF4okCgFqPWWlfk' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'W4AVkG6NN9dqBmk6' \
    --userId 'QN0HyZYRtgNy2emy' \
    --createIfNotFound 'false' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '5ol7K0yAapA0F36w' \
    --userId 'yBycFDXvyXom02pi' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'yFald076rWKpjgh8' \
    --skipConflict 'false' \
    --body '{"platformId": "vjfmXnIIGPrjogQl", "platformUserId": "Vt3zhvIbVTiJRAYQ"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Lb9PIwq6TawLGcxO' \
    --platformId 'dEusmXAQ5lm5uyrS' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'BMuL02E1T7T0GzSZ' \
    --userId 'oyQoNnyBjcuAMIhf' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MUYAettA9Q6R0LuX' \
    --userId 'sNQwlWMlTYAFV71V' \
    --ticket 'dlHHsSFVOIYtzV4C' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EOsFnCT7FfyWBlQs' \
    --userId 'f1KDgbIClvY1Wyw8' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cu3mIUlKi4S9fXgH' \
    --userId 'RdQ0YCZpL0EJSAMp' \
    --platformToken 'NOfH2RBt5WANDd7c' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'UW5fm4K4ukd5M4Rs' \
    --userId 'Yb88Eh28ctpKta6U' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'j91YlV2mzloVBjD5' \
    --body '["cHcVj4Xq0VUS4AOn", "pVwhk4HQ98ef2anZ", "0dBOk8RrdGGH5NgK"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '9uqCEsUGVmvHvBig' \
    --body '[{"namespace": "oAHML4cXhwkO5oK5", "roleId": "W3X9VxIwojiAQwVk"}, {"namespace": "8zH9Mi3QIXz4MR3R", "roleId": "lGvyjT8Zlhj7E0oV"}, {"namespace": "YtqONTHbmCKYbHKu", "roleId": "3Yp9bLzYATab7k97"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'cZnHQZxVjkLpxuMJ' \
    --userId 'PTRGibL0EfRspWZ6' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '74Dy2Y8poycIrb6F' \
    --userId 'tnIBVbU3L1u8VlO0' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'guXDc37dQx7oX2Sh' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fU8FtDsjrMeiH2Mk' \
    --body '{"enabled": true, "reason": "8dEkR3r18akxZ2Bn"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'BUADMibA8NvRnBR7' \
    --body '{"emailAddress": "816DgtCiK3kJ873O", "password": "FPXuuEQFIVktzK1i"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '4Yps6FRB8OZCR02L' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'dRVu0cVEsX0Onqvf' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "n8V4o62Wm1H39YvJ"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'V4FQCNX2fTzpcobZ' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'tqZteVD80jE753Ob' \
    --before 'EWJWBZ7lEoTdfcoH' \
    --isWildcard 'false' \
    --limit '64' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "managers": [{"displayName": "u1DDCvSUOQqMBM1U", "namespace": "6UgmxxEWeKtNZWFw", "userId": "rzped95dubQAFYLY"}, {"displayName": "YkKNVpFCDCII7xsU", "namespace": "6NxgJoXff8tyeIff", "userId": "WORKfiTRLNUsTfDs"}, {"displayName": "eoPKyKYM8fSzV80R", "namespace": "3y2feNfVhDvDDjIQ", "userId": "nknbvDxORcMo58mm"}], "members": [{"displayName": "QEC0sFb0OSjOqim6", "namespace": "JeKn4xfT4PClQpLD", "userId": "1ZkM1TiBvt7I1EHY"}, {"displayName": "DiUg1ryZAIZGe3Le", "namespace": "5sdEi5hYPtf5CaKQ", "userId": "dh65ldkkE2InQiLW"}, {"displayName": "YFcxQCnrr50ripRY", "namespace": "XNmbvrGMIFfTFKct", "userId": "zGeuf41H35KMecOU"}], "permissions": [{"action": 87, "resource": "z46prX4Ttt3gkIcd", "schedAction": 95, "schedCron": "x8FyPPf9ySLzcpbq", "schedRange": ["SJGQj1iuiKSyxXF5", "mPxZeSQGPvCUIHDO", "0NkOWxUqfedequ0c"]}, {"action": 73, "resource": "mGLF1U6LjApQCTed", "schedAction": 32, "schedCron": "ZmXcpXbAL0XOHmbV", "schedRange": ["KAShEhRoYSoKnBwQ", "lzaqPDN5XS0WpPJx", "K7QbXyJiXMD9lJeY"]}, {"action": 16, "resource": "tLQ2QWIWZz0S8pGs", "schedAction": 90, "schedCron": "8ye4PSuSBL7gxquZ", "schedRange": ["thTNdeXLg2Usy1PK", "d8ky89ck4sNE7fKH", "O4W8aMFqTI2l6PfP"]}], "roleName": "PsCKQGao4OLhlwCl"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'vBIHJdC2v01mjTFF' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'If1m9GvLO2Q3iyxH' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'Ugiezjp1HL4SyVOm' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "EbWVSzEMNI7T9Uwq"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'BbVpcQImRa8diK8I' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'wV0DzOjBP4b5HUOU' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId '4mvVhd4w14Ck31vV' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'URXFjmyFuOBLdBBK' \
    --after 'TQTgcd7icFmWAEnX' \
    --before 'YAhkOhjk30QymYKf' \
    --limit '83' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'UsG4XZgYevG29OpQ' \
    --body '{"managers": [{"displayName": "7hUyOof7GjjLApLK", "namespace": "tKV0jukzBiRWK1iG", "userId": "C7jQ0jDZPqi0dTMe"}, {"displayName": "ASsznVeSVPr4tJEB", "namespace": "QIrjLbcHI4PJoV73", "userId": "7y0Q8FZP38WOpDNH"}, {"displayName": "pwJbnvqCj3KH6XFR", "namespace": "AEnWlOQaTS2rJ1xD", "userId": "54HQX7XT9N1D6QoL"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'Jj5Uue1f1n23kgkL' \
    --body '{"managers": [{"displayName": "7qPhEwiD9zen86aZ", "namespace": "HAF0S8IMNX6zdKth", "userId": "WSmKECxDeVCZ4j53"}, {"displayName": "5uKO2GrSsHiI2QEC", "namespace": "YqzTY2YNJCZgdE99", "userId": "QuJXc1IlJCrK2X95"}, {"displayName": "OR4Po6lcw6Xf8aoc", "namespace": "YDg7F32WdFdOH6gy", "userId": "HaTqNBZlWBx7ZKL8"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '4xGkIDy2k11sXThd' \
    --after 'emnbKVAZxBfblTUc' \
    --before 'mgEi7poLH4vTmt8s' \
    --limit '9' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'XXPLGGEnf7zrvhWM' \
    --body '{"members": [{"displayName": "yrcflFPaX2TAfHlb", "namespace": "naak5LgavWJCyP5s", "userId": "Ov4JjVXSKrOrNjpv"}, {"displayName": "AXiIKRSOgj7gLaKI", "namespace": "2e0IF9ImcRzgpkAJ", "userId": "CnXY0HTOFRx5urwT"}, {"displayName": "gBMOi26HI1AwdmP7", "namespace": "c4XBl6GIsste7c53", "userId": "CdsvrBpVhdGXVWwS"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'tTcKP9pkL7lD3JlR' \
    --body '{"permissions": [{"action": 65, "resource": "swUV5GbVaTxHdvxZ", "schedAction": 42, "schedCron": "QWtkXD9aRwkCeCn3", "schedRange": ["xX10zzMJ7a4BMNNh", "8c4yYB2vdFOw3oVH", "UGb23KBEg7bEjnG4"]}, {"action": 95, "resource": "q6N0VPte3HM84xma", "schedAction": 66, "schedCron": "AYSbJaLy64iDasPC", "schedRange": ["VPtkEnxylNJXMXw3", "n137kiV8Xlsg83Hn", "DOZOxoCQBqZPeBvP"]}, {"action": 60, "resource": "cnpvdcWT0lJ5E8s7", "schedAction": 49, "schedCron": "Ed1MzOFgDUCRWPN1", "schedRange": ["W3Xeb5cESugCSkDp", "9FNVXrQCCMjtiMX1", "ZM9eiM7UMaBClSiZ"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'xfuff9F9X2CAeqYj' \
    --body '{"permissions": [{"action": 82, "resource": "1NSm6jZeZ5gDJP44", "schedAction": 78, "schedCron": "BYK03CNuFmzBb1G3", "schedRange": ["EAahKXFO0ELqqFRQ", "PotUhe6I1WEkvPUM", "wuN3VLlRLquI1Iyq"]}, {"action": 65, "resource": "6OkVovcJs84dRs0l", "schedAction": 73, "schedCron": "1U79N4wwqn0xNONr", "schedRange": ["2rOxjtMIa7ar8dIL", "rHTyNB8nI5yX6OCW", "B01xIyHyJCbiHOIP"]}, {"action": 19, "resource": "yqIPzVtsNXn4Lyvm", "schedAction": 30, "schedCron": "ndMFSaZWm4lmVx20", "schedRange": ["OaDX7DNzMISQ8MSh", "k2yl9CnAL0ej2Ec8", "7WPhXf0Qp4USPRtZ"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'VVd88zEIIdIeIB59' \
    --body '["pLetN37BtlLGoe0u", "XGt0VStq1JvAGCz4", "dr5vLPVqXwzoPzaA"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '49' \
    --resource 'BVlJWtPq7QJIUKPd' \
    --roleId 'dRk9JEk4rEq0dgZz' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'Q9tSxN50ON0UzDGT' \
    --extendExp 'false' \
    --redirectUri 'ZP1LjZYV55DPa5Ws' \
    --password 'lZHu7nYGzhT0LLTz' \
    --requestId '6b3hiirJBjPXb6x8' \
    --userName 'GHrF0lqRerIMOEy9' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'true' \
    --clientId 'vg7kU1FaQGS2pRiD' \
    --linkingToken 'UblTyigbIQsai5QU' \
    --password 'xhDegRlkkdfal7H9' \
    --username '4GCPVerl9fDoTi3x' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'ddqZAkNmM4yaoczO' \
    --linkingToken 'PXJNSHYqhU9SCRVI' \
    --password 'Gcv22Ne2woJTEj9B' \
    --username '4Ov0PutBXbEdtfQL' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'e1QJnVMVEhmUhvd2' \
    --extendExp 'true' \
    --linkingToken 'yY3afOnTqpSZH3od' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'ObHClTVgW3L6rQKD' \
    --state '8ZNuibRks5qDGg6S' \
    --platformId 'oMebD4805sDwzEfy' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'LrLitMUKqjL8ot0j' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'tKlMpJIDMw1vDE9t' \
    --isTransient 'false' \
    --clientId '9hL1Vz9OdYPAb2T7' \
    --oneTimeLinkCode 'GPmII24jZxOOcFoY' \
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
    --codeChallenge 'vdNSmcLUqBOglKXw' \
    --codeChallengeMethod 'S256' \
    --clientId 'dwEkfeteib8FTU9Z' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '0b1aV8CjFZRjJnCt' \
    --userId 'L5haqWZ4elfGkjHN' \
    --platformUserId 'GM4f7t3lGLQayBAm' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '8NgKftodJigk1u9w' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'hsD5zAvl6X3pI7YS' \
    --codeChallenge 'nAET4ibmaZfTckVL' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --loginWebBased 'false' \
    --nonce 'nilYd0duMNxKIuVZ' \
    --oneTimeLinkCode 'Uw4QJbO0jqyu77NC' \
    --redirectUri 'KS0ZLAwg49QUKSEX' \
    --scope '3nfOA8AP0v5AAUru' \
    --state '4b2zLGxfvDOFse3q' \
    --targetAuthPage 'RiCaGJ054dAPg8SO' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'WSlVH7xfIVYgfkwl' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'jcVHU1aImnhR7vT9' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'uoRydP86BB8FGRRL' \
    --factor 'SxVOjxcVc13qzJOz' \
    --mfaToken '1xoycPybkNgGBgXE' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'tC93ZyValFHbwIXr' \
    --mfaToken 'kSAZwEE0FeSNfB7n' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'T9Uhak2UgCOPTW66' \
    --factor 'Odh9MuUyWhScLaql' \
    --mfaToken 'W9VVH5YskPxKTZRT' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'haub1dBK3Mcr4evk' \
    --factors '2Aio673fSFibUUTV' \
    --rememberDevice 'false' \
    --clientId 'IyA9KZyikQ17bLkP' \
    --code 'O0ZTdpO5qs5QhS8i' \
    --factor 'LbcpwlfhDF7ULMSC' \
    --mfaToken 'J8fMugkEhr0vbMBD' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'AVk8Sx91AfCHcUMd' \
    --userId 'XXoAwANwmnspcJQI' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'jo4tilrrqwTlayJQ' \
    --clientId 'oHqXnO9DGGvQOIRA' \
    --redirectUri 'uCcYeZe9A0TQe6zw' \
    --requestId 'UbwniT9RSroRuwmH' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '45dggRaAF1HyM690' \
    --additionalData 'qlPRDYIBEvdUuFma' \
    --clientId 'Jd6O8PIOgRWnIaRF' \
    --createHeadless 'false' \
    --deviceId 'AvrFy1Ix5mbI06ed' \
    --macAddress 'N5EXwpll515vd4oG' \
    --platformToken 'FleZfi2IU6wQyU5P' \
    --serviceLabel '0.36495663433393544' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'Vv9rt5bSs4CvZ0u1' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'r5IGQmum3UjGRdCS' \
    --simultaneousTicket '0YIg9Dh6kyxk2gAU' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '9VoWhkEGlxHog0oC' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'd7F8nAwoxaHrx6Wq' \
    --clientId 'OfzQD3hLLte57u3N' \
    --clientSecret 'zY0M817DktqW8iaY' \
    --code 'MhRpLFbNTHsgx9pT' \
    --codeVerifier 'fCYmSaj0Rhyr9Yk8' \
    --extendNamespace 'rxwP1g2DYlCAJiaC' \
    --extendExp 'true' \
    --password 'VqgABKYWbR0YLHTK' \
    --redirectUri 'P8dDAUQ4iGAGsjPO' \
    --refreshToken 'IIs56TD7Kbx5CXBR' \
    --scope 'Wr6IrUA3GhuSda4t' \
    --username 'eS2ZNJ4sGquv3Rvi' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'MzL03guhQSRaF0Xk' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '34FFkFT3bmwMijUr' \
    --code 'r2nD5J27vFN5rMtM' \
    --error 'K3lTHDAap7LwhC6i' \
    --openidAssocHandle 'mgaExPnKq3kANl1h' \
    --openidClaimedId 'LpWmimTob2lT2NiX' \
    --openidIdentity '6ddN3cunGjeYus2O' \
    --openidMode 'ldma47BBRzvfgUiY' \
    --openidNs '41Pg32QBwcM6g4Ln' \
    --openidOpEndpoint 'X0X89U1fIlWZaW1E' \
    --openidResponseNonce 'RUZxB4U0VzoEGnbR' \
    --openidReturnTo 'nkcLFYjUTaNNlIcB' \
    --openidSig 'GlLlWPtqjokHKWyX' \
    --openidSigned 'LAZppFyACROjay7Y' \
    --state 'fdkTiG991wIsO7tl' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'zqUQRSuBNaB4VYqE' \
    --platformToken 'aAomouGcuA4KSFS5' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'LNxQBapHx0xKBdKa' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field '80Gr222cD9ZAb1S4' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'FjsUD9fMTMaUyrVI' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'Gjw8s1GRzPudbhBr' \
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
    --clientId 'tCsmMI1bRynReZ1O' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'glzP2t14FPSbmmEN' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'cC6qbpmOMRDDgieN' \
    --limit '69' \
    --offset '85' \
    --platformBy 'nOlWssDyCl3VBBIU' \
    --platformId 'pWzF2XDrG70rp72Y' \
    --query 'iZUrKNEMOVUCDjGm' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "uWqpGvKZ3ZXBHhd6", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "u3Z3P1egoifpTzxx", "policyId": "VUduKsHqOSVpSUlq", "policyVersionId": "gbWUvM6aNnDdJPVn"}, {"isAccepted": false, "localizedPolicyVersionId": "WRWDmjCzNQ87xuES", "policyId": "4UbYatK6qb14gH8R", "policyVersionId": "Pjd0ODTo1DvYWBTI"}, {"isAccepted": true, "localizedPolicyVersionId": "dykecIN7wrss0JOS", "policyId": "HEVgXhA4RgvJFNJk", "policyVersionId": "Qne2TmtzyRgLIsQ0"}], "authType": "F3KesJGt48tiaSxE", "code": "BmSn9IUjguKe3FO8", "country": "HYAbG5CLkV95yRAJ", "dateOfBirth": "NULcWJwwoeKGzw7h", "displayName": "7Yww1ph3hYb11LXa", "emailAddress": "Fa7nhkTqq3Ii0uhg", "password": "OsvItyKKDRVyCMGc", "reachMinimumAge": false, "uniqueDisplayName": "P7otmDkPvGZKr9uy"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'AHIv6ZcD6PXOaou4' \
    --query 'dJfcop003fw0FQMk' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "HzCTTSvUl7r64LHN", "languageTag": "zzxRwbXq6FvrdSHB"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PV11D5XYNpMryq2t", "emailAddress": "ZVXwHwPb23ETA3RN"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "bFmEVjgqpjwIdrZs", "languageTag": "k94MVWtKNfeLJZc7"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "v4AA5zX9Jp5ijGoF", "password": "aA2tInRjLKv2WUSf", "uniqueDisplayName": "5tzn478hBnFyjLQ6", "username": "3oR0xq5kqDWw6bWd"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '7UORXIhSD6PAE7G4' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'ii0fEAWfyjNtYDXb' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "WQE2kaM1J7LqCeQ3", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "dXvmyFK88OQbY085", "policyId": "8UByn558QCBHgYSr", "policyVersionId": "G92iOftnQAcHMzs2"}, {"isAccepted": true, "localizedPolicyVersionId": "v6l9gch0J8dplkZN", "policyId": "0mi3fvWIpPJH2MJQ", "policyVersionId": "1erXVi9kZTTsmwrD"}, {"isAccepted": false, "localizedPolicyVersionId": "BWAwVXpyOePINKMq", "policyId": "19F6ebXwDzwUBy52", "policyVersionId": "ZdRmNINmEQqyMOg7"}], "authType": "YIgvhys2na5qthOW", "code": "jk7x6zEMQhzC4nEF", "country": "gNpm5mZAhQSXUqsg", "dateOfBirth": "OKONOL95VK9PA0vz", "displayName": "pyXExKteIZVgWVVt", "emailAddress": "DXOFGIdYadbMd4Z6", "password": "uJNYMCHywr7nvPMM", "reachMinimumAge": true, "uniqueDisplayName": "iRTScZQ3ZmL05Os7"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "z7z7j6ZK5jDL9YJn", "country": "LmxeNq586mro55BW", "dateOfBirth": "unDcrOKRHHZCYMt3", "displayName": "LP97Y7RF4vl9Chz4", "languageTag": "caOvUXfHfpzhje5z", "uniqueDisplayName": "mWndJIFvcDKaHsgJ", "userName": "2jnf6Ys0TxoUbh4V"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "65Yz9VSyeqZnvdmE", "country": "RTjVaQsjiMlzdvPv", "dateOfBirth": "kPSCLz27ey5wESmd", "displayName": "romjHI9Vpg7GDijE", "languageTag": "cs2t007Y5vDu0DWj", "uniqueDisplayName": "mi23pUcnirtHwok4", "userName": "PM7myHHqwUawYh9d"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "tetjKd3p8xf6ho92", "emailAddress": "j8sqtJzLqIirIhvD", "languageTag": "zsVs4cZkXLOh2UYw", "upgradeToken": "m90TYNRVBhq2QKu9"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "1evDtqsx53TY6TJi", "contactType": "dhsz2zKcmDjSouBW", "languageTag": "W6YFDfMKsG3ozJrC", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "kBmHV5JY5kfIfwKI", "country": "0OW6pvNehhwJo2uB", "dateOfBirth": "feNAmkOUOIGsqXAD", "displayName": "IjX7aual4kOCNXWA", "emailAddress": "dHi2f5JHf0WMPD44", "password": "pzW0Qh4WQseQLOuB", "uniqueDisplayName": "G85f1H6HyEDPkMDM", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "0ZQiBBvq9S0aNnjV", "password": "mcdRyIfb3XaS8ZhP"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "3VBlbmrvesYOdq6w", "mfaToken": "QUtu5zeaxK2koioT", "newPassword": "C4MBTUquS8HhqFO4", "oldPassword": "L6xKOWzZfyjYBpX3"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'sOT9Xa4683q3dXZW' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wwox0eFpcXc7Fdfx' \
    --redirectUri 'BAKFG5RovCgJcV4C' \
    --ticket '8eLepgo9Q9Miqr9F' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LmQdniRvpR350p2E' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'DWGRjwsKqswFdIu6' \
    --ticket 'ySD6cg1cy7ooFnZj' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '4SsBfG7g2nNBK8gI' \
    --clientId 'h4xCQLZVBRMLw7lN' \
    --redirectUri '5GqSSGTSCff5NXvP' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'RAWO9zwtd4quuFZM' \
    --code 'f1gk0NCG47UbGiOz' \
    --state 'jeRBCDXZXCzFhuCJ' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EZG4wC2kHzOpYo1m' \
    --code 'Fav6TkYH1Wp5RZrg' \
    --state 'aTNHHX83ZeTpgJdn' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "tSuFeSdjIHs5RCJa", "userIds": ["aVtKSe9t9ayrDA5Q", "5VQuoebxllNcs527", "TiQjMIi2lpBl1Gi6"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "kCL79gXXyB3YUrga", "code": "4FXPTXlT0mHyha8K", "emailAddress": "ay664ZnQDgC1HzIe", "languageTag": "msd4hDH0JQZEL2Bd", "newPassword": "oxKftSSf9YlfmilH"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '87LSBugvCRrJXe8p' \
    --activeOnly 'true' \
    --after 'ii2kL5sHWg3ypoaT' \
    --before 'kj0Spknt6vgNkCr4' \
    --limit '72' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wpuhxKLAgwv2j5J7' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '2Vqsx051UCbduyoO' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bpQS4PmSgTlL4tq5' \
    --after '0.2977493418740884' \
    --before '0.4961580106721424' \
    --limit '94' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rVAXJvTnnPLZyDFh' \
    --after 'UiV8WfSdV65gA0U1' \
    --before 'El0OISowsdLkJUBH' \
    --limit '34' \
    --platformId '3yca6LRr6HzzPwcR' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tLp1if6ggDNiZAzD' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'I0nICcKnCkd4mNEP' \
    --body '{"platformId": "jvwuc2nq3z9uxZUE", "platformUserId": "HRv6RZbGDAoyrNcY"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'ZIKXSQrcZuqhVp4a' \
    --body '{"chosenNamespaces": ["yN4gdWLLI0Mw2CIe", "JFf9MA7epmxElGaB", "7pjz58BULMHFwuCs"], "requestId": "GZHqLNwHNQeNHviP"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '8Vf1lUobJuorPaV6' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fb6pvu2teduFzV9l' \
    --password 'OdGF0js4aCmghhGm' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'WRPJGtXPJ6V5i8Sw' \
    --before '601LP9vVc27SNGzh' \
    --isWildcard 'true' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId '6hU9IFXXrxMoxOOK' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "P9bpoPZxxoIqgFbU", "emailAddress": "zBzmK36bvudAUSxa", "languageTag": "el7ThFI4T7e8uYwV"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "swFRnALW4tOoAbaP", "emailAddress": "mgUIbyXoWiyhPl8A", "languageTag": "rOe4kdLITBC65cDu", "upgradeToken": "GJiF6IT4nXZymTFz"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'Dq3Q1gXDaG4gmGi8' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["YB4O7WvPMZYrTEKF", "oczeeelBI3ox9PbH", "HgmUstPjIo0AfMfy"], "oneTimeLinkCode": "0SrFjYVZNdRLJiBC"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode '92QSQEoVkrfOcskq' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "I4o22VRHXraTjqJP"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'a0HxDvaYRkhnSI4I' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'exFo2IJtWsW6QztA' \
    --code 'YIK5dueIKmXlBQfY' \
    --error 'mUkcsIzjoYf93fQF' \
    --state 'EeUgNytvrKXsNMtx' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'FR2L8rBeewbgmfUr' \
    --payload 'EboRNFK4GDuWCMKP' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'bSdtId0UtHBTlzHt' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'ZaJNecug1xlUkMmX' \
    --code 'QEQy0sA9Q9xzwAjV' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId '6KSp2kT3U2fgGvBZ' \
    --upgradeSuccessToken '5XmM7IqpPsEtCBhP' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '57' \
    --namespace 'M2kKMjHFu50fQEtb' \
    --offset '94' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '7QT6vQh20wrHtUjs' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'zNCZzQpVZl9R0nuG' \
    --endDate 'UlNjtXrSuPhdOoJX' \
    --limit '3' \
    --offset '81' \
    --startDate 'Yqz8lCWw4chEXZ3s' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId '2k7ZzeEBf6KOwRXj' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "EbSfQpTEYaUCNV12", "deviceId": "EjfaVXae0AjTmMG1", "deviceType": "tqSBUM1aEs6hHnSG", "enabled": true, "endDate": "0A4k6bh6ub4p96sH", "ext": {"p2Hclk6cqAEAAQjy": {}, "OOyughMDPdjhLmKU": {}, "yYVMcG55o6aUXDDO": {}}, "reason": "fbOrIYITgFSM31Eh"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '1S8qZG3TR0Czylgk' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'eFnIW9ksMTyxPQ4L' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '6TalZbdzEXTrdFO3' \
    --startDate 'TiOK1sR9HI5dtzjn' \
    --deviceType 'OW8dkrsg4VNcwslc' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'zKQOZfuOYU3PdLYg' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'U6r7EyfQE9ZYJOAN' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'BZC9HuP5jJsXmbt4' \
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
    --limit '65' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zzckazmRnoKQ6kb0", "policyId": "gRroLaUB98RzniS8", "policyVersionId": "h5Pa9nxnPK8cHSxp"}, {"isAccepted": true, "localizedPolicyVersionId": "kwer70jL7UcEPhq0", "policyId": "mSBPncrokdXsOtmn", "policyVersionId": "hV3kbCTCucIQBe2L"}, {"isAccepted": true, "localizedPolicyVersionId": "RDw3lzafAmOzLwX2", "policyId": "BPiA21wrIWv3OKPU", "policyVersionId": "jcDXtSViKzn32cmW"}], "count": 48, "userInfo": {"country": "R6LjapNkwpt8O8xx"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "RW7QIYDTFQtN5ZkX", "policyId": "8HLVvNenc3FpJZve", "policyVersionId": "YzoGulseYlXQJ4ve"}, {"isAccepted": true, "localizedPolicyVersionId": "NnKc1vs5VCkCkINE", "policyId": "u70wJLRsPomI3A3d", "policyVersionId": "4vQ1TKcE2bbEqK5n"}, {"isAccepted": true, "localizedPolicyVersionId": "8zc872br8bBgTZVc", "policyId": "kS8rdltOvvWtzrJE", "policyVersionId": "qTnVjCBYrrBetEvz"}], "authType": "EMAILPASSWD", "code": "FxQwxXn44cDhrMcp", "country": "8DMJQMFceZDy2XIW", "dateOfBirth": "kbBXgPXu1jql123e", "displayName": "DCA4WQ5bloqsRP4b", "emailAddress": "gyNTa1kj2jLa1vvs", "password": "GUXEAtXmVvQtjYYB", "passwordMD5Sum": "6qAc3eypqQTIB50n", "reachMinimumAge": false, "uniqueDisplayName": "ozbjKJ9MrNqP0FW4", "username": "rITl8jSA65NPJW2v"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["gCPQhn7Fa16CfmsG", "PLCrt70CrPfpZZHk", "Bg29XzeRaLenqkfx"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["1nMpet44vjpMjDfy", "ESxuzYdW7M9h2xM9", "jyhGWJ4LyV6af3Oj"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'sEAcSjsrsL0cBI7G' \
    --body '{"avatarUrl": "Hfy5TNc1onbdTRKd", "country": "HfNNpv8It7tIIbrz", "dateOfBirth": "natCoshIPslrVg14", "displayName": "BlJhEJf54ZbDUYKn", "languageTag": "pICFJou7meDoyYwk", "skipLoginQueue": false, "tags": ["Zy2uDLSEAbWB6PmP", "Q4fHgNAmW30e9eWK", "9GOhLVLmrhBJYte9"], "uniqueDisplayName": "oVST62M8rqKE6rwg", "userName": "UflIRIpdpUAEhdt6"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'usJeevWer094vhyl' \
    --body '{"code": "IWjbTSFOgw7gxLv9", "emailAddress": "b7uDecUqr11Gkx5K"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '0HR7kRVOyofvMcnZ' \
    --body '{"factor": "6SvtL5Ld2VDhui5V", "mfaToken": "nZIWJxBXui2eNcVw"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'j384E7Q7zlWhCHpH' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId '2jX8YKttnOKvvgy6' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jv28jbtaTbEIkxXq' \
    --body '{"assignedNamespaces": ["DooEy4wXV4TOcNcO", "pmvsNuJH6Xw1wZPe", "ZIvRAwkcXECBhWcZ"], "roleId": "LXhZl8hJSZHjL8VR"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'LbyqyKBsagAvk5mv' \
    --body '{"assignedNamespaces": ["PjzldFz43OQiYCMi", "EZu4EnFDRHnRlYXq", "C7t8MdV7bWREuSZ3"], "roleId": "PGtqx4dMblF6bAL9"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'zHJYpPD24Oe8VxF6' \
    --body '{"assignedNamespaces": ["wq5AG8LNqOSmbQGK", "KSnY9BrYzF5qdCue", "XQqGDBoB5DTxmQU4"], "roleId": "GfCpJlysF3HHk57m"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '35' \
    --offset '93' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "tZpFAX7MaXU6vlYp"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'UcsQmsx9rxVPTee4' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'oW70n0RNF3Wbsabm' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'tdQQQgalRc0M3gjC' \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "m5ei6yEUt9SEfIqH"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'czw6BuSFxdmv7fuq' \
    --body '{"permissions": [{"action": 46, "resource": "g4RpU3mg8YyZHjnI", "schedAction": 100, "schedCron": "DGIk4xiy1Z2qJkpl", "schedRange": ["XAcT81ddtyQR0pBm", "CxUFcGszAOpoVCvc", "QKpcpvcHsOYICNIr"]}, {"action": 66, "resource": "M8HjEmJEes5vePJp", "schedAction": 88, "schedCron": "xip3qagpwTqR0fJY", "schedRange": ["8fMMDh9OeW2dQxfz", "OZ3Zs2PhrRT4UG6j", "5A09ErzQuTDbVnwt"]}, {"action": 65, "resource": "zzBZm6eoML73tkiv", "schedAction": 68, "schedCron": "NA2sf67NxDFiqevI", "schedRange": ["kWmMiAK4ZIW318Gs", "W9GhfPC7f5sSGWoK", "SfTDy90NBSsmiwHa"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'ofDV5guA72DqCSQ2' \
    --body '{"permissions": [{"action": 99, "resource": "SuUq8HSQJjVJIW9x", "schedAction": 2, "schedCron": "IySpdACqFYqh3XxR", "schedRange": ["KDarEYka1Y5CgyPK", "IEhT5qtexyzwwsgZ", "sbsOVzjuLvTCpS7i"]}, {"action": 2, "resource": "gpcNGKqPqQTAzbLU", "schedAction": 12, "schedCron": "KdXFbLiycdu95xzO", "schedRange": ["sDAdtOClMydhmuat", "JVf8WGgtYU4deYeZ", "IYlOz8PjgvkIyHTu"]}, {"action": 31, "resource": "p3yVwPjMwCCmmJo0", "schedAction": 68, "schedCron": "sL42lu9UhDJrW2ci", "schedRange": ["P0vSxwqTmEul0TNX", "JPCaqsfbslQ0klTI", "3uvRUEVe502QAeGq"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'XZYle3kcVpQXVKsj' \
    --body '["gRE9Ps0PIGHDZWV9", "7hQcD3045SiBJSzd", "sLjlEGodTbYT88Hr"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'N2q90tukBDisyCyu' \
    --after 'SmYMQ4AXgiYOJ4Ib' \
    --before 'Ajp6yPKxzCBQyQGt' \
    --limit '74' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'AKOlxfTiFs5f112A' \
    --body '{"assignedNamespaces": ["EYdKrhIqbTB2kYAU", "ACsJHvtsiI0O2tfL", "NLZRsVePfv4syQGX"], "namespace": "qQBkuc8oSSpOGHhW", "userId": "iyU18bBsDupJaTgJ"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'HKsu2zvPcPhqLOYy' \
    --body '{"namespace": "tTQyea5nH23FyPnK", "userId": "qA7urpvzRyUsqMwT"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["MscYe8xkqKQDAKlG", "N8pk8Ygy3FntJEwi", "4ODckcSovxerc7tL"], "emailAddresses": ["WU1TnaHPF3LRUoL9", "DiRXqPClubDer0at", "nmVaxtFrrTfNnYrH"], "isAdmin": true, "isNewStudio": false, "languageTag": "8errcga5xKX7ki9r", "namespace": "N0fllHm3SWGIQUW4", "roleId": "ZxsAuy8Mxk2ESpdU"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "tEkai7aZPynRGagK", "country": "SZX97QRo9ExS8qaT", "dateOfBirth": "GzUKecqiuUDCzq6M", "displayName": "Q7bky5lmEjftYCmT", "languageTag": "pmNZzjj4bDOARYjz", "skipLoginQueue": true, "tags": ["C5axVSDaxrjCqoXF", "fiux3W3L5ddGyF3s", "b4xOaPNlxacC3xWJ"], "uniqueDisplayName": "OONoe5IdhdhFVEoc", "userName": "MDkjGzYi6njiKzCg"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "teKVMc50PEJhCzjx", "mfaToken": "cpxBRyYWjTQELCP6"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code '4LAgu1HE9a0FpsbO' \
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
    --body '{"factor": "5Cdwqf96rhhEiX3R", "mfaToken": "OVorLzeTkBBlWvbh"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'CPB6WDzruURPVf3t' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'xiB0MXuEGLeCHvxA' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'olLnDElUJQAF61E7' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code '5vuoiOWODt6y0PHD' \
    --factor 'RH2176iRzK2l8NRt' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'NYR4tiXJBKULLFX2' \
    --languageTag 'UmsotNLh1kwsgBas' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "BUyAGFj2YEh9plJg", "mfaToken": "pihV2tCqbWbl2x7U"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'NMR2lgKu43hYqTih' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'pFxco61Oe4bN9BpS' \
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
    --clientId 'vS84iwDPytwQ7zP9' \
    --linkingToken 'RxdYNBs62Foe3trD' \
    --password 'aQHXKNcrBncaGRPP' \
    --username 'qJ57d5r4KXxLI4BE' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData '2V5MUKEKvbT0JWWF' \
    --extendExp 'true' \
    --linkingToken 's5BLX8tFSnA4Fd9P' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'PFgArul5sSHBxp87' \
    --factor 'UKz9s28pWIl4Ykzu' \
    --mfaToken '2aNSrNlFoUgy0Laq' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'Mgsq5JDxnjcBousE' \
    --codeChallenge 'aQIWUUOWqL6BbTxK' \
    --codeChallengeMethod 'plain' \
    --additionalData '3tTM3FuqOhxvpZRp' \
    --clientId 'x07R2qTxxA4zL1X4' \
    --createHeadless 'false' \
    --deviceId 'yPdtepK196MRi5OU' \
    --macAddress 'hykyOi5P9LZ87PW8' \
    --platformToken '0JdLiOb1MLAf2QSU' \
    --serviceLabel '0.4230603032993171' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'hgBPHl7cNTWy4Txf' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'RutbftOXvUJi53mm' \
    --simultaneousTicket 'gG03DUturdgSt3jJ' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'L4I8kNdCJaFyFXFX' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '44wF1RFcf0wkMfVI' \
    --codeChallengeMethod 'S256' \
    --additionalData 'iyLP00I8cHXky1sP' \
    --clientId 'xZKe0kK4wqWEmg3M' \
    --clientSecret 'P8KaimRFcTOx3QVP' \
    --code 'xa8Fg0QiWC0mc1KG' \
    --codeVerifier 'AFpTkmr4vNioaAIj' \
    --extendNamespace 'lIAAZxEpDh6yOBAy' \
    --extendExp 'false' \
    --loginQueueTicket 'fIbxj8Rvp6c3qKTv' \
    --password 'G9phEpRf8yfvPMM5' \
    --redirectUri '26gAy2NmGCjj5H0n' \
    --refreshToken '3gapqBiGrserjxlM' \
    --scope 'UhkWcOuDwPxHFj8N' \
    --username '4b03ixdImUwOnVWw' \
    --grantType 'client_credentials' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'Vselo0VuTF4zAdgB' \
    --code 'QqXl5vXVoqvcHZU2' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'On0aZJGbbiCsgNm1' \
    --rawPUID 'true' \
    --body '{"pidType": "qMVnLFFLqg5w474n", "platformUserIds": ["PDcz0fYE1qty7F4R", "3G7zIb2FiGbmRBXN", "xU2DD2unCIJVqxfL"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'gpzaNwVLuuD8eIiu' \
    --platformUserId '26klsmpgCsw7awLE' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "JirhQuzTxG0DUBuS", "policyId": "JzWYPBGBWULYdIep", "policyVersionId": "L2qL0pkRfxaxhvjf"}, {"isAccepted": false, "localizedPolicyVersionId": "uqppATrlJ1GtUSkp", "policyId": "IdRqEAqf6oZGtkpx", "policyVersionId": "GvNefsnLHHniykES"}, {"isAccepted": true, "localizedPolicyVersionId": "dhgrJsyXOHhgC3tJ", "policyId": "yL6CnntIl2arpVzu", "policyVersionId": "jrTaIckHdQsowvl6"}], "authType": "EMAILPASSWD", "country": "mKUyjZJLjNJgLe1Z", "dateOfBirth": "rCVfN02MWqSIO6AW", "displayName": "97g5DQufJZJE2pky", "emailAddress": "Ur8ukp0SwYl3jTKz", "password": "gR27PpOm52pTRA95", "passwordMD5Sum": "0jFVMjikm7ceJQd2", "uniqueDisplayName": "BCql5q8f5Eh84LDN", "username": "gOa4IWgPxV0I9yly", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3TeEbEudSQ8PUVFA", "policyId": "LsNs59WlFHVvDr6N", "policyVersionId": "pEU5PhjHQ770C8rO"}, {"isAccepted": true, "localizedPolicyVersionId": "P6DeVwfyjQCE6O59", "policyId": "lTPkhz4ajVpgmvkl", "policyVersionId": "d6GSebuXQxepYUce"}, {"isAccepted": false, "localizedPolicyVersionId": "qE31UWSxJGeJArAW", "policyId": "mWJ2sLvvR6MJPA38", "policyVersionId": "7zhCy7ycL8NXnARL"}], "authType": "EMAILPASSWD", "code": "02rG2c2jGvUx3u7U", "country": "3kGm880mWtSSnZCc", "dateOfBirth": "KnBJYeunTfOxUeaZ", "displayName": "lylzY370XvbItYNw", "emailAddress": "0Z4aus3G9uHyk6r2", "password": "tOR7cxpGgWmkLjSv", "passwordMD5Sum": "X7Pc9NfJphIdeQX0", "reachMinimumAge": false, "uniqueDisplayName": "NTygXf80kkt7eUzu", "username": "xAMAlWoPt1KWnxd7"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'u1D1rMF83U9elvTq' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "h4NHGjkKueHDv4sE", "policyId": "BvdasuzXKypt9ylv", "policyVersionId": "sLmvf5Di9Kv27seF"}, {"isAccepted": false, "localizedPolicyVersionId": "uK7rCOQRCNS3Tda7", "policyId": "dcVEzTgP3ZebHotM", "policyVersionId": "MsBwuvyiNVatfueT"}, {"isAccepted": true, "localizedPolicyVersionId": "dbzh7VuxUGoTgMdb", "policyId": "UwHTnGkIyFPAMfm3", "policyVersionId": "WNna27des251uEhU"}], "authType": "EMAILPASSWD", "code": "ZirDaiXi8T95pFxC", "country": "9byo4xhySQoqOyPC", "dateOfBirth": "HNDX886mRyBLUD7E", "displayName": "hHOkNC29WNFSoRMP", "emailAddress": "6sv2ROd4TFNoVTdz", "password": "QW7mvJ3fRpvaY38c", "passwordMD5Sum": "FdEspoAcsYvSblos", "reachMinimumAge": false, "uniqueDisplayName": "FHqEnaV9CDMfgGMz", "username": "xyFUiDUQv8LQ6FjJ"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "qurvpNHeranWUKT1", "country": "h4pJiEKv25Oo3lqe", "dateOfBirth": "ZIUKcDUCs9cSUBLY", "displayName": "ROFVYwz6WvqXFRs2", "languageTag": "hvwgPG0ETWYQGf3c", "uniqueDisplayName": "sAPkSzflt6B6KQ10", "userName": "nwfGhJR5NrPmUr5x"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "nC2t9Y3tT0alFDcK", "emailAddress": "5LkToOtEgaEgpb2v"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "WrfeDcwrEuUmy8Yx", "country": "2UXXgYeSO4ANokRc", "dateOfBirth": "3Yw3PaCwbV43RFI3", "displayName": "pA1QaCWmLJmkF688", "emailAddress": "tgHJpsYID6FpwpoY", "password": "372U2VCVqSu6gx2B", "reachMinimumAge": true, "uniqueDisplayName": "VxNVDwE3UALYXGmV", "username": "xwjJ0ebsBo0mdJqx", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "pSxu4rbE3vjNxODQ", "displayName": "drPR8XjmCCS9KARV", "emailAddress": "Rmn3XUjBuPlwojHQ", "password": "mV6mplh9MUge5cD1", "uniqueDisplayName": "gKeSZvGwEwRKZvmi", "username": "jI5Bla6mQcr1YjdE"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "QfasKfSsfvKCzmXD", "mfaToken": "4mjpR44Gh5TJXmXE"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'SkqRK9VoEFmEZ710' \
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
    --body '{"factor": "7Qkyr44kfx85ThF2", "mfaToken": "WtmHd3zEMilIJzFW"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'OVqvDqWbxxtQsXym' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'bTYaYvfxzgzLiOeH' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '6BQJusTlb0NVrkcG' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'nDzXfSOWIB3OWs5k' \
    --factor 'eCOJzxQyLaTjR3En' \
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
    --action 'SF9i4VIUkyI0qVbj' \
    --languageTag 'jo3DNDGcdNtB71XL' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "I5MXxyfklwqy98iw", "mfaToken": "w4mU7cT7d4F4lw7s"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code '5iFABn19wl1RPkDi' \
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
    --factor 'Vjm4q4u7MLaATcTV' \
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
    --userId 'gb9zZ9xUz0V2XE2L' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "HCStQEa7f66vWdOu", "emailAddress": "v7O6yywGTFE6Lckp", "languageTag": "Wryw2EmqHQMnqnhp", "namespace": "7ZnNIEhbmmkBajRG", "namespaceDisplayName": "A9IojmnqYVZIbaWx"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "YKViWbnIRXnuFrgs", "policyId": "fidcmIh7PNEqiGkz", "policyVersionId": "nXOBp209LHjf1mR7"}, {"isAccepted": false, "localizedPolicyVersionId": "V06ssTjnCO1GsJYL", "policyId": "tMc6l2i1tseLGVEg", "policyVersionId": "hoGs2fGMcIUbEuTG"}, {"isAccepted": true, "localizedPolicyVersionId": "G4b6bgf5DZSWcxGh", "policyId": "imITOKZ1g5l7aPU5", "policyVersionId": "YhEBC7bfNkMoJHIJ"}], "code": "tdCalLuJ9Jdt9RBG", "country": "1hpVwnWuVKjFiKYR", "dateOfBirth": "6rJVI4cpDOxTArMk", "displayName": "C45KvUCBVXmXohrS", "emailAddress": "2MMW0pHIjO9y7yEI", "password": "TzcIJJSzcyoB9vD8", "reachMinimumAge": true, "uniqueDisplayName": "2EjI3FPNZ2BO0ar2", "username": "vAmoNXKFpBLLdFMv", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE