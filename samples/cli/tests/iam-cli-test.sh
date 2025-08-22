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
    --forceDelete 'false' \
    --body '{"modules": [{"docLink": "d6UsDfl00Hm1pnyp", "groups": [{"group": "w0zmYppPgeoSwHBF", "groupId": "VzqNBpNC6eKJuehs", "permissions": [{"allowedActions": [74, 16, 48], "resource": "komvHvlKmGfF91Ph"}, {"allowedActions": [47, 86, 56], "resource": "VoRLR6xOMS3XblyF"}, {"allowedActions": [82, 69, 8], "resource": "1IPx4yb7fwvBdoYS"}]}, {"group": "XVHx34tApTg85HN0", "groupId": "uw3TVkaeTbJCEgoc", "permissions": [{"allowedActions": [34, 61, 46], "resource": "MviOWNjKS98QJiMY"}, {"allowedActions": [48, 98, 62], "resource": "jC9PlfqMOqbY24xs"}, {"allowedActions": [47, 48, 85], "resource": "r8hi3wPx0ShDPGgB"}]}, {"group": "n6b2Vn7C981GeRrV", "groupId": "svZoNqZRAFIMJzpk", "permissions": [{"allowedActions": [28, 72, 72], "resource": "xTZA1GYUrmspdgtQ"}, {"allowedActions": [50, 91, 1], "resource": "DJRrwyLccYHpTxQ2"}, {"allowedActions": [79, 80, 65], "resource": "BP9HqhRtr3XczrsT"}]}], "module": "vF3DWwHLLbUQ6pym", "moduleId": "O09cEJ8GozT28qyr"}, {"docLink": "FnTkZUG0vPyU2jK1", "groups": [{"group": "RRrs6v4QgokhRq6Y", "groupId": "e6v4JjBqRjAIzNjy", "permissions": [{"allowedActions": [69, 86, 78], "resource": "ubgXvfNOv34RANQm"}, {"allowedActions": [53, 30, 47], "resource": "qccUqA3AkwotO7ht"}, {"allowedActions": [24, 38, 16], "resource": "whKQohTn8b48kJeg"}]}, {"group": "xxYNn2U2g2uticqm", "groupId": "JIdn64YHb5CTy6li", "permissions": [{"allowedActions": [57, 9, 51], "resource": "NgZWKEEo8GblPUv3"}, {"allowedActions": [19, 10, 12], "resource": "5t7s7nv3cJ7Ulg8c"}, {"allowedActions": [20, 76, 60], "resource": "ImVrPUTvvh1de7CS"}]}, {"group": "hEe6K0svYFRjMPE4", "groupId": "4esKkbCUjKHp69Np", "permissions": [{"allowedActions": [14, 0, 51], "resource": "ut5ORz9tdweX5Ig3"}, {"allowedActions": [14, 73, 3], "resource": "SrtVXf9oRpawM4Yy"}, {"allowedActions": [89, 68, 100], "resource": "e6BwH68Czsot6nMy"}]}], "module": "5RjEVVmUVd359whS", "moduleId": "ygMMORtrwJf2ldNj"}, {"docLink": "86ZFVdd1mkbTsgbr", "groups": [{"group": "D7gFXZRIO9ze0fmo", "groupId": "fbHRtzoSGcfODkZL", "permissions": [{"allowedActions": [96, 100, 30], "resource": "r75qWShuRqilS5rf"}, {"allowedActions": [95, 85, 73], "resource": "dGVn8yTrMiLsGN2P"}, {"allowedActions": [88, 26, 45], "resource": "hJvztriKX2pyduS9"}]}, {"group": "UEETghCDOGZfu4CT", "groupId": "okS7oNUn9h7LbQfy", "permissions": [{"allowedActions": [47, 43, 11], "resource": "KhSkhWsSi6r7dKRa"}, {"allowedActions": [84, 56, 21], "resource": "MPTsb5bItRyS8Une"}, {"allowedActions": [17, 85, 64], "resource": "88egQF172fgKtKzv"}]}, {"group": "hi7EA7EwN7gpJIbT", "groupId": "xIKkqZQOcpfZQlWu", "permissions": [{"allowedActions": [53, 31, 83], "resource": "aZL35U9R7zaiYir5"}, {"allowedActions": [90, 93, 35], "resource": "Gj70YTEvgKjpTOLo"}, {"allowedActions": [76, 64, 42], "resource": "Hk2SD8201NVMkCMB"}]}], "module": "icqPIIFnnvggNPY3", "moduleId": "ZN7F4Jg7i3DjgFQD"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "r7KXdryxvItsTcLl", "moduleId": "GzWTsHNz87LAKi1Q"}' \
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
    --body '[{"field": "aFHIIGGsdLkN0cta", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["eKGAhE2Zyh1traXE", "ct4O3YqqLZxX4DHj", "Mv6qGEGwmUakEOwe"], "preferRegex": true, "regex": "JVqaYkxXc5R2mrnY"}, "blockedWord": ["f6r0ZKnrMTqTUNyo", "GafUwz1FwOcMZmFT", "3VxKNRfebyjlHLsj"], "description": [{"language": "oJIfpUSxgVyRyLaa", "message": ["bhWUg5eBKvsSco7m", "IvRUK2OnMDnoCcWC", "fjDftuwGWgeJnsua"]}, {"language": "63jfHJO9QS799IqJ", "message": ["UH2pDBvIjchnPzH3", "6FHKD0Kr0tPRiTbG", "6nsEakJNxzt8BSfK"]}, {"language": "HcAv6L0QhY1laMFx", "message": ["BoxyCq54yj1QCfkd", "FuwuSAAu4WIQjqdv", "0OyKh5fzZ4WUEiGj"]}], "isCustomRegex": true, "letterCase": "Cr4yVblvv0ZXERLq", "maxLength": 65, "maxRepeatingAlphaNum": 18, "maxRepeatingSpecialCharacter": 91, "minCharType": 97, "minLength": 39, "profanityFilter": "dgYC4YNJg9zuFaPW", "regex": "oAUctJ2uKzGdA1at", "specialCharacterLocation": "AkKAHPqVBsehY0jk", "specialCharacters": ["shE2366VW6wrfrzR", "n4ENSJkt2cPECn0a", "lfSedBvIx3zbOVCN"]}}, {"field": "fl5Olc1zt5ggBoDd", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["tUydHBkq2ll0F4eJ", "pFW57KtLOgg9sa9R", "7vCnyxSJrbd4foDA"], "preferRegex": true, "regex": "gP81L7pbUiaM8FS0"}, "blockedWord": ["GPWp4ZfQ816gA7Vz", "G1QRK5Q9FNQgMtee", "k7uSXkrL0mZTW11p"], "description": [{"language": "usfry5lW6VZ6lJlP", "message": ["kGB2f1D4er7FPB0c", "zd2Ou2C4ZWJFII66", "85cvPfh4RBk4nbSX"]}, {"language": "PNoEqxjydhs3Pr6K", "message": ["wcQ1yAeB1hyPwj5w", "wiIWIXn8bi3DMOc1", "T10ZJUMV0AgofEpv"]}, {"language": "b8CWlfp5VNGFen8J", "message": ["us1vUpss5s34PAIs", "FwKxi2GcK58RoaPB", "m7pxXcEBXbHvsH3q"]}], "isCustomRegex": false, "letterCase": "sbxqAWVTYiWGPFQP", "maxLength": 54, "maxRepeatingAlphaNum": 74, "maxRepeatingSpecialCharacter": 85, "minCharType": 13, "minLength": 37, "profanityFilter": "Usd8C5aeEYMXz6gQ", "regex": "BOjVDulrpp9CFPLL", "specialCharacterLocation": "CoMgMIEpdD5pLkyy", "specialCharacters": ["haQTAk2PXXap9AqL", "y3iEX6A2pCSiKcCQ", "0LaMUxQKblBscVpN"]}}, {"field": "zaBHmDzkpQgFNeId", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["GH2oQnImwXjS6IST", "qHwfkyxXrf1Q99ys", "9v0ngOa5NT7jna8V"], "preferRegex": false, "regex": "KQkDAT4VZDSevttc"}, "blockedWord": ["XqGXdEhhj6DhAG5n", "jScODrY0N860CvHl", "PtzkcyL7v4PgY6ik"], "description": [{"language": "7eeG2HI6Pz6G8hNk", "message": ["RW7XD9zWGvDQvCxI", "b8wcFyxRG6AEN7bY", "mEzVh0BxJaQFwBou"]}, {"language": "oscVAF2Ipr3Wa6tu", "message": ["DDFsTLl3j9uCOGdA", "00i2Q3XFM9briZEB", "6AxvH5dYrzzjfrdM"]}, {"language": "frKEsXCtFGwNRjbT", "message": ["ljXLvxXeceZgvPxJ", "2PZRs7voRhs6jZvi", "JTEeieylrTJ3NSGy"]}], "isCustomRegex": false, "letterCase": "XW5an9hYenaHokdV", "maxLength": 100, "maxRepeatingAlphaNum": 74, "maxRepeatingSpecialCharacter": 92, "minCharType": 69, "minLength": 79, "profanityFilter": "lNKWJTLrAapsMIfn", "regex": "ZczbWjhmnMd13PRQ", "specialCharacterLocation": "E3jviMUMmGS2puVD", "specialCharacters": ["nxlND6Nizv8H4CNz", "CZ16hYsX2AK35xs2", "PCMLfRyJfE0lF9Aa"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'MOSfBFKcCCL9bmFp' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'wqWKkemLV6U4hj4M' \
    --before 'pILCJPAU1lmVIUvh' \
    --endDate 'xNpD7LkkXeoCArXK' \
    --limit '16' \
    --query 'h7CuwLRgZc5IctQW' \
    --roleId 'XSH6OpNmvmTxgacZ' \
    --startDate 'QS2MF37NzSVU3sWN' \
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
    --body '{"ageRestriction": 80, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode '6rt9FxVBHhFdFF0d' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 31}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'aAsmmNJ1ARFvW8Gw' \
    --limit '60' \
    --offset '11' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "lLgRCp00d8OiXyqo", "comment": "8RTZ0FP7CZDDz2XD", "endDate": "eDq6bnjEW8Tt9djF", "reason": "ceWMEPsICwfB1sj8", "skipNotif": false, "userIds": ["iMMToBWrCV150tlN", "61Gj9joL7f3RSiZU", "yiwrMTBfL2iWeD9s"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "qssjL1gsA5b1JRLX", "userId": "GBAGBkp6QhmOMR0L"}, {"banId": "zqSb1QVLOO9dOxPj", "userId": "NP3mvDORKYR5uj9M"}, {"banId": "GC1zvmPy9DaXHiHU", "userId": "QtiShKp7qQAm20Fq"}]}' \
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
    --clientId '8mjsKK4FKBValoeF' \
    --clientName 'uji5ytZtIIoQy1RQ' \
    --clientType 'xyOedzc4ds8f14ll' \
    --limit '77' \
    --offset '5' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["wEIWRCqs0GfduoFD", "rb8sSWU7EJ5o1Vfd", "URhO7DRHtNUpyGRg"], "clientUpdateRequest": {"audiences": ["vHRVJKTkj7spoJLt", "AeLwvJBFVPQvWJoX", "5R86iaTin1nRLWY2"], "baseUri": "xzaTUw0LVeKprH9o", "clientName": "lQxut3IsWelqyWK2", "clientPermissions": [{"action": 18, "resource": "PT4meSdOk45wZB1a", "schedAction": 48, "schedCron": "Mybn52d6V9XAgzdR", "schedRange": ["0UbTI2BRHeYn7yGP", "7xy1xCiMhS1WNCeo", "PZmuUefsaEYT66gt"]}, {"action": 94, "resource": "88CaVTlhKoyoTG1C", "schedAction": 11, "schedCron": "zWuIK1Mh2hkxXSZK", "schedRange": ["XyqISP9b5pxgRfpF", "zbmvfr66ecFc4XHd", "O1OLnV5wnEwAGAED"]}, {"action": 10, "resource": "i4fXtJh6OkxzqN4f", "schedAction": 82, "schedCron": "7zxyuV63v16PSiPa", "schedRange": ["EaxYp0mKp2I2rzOd", "xPQ4JlWlXNxlgakm", "YVnxN9uYlyaIHgOl"]}], "clientPlatform": "Isrvf9dYQroF5XaI", "deletable": true, "description": "RuLcHImh308alRwK", "modulePermissions": [{"moduleId": "Em0ixDixJ5ZtwX3R", "selectedGroups": [{"groupId": "YiJ6AvykbSIR1D1j", "selectedActions": [41, 96, 2]}, {"groupId": "9Tl8YZKhuDcETJMW", "selectedActions": [42, 9, 58]}, {"groupId": "LihSt9UtWxf0jjMa", "selectedActions": [64, 81, 65]}]}, {"moduleId": "eELIKxrf7WBixtfp", "selectedGroups": [{"groupId": "BDGcalfE4ty7IdYA", "selectedActions": [23, 3, 8]}, {"groupId": "orPFnIMIkQeqMxDY", "selectedActions": [20, 3, 100]}, {"groupId": "JxVYr3x8kJQ5ZMUW", "selectedActions": [28, 36, 46]}]}, {"moduleId": "LQLONbz3afEk1dd6", "selectedGroups": [{"groupId": "BrFCykxI3IXIAhjo", "selectedActions": [71, 54, 88]}, {"groupId": "6GPXjDrbdF2KCyUJ", "selectedActions": [91, 90, 66]}, {"groupId": "cCvWAXN9E4NbYc48", "selectedActions": [75, 26, 38]}]}], "namespace": "05F4nJkZ8Rxiwhv0", "oauthAccessTokenExpiration": 38, "oauthAccessTokenExpirationTimeUnit": "072MOIdK3BhJPdVj", "oauthRefreshTokenExpiration": 88, "oauthRefreshTokenExpirationTimeUnit": "N5v2nnaqQYEW9FUm", "redirectUri": "T28MI4YNupYe6Vk5", "scopes": ["v0qOwQ9CwYknlLsL", "ohns3LhX2977l7cT", "uOjtimoG4bPsN0Bj"], "skipLoginQueue": false, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["8JaXzyiW7dzQZ0Qt", "CC3JOkDGKt2G5Jqn", "ntxKei8iAE10kBmM"], "baseUri": "DLPTnqAdjpw2ersU", "clientId": "KsvIoaN8XJhVtuLm", "clientName": "8Rki9hw9LIs1MQuu", "clientPermissions": [{"action": 72, "resource": "7iCSOaXvLJtVraq1", "schedAction": 34, "schedCron": "Nze8d00zRmtUFf3R", "schedRange": ["x4j8HwMB9ZyYChWD", "VFpHkMhsOKynILeM", "nA4ZvaUUuxA87fve"]}, {"action": 14, "resource": "VtuVOiNMw88nB86m", "schedAction": 44, "schedCron": "jnwnhRYfiFxXirbb", "schedRange": ["P6lNq9NopqdxkBO7", "BIZ9iEznAsxHrKla", "uPGmHvMDRt3AjgjX"]}, {"action": 70, "resource": "pXHaPn2mQ6kpxndf", "schedAction": 11, "schedCron": "e6HYMcOxol6zj9ts", "schedRange": ["IK3u2XYGMLw2jM7Q", "hAUpAK8QcF3zEuxT", "yUFXkqlx20C7DukM"]}], "clientPlatform": "rtnqx0mY6uRZMFYP", "deletable": false, "description": "HtTs680nnyz6wVkM", "modulePermissions": [{"moduleId": "8vcLhIHv2231NfKr", "selectedGroups": [{"groupId": "QS0TPtRFzbZI5F2I", "selectedActions": [90, 84, 41]}, {"groupId": "R7t5LWa6GzwXajaB", "selectedActions": [78, 24, 14]}, {"groupId": "ghxIzUq5N6zn5adb", "selectedActions": [33, 23, 42]}]}, {"moduleId": "BR7WzWhVphuA0lIo", "selectedGroups": [{"groupId": "zDSc4120o68yMycr", "selectedActions": [16, 14, 13]}, {"groupId": "jgcnRVdjLqD7T5wo", "selectedActions": [90, 8, 44]}, {"groupId": "Xnl0hPsupYUu82uA", "selectedActions": [24, 30, 41]}]}, {"moduleId": "YXefXNdk7idsBFZO", "selectedGroups": [{"groupId": "EtUAdHwAWV0GZdHu", "selectedActions": [62, 71, 47]}, {"groupId": "9z0DoYcTYxcoqHMA", "selectedActions": [55, 26, 57]}, {"groupId": "xiwAp3Q6oHeNnlDW", "selectedActions": [75, 54, 67]}]}], "namespace": "aq6niaYZrh0kopRf", "oauthAccessTokenExpiration": 25, "oauthAccessTokenExpirationTimeUnit": "zWW5FUqJ5m24KrKR", "oauthClientType": "Jgw3bVFnvLmRg0lG", "oauthRefreshTokenExpiration": 34, "oauthRefreshTokenExpirationTimeUnit": "zJlzojafNujTp5iz", "parentNamespace": "HImls7CHS8apMMZz", "redirectUri": "OFBetwDWl7xm3I4i", "scopes": ["p9AnqQ5QQrRVcGRs", "bEwldRgBu6qRxVr5", "SufibEp51i3QPW8s"], "secret": "oGPEzY9EReUjtDsA", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'Oa0A6VkIrEVZIMbB' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'LGhgWka5vrwptlY2' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'r5jiq1brCSIdJpmD' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["nI5yb9i9uDmGp26D", "r3Xr2MIqhBrtGOzI", "XGl9uGGtDdqO62LI"], "baseUri": "qiJ8vZgVJklH8tWk", "clientName": "jDYkV7EcMnvxmz9l", "clientPermissions": [{"action": 63, "resource": "BQuuRdgB9pcyERkR", "schedAction": 35, "schedCron": "OmOKCRNdXcVa7Eoa", "schedRange": ["jQvULx2Hesft6w53", "NCSjPD7gKL8ESVmx", "NHwxrMgnUMEDhl79"]}, {"action": 6, "resource": "ZnY6oYfyIGTZZ3o3", "schedAction": 20, "schedCron": "p1WpIUDemS5cC4iY", "schedRange": ["gZ2EJxS9v3LV2zZf", "8TB6AF9jKnpzUxFt", "N0mm4H95E7LzK1Xs"]}, {"action": 0, "resource": "0PXLhosFNHTSlaqB", "schedAction": 8, "schedCron": "wYfQSsN6XwSI75PK", "schedRange": ["XapSQIa7G9FXoRmV", "IZfcwESbIVNSj0jU", "0KEnT9GClqD24tFO"]}], "clientPlatform": "8e0WuVBSEnk0TyK1", "deletable": true, "description": "qjIGbneLntJt1Zal", "modulePermissions": [{"moduleId": "MeT30UdTFeU9rumS", "selectedGroups": [{"groupId": "LCC0Rw3jqpcAvNM9", "selectedActions": [38, 52, 75]}, {"groupId": "RSEy8ou1VvzrD5aW", "selectedActions": [40, 41, 28]}, {"groupId": "O1KUJumsgEMP0ibH", "selectedActions": [39, 96, 88]}]}, {"moduleId": "Aium2ckN2BAmJKHl", "selectedGroups": [{"groupId": "wd1kCHMPunPcXfne", "selectedActions": [91, 20, 8]}, {"groupId": "uja3QHbNELncMEUq", "selectedActions": [86, 43, 56]}, {"groupId": "K4TI1Kgy3v3hDGck", "selectedActions": [46, 0, 10]}]}, {"moduleId": "HLKXg5itewHeaEp6", "selectedGroups": [{"groupId": "UaUMGcahziPWwDJu", "selectedActions": [1, 72, 59]}, {"groupId": "58zdWl8hWWb6WPWP", "selectedActions": [59, 50, 50]}, {"groupId": "J2dsHi6kgARTb09B", "selectedActions": [10, 99, 19]}]}], "namespace": "tQPR0fJmbH8yTYGI", "oauthAccessTokenExpiration": 41, "oauthAccessTokenExpirationTimeUnit": "ajCRUAa1V0ai6Lba", "oauthRefreshTokenExpiration": 70, "oauthRefreshTokenExpirationTimeUnit": "ZqMS2kh9Qhh0nMuD", "redirectUri": "J8zl5bmQ0FKxyXI2", "scopes": ["QF2MAILvghs2w1sE", "vFLdpbirU19pxsJz", "SsbYFOgqwf2q8Usq"], "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'si0524gvB54YY9GF' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 25, "resource": "xbizNG09qUIm4MPq"}, {"action": 15, "resource": "ZRu3fqM8z3vHRpo7"}, {"action": 40, "resource": "vbaJvpliFWEUFPLe"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'p5y2gIEGYwqLz0rZ' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 9, "resource": "c8WNQa7RZMCZL7VA"}, {"action": 66, "resource": "BPXSSynE1HdJzgpS"}, {"action": 23, "resource": "GRDPRwF451FeSRVJ"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '39' \
    --clientId 'eaJv9ulLd2jLrGqj' \
    --namespace $AB_NAMESPACE \
    --resource 'lNUh7BJgeraOGubA' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'aXEmJRQB285hMd3J' \
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
    --body '{"blacklist": ["jzegQ5ZTAujeuDO4", "DOcXXCq7KzjvVu8P", "ytCpE0aGBRvxz6dM"]}' \
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
    --body '{"active": false, "roleIds": ["xtD4xQi8J9ZY3nmX", "KPKPYsfqHQxWfOtc", "SPtuTVNME9Z2sb4g"]}' \
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
    --limit '41' \
    --offset '100' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'QHEDm3lwRRRSy4FY' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7IxD2imGZMdN9kNN' \
    --body '{"ACSURL": "2neU4CyF54qN6nRm", "AWSCognitoRegion": "AtoWswfQtqVEr43c", "AWSCognitoUserPool": "dAql6xD15jCa4eDT", "AllowedClients": ["3oUU36SqhpNWiuv9", "8DLnBCbDXsfEHFeY", "ggjg2VqloSUxoG7P"], "AppId": "C6XjbtJHTjCKwiz4", "AuthorizationEndpoint": "N70j65I2U3f44OLQ", "ClientId": "qVDsXHjj3TZ31jin", "EmptyStrFieldList": ["lMnx7jW5CX0w5gD3", "ay6B3wftQ27MDiHM", "jLY85ahR8wIJTAEI"], "EnableServerLicenseValidation": true, "Environment": "DgQJCtjuQZyAb5mQ", "FederationMetadataURL": "TlfnqYZBIGXJI0wY", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": true, "Issuer": "Cwl15VusOCZ4doLF", "JWKSEndpoint": "Vi5AYgZdn7C7rpYb", "KeyID": "IJFnmUi5d9N95TP2", "LogoURL": "DzTKHkiughnCChWq", "NetflixCertificates": {"encryptedPrivateKey": "wuaAeWLV1kUNLjD4", "encryptedPrivateKeyName": "6kK48UnLwZ66IRkh", "publicCertificate": "xh37GSzy104ENs8q", "publicCertificateName": "aRqWd4ajldwZz7Bh", "rootCertificate": "RK06U8NDKrYIXH1b", "rootCertificateName": "YIcgsvTCSL1tz42L"}, "OrganizationId": "ObeH00oddsuZbUmM", "PlatformName": "8NX0g6NBTf9MafD8", "PrivateKey": "vMP0NWNn0QyjkYSU", "RedirectUri": "cdFKcHpVy1tzV3CJ", "RegisteredDomains": [{"affectedClientIDs": ["thiV9C7Vdj7PF3aR", "IuUUraGKeQ7or3iB", "YclAxhMWgNOMGSxp"], "domain": "GcT2ZgDRAC80oFlI", "namespaces": ["O6CITudzwWD58CYt", "9pep8lEWVzqItfWC", "RouzWpX1zaSAlLeb"], "roleId": "vWS2bwxTt1fbwdhX", "ssoCfg": {"googleKey": {"dHh403mSoGgiKjvT": {}, "3J3wktIPDIDmnKJo": {}, "RkNJheYlxEHJkRaz": {}}, "groupConfigs": [{"assignNamespaces": ["TqxhGIDEnOciOEdE", "DYRkRhvNFUr2p5MA", "jf7pcvxeg9hYrBsg"], "group": "VHehIq5Ln1AmYjQF", "roleId": "YWihoTm29xiWsIwt"}, {"assignNamespaces": ["KvTHg6ITrQg43sAN", "qanMob56lzHDulGB", "TnTclyRHRFj9yLID"], "group": "J2rERX3lUVzwFx3x", "roleId": "suqSG4G0OBgzwlE1"}, {"assignNamespaces": ["HNrifoZsLBQhXrsH", "V2HfxqJLTeelHaWR", "nC616Tgbr0ivb42q"], "group": "kHQKuQOWQ5E7QMTI", "roleId": "oBY2yG6CBtbVaipw"}]}}, {"affectedClientIDs": ["e1zUd9QcsoOlfcUU", "wxLMiQr9c5WC1guR", "mMc7ciIcBsDBgEI6"], "domain": "YDpAw2AMsffaZG7F", "namespaces": ["g8Gy6k4fkBUStkSI", "ZTIfbPJjvV5mGB0I", "TLNBYG4l3efyci2V"], "roleId": "2zzsJ77sEvmYuAvS", "ssoCfg": {"googleKey": {"UyJw78y4eojVJeJd": {}, "wubFMPCgvDwo9MhZ": {}, "75WDd8dgZ558PFHx": {}}, "groupConfigs": [{"assignNamespaces": ["rLDK9Lfz4Jq1GVsB", "KYejiFzfC3jQCpsM", "3iahqUPgiRQ0mK78"], "group": "DbSLZBB6XR0Lg7jl", "roleId": "16K1RpN5QgUJjhpg"}, {"assignNamespaces": ["gpPIuQoSqp06szpy", "yU6wmqFOFP8SNsIc", "sPvtPTjqTXzT4HZf"], "group": "E77StsWBaYfVizkT", "roleId": "uKic7hQK0Ff8dgsw"}, {"assignNamespaces": ["deFBMHtZMKOV3pFD", "k7sg6N1KKsNOiXXd", "IcmS9KzT35SZBnz8"], "group": "kl0uF6TrpZdNZ8RY", "roleId": "HRKPfJ3BJxxKnNpB"}]}}, {"affectedClientIDs": ["dvrtJxlwi9d5b1fc", "7O8DCbTJQXyghfNp", "Y0doBED5qE47ZnB3"], "domain": "E9h2F9V7SfvffisX", "namespaces": ["PuHK1SpFmYzClNT2", "OptcKYuCv2VPhfMf", "eadIzJVsXQIRcTAX"], "roleId": "5DdRNt03oaHCjz2M", "ssoCfg": {"googleKey": {"6cJLi2vV7JlEqEjT": {}, "1JIqV3VbpbX50H5D": {}, "JLotlVHLykLKcqRN": {}}, "groupConfigs": [{"assignNamespaces": ["zvkrG8GtH1nT0ciC", "U1tOkSK1Vf1qMy5o", "mRrmCpvkm06o3tL0"], "group": "zXAlt1mXFltzo9ko", "roleId": "pGi07R5GpfMK57WM"}, {"assignNamespaces": ["6LbRfmBUlvM4tao2", "2kqLQo1hu6Sim5Tp", "kfKb0MCg2FoC5aFD"], "group": "7E0wI8vQ6qqBLLXD", "roleId": "djDboWo22CdNOwgK"}, {"assignNamespaces": ["u1noMcjFx41gUsgH", "71DqTdgiERUrib2N", "gsYlKMyWS6EVXjnp"], "group": "8HHjCGIQQsi1qdvU", "roleId": "mx69lxqlTDXml3KP"}]}}], "RelyingParty": "9JB9oPRjH0Y45B0M", "SandboxId": "FZfue8TxiIxV8FUB", "Secret": "4940vvY6eMB4iYzo", "TeamID": "yNmRdpjAE1qOBuHq", "TokenAuthenticationType": "f5aszZbZULlFIj6b", "TokenClaimsMapping": {"heoUcY3WgJMGsSnf": "lt3SMmvh8nUPMDxv", "zbSzKeiRL1uxRS4m": "g7XvOSpI5sdzAZ5S", "K0N2rZBOkPh2YKlP": "wI3yR33xkooluTn3"}, "TokenEndpoint": "uUk727GOlGWpLs0l", "UserInfoEndpoint": "eYZ59Jz1wOMoUFYf", "UserInfoHTTPMethod": "ceRozpewuuserMit", "googleAdminConsoleKey": "yBCVnm8UT479MmQR", "scopes": ["vXf0n0jj4OtqfNZh", "sEzJwLYGIvMFbDIg", "Kh8ljb4nYvvaetra"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qs2PqbGm0AIr7FHD' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Il1L3UXjat03cMnv' \
    --body '{"ACSURL": "PIFCy1rYFjJR0XlC", "AWSCognitoRegion": "qANCzyjDBgCdj75a", "AWSCognitoUserPool": "DHVLpu9rcR9mQSOl", "AllowedClients": ["jQP8TYESwxXYL3pl", "LJt4EML53JNlTOmA", "hnnqZieHIZTUR3qc"], "AppId": "LYwnSfuwZmz2qKhR", "AuthorizationEndpoint": "rXKRmdz9xmc2rbJa", "ClientId": "a6bnaTH6WpcNsg3Z", "EmptyStrFieldList": ["kdfzp1XES1plEbVO", "qF4QnObIyhuJUTtg", "gt03GDJWTRT12W0E"], "EnableServerLicenseValidation": true, "Environment": "KIvO0tdEnADM6OzN", "FederationMetadataURL": "M4P596gvLhFQP71h", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": false, "Issuer": "LeAjOZAM8OdAJuCy", "JWKSEndpoint": "Q2Xzh8Y02KQNflei", "KeyID": "1vgbjEH1pEsefFUT", "LogoURL": "49A4tmQVQbKddyx3", "NetflixCertificates": {"encryptedPrivateKey": "efVa7zcNKKOpu06V", "encryptedPrivateKeyName": "cD0wNvICYQFAiyk2", "publicCertificate": "CQp80jOqiiwHldwM", "publicCertificateName": "Spl9RzpR6we1iASP", "rootCertificate": "Ie6nSTfaVVzpAT58", "rootCertificateName": "TVSCft1QLOPzurGw"}, "OrganizationId": "8wDSlIPKiFI5q7i6", "PlatformName": "RG3Ft06wwWSbtImQ", "PrivateKey": "ZkWHyqaIkciNgOj7", "RedirectUri": "pbZdjmUJ7jtHKg5e", "RegisteredDomains": [{"affectedClientIDs": ["789k8lcWepVshKMC", "16ARwHn5WUOZDjrr", "P0JKG1x8fJnwxhA3"], "domain": "dtVhT54Oha0pLQmI", "namespaces": ["ilrnnSKPDMtdfLG3", "mD8bL1qq1YpC1qir", "sFuyneNIrzcFbWeN"], "roleId": "8phrqf5ml7fZGLMl", "ssoCfg": {"googleKey": {"Ag8cVJXiIF5wNGoW": {}, "yplrmqexp07cFnuE": {}, "Lu5REMLlt1SMOiHx": {}}, "groupConfigs": [{"assignNamespaces": ["EwjbD52cWJxukZBd", "agPSbn4VWn8oj3NG", "xrYpEA43iqCvqb44"], "group": "jN31TiuSjWBOljAL", "roleId": "K4r3vfdZ16Thtd78"}, {"assignNamespaces": ["3JEc91q2hKnBnjGJ", "25t93LKNfJOVzT45", "BdPmIz4sjHI7OxQ1"], "group": "F1Hz0DfC7dM9wBSh", "roleId": "CFX2xNRaoZmUSZB0"}, {"assignNamespaces": ["MmXkOWXuCWVnCXoQ", "G3oYLhDpegZhjA7s", "69FQhh9vt509uGIq"], "group": "As0YvqOJNRqKATWZ", "roleId": "IFzvx60Br7fxZvm0"}]}}, {"affectedClientIDs": ["Txt1ojedc9lfHMoM", "hWwaJtrpDQTDybYs", "TQa5h9mNMOdmq7Gg"], "domain": "k6SushZUNxahgqTT", "namespaces": ["FHDCxE9xshu7ft3G", "MCRaSPeI487ozlr6", "a0EFQumqXYfVGhBn"], "roleId": "vrz3lpGDEby6DjFf", "ssoCfg": {"googleKey": {"RP8Yg3ZcEqYP1Coj": {}, "w8K901b9FxB80PgP": {}, "Dj6tFCeBGKZtjEn6": {}}, "groupConfigs": [{"assignNamespaces": ["I9wvLIVOO2fkgnf7", "HsgnroiVZTijhfYV", "nAbavIBuP085nK4B"], "group": "MxDOMZiP7tRHK7Ig", "roleId": "WK7gD7nohZRK09Aw"}, {"assignNamespaces": ["t2aEECfeo0418bvb", "VnfzyKInh2xKAxyQ", "fpcuKovAhxjZV7wc"], "group": "aiYxXExZmrS7QSa6", "roleId": "J0eFyDAJw6uR3fPq"}, {"assignNamespaces": ["yqF2sS7hxCABjWvp", "N1xcBat5EnABAe6F", "sP3W4EzSYp8PWaKY"], "group": "fKLO7sKHT5Ey9M78", "roleId": "F0SakW6bnLE4w3cv"}]}}, {"affectedClientIDs": ["N44AzswuWN8HvOpt", "m35D9F54uyK20w6C", "8VWPNquE6OGFxGyY"], "domain": "BCwqGxY3H8UR5LrA", "namespaces": ["ymuak2J6L4JC9ruG", "IoBFjnywuu9OarCg", "GWNeeu4GPUzTVFJL"], "roleId": "rlYX2hY98r9KNmWu", "ssoCfg": {"googleKey": {"gxlvNr0yBbLm3a2x": {}, "2incwCFH5py5DpGn": {}, "OGOwAuSCeO9bnDk6": {}}, "groupConfigs": [{"assignNamespaces": ["LU3b8u7tAPRKk6Ux", "WtLdmi3kQPBkTWZu", "K2DIke0eGOoUt5ty"], "group": "G0a0xEUdNhPK1EXu", "roleId": "ZUhal3KmwdXbrGzb"}, {"assignNamespaces": ["yjXIxVFcmEXdDvbq", "wuxH25HrlCVLFR5n", "Hp2r4Y3sLISJl54k"], "group": "pCFP9GB02No6bTa6", "roleId": "XnfXdQrpdoNioSgl"}, {"assignNamespaces": ["4fQ9flC2HCvnZ3x3", "gfLTpMbVg8DUnxio", "ZFbTAHy1Emdj4bip"], "group": "zwr5celIBL6XAE6I", "roleId": "CPNJWBzGfNXE6gGg"}]}}], "RelyingParty": "dYsIBzK3tqK5tfq4", "SandboxId": "XNPm3RdoAATNH0dg", "Secret": "o2wXw4bASgw9xvz9", "TeamID": "JtddPUEBZDjAUrlj", "TokenAuthenticationType": "qjmTHT5izoetCcTO", "TokenClaimsMapping": {"ZRqmlKVBtuVazCHs": "pDWRkOPlypUm1YZa", "fTZmIFl9tkGJnPZn": "G2wLeWz6ns423jOa", "xgsMFHc4H0Qwdo2g": "aXnv1ME1wj9Nrj0L"}, "TokenEndpoint": "zrvAUm3qEkoE9You", "UserInfoEndpoint": "wyfuPV4DwnUZMgn9", "UserInfoHTTPMethod": "7PeMK53jOXoyflHY", "googleAdminConsoleKey": "5zu5OjLSaghgAVpB", "scopes": ["s88Du5IuV9i66q8F", "GBDwpYv8lb3DEAem", "W2LLwsI0eKJQux7L"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5WZO7IYzBAP424Dc' \
    --body '{"affectedClientIDs": ["GCQ8QUptiHdEFI4B", "q2xwMxWw20HXboZy", "HQe5y7wEvJ5Azx6o"], "assignedNamespaces": ["uhujZA9KpNeJt6vZ", "34yv5EpkZLbRV1vK", "l2FpJQc7bzbjj10N"], "domain": "HOOFfJFcQwCKI89l", "roleId": "nMUIcLhrTOsuE9pg", "ssoCfg": {"googleKey": {"J1R0ZRzNZ41rOEqO": {}, "ONYrE9Hk0Ksbgcc6": {}, "VT3jRK55vnNqGpvG": {}}, "groupConfigs": [{"assignNamespaces": ["F3qmXjfjRdPfRVfs", "zFOojuQIuP7ogX52", "D2luVXk1IogVb6ct"], "group": "fO6ud2zEhpCNFPCY", "roleId": "ajZtJOdAMeCaJmKD"}, {"assignNamespaces": ["T2wu67paEewXq9FZ", "5jjz9eeO63aCBvmh", "KS3RQjAOU04StagC"], "group": "PfmFp659bgrLgVec", "roleId": "6U2yw8WZhVxh4pqF"}, {"assignNamespaces": ["2xOdcTs4lDa8e870", "nAIs3FSEhpf3f9Tk", "mLHDhJlerYZ9Muwr"], "group": "QJqmQkFP9OHZckIf", "roleId": "Jk0C78RtNvVgz5JM"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Aj5bGgil708GGXkr' \
    --body '{"domain": "dIJA2dbYQezWqRkU", "ssoGroups": ["YMwDM3uLC4KdqEkk", "4VvmlV7pKIUtsw0J", "NrXo4HGhOreHaGHr"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ACrQXo26eMPcGuB5' \
    --body '{"affectedClientIDs": ["Vm1fB2FaRSyMXvHR", "ulvhwA2mBX6WJ5Be", "Gj1P2bcyf8n3ZgeM"], "assignedNamespaces": ["Ic6U33cn3PeETOsH", "AX4fEvOBFHZVwpt0", "HGbLPBfVjP4aFmu3"], "domain": "EFVUuQuhmwMkxG21", "roleId": "LpIEr0qJDmMYRrb8", "ssoCfg": {"googleKey": {"Uy8sm7C5wFmoxNiL": {}, "zMQ7uIOXOd0rXCuI": {}, "ahGge01PtPJPo0Hj": {}}, "groupConfigs": [{"assignNamespaces": ["w0LqaV6LzCS5ravO", "BfEHvNtaGKP1C8pk", "lphPUrkO5qEFlpy9"], "group": "eWSYAnwUcwnrBAyZ", "roleId": "OWVqHftMs5iHE9zj"}, {"assignNamespaces": ["1c2Pkd1ioJOB1IBQ", "GXOXLDlPdYp5nLG8", "1f7FKOa3JI6PWhii"], "group": "luTqBBv9cowW2Ka8", "roleId": "j5omdoLv9wbb8t44"}, {"assignNamespaces": ["txJ8SClRUmmoRf57", "jxvM5UxtoTntRl2Z", "FfNhujXaZnxvIJ1c"], "group": "NDMHhxs1DttoBPDt", "roleId": "9lNuo6lvmNT0rbab"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'LHvS8LSl3QTQPRc9' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'E1pqW7pcBE2xGB5F' \
    --body '{"acsUrl": "PEX4cuhywBJFosq5", "apiKey": "N2NyaU1BzPCp1CM0", "appId": "7PFq5C55r7X8oMWx", "federationMetadataUrl": "oPdYJ1ruTU7pqXVp", "isActive": true, "redirectUri": "oAEcJNzmJ9TWAyVI", "secret": "CMphrkd99npNlgHw", "ssoUrl": "WBFRH6vfhwcE4dxj"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Fqsq2VqcexCmWmnh' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'NVx1K3VDenUZc6fL' \
    --body '{"acsUrl": "WHpL6lfOa4583W1c", "apiKey": "c3dB3fCAekgLhdoc", "appId": "GqeOyw1kwlUsApUd", "federationMetadataUrl": "enGBIsHQbujIo4D1", "isActive": false, "redirectUri": "50NlSbfMjJJkBXWS", "secret": "O8J3ccneuShmGTFu", "ssoUrl": "dSOMXjJb3Op9qInc"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Dcd0KyfVGLO6CBps' \
    --rawPID 'false' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["8YHpMvEBwSiUlJz6", "nCuxR7K38Q2cJneo", "46I6oQEzpS9yxhPz"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qIXAYI5jDtd3eTH5' \
    --platformUserId 'YeRt3s5lGprRPjk3' \
    --pidType '9KJZ0F4qohxjEoEJ' \
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
    --field 'username' \
    --body '{"config": {"minimumAllowedInterval": 39}, "type": "XhALrIHyWbwQz8L6"}' \
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
    --identity 'GAME_ADMIN' \
    --body '{"additions": [{"actions": [100, 30, 44], "resource": "hL5nlVz3yf6ubqLo"}, {"actions": [28, 99, 58], "resource": "EuQlvACLF2JWOOcH"}, {"actions": [14, 19, 36], "resource": "wNdppdFJn2hN36DQ"}], "exclusions": [{"actions": [28, 59, 54], "resource": "YOJqCkfnaTXQlmN8"}, {"actions": [97, 30, 63], "resource": "TIEwpSvfFhwz6aKg"}, {"actions": [79, 21, 70], "resource": "XoDX1suN84CVNKgs"}], "overrides": [{"actions": [55, 65, 52], "resource": "1Q3iahwUbGugWgKU"}, {"actions": [4, 26, 4], "resource": "dKF6fGeKIb1WZFom"}, {"actions": [19, 100, 8], "resource": "kPPXmk5Q8vrAGhFQ"}], "replacements": [{"replacement": {"actions": [42, 66, 86], "resource": "PafRTmh2c3CmdgYv"}, "target": "ebBjjiHkB1O9ayc3"}, {"replacement": {"actions": [74, 43, 16], "resource": "bsEMLhxbmDJUhequ"}, "target": "oCogA1ffLvvuWNlN"}, {"replacement": {"actions": [64, 91, 31], "resource": "uUZNAUgZ20pC27uh"}, "target": "MZBkICiujid1NszZ"}]}' \
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
    --roleId '4UNNG9otabcbUTjJ' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'hs1icgz7JrTiJbji' \
    --after '93' \
    --before '50' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '39' \
    --offset '33' \
    --tagName 'FpAvUnbT1od7aSAp' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "Z01k5YIhpi01q5xn"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId '1uzo1eZcAq3Tuwgw' \
    --body '{"tagName": "1dfIZqBYGzLh0PyK"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'V7XxdKmUqqyE6lTM' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'FMZ0ddew2CvsfCAG' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["tiTGCENEbPBeOXOA", "olnpg4vB9ZkdakkO", "zsl5f5woyYVLPwmm"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'I74P8NwVv8q13lza' \
    --body '{"bulkUserId": ["F7EBa0RyyaMIfdmR", "CVGgFbRSdw9kXoMk", "FqDATJIli1aNY7Bk"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": false, "userIds": ["0F7o8VRhYzfm16XW", "zSIiDzDL8dugBvFY", "dYPmxo7Dd248xLdf"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["C3uG2u4p34IYPSBl", "jGmDMRvGiU4aEH34", "xDPxkBu6vB8R1atD"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "AjHxI89zaVbssTXl", "userId": "rzuFVsb9yna0VL1I"}, "fields": ["JGIz9vySvTttQLGX", "kwPArP35SpqwGlsP", "vS1PwDnBNr7Xwtdd"], "limit": 87}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["m46C79KsL3fcFkpr", "fObX5N8dhXLe8LmK", "m8G3WRlMkMCQuIuu"], "isAdmin": false, "languageTag": "xFiVhAG5JGdcLvL6", "namespace": "detupSmv9Rjv5ozT", "roles": ["BnGn0gGakIsedQPp", "P8VlEtD9NwfyLvEv", "oOsY5FfBfhotBMom"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '71' \
    --offset '44' \
    --platformUserId '0aaf7RPsj8o8rJLZ' \
    --platformId 'iFQQmfH7WxenaiCR' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '95' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '3f0sBMg8IwqHH7fZ' \
    --endDate 'iwDpPwZumLSuv9uZ' \
    --includeTotal 'true' \
    --limit '31' \
    --offset '56' \
    --platformBy 'FUr0YokzeRO1iU7e' \
    --platformId 'TutzkMnnwrmy4luo' \
    --query 'VrmOogmyKGX9DtXe' \
    --roleIds '3kh5NE2KMdtfIBcE' \
    --selectedFields 'tMfEXsIX80vTkWXv' \
    --skipLoginQueue 'true' \
    --startDate 'YBxLjQnbjf6OBk1i' \
    --tagIds 'xnkqxzySO2tuQIXJ' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["OXcSPrn476zOxay7", "ZOcn04hO9qQGM4c5", "8HnDOHZFWHdn9W6V"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zYLJX7Q0xt4IPBHm' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'o0EPCMdpfe62dff5' \
    --body '{"avatarUrl": "dqfE1O2JirfWCk2m", "country": "10DHylHZaXcjKMLa", "dateOfBirth": "THVKiAnq58gaizkg", "displayName": "tJ5Q9XGOfFHCsvSr", "languageTag": "vaoSm56XnCO8ShIc", "skipLoginQueue": false, "tags": ["hDdgEeDDp3cRmwtB", "YxWOYKyQ4ZcgS33k", "kJbOUeXAo6FiNw5s"], "uniqueDisplayName": "siXtkRgGg7E5gr31", "userName": "TgPuwOaU93goNiZg"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SqUwtxXIEf3BHpKJ' \
    --activeOnly 'true' \
    --after 'a3R9jGe1Tqh8igXS' \
    --before 'aw0vewxWnGVG87Bx' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '9twODbh8OJtPO6AB' \
    --body '{"ban": "Fkkl0rBxwtcbJI6d", "comment": "eQRab7uKlxg34Zoy", "endDate": "76uBv5sc8vNqeuJR", "reason": "Ptj7hFU2vAAU60CX", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eUHemToPD0lk7w1Y' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'yuZWIK4sgPx16qep' \
    --namespace $AB_NAMESPACE \
    --userId '023rja0LBNpvqBIy' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GZOR8mSonnk6Xl1u' \
    --body '{"context": "GNDIrA2udOJ39ed0", "emailAddress": "3qVUMpFrndOuVr2a", "languageTag": "8gL1UAZvXTsYxsEf", "upgradeToken": "mqUIo5F9Fe8WD04X"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OIbKKzNhS60bozVJ' \
    --body '{"Code": "p1kQS8zp06B1O38u", "ContactType": "Q3i16C05nqXdNb6A", "LanguageTag": "ZFKdxDYYHyi2RNuU", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'gDJrINjqCCKASMZ6' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 't3Yaolm1POrUSGj7' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QXNRxlz4WDhq65IH' \
    --body '{"deletionDate": 29, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'tLP8xgVK6W52JeAV' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CXQ9kN0oGojBqJmN' \
    --body '{"code": "MCCByotT2w2jExs7", "country": "Hf92QWKRwKP92sIy", "dateOfBirth": "YqY3ILdCkpM6ZRaG", "displayName": "0VvBU8d3GujnS2Tv", "emailAddress": "NI0dJAPlC9qpLWAD", "password": "21mZufRS19I9xMqb", "uniqueDisplayName": "MxrcYve3phGJ299O", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pce3uk839O6IF0Al' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '8e4gM4FDh6LvfC40' \
    --after '0.9343879603249177' \
    --before '0.47475553756598965' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wMZhMjBzch90vIFV' \
    --body '{"languageTag": "PmvuANgM6JhszTVy", "mfaToken": "UrHMD1JFll0iqOwv", "newPassword": "vK7rm8tFnYgEnf9R", "oldPassword": "cIW70NmS69Q6qJyL"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'P6W254nnn5n8M1ZO' \
    --body '{"Permissions": [{"Action": 38, "Resource": "MW4pGFE5awrhoXgv", "SchedAction": 89, "SchedCron": "wT78FSL5uRLsBxU3", "SchedRange": ["ZMX4dog2iav3UiQq", "ZrEGifTGahLtsW99", "GQEw7KSmc4wDnHNW"]}, {"Action": 32, "Resource": "kRqQKujKEBTHxY7d", "SchedAction": 72, "SchedCron": "toisX0u2xGvKJRJZ", "SchedRange": ["2J1SC20zq16WA0yc", "bXTyP7Mvk1XcWw7o", "x2T95hCLoIuQJrIz"]}, {"Action": 57, "Resource": "avjmzMOiaBKfnd48", "SchedAction": 44, "SchedCron": "79UWftisCmoY2NmV", "SchedRange": ["7fLBjmAv8Qh4uCzf", "kvsKFfxlIeHapgK7", "2oY946fUoWfrGsSp"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EGhFVnFR4xnuqx6X' \
    --body '{"Permissions": [{"Action": 7, "Resource": "zDIhYF6v123dde8U", "SchedAction": 79, "SchedCron": "HpyGC2AymgcP5D76", "SchedRange": ["SbWUreinpRf6OlZx", "PiR7EX7zXZsn8dXD", "Y8wgKQtBHwB8uJNr"]}, {"Action": 53, "Resource": "9Wcq3Bcjk89oCnJU", "SchedAction": 91, "SchedCron": "tHnN1vQ23Y8hkztR", "SchedRange": ["HC5JOfRbvBGGDENR", "A5tjEdPnqaMNXHSO", "x6ofZcsaVoMaBnsu"]}, {"Action": 68, "Resource": "w5CWD3w6dWev8Ufs", "SchedAction": 9, "SchedCron": "bup8dNeGCpUscQo4", "SchedRange": ["jYoJ7quMu8H1mOxW", "upurCB8YMNmjdu2U", "bQIHckbX97Rrhgzy"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'v6OKvs17sK83Pp8e' \
    --body '[{"Action": 98, "Resource": "GmcdXw1UmmnjQbxy"}, {"Action": 13, "Resource": "dzbmWG0y0Nze6lD5"}, {"Action": 96, "Resource": "elik7tcfNwpKSm7L"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '40' \
    --namespace $AB_NAMESPACE \
    --resource 'GCeodPqptj8sdFHu' \
    --userId '7w0SncuRRdj08SPo' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Dms3OpU3nl7keEVG' \
    --after 'M03GjJi6VbXe70VD' \
    --before '3PTk7EVbWzQmp3Nm' \
    --limit '28' \
    --platformId 'piaGUsEWC7WcBTmO' \
    --targetNamespace 'HGYvnnsmwrCqjWHI' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Gyglpb0ZPXBjyeED' \
    --status 'LPqFls6ClvE4nOZ5' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'e6fffLxH3DvxL3D8' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'NMSQkQ9wXXqHEi6Q' \
    --userId 'PYQvFxbHgEkUezo5' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'GGzZx1CTd0x1Dui3' \
    --userId 'mPX3vMXiBY5IsGM5' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'zTBeGmgsFTWNBJrI' \
    --skipConflict 'false' \
    --body '{"platformId": "OhVohdNPFk1cr7LG", "platformUserId": "oVJ6fEP4ErMUZkee"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'jjGG8ikbrmIUp0IJ' \
    --platformId 'K9mSs3EjbtPGvnV6' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'aRean2PQOoRYpE3V' \
    --userId 'IKC5IIBsgNgw22Rh' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'vjRtQw2MfOR1joWv' \
    --userId 'jAb2GESetEoW4bCf' \
    --ticket 'eSfkMH37jcyC4foe' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'RUyDPBC9vGHIJdBL' \
    --userId 'KcVXtDLFb1Jak7td' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jjlju4DUgGpx10z6' \
    --userId '8o8q0FWvC9wrmaLY' \
    --platformToken 'iIxxMe5FvbhDxQPG' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId '7DauAunhneQ7HLpt' \
    --userId 'eaz7iqhMgYYRLJ2y' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LBt5SdXyLRKgZrO9' \
    --body '["67uowlEaIVgdrEbF", "m5INLnAYZcava05v", "523IQI2MzaYWRERf"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oPXZiccOyqghbOrq' \
    --body '[{"namespace": "UOSAE4PEtCvqcRec", "roleId": "BbYxmKkpnAuZsnLY"}, {"namespace": "LE1ehwtymDeoatYU", "roleId": "Luqh3CusuT9lkNN7"}, {"namespace": "3HhtTqiG2A6vAuhf", "roleId": "RBIkwwbWKWKaY2qW"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'QriLQPxeXPWjfSQv' \
    --userId 'Ux08kjRWtijZecbQ' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'orrMFqNhiDJ8TFC7' \
    --userId 'nIwfcdQII4pN3JeJ' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'nqVq3C3VL4Inj8Cd' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'SujOdfTwuvnJqiKp' \
    --body '{"enabled": false, "reason": "JZTQwosmgxILHnbj"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'kW6acPJRzxxTWblX' \
    --body '{"emailAddress": "YEdBfMVSwsSokloe", "password": "uK8sWwoRTZUqK99F"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vs5zGQM7nx54IPpC' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'EBYgWBNIHS6mqAGB' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "45ekOHBud8h7jvjy"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'NulrGp4ybeSyJXZh' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'LhfJV9N2K1gjxQBB' \
    --before 'iYtQJBgSy9ca8H2M' \
    --isWildcard 'true' \
    --limit '24' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "J3yaQuQCUzvtkfS0", "namespace": "JDOQopqfP9xh4KvW", "userId": "vuZjQcsULEGMOHkT"}, {"displayName": "PkVYvZw1nLERBfZp", "namespace": "xs8IIffIAYvMPR6z", "userId": "JfeWCfFctusNhbYP"}, {"displayName": "S4lNUM1XAEi19P52", "namespace": "VJFUn6lHp0LppS9c", "userId": "doR0sgyklqR5h1RJ"}], "members": [{"displayName": "qzwThU3yPliBjlsj", "namespace": "O7pbbpNaaQ12sfmi", "userId": "TR01nc39JKN4m9e1"}, {"displayName": "fPaeu9zrPJwdmeTE", "namespace": "TgBDHul7jYL3Cy93", "userId": "2cLXCRtsFvMtCokP"}, {"displayName": "d4jvBIRquoTXZpgM", "namespace": "blzHjuQldgGZeD0p", "userId": "UXQc5LpcZdVymIf9"}], "permissions": [{"action": 62, "resource": "ytSrKaYmPnnXaUbN", "schedAction": 13, "schedCron": "5689G8vtqwCuEbnk", "schedRange": ["riSmUnGh7tPcSEBH", "3XG4QgenWFNmazpJ", "lTUf00fWFBRKt0lG"]}, {"action": 93, "resource": "bKr61wa7B7nJoTpI", "schedAction": 28, "schedCron": "Q5nBQnmlffszxjnX", "schedRange": ["N0ed71IB6CTN2Icf", "H8JBpPB3wigvppoi", "8P15nQ1iTtV9ZeYg"]}, {"action": 94, "resource": "zU48WLrsy5VIW2A0", "schedAction": 40, "schedCron": "Pwav7BPsjq2QTREo", "schedRange": ["Wcl7ZlvSA8MDrwBN", "tZwVvYAUYskrQL2c", "N3lGoONjERBysBBy"]}], "roleName": "Q0NNE8fU9XO5NmiA"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'PD1G4XsCo0W2Y2NY' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'wXezVttuesMgUDK6' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'qbks7XPmkNzw2dsR' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "3ci55JofIawuYieI"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'DEgKuT4S1ggJFWKz' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '4yLz9UL0dF7nQwuN' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'W6IqkdbqpiYpAWpk' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'ztb6p0CV10NwthDQ' \
    --after 'CmbmK7oZ8dNWEAti' \
    --before 'sXIKUdWNShQDU4Gc' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'XonDohzCj1C6qR6M' \
    --body '{"managers": [{"displayName": "pz0ocfvf69M7H8NR", "namespace": "a6koyhGbLJMkLWrX", "userId": "VJQSU0MBaVcRGmfG"}, {"displayName": "QqNPGubLI69IoaZg", "namespace": "Ep55H5ZWftXSjWOf", "userId": "IX0fppbiSw6476hn"}, {"displayName": "JK6tW3N0qBQaJEYT", "namespace": "0DXXYVOidMKQRPGd", "userId": "nAvBnLxJSCBxlhCM"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'vWoDZjMsu4EBg7L0' \
    --body '{"managers": [{"displayName": "DdFvTwz4Kr4f0H0o", "namespace": "Ohck4JaiX6l5L4DL", "userId": "QYWMEi74Nb9ERGOQ"}, {"displayName": "ECksuhCULTGXf2WV", "namespace": "JajMciFwZB6YM7Os", "userId": "r6x2TFTxHlBdu3s4"}, {"displayName": "W9Jx9NKlsV1UFqkw", "namespace": "PegTRl9XmA0HsbcJ", "userId": "wX8nI5zmphMHUOHi"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId '7BkcA7zjaMfyav8S' \
    --after 'RTIcNR8Vz3X0ov0i' \
    --before 'aad3OFzpKHcm1VZc' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'RYOaltI0z3c8w8xZ' \
    --body '{"members": [{"displayName": "YSCxE9LoQZfBEjhh", "namespace": "dgRer7YyFb1rXtCi", "userId": "YykZ2GQ6ap6c3mYz"}, {"displayName": "RvFLp65uIttFXThu", "namespace": "hku4C3POQfsmlOsp", "userId": "dca3DbfOAAaRzN6C"}, {"displayName": "rOcBTff03ys2cjqJ", "namespace": "YaSTe12wWVmFoJNJ", "userId": "s3akcSYIUZyG1cZG"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'T2fbsd9qbGJpcIKi' \
    --body '{"permissions": [{"action": 24, "resource": "wKiLmMHpkAEjbC3c", "schedAction": 66, "schedCron": "aQ5Jlhua2uiJ2fwP", "schedRange": ["hTQ42cMXkDvLL8L7", "Azjl4oRaz2QCTLNg", "BSRNmQ7uap9I2yPc"]}, {"action": 88, "resource": "duhTvgF0fArfgGW9", "schedAction": 9, "schedCron": "jsmZNsPNDd13K5iO", "schedRange": ["sVPlGiDMVUDOS7cS", "kMwFjTqFzcoR45c6", "CpzgxPHMyBRI0sim"]}, {"action": 51, "resource": "bSkamE1xCAkBowoy", "schedAction": 54, "schedCron": "fOwVDW6kW87WA0d6", "schedRange": ["RcYzRrc9lj3wDBKE", "PTYLxmpiKx7S8LXm", "Wq3JkGTP6lv8Ymce"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'L2RRuKrmzpkm67Zh' \
    --body '{"permissions": [{"action": 41, "resource": "R8T3f43S53Z6ytSO", "schedAction": 67, "schedCron": "raNYSspZxp0YqOgv", "schedRange": ["Mz5g7Qha2r0fukui", "wAu7jL9i1q86OxJG", "fN4RQTmHprLuzttS"]}, {"action": 22, "resource": "MV0cDZQQJi9DrwUB", "schedAction": 76, "schedCron": "klblHiEKPzCaVMdS", "schedRange": ["zS3NYN2UeyFv68JA", "Zb5liRgQS4c9KD62", "CuubRY3ygzL2woNh"]}, {"action": 39, "resource": "LSgau8TFoYdimU3S", "schedAction": 31, "schedCron": "30h23TaEL2o33l0q", "schedRange": ["1AIKZf5DINO0oxn2", "re5YacRFzb49Pxb7", "XbPmSmyD5yFKK3o3"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'hzfuUm13Mfg33sYI' \
    --body '["om6U1STMMN7SUBCx", "r8SgJulQe8ZOoW0Y", "2HHO4FXlAhGouB6X"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '76' \
    --resource 'zwswL89tZBLoKlRg' \
    --roleId 'JSg8IewpjuTPONg1' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'OWNaYcjWxOJzmNQk' \
    --extendExp 'true' \
    --redirectUri 'iEzQyfVekGA2iCsK' \
    --password 'eDBb1SNuJpDK1xCB' \
    --requestId 'xAZ9GN77qVPye3WC' \
    --userName '0SRVQfbriVpZxdW2' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '52B3KhjJkWKm7oTu' \
    --linkingToken 'BdJykMQV7dB0oRDv' \
    --password 'KKUR1iJEzk7oewhn' \
    --username 'jOrfiivQNhFYHpIQ' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'true' \
    --clientId 'Vk9b7BTNjqhht2v5' \
    --linkingToken 'RNZvRHC3hjjuKRw2' \
    --password 's6ZzKztajeSgBQ5P' \
    --username 'HsVV3zv6f14CswRy' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'kwE2O6pSvlCE4jrs' \
    --extendExp 'true' \
    --linkingToken 'uYDs9f44qVTrBxh3' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'eOoxDSrwnQfwzXwB' \
    --state '7oaTLUDHw8FXMyv6' \
    --platformId 't0ShlV70VuzwLvi7' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'U2wZfbaBIYkTxQIA' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '52ww7q27SHW89Fx8' \
    --isTransient 'false' \
    --clientId 'A9FTyfCSisVTTcvP' \
    --oneTimeLinkCode 'wy2aG3XWaux7JsGl' \
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
    --codeChallenge 'PmH5QVQkxxiKeOX2' \
    --codeChallengeMethod 'plain' \
    --clientId 'vwjgJptrRLrDVGel' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'EUbdm5F2bJiXE5Xk' \
    --userId 'SYrrZ5YcQLfRGEDQ' \
    --platformUserId 'Nrxf58AlHjw9jnxf' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eaXFhsn9GKuQXE9C' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'Q1nlRQmgFmiXtQOc' \
    --codeChallenge '3MxPTXpnW0e29o8V' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --loginWebBased 'false' \
    --nonce 'K2isseFrzVY0za3k' \
    --oneTimeLinkCode 'mHKOh5fM1VCKwgTk' \
    --redirectUri 'VL4zpBQ83oVb5Buy' \
    --scope 'dIaQAPiBGifvtFuD' \
    --state 'VZALACw5UhO1b4Gh' \
    --targetAuthPage '1UEp4GkzprBAc1GR' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'vQyiile5lj6q6H8A' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '3ZoEBDXdwGE4oZ3z' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId '4WmoAGLA9gCkQUBt' \
    --factor 'UTg5atRwTHn5oQzZ' \
    --mfaToken 'LL4ko2TlohUjit61' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'kDxD1QXyuyuBKxXV' \
    --mfaToken 'orBv2zrSUQ2nUs1X' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'WzrgWL3usK3Ile3k' \
    --factor 'qJOP2McrpteTcRHZ' \
    --mfaToken 'LCuiu1K9qjrejPMN' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'xP9OtekRDxeneQ6x' \
    --factors 'o4MBObm16RKbrfHb' \
    --rememberDevice 'false' \
    --clientId 'lt6btLJVnxOm5wa2' \
    --code 'ry7zBm8d5vquHkNX' \
    --factor 'vnMYe6fj7hlcHk5P' \
    --mfaToken 'BGVaYRq5r0SkS24k' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'uHaqKTgnDeN3daV3' \
    --userId 'pgqUitp7jBRpuwoj' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'qJii53fCsN3b5ArZ' \
    --clientId '8G7nvQ7avMhq1KRA' \
    --redirectUri 'HqFJ9eGmPqFwbOub' \
    --requestId 'iCFugADRYEMpsumf' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'ROrGAaPk0FP5wXUk' \
    --additionalData 'qQc1tX6hQN7kMFBN' \
    --clientId 'CRsyioXbK6qB15sN' \
    --createHeadless 'true' \
    --deviceId 'mEGbwZ0QoidCdQlY' \
    --macAddress 'crXWYpF0cXlMRFaY' \
    --platformToken 'wFetBegEwRamQ9BM' \
    --serviceLabel '0.5686450423954216' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'r4bETqCjoXEVRzaA' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'xa35FxRTJg6JDl4f' \
    --simultaneousTicket '6I5yBPMwSlR2fXBo' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'SkN65FksTKUs2kUM' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'NpKMXhjC2vBSaX3f' \
    --clientId 'i06pzNNOei4dpDur' \
    --clientSecret 'nyqPBwt4GrH1D7jw' \
    --code 'UXRJ2RLqrhSdapOS' \
    --codeVerifier 'Pba6YQjbK8yYcX3i' \
    --extendNamespace 'TaqfVeDmINUFWsql' \
    --extendExp 'false' \
    --password 'sXP3NbpcjOTExzvI' \
    --redirectUri 'TIkQ10BIDyTIYyOG' \
    --refreshToken 'eoNfHRcdrnw4Phc8' \
    --scope 'sE0d7nHNYz9lvzc4' \
    --username '2MJqzmnJkZdXkYSN' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'NXd2Au8o00OkDIbE' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'tbIbGHehWpx4dA46' \
    --code 'l0U8AKr1rTwsdKmn' \
    --error 'TvgzOr9lRv2ZQjtU' \
    --openidAssocHandle 'KpnXtdQ4YbjggxQ1' \
    --openidClaimedId '4yuKAnVx1UKiVcCB' \
    --openidIdentity 'AXE7W0lbAgCkncSc' \
    --openidMode 'uDBdjfrWaUhfgvvt' \
    --openidNs 'rpXE7WBpwxGcqVvC' \
    --openidOpEndpoint '6Ne4BQmwG3XuahHu' \
    --openidResponseNonce 'dF64WXXsNqtPazVM' \
    --openidReturnTo 'IIvWRfK1hsnoaekE' \
    --openidSig 'wlePIwTG4tnRpo7c' \
    --openidSigned '29CZkJnO5J5EuJcH' \
    --state 'riq4tugaGag5dCZk' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'aCQLy1wOhlCMkMhh' \
    --platformToken 'KY6l1vhWm1Rlozn0' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'hcCdp5oPyoI7AkdG' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'lArruKck6bTBhM8M' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'fCDHlTfdD5VnMF06' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'MiNrQLxUPutOGdfG' \
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
    --clientId 'wJto4siur4r7i1Ui' \
    > test.out 2>&1
eval_tap $? 277 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 278 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 278 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 279 PublicGetUserByPlatformUserIDV3
eval_tap 0 279 'PublicGetUserByPlatformUserIDV3 # SKIP deprecated' test.out

#- 280 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetProfileUpdateStrategyV3' test.out

#- 281 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'GzZ0ddxjlrZaqZki' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'TExh6dtjufAu20zK' \
    --limit '64' \
    --offset '24' \
    --platformBy 'JayaUBaeSRZFx8DN' \
    --platformId 'mqDOtX0E2SUkHy3m' \
    --query 'Nf2YKjgCAZE3o1yB' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "it9rLS0X2noyWFf3", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "xfxmRqCk62ZM2ecI", "policyId": "15KdA1CZ49Ny0ttL", "policyVersionId": "ysEFGsP8eQLmp88K"}, {"isAccepted": true, "localizedPolicyVersionId": "GBtnU7nGvCRLy0Nr", "policyId": "2yFqvBGFI9wfNnYd", "policyVersionId": "xjcI35rg1O8EZ7xg"}, {"isAccepted": true, "localizedPolicyVersionId": "diU7kkFRpzTPpO54", "policyId": "GzUvJ2QftiXjLYON", "policyVersionId": "zyVyieGXxXeC08yC"}], "authType": "kFb3p976880e4PgW", "code": "tDSDOoJT2yHBMa4v", "country": "3MQOJfsbolFpaKl8", "dateOfBirth": "iPEg43ZOwrzSrFMB", "displayName": "w7FE5WQRpv9rci08", "emailAddress": "AIeTJs6Pr8ehhr33", "password": "QeEcX9pVHrV1jjJQ", "reachMinimumAge": true, "uniqueDisplayName": "XE8NYJnaX0T4WbTP"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'lv1kcTwfWcTTKjKM' \
    --query 'ZQL8JSPlEF86KnzD' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "V0vVVgoyowtFKXt4", "languageTag": "QkinCLSIrdmtyV1A"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "X6gGdSlqbUzOEsRR", "emailAddress": "6lQ4h24xmJbnZASV"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "8XknVmuBQLxkNxRo", "languageTag": "7lTCub0XAXXI4QVm"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "LKijaKUeo2Cnjelk", "password": "TuBmCsvJsYdujwQs", "uniqueDisplayName": "cYqmui6a7eV9E601", "username": "O9d1xdtotKN3SCCt"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Uplh5Z1HhEcNuTJo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'mQqdikH7mKubBj3y' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "jRy8RTwvNSJwgPaL", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "n5gLMfvFa4rk15so", "policyId": "kkiPrEg6SKevMCpH", "policyVersionId": "Jej8Dd9Qhni9QACR"}, {"isAccepted": true, "localizedPolicyVersionId": "Ef4TB7q2yG5yhwsd", "policyId": "k13mcRDqRqr1Y3gi", "policyVersionId": "HQ0mCInbsTvKMOKi"}, {"isAccepted": true, "localizedPolicyVersionId": "bcj63LXDXH2QutJ1", "policyId": "QoYUiR9Yjq4OfomN", "policyVersionId": "xmAzUWh4M5nxDahc"}], "authType": "CTGGMxRlF7Pyyptf", "code": "292ixxSswsBwcbqK", "country": "1M10sotfzLz5HyJz", "dateOfBirth": "P70TnPF1lwHGinXq", "displayName": "YD7AmnVvWQjBpZr3", "emailAddress": "oXJZ2yPZ5bY0uInl", "password": "Yzv3EfIarBFNWHJE", "reachMinimumAge": true, "uniqueDisplayName": "CPpj1OX7QAqlTqJx"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "z0AV29wuOgawtp14", "country": "pXn4nMuLm5QHtX1v", "dateOfBirth": "U6yvUJZWdfp1Mr16", "displayName": "xKpXucFq3fXN2Fyb", "languageTag": "iWn0V9eTYbkBh9HL", "uniqueDisplayName": "iQS9Ag0uW9y3uKLH", "userName": "XY5UrNXjW7lOIBkN"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "CZkNlVFi4YzPZXMK", "country": "OpvqNp5iJ4KY22pI", "dateOfBirth": "qz49LzeOh8AXbR4S", "displayName": "57xK0v0IaPw7X95d", "languageTag": "CbDJ4p85pqzLCMkw", "uniqueDisplayName": "tY1S9nm4heWi5C0T", "userName": "rs3LMckPMLZnNxbg"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "j2DX2GzytGWW5vkl", "emailAddress": "WmFB8Srl3sfrcXmf", "languageTag": "fwxDEeRXEwVWVtKw", "upgradeToken": "IKLb1E7nYiQS52Ft"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PfPmJs8XskjxHHEo", "contactType": "HDrWTesYorpeO53H", "languageTag": "luwicAG8Zjyh9sc9", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3nFy9hoMiQ49H5Gp", "country": "HKxSAlFhJuBXlAoi", "dateOfBirth": "TuVChdcjfUFQvTSw", "displayName": "QUnyojWpQkoXVwYb", "emailAddress": "VobDeaVdN9R1XiwI", "password": "FJyUeRY2pWo1MbQc", "uniqueDisplayName": "84SgXMTVvcNNuNSU", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "wtlIKdmVRpg7FZGZ", "password": "IZkZprJyzB4utSn2"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "UZ7pQDtJ1F4uNjp9", "mfaToken": "zpNsHynkeKvRGrtX", "newPassword": "kPueNMdt1MY2zGKc", "oldPassword": "CbQA1IlfEjQ2tJgx"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '8ihO04zY1fHyZDdf' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'TGuZDrtgo5NFTLuy' \
    --redirectUri 'JRjunt9tJALDQXQ5' \
    --ticket 'WZfsEQjFNSa1zZ8T' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'R8seqkCp2w5z5Cbn' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kMkxvGQHt6iuVVPt' \
    --ticket 'IGt36mQo7QrGeSis' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 's77QzDhM3ZOrYrQZ' \
    --clientId 'Sk1fKBZaFnCshEzY' \
    --redirectUri '4VxcXcHXJN3HLwI3' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'ShndbbACEPreQhFc' \
    --code 'gGWU8WyOfVrckHXI' \
    --state '4i9yeCJBeIXeYxvs' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'y9Gbca2bkGSpx2nw' \
    --code 'pSXjyJEpZGcWYWro' \
    --state 'V5ZQyvRSJFC7VmDD' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "vKWToZMxFBlUAsJC", "userIds": ["PN6hxJO3MBZSgCT1", "5eTYCfUQQbKQyYGS", "dvsCkHv8Gi2pa34m"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "KzhmYi1krn79FbZd", "code": "SJh003V8uPV9bg10", "emailAddress": "39OvrN80AC8PQKZt", "languageTag": "r1ShLYPxLJ9X47QZ", "newPassword": "hnQCWDd6RLBhSxSD"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GFEONI0qts8fEoAz' \
    --activeOnly 'false' \
    --after 'HK6hDgQhwOFCEDAK' \
    --before 'qRMybwA4gbs4qz33' \
    --limit '13' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EvM3B8ZoOhdih5wQ' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CzFA2uioUa3gni8W' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pq7nkKsJpO7KoLxX' \
    --after '0.5362671498432536' \
    --before '0.17668775353905164' \
    --limit '58' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'NjAtN07Fjws1zfVi' \
    --after 'V5nkb2Mbo1KpkXx3' \
    --before 'kkTSzEfYxXki5kW5' \
    --limit '54' \
    --platformId 'QunXorugGAjknX6U' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mys2soVLGD9ISu5X' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '5mTjfWoJENgpP5Sx' \
    --body '{"platformId": "aAan95pxRcCx95iu", "platformUserId": "3cEd807GZfYZTY4m"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'to6a7Pv0tZ3kRVwT' \
    --body '{"chosenNamespaces": ["h619lKf57PfJE2pQ", "9Yg6kXJDj2gRNE60", "NdMMAfVF3LOydQb0"], "requestId": "MrCuUkOms0IAoCdw"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gfhAOd7hthgC51NZ' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vJMg5NdA9jQjKSAH' \
    --password 'fhABclpQpKNkDwMn' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'iUJKRBaM16XsE3Wj' \
    --before '6lz3uG7uMEe4GiNO' \
    --isWildcard 'false' \
    --limit '65' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'A6JbueZdbVcvO6y4' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "0Alv1fUuXuzPhfM1", "emailAddress": "qU5DVp1zEnK5yqsA", "languageTag": "4BgbDhE1rf26xeMw"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "RsL1aZSPcbejVbM5", "emailAddress": "we3FFYrNuIRWeQPQ", "languageTag": "dOkST9GUNl1sErDU", "upgradeToken": "3D91nYlsntgZdywp"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'pVu7OkCSwhRQIAt1' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["eAmncQWsZedNuQWd", "1bLcmKLjSfcxn10g", "DaGh75IrmruOqFq1"], "oneTimeLinkCode": "UE8xy6fZUwD9WxDa"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'deyuxSoUthGOEkAf' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "UQz5dd9a2EzFn1WN"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '5uImkrv2CVgBs0tO' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '9ku6MHWhY0zRuO5y' \
    --code 'puSwXiW7cEZmIK3Y' \
    --error '1BcPCj1GdaKFEsK4' \
    --state 'hyWWarnRRUGQdaDW' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId '9nCIpC0UMvlW5Z4L' \
    --payload 'OcAQmU71cuEfF2gZ' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'U3ZqgGkAjkrugA1G' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'k4g74UadUS1rVuIN' \
    --code 'XDnYYpXPcMkpXloE' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'Z9i93vShWWTZrino' \
    --upgradeSuccessToken 'NeKMhevuxYNC8ZOd' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '8' \
    --namespace 'rIfCd3VfWha8Hkim' \
    --offset '83' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '7Unt6ssyDz3tg6vQ' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'd7TAQUl1UFV6DLsM' \
    --endDate 'CBQK0njln9U7cxy4' \
    --limit '64' \
    --offset '98' \
    --startDate 'rhtTgWTyAzLMVTCs' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ChryeTgsrxMqlTKB' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "nf2MbREOwLzZYu8O", "deviceId": "ETeaVT3QCyxCpo8Y", "deviceType": "qBcug54bIt04cZJ8", "enabled": false, "endDate": "S2q75OPdFVDP8oLn", "ext": {"yG1dhNc2fOk4fckj": {}, "ETMLS2YFeQ6CmhVK": {}, "varluQZhVKeAw9po": {}}, "reason": "rHhx11IYDG6IDmOc"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId '4KU976vNiqmwO1Lj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'AHI1XKhf6IO4ZErG' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'EsJ93GqAtbIjT4QX' \
    --startDate 'muB017qzG0aYG0wI' \
    --deviceType 'JXJXtlf8vFTB2jJy' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'GlRt86V3e4SKq6Cr' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId '1wFTABv5J4Khl5gU' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'YEa2XLAVXIGjw5js' \
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
    --limit '56' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 5, "userInfo": {"country": "wQoth9SQn8xul40Q"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "hwKng5gESMzkveMk", "policyId": "LmtcUUXmm8FnW5ah", "policyVersionId": "osq8B7CYP2mAEiCJ"}, {"isAccepted": false, "localizedPolicyVersionId": "uje1SdoH6rdhYEAN", "policyId": "HTTzwY5tI2s94ymz", "policyVersionId": "VPhq7Wq8hzn7q8u5"}, {"isAccepted": false, "localizedPolicyVersionId": "cCRrQI8Ilci0t6Ml", "policyId": "l25A66eDqOfQV6Lx", "policyVersionId": "atQw9pJpNDsuePkR"}], "authType": "EMAILPASSWD", "code": "eqsAyLe2PShvJAvn", "country": "NDqqKGvTaRBgV1iE", "dateOfBirth": "21pYbDcGlrjiysAE", "displayName": "ghdUQWJKEvVehkIm", "emailAddress": "DppO55f9u6fcg5Wh", "password": "JjacsIT3HHzuaCpY", "passwordMD5Sum": "nbWqvA3BMrdcfDIJ", "reachMinimumAge": false, "uniqueDisplayName": "m7Lfb2qFL4uHWHGP", "username": "9t4WlhPpPMcQOUWY"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["6o9mQaqx7AxAEY2m", "VFW0JS7J9rog3G6Z", "1k0ivbQMDrjp3tMn"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["tLAgny7WVB4o1BHF", "GHDvuIals6KlyOjU", "UFm1JjShtkhelZ6a"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '0hbBCaAcmaqO3bdw' \
    --body '{"avatarUrl": "IGSCfMANrt8mDjE1", "country": "lFR9Q1GGc7Dg3Aj1", "dateOfBirth": "6dAFusH5KuItnsaD", "displayName": "l8MwfYHcYcXlNPq7", "languageTag": "1lvDzaYzuohTheuv", "skipLoginQueue": false, "tags": ["8GZbfouurzri0xqt", "4I1GX3JWeZ3k1zT2", "9YkN3JFbrfiNUtvv"], "uniqueDisplayName": "p40M2ScYEJM525t8", "userName": "FspscTznzxyU6lxR"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'yALeT76cL9EPX1Iu' \
    --body '{"code": "L8ij4MnMYk7Z6A3Y", "emailAddress": "YzGoasBVRgmszfct"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wmPAXssHyUnsNYpv' \
    --body '{"factor": "GH8W2KYmKvFT63zl", "mfaToken": "MEJOw8QR0HI9g8Pd"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'PNZDz8s3pqfspLV7' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HfbqN17aCR5H8ZTN' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '8MJe9bJ7pi8qsGAX' \
    --body '{"assignedNamespaces": ["suaNu8583TJotZwB", "Lq5fHWeSBIl8EVkI", "ntLJ84vNqYeZOwnz"], "roleId": "5BeahojCF30e283t"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '9kFPUknzxe9pohsH' \
    --body '{"assignedNamespaces": ["mQARxZBDtMDm1o9G", "EpBatKbW25iCtbYO", "LBEHfwm7Mamhg2Lg"], "roleId": "8Zu5xp96hSXx8svu"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'vG3p9BvXNqCiQG4Q' \
    --body '{"assignedNamespaces": ["4y6il4U5RA7hsE8F", "4IzDq4ZTOFHNerZK", "PGMGnX7rq7UTN4tJ"], "roleId": "KeZRBkSWgiQBJn75"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '83' \
    --offset '45' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": false, "roleName": "tOsjPD7UuxCIaMNH"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'vREggSmmIVMdqh22' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '9SdNct4OR88MX1bb' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'Z3bPOl1ZmfEg6RrW' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "9eNVyvJIIhGU5jNM"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'SUgYzt5diQGu8807' \
    --body '{"permissions": [{"action": 66, "resource": "x5gISqL2r2BMsRjU", "schedAction": 57, "schedCron": "pIoAhYMgC9vACgMT", "schedRange": ["mPjXewaq4FEqinT8", "wp43WmMbpqttMEMc", "ftUWEvg7HlSC2JOX"]}, {"action": 33, "resource": "iFVHtouzusSw6EaI", "schedAction": 93, "schedCron": "NTDtx1gQd7zNYFfs", "schedRange": ["RmMes7UbG0tadURw", "AUtrFsrasZP02ZMD", "tWVmCqa4hK7E2j0B"]}, {"action": 91, "resource": "MQqcvnfJ5aH9fAte", "schedAction": 48, "schedCron": "VwYNQEI1DLRs8V6a", "schedRange": ["pyGY79NDJ8E9qEkA", "xW5KnBGZuuDjOqo3", "zyaoqOGmDl7ldPXT"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '1CoYrjaQXyPO0fh6' \
    --body '{"permissions": [{"action": 27, "resource": "T4tZ6fdfjGhwFmpq", "schedAction": 12, "schedCron": "euc94exCO04vihXl", "schedRange": ["naCfxEteEWkwrwuB", "bgdqtIY2fmWu9zrE", "jdtCWD91U4tCJNSx"]}, {"action": 60, "resource": "ntywvSVMTaeYVPmR", "schedAction": 44, "schedCron": "8dhu2VNzy3VbKW0j", "schedRange": ["9wpBhvKQc7pg5DW9", "IEvlDSAKctOP8CTe", "GWTAFxWmEMp3vZzA"]}, {"action": 23, "resource": "jwWMeSnouQMxIXBl", "schedAction": 23, "schedCron": "8iU4gjbtfaj7iPDg", "schedRange": ["AUWgyJCaVy7kKlvZ", "Gq8Lr008YlMVO4IX", "xVFP1fWAMtvEEQLo"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'B0s6rXO4hjbQb6NV' \
    --body '["XwxOlpBL8cE9fKeX", "FPlhqXAi3kgbIl9r", "eISTwZ2xYpxOdGki"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'sJzwhDFKTzT4ta97' \
    --after '2GMmKzfsDOrAFg6Z' \
    --before '6YUlfVF4S5jC2s9K' \
    --limit '0' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'i7iyvAsdj9EC05z4' \
    --body '{"assignedNamespaces": ["Hj4peD7a5NGraary", "C23AhDt9y1p9Cc33", "QoJsWBSJiZi0eAHu"], "namespace": "aNeMAsFM2mIcaFDG", "userId": "5YByaSQvLDtetJxX"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId '3Ene1GOAHnOLFyPh' \
    --body '{"namespace": "19EXHb7TVvKtSEyc", "userId": "FLYTkF73TVHegiC8"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["8BDlUKtYR0ZQ7bDZ", "qcLKkmfeacRAH2e9", "M09MLoPMeCsxxUSE"], "emailAddresses": ["5OuXpVcCM06Im01a", "jWANKcSJGtH05ZU3", "oc2qmyFeLc7UAZt9"], "isAdmin": true, "isNewStudio": false, "languageTag": "ag5Z3DnbTgN675zh", "namespace": "gobW3ZChmfVLs29S", "roleId": "q6p0dDNIGIiyOJb2"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "9QBXau4nurkavZx1", "country": "SaN1vy37Y5bkaECM", "dateOfBirth": "dnJ4d8GeKK9SVYgS", "displayName": "muJR5KrgAJMceHC3", "languageTag": "S9XeXzLEuvSiP7cS", "skipLoginQueue": false, "tags": ["5BHOKZ2y0VwPlfPu", "pV8egVETsUDg3st7", "GGgVo5uPyjbXrVcP"], "uniqueDisplayName": "nMb52r0iDx6Ra9Ve", "userName": "MiZWXFgLg9TGgj75"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "Pdwa8BXcDr48USKV", "mfaToken": "sjwG51Gc5GRlh7m1"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'sUNj0jYv51vlNzGZ' \
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
    --body '{"factor": "OnHeg7o9Eqxoy5UK", "mfaToken": "F2OLXyYWfNiIPLfR"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'ihL7TuPJqLHvxDNk' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag '6NbMWURhCdHiTdjB' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'JHQDHWyRf6a6mlXH' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'XnE89U2Oia0imdpc' \
    --factor 'uTZ39xMaqnOOfQoX' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'xpnDyjUuU0fYbbBu' \
    --languageTag '32OVfBYJRydfZLU2' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "dbggpHUvsexQ7n1q", "mfaToken": "X47HXEVQYlXIH1T4"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'PqwGGzhbk7yuR17S' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'fq0JrmqZyqxjCDFD' \
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
    --clientId 'fGllZPW1GOttxvbu' \
    --linkingToken 'oheU94vFFuZ61jI4' \
    --password 'pVXOmpvsTGDJ3yQw' \
    --username 'FKhp3o35kDMnQC92' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'r5u6GhJJFnrkfhb1' \
    --extendExp 'false' \
    --linkingToken 'jzD8HdlneSeVeXHh' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'MlY4qvi585gYohmS' \
    --factor '2OOOuBiiH9ANpuRY' \
    --mfaToken 'rIaEwkiaV7xTdTzp' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'PIjQxqzCFUQ2ILVf' \
    --codeChallenge 'EVKgJABI3RVw9FL0' \
    --codeChallengeMethod 'plain' \
    --additionalData 'hidEfbwJjhCOL7jG' \
    --clientId '7YohJ0aIm8rQ5Zk3' \
    --createHeadless 'false' \
    --deviceId 'jxTRZ0x87KEzkUWi' \
    --macAddress 'MqZkPBEOtfC6GL9p' \
    --platformToken 'MOqfuZBS43ZJUjWj' \
    --serviceLabel '0.7546989043644606' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge '5BNyMlXHOu9T7E3U' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'M4NRHBzw76lI9M8h' \
    --simultaneousTicket 'nnIXezQAkPibo1nq' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'q83W0NPLrxZqx9lx' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '6OZlGyYn22er4gKW' \
    --codeChallengeMethod 'S256' \
    --additionalData 'OkqlIHTZSaMMp7oX' \
    --clientId 'kZLxQv8JnbhNJDO6' \
    --clientSecret '4kuNECKXeLPXiRsW' \
    --code 'qoQPCHxaYhgBMBaM' \
    --codeVerifier '5aisgxuH8lVvDECt' \
    --extendNamespace 'MQPdXvpmGiJGe68n' \
    --extendExp 'false' \
    --loginQueueTicket 'xHgYDUzTt6BlfQ2W' \
    --password 'l97bHV35o2neYrJh' \
    --redirectUri 'hanKgofiL9XDPD4E' \
    --refreshToken 'RYDSSPM5KLPJvSMu' \
    --scope 'Druu4oGnzPLbgUPc' \
    --username 'hU9rWOkoE6JGCAft' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'x7KSDTcctjRaHMjG' \
    --code 'Xrqqt85z2MdMU4I7' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'kamlhDonOaWvokN3' \
    --rawPUID 'true' \
    --body '{"pidType": "HJQqUc4jMDHLJsvl", "platformUserIds": ["QerZjAZ9cX7zRfqg", "yyicR1SEIamYMAT7", "weF73OG8YmivfQ1T"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'r7oibXPwyflPtb0f' \
    --platformUserId 'W0mbDHOE0SNDQZRC' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "1wD87ST9bi4TJGT4", "policyId": "NYayLEoaN6kXSsX5", "policyVersionId": "sMhQqn9xynO3c4KX"}, {"isAccepted": true, "localizedPolicyVersionId": "GeFyLWoc4CbiWfCv", "policyId": "7FnpRzgfZEtnpM6Q", "policyVersionId": "cgYwz9xhmIx9IOgw"}, {"isAccepted": true, "localizedPolicyVersionId": "aT3TCbzl5OWfAanG", "policyId": "oUukw4zh3S4u4QLb", "policyVersionId": "ZxuiWHsTJvq4nb26"}], "authType": "EMAILPASSWD", "country": "2q7tNrjBatjyvtzV", "dateOfBirth": "zGeof78VJzrUGjTf", "displayName": "mfOs5zWQ3k1jCnNL", "emailAddress": "umkvYIdKzFk9LQbi", "password": "t5EdXHJntRNqzURd", "passwordMD5Sum": "SNmhkzr3bWwCnNct", "uniqueDisplayName": "ST7RH9EjlK12tWL9", "username": "CRl0XCrcurF67Ssv", "verified": false}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "DQDnvUTw3OtDAd5Y", "policyId": "9qS5swN1wUQo1miL", "policyVersionId": "YG8W4WhfQy9ehZnw"}, {"isAccepted": true, "localizedPolicyVersionId": "86FBTnoY70JesPEE", "policyId": "OaDRKZWZ2leylYhR", "policyVersionId": "3hccOz8So6gbZTl7"}, {"isAccepted": true, "localizedPolicyVersionId": "SpeaynKrpCijFwUL", "policyId": "adADeGCw8QHP6ytJ", "policyVersionId": "WU00h0Npx4sy3UPJ"}], "authType": "EMAILPASSWD", "code": "Aw8oT8qOXkUi5BW3", "country": "jejoiSzq0j21sUUw", "dateOfBirth": "Ohl2A4Lqk5uRwJc7", "displayName": "o2ugyY1qKGHHkdI5", "emailAddress": "jDY6S09JgWg0PvTC", "password": "cBox0SlxZd7lp0Af", "passwordMD5Sum": "cu2w2J4n4N8728Ug", "reachMinimumAge": true, "uniqueDisplayName": "BRvMXrBAhVBmdod2", "username": "MTEldBMyCk6fLJdy"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'X7VabzM7opMnWlMn' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "rqh1HGD37eGPyKOd", "policyId": "zY7N9uLwJjMQS5Dv", "policyVersionId": "eJhqqVl8xOdyz0Aw"}, {"isAccepted": false, "localizedPolicyVersionId": "uIzYmmfnf7KwdIzr", "policyId": "c8aGfudcruvPjNE6", "policyVersionId": "5KPijasr3LZf494b"}, {"isAccepted": true, "localizedPolicyVersionId": "GEuoKcmRU4LAIVNa", "policyId": "G894uWDs7m6Xt53w", "policyVersionId": "rRXV6k3zf51MUB7C"}], "authType": "EMAILPASSWD", "code": "Odsz6471NoU3hbQ8", "country": "W0Mv3rzK78VWcxMX", "dateOfBirth": "eeMXXvVef9kGVQqD", "displayName": "RUwAQgxPUIBxfJYk", "emailAddress": "zkcBtNmUPIFF1agc", "password": "6Uekw6JSvYIkK8cM", "passwordMD5Sum": "c8NXOLPqmXctP9Q6", "reachMinimumAge": true, "uniqueDisplayName": "LyjkYgEfCUO9gYwh", "username": "dqidwvep9KBvMNLl"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "NHnN1x3mjjvhk7Sz", "country": "5dkI7mSknuY00MUQ", "dateOfBirth": "H59Wzxc5TeEO1rBJ", "displayName": "erIjsNhQcRHuAMyv", "languageTag": "t6QJX0HKyxTJkEfQ", "uniqueDisplayName": "LL0oFclNtpamw3ag", "userName": "LDdikG5jnkxd3dJE"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "HGyjo82CejXX3GkG", "emailAddress": "o4s2nyAYicCOsZK0"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "6etTF9t3QXd8NFD7", "country": "bD0aezfhSSTS4mXt", "dateOfBirth": "gRzULtLcscuu06Ir", "displayName": "vKIUDzuWU8110mYj", "emailAddress": "yaHRXeihAhheoxEg", "password": "tKEVtsjHqkJzGTLi", "reachMinimumAge": true, "uniqueDisplayName": "w869Pga57sfZhmFG", "username": "W48v34EEhAMhfk9v", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "9fx399Xy4nL8lPnq", "displayName": "YXYoGd2A55LbQCCQ", "emailAddress": "4vZAO24lABR33Zew", "password": "TiwbpC7s6C3vlFAS", "uniqueDisplayName": "P1bnj3B2FfhBxH0u", "username": "lKtWcgooBpAPlIug"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "debZg2b7UHH8auyZ", "mfaToken": "QtUkuteHyFlCKd3j"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code '7rrEjszgBnT3adrM' \
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
    --body '{"factor": "ViYDEpkUOpDohwqT", "mfaToken": "g0fE9harsmOLs2Bo"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '8dZc1PnF7LmiYY59' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '41SONMZ5yDCHB5i2' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'qHmLCNOnLLLm7lMA' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code '2RuY2YyiBGhM3Czz' \
    --factor 'Kw4waxst13BLwcoo' \
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
    --action '1YsSEoPGtsAce3ha' \
    --languageTag 'gsy5WK90G6XS73dk' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "zHwetCtX8zQiVf8A", "mfaToken": "EFcyaYGDrv9rl4hz"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'ueuBIyvztth0WM9j' \
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
    --factor 'fIhwbEA6Ow3CUnt9' \
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
    --userId '7uvdgguIcPpopfls' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "vDrAoSABjv1uFgSh", "emailAddress": "XPtytjQozqsJhOb1", "languageTag": "w3okNMO2Bw6njD0S", "namespace": "ucPnZGZFalx213N3", "namespaceDisplayName": "mEousExjOlyJAOvA"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "AGiUGT390Obn1Hf3", "policyId": "G9BPGi47wzVidzil", "policyVersionId": "fhZAbf9thYRoYNzm"}, {"isAccepted": false, "localizedPolicyVersionId": "AXXESVYAqz9lkN3q", "policyId": "8gWQAxlPAHbVqHaU", "policyVersionId": "JuoTINtPctl6gXLV"}, {"isAccepted": false, "localizedPolicyVersionId": "gSr9Oyw13AGGWpw3", "policyId": "4vUHWhwWbLvpT8SH", "policyVersionId": "F12znGo5UAaGzfgP"}], "code": "eBvqm9BxOzZYp5nq", "country": "l4c8nW0WyS5ZyDLR", "dateOfBirth": "cQQMwu2HVAK75cDg", "displayName": "iuzk7i2D07fugoOz", "emailAddress": "HF984dXm6iUMYguC", "password": "MZb6Snt3N3DZviAh", "reachMinimumAge": true, "uniqueDisplayName": "54djNpVHv4a5vYHM", "username": "CPeK6L5ML5wSMpBG", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE