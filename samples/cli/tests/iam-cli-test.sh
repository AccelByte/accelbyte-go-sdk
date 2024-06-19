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
echo "1..401"

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
    --body '{"modules": [{"docLink": "hUd59OMf7UOJuFTr", "groups": [{"group": "yU0lO801lOfwH9RH", "groupId": "2dP2QaKjrfSARQD4", "permissions": [{"allowedActions": [94, 98, 54], "resource": "dMHmaE25tJqrzXqq"}, {"allowedActions": [64, 51, 70], "resource": "MFYXpVgc0iG32Odh"}, {"allowedActions": [14, 90, 68], "resource": "J1euiJAApCJkTqJt"}]}, {"group": "vEtKaPjAfVHOjITQ", "groupId": "RHyxkbU592OOWnIZ", "permissions": [{"allowedActions": [44, 52, 61], "resource": "8Hs6Mzm8oiR8LBg1"}, {"allowedActions": [39, 73, 93], "resource": "w3PHjfGSXWxrLcxC"}, {"allowedActions": [89, 3, 64], "resource": "SU7vGFFAlhrij1GE"}]}, {"group": "q3g5kWyL8pP5phYd", "groupId": "4GS8LbpHiAFuTcGE", "permissions": [{"allowedActions": [0, 41, 47], "resource": "wTFrd1yzJcFAAItf"}, {"allowedActions": [91, 52, 39], "resource": "Vm2uNYFjDoibdvuw"}, {"allowedActions": [9, 14, 80], "resource": "JD6Z7WdHNr9Cghpp"}]}], "module": "1cidXMWyYyiC35Nx", "moduleId": "RDb9MwpNEdutK831"}, {"docLink": "wQpqAjpWAk4vG0Ql", "groups": [{"group": "ubJpmcbAk14mlRHY", "groupId": "m3gjDYFoijO0GGR8", "permissions": [{"allowedActions": [57, 90, 76], "resource": "g5xt7xlXGYbfsthr"}, {"allowedActions": [85, 8, 42], "resource": "4RufjgAfBuqcyin4"}, {"allowedActions": [65, 4, 19], "resource": "XPM9jsSjqf3Lw59B"}]}, {"group": "qEHjvw152MYisX7t", "groupId": "bq4pfzv1mJfFWwFh", "permissions": [{"allowedActions": [72, 32, 59], "resource": "OJQkClL4eIZmXeBS"}, {"allowedActions": [56, 32, 49], "resource": "9x0Q5RE4PmARULkO"}, {"allowedActions": [28, 29, 37], "resource": "d6iwtoCadg009lSr"}]}, {"group": "VyCehF6fz4y8A7HU", "groupId": "BmU8NxbakoZke9uv", "permissions": [{"allowedActions": [34, 87, 61], "resource": "hpXpQIL9YDsrZZnF"}, {"allowedActions": [99, 34, 44], "resource": "oNNWN8NHisXMlnet"}, {"allowedActions": [48, 89, 82], "resource": "CN6LlajM2O2wNXlm"}]}], "module": "JUgJHV44MSf8yaYs", "moduleId": "cGO7Rji65QIHB2F8"}, {"docLink": "fguTddbpWMHN1Yfy", "groups": [{"group": "mib9VOAD9mdVhc92", "groupId": "qZwJE7CN4iiU38os", "permissions": [{"allowedActions": [29, 81, 83], "resource": "rQxkzZgHlnfmPHMD"}, {"allowedActions": [81, 7, 77], "resource": "wkiaMCuQdLtUOgOd"}, {"allowedActions": [50, 87, 96], "resource": "SCbtkaAnWmb9rsB9"}]}, {"group": "31O6wr80jOE66TC3", "groupId": "9ZV2yQX2vKlZp1wf", "permissions": [{"allowedActions": [91, 57, 34], "resource": "MI34UKmargptFdx9"}, {"allowedActions": [10, 31, 5], "resource": "D23YhSOhgFCBHCoq"}, {"allowedActions": [98, 87, 91], "resource": "SXpARIPUNkOWqfm3"}]}, {"group": "GlpTTKeN3jHOy1X3", "groupId": "ZsTcidZPycn4SfnN", "permissions": [{"allowedActions": [52, 34, 66], "resource": "EtPaO9eV3jjsRIAi"}, {"allowedActions": [70, 22, 20], "resource": "lwCG0d0gp4xOV0Eu"}, {"allowedActions": [60, 60, 16], "resource": "eIfXJriqzvQrkRJv"}]}], "module": "ExkqiBQKrCgAlB64", "moduleId": "f9TZ0NRD5rzRBYQG"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'false' \
    --body '{"groupId": "xdm5RtnDuSWEjoec", "moduleId": "DGFUMEO5QCCuCTzI"}' \
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
    --body '[{"field": "PnYTgiKwSs5lBEyi", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["8LWwiN5pXRrNZ9DB", "ewQ6Z8Amtsis5b49", "kA3TTqhpFHSgXo2X"], "preferRegex": false, "regex": "DXYSS3YzxfW2VZzI"}, "blockedWord": ["b3pLEfvXZSyVOlRa", "Wzt7HxckUdDlAcVx", "JCOYBsn5I4PBMAdI"], "description": [{"language": "BGuJosOJnhYEk9H8", "message": ["4Qv6xOUi5GD9sPcr", "cHH1bbP7Z1zKnCWL", "b7YH9w4tIq6SlH9F"]}, {"language": "m4j4g4dh14968eTc", "message": ["Kq2nxloYkJsIbPUF", "snay2ynu9DDaW7jI", "6f2ZklveGHqduGBr"]}, {"language": "QkASLqQsTDwwt3ui", "message": ["S7o0DFPbJU3f36n0", "Cv5nvBAJBzdhR07o", "hJSZAtodYzufwR1x"]}], "isCustomRegex": false, "letterCase": "I0kjBIeNPxUIQu1w", "maxLength": 81, "maxRepeatingAlphaNum": 3, "maxRepeatingSpecialCharacter": 41, "minCharType": 37, "minLength": 66, "profanityFilter": "MF1Cc0TZRSUjWnnY", "regex": "Eu5de51WsAQ0VFgb", "specialCharacterLocation": "xdypS0zxsj1BDdOC", "specialCharacters": ["FswCxK6BWxtFe9Ld", "ESewLIBTvc5bTR8x", "JzZ9xQT6ZzPXo4we"]}}, {"field": "66tWKSG2dQTw5Gzn", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["hCURwsfy5Fy6PP1M", "fRCPGtwoyHjWvMNz", "ckETBqqkLV4QLj3l"], "preferRegex": true, "regex": "MClu8VvbkNdVTXye"}, "blockedWord": ["ij4KP2Pn02GXw2wJ", "nghD5lUYKIAibCtD", "PRA77pEjnhOK2v9v"], "description": [{"language": "UlMiGPTo0E6tMyON", "message": ["FaPa6UsRZqdsTnEu", "2eG2MtT3AN1R9RuX", "ah5S3YxYxvuc8lFE"]}, {"language": "pe7moPku5shoPh7C", "message": ["207KYKoonS037K96", "5H5DqQlPlLezR5Ap", "kTJeSgsrCwuXFBNB"]}, {"language": "YENDawlHf4xPrvWv", "message": ["1Cmz1Dev0LiYDMOF", "XG0L1V9SkbwbKTU8", "MhqtxMVqSHYvPuJ7"]}], "isCustomRegex": true, "letterCase": "awgiIM3RD3AtR6V6", "maxLength": 45, "maxRepeatingAlphaNum": 92, "maxRepeatingSpecialCharacter": 13, "minCharType": 34, "minLength": 99, "profanityFilter": "im2eu5mW5UZLyUA9", "regex": "qz81Ai0vGIfOMOtn", "specialCharacterLocation": "cYFTRrzAgLBizhyZ", "specialCharacters": ["n5V7GTLoGzI0wume", "cC8V7KDHgTF2F3bw", "ceJqIhhMS0Ixgbfp"]}}, {"field": "4b9b1VfKkN46ClL0", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["I0V5KDBEnT6shO3G", "GftSXw8xKZwEo05Y", "nVQsTIEKvok4ikVY"], "preferRegex": false, "regex": "4PnYEkdT8qYkLwK0"}, "blockedWord": ["fwjx4eeqsMTIlsuP", "nd1HOTI5ViXESXGr", "WxK7jtaaacZuTiDH"], "description": [{"language": "jYCNKnOqmMY8RdGU", "message": ["lg0KG9iPi2tzQdYl", "fFBIPRaiwiNAmr4A", "MlkAq3LXtMlNk5ai"]}, {"language": "KZaRudAAYbtsZ35T", "message": ["Xg3KzNfWfez6eoUl", "0rSSndRaRDkPVahA", "FrTZgNq7NmYrNWmT"]}, {"language": "BeSGVeOUOgqEerMv", "message": ["2isqKZdY1QLVSdMj", "Wna61ciDMaHjKzPX", "zTXBqGaegIwlFD1h"]}], "isCustomRegex": true, "letterCase": "aKQxQHbUK3bZKL5c", "maxLength": 70, "maxRepeatingAlphaNum": 65, "maxRepeatingSpecialCharacter": 41, "minCharType": 2, "minLength": 7, "profanityFilter": "cQmMO9ayqaecKRb9", "regex": "a7ZC9ngVz6Ri3DkF", "specialCharacterLocation": "N411wToQvr7dT94Q", "specialCharacters": ["mzEKHQZx2HCUUCbq", "tYIrIaRc9o5PnoED", "7DJY427rjamAC3It"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'lqS9caiyLEYsMPyU' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'WZ5w8CAV7cRCloH7' \
    --before 'DADkeDiWV9NYVATV' \
    --endDate '1iZ7FXIe2IBsL9ui' \
    --limit '80' \
    --query 'YBayOdVjR48cn3VE' \
    --roleId 'c2qYyhwz3aaKnZ2S' \
    --startDate 'eNCmNYeObrPbTYpy' \
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
    --body '{"ageRestriction": 100, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'uRBmzj4un7OhZVgC' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 3}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'D8dm0vIRCIxqOPUu' \
    --limit '85' \
    --offset '53' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "D6dM9gtUclCC2cYZ", "comment": "ZzjQvsf1OQM0c8Ir", "endDate": "zWrAIEwKADrfJVer", "reason": "k3e6b39yf6GGiCaK", "skipNotif": false, "userIds": ["yxCopOFLmCTkaeSI", "Z8lsNTjYrUC8zoJ7", "mPqziFpWbIFsJ6cA"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "Y1nA4bWAk1Q3mOsK", "userId": "sWNgRAIHdO1sK8Gg"}, {"banId": "mQjLrVvxb2UXchwL", "userId": "JXc18A7OpGlVq2Wq"}, {"banId": "ibecCMgShegizXYh", "userId": "NvReq0gTukqlhpMr"}]}' \
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
    --clientId 'gEALWwe408Sanlt4' \
    --clientName 'UI5Jzd24JXnnhidP' \
    --clientType 'tRy3C2O99v23WvvC' \
    --limit '82' \
    --offset '94' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["zgKAOdWgIhxHjcYu", "yfPgrGKJyHAigPeK", "N98Qc1zUZ7vkpRWb"], "clientUpdateRequest": {"audiences": ["vqIbkUnu2ThvWrWE", "V1lj0rq1L8Aj3UUm", "ca6Glkp0Ekr8Vktm"], "baseUri": "nXwbvFCZ0Xn9qeSj", "clientName": "nzzWFd2KMOaXOPTw", "clientPermissions": [{"action": 65, "resource": "OMkPkZkYVwDEVpQI", "schedAction": 63, "schedCron": "ISsCrqrfAzyR8tjo", "schedRange": ["eXzUb1Lm4SEOztly", "EDTiTejrLgJp4ECe", "eQ5gvNdFl9Wo96S4"]}, {"action": 16, "resource": "MVwMzn2TuIaKPvIL", "schedAction": 67, "schedCron": "ETrLcFwQe8PIc48i", "schedRange": ["S8CbhDSpzNOuZAC4", "uRThq5Ks3SNDm08n", "2OLtuQA21kMgCqdF"]}, {"action": 48, "resource": "dvqgAbTdVWH3eXmq", "schedAction": 42, "schedCron": "xCQvlnnuKXvKvaaY", "schedRange": ["TLLxv7S7CoBMQCTI", "QEkyo0QpT5Ou7Vvp", "mv6u3nCvDNxDiqLm"]}], "clientPlatform": "CoYId4UFJNc9i8MR", "deletable": true, "description": "zNXLgK4cmtTZRgXm", "modulePermissions": [{"moduleId": "gZqkH46rfOv4bgcH", "selectedGroups": [{"groupId": "KR9zbo1rzHDng6Nm", "selectedActions": [42, 46, 8]}, {"groupId": "Xs93WlLnCJ6orhqB", "selectedActions": [44, 45, 78]}, {"groupId": "fxK2K7GxeStudQvJ", "selectedActions": [86, 32, 33]}]}, {"moduleId": "BOL8pZqSB8rUuceH", "selectedGroups": [{"groupId": "Yn88sNJ54sotQqnt", "selectedActions": [25, 18, 11]}, {"groupId": "mgng5COBISi0IlxI", "selectedActions": [46, 35, 21]}, {"groupId": "qjPYrjktgMGiiFKy", "selectedActions": [31, 83, 36]}]}, {"moduleId": "wzGKfWfxitANgMzn", "selectedGroups": [{"groupId": "bPJ3TFsrSXPsgSEP", "selectedActions": [39, 61, 84]}, {"groupId": "tdVApZl1XLHIsUSX", "selectedActions": [31, 14, 78]}, {"groupId": "51VNCo3IccegOiUQ", "selectedActions": [19, 60, 53]}]}], "namespace": "anUPya9LvodoCBY4", "oauthAccessTokenExpiration": 35, "oauthAccessTokenExpirationTimeUnit": "8B5aYaLfTyFRCD69", "oauthRefreshTokenExpiration": 96, "oauthRefreshTokenExpirationTimeUnit": "1WusPPGReHKI6Erf", "redirectUri": "wakeDVE2HWiwdDlS", "scopes": ["s3BnETXmX3x8opOm", "DZHmJE1jvG2CCi6J", "H4NNaas0jIfMAb2b"], "skipLoginQueue": true, "twoFactorEnabled": false}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["TKTmvrObgLm19ugE", "iFeuI2CuP0CtK01z", "B5HarxdumOnX1i9N"], "baseUri": "Wk7aMYiyst4Cm2lo", "clientId": "UUPbXJoSs69pDG4y", "clientName": "vA1fSE3WwbQGOoon", "clientPermissions": [{"action": 74, "resource": "CzsIvstzbzQrKy5R", "schedAction": 0, "schedCron": "FPxINvoMZIUdBpdn", "schedRange": ["6yjuPypYcYDzaP7a", "GlkgJrWM7NeMzjiN", "N4y4L6K6nXTmrZOn"]}, {"action": 76, "resource": "t8HqEQEXWnlkjND2", "schedAction": 38, "schedCron": "ro3tkeve8oztK5ba", "schedRange": ["OUoSZMaRzKTPnjA2", "c8T7PlaEwkG2mUJN", "glQ6WGRpA6aWfNHW"]}, {"action": 1, "resource": "ngQEVNay6RHiWiZm", "schedAction": 38, "schedCron": "RcPKGM0uxsfvL19J", "schedRange": ["bvedx0yItDxNXlnR", "3Ytij5f7nPCvpBCr", "QcIrsX1gvya57Gy1"]}], "clientPlatform": "6FAKPQsPIO98tktQ", "deletable": false, "description": "Tdc6xgxsiEvm1NWw", "modulePermissions": [{"moduleId": "0pUpnGeC42OfWuVM", "selectedGroups": [{"groupId": "sxXwQ0cAGD2hOAAf", "selectedActions": [95, 8, 24]}, {"groupId": "T83HdeAGFOrGBkiu", "selectedActions": [43, 64, 0]}, {"groupId": "t9NaXWYz9MzDFnde", "selectedActions": [50, 11, 18]}]}, {"moduleId": "rB19gKTkHBFEq5ik", "selectedGroups": [{"groupId": "gN3p64LXnGP1a9IK", "selectedActions": [4, 0, 89]}, {"groupId": "pMkdgBf1iNDQQE9R", "selectedActions": [43, 48, 35]}, {"groupId": "Mby1kVZQOiqEicDe", "selectedActions": [71, 29, 81]}]}, {"moduleId": "7bOmmtJcGIEK9KGD", "selectedGroups": [{"groupId": "cZneSTfCgPGFffBS", "selectedActions": [76, 46, 83]}, {"groupId": "6V0ehubTweX0KfLO", "selectedActions": [33, 73, 6]}, {"groupId": "0G96WGa5WI9j9dS9", "selectedActions": [8, 37, 96]}]}], "namespace": "ilsk04TJqJqnrDY9", "oauthAccessTokenExpiration": 61, "oauthAccessTokenExpirationTimeUnit": "ccKXGOpltRJtVhBi", "oauthClientType": "zSmWRWobAVU1cEe9", "oauthRefreshTokenExpiration": 77, "oauthRefreshTokenExpirationTimeUnit": "aIFIr5Q04PGQg0xH", "parentNamespace": "r51YtVnAgGcOuMUz", "redirectUri": "Cy6khrhEF0MCIsul", "scopes": ["4lImNqK8AioiyG6D", "i7LofhvGJKKj0Q01", "XxApsYA5q1vNKnVe"], "secret": "o3CrF8TiBoVKf3GV", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'vicrRzu8JPoiSnpw' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId '0ydsFwzbyyIoFjL5' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'LRtew3c9q45FxawX' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["3nJrByVeF97dCTTa", "6q1fD5bQKG7oDSFF", "euEvDby0xn7rfPD6"], "baseUri": "ZpaLhKrA1tpvZRTz", "clientName": "GgQBq6CsPLKviPq5", "clientPermissions": [{"action": 46, "resource": "wkxLBH0zncwbG2jx", "schedAction": 28, "schedCron": "KkCWa6KREQwpkQvm", "schedRange": ["FdkYaUkF2XkbeMRe", "clIBx2ZCnCgL6m4T", "LRqebRXilezdDln8"]}, {"action": 23, "resource": "6SvGMkAdXkIQdnPt", "schedAction": 55, "schedCron": "PwsTcfL9JupXrnQd", "schedRange": ["O7t3u7aSQPN2YoKp", "vY3sWhCch2Lv0KIE", "mCsfmS3mwhyIk17Y"]}, {"action": 6, "resource": "dVfKeB3rSF55d0S5", "schedAction": 6, "schedCron": "awcm637ntUgMkPVX", "schedRange": ["ZeHZATMlSAy8bZJc", "4hXpz1n7CYPlphfs", "fA5Us05L2zsbhSav"]}], "clientPlatform": "t14d3AvJkUezCgo2", "deletable": true, "description": "9EQ1jVMGZ5luHqbI", "modulePermissions": [{"moduleId": "mqTZQaIF9OxtoWui", "selectedGroups": [{"groupId": "45GpZuXENFZghl73", "selectedActions": [84, 66, 96]}, {"groupId": "G63TXNBFrWDiOM2a", "selectedActions": [18, 34, 71]}, {"groupId": "9x0YhXcTRKNA0bjN", "selectedActions": [55, 88, 83]}]}, {"moduleId": "0ZHqzaj2WOIV0ccw", "selectedGroups": [{"groupId": "Ppw13GDQbWjoFNiF", "selectedActions": [29, 90, 39]}, {"groupId": "6CLBIbbJCGLsBSDQ", "selectedActions": [99, 99, 50]}, {"groupId": "znbfoxG2KgGkczGS", "selectedActions": [53, 58, 73]}]}, {"moduleId": "6yFGvR4c32ZWaJ8j", "selectedGroups": [{"groupId": "xdeCzEYmRDM35tCJ", "selectedActions": [12, 99, 27]}, {"groupId": "sd9y8flOphISR6lE", "selectedActions": [44, 57, 26]}, {"groupId": "bqdwV3BVGJZ8kp7Y", "selectedActions": [65, 4, 50]}]}], "namespace": "IKceSSooHTD7Kn22", "oauthAccessTokenExpiration": 44, "oauthAccessTokenExpirationTimeUnit": "o9VqhPAQ9iRM9vnr", "oauthRefreshTokenExpiration": 79, "oauthRefreshTokenExpirationTimeUnit": "MlVOdGRR37HdTyoH", "redirectUri": "PQ2cdbEI80t3GLrC", "scopes": ["mrOEVMkAcRBZyYzR", "WB8rO4mwQu69Id8N", "mLNf63jmcmL0jsp1"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId '1glGMtaV2MMyhaTV' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 97, "resource": "oYKD6GdQd4wnKyad"}, {"action": 45, "resource": "8eJGQMVPUqjn1Gdh"}, {"action": 93, "resource": "cCY0Jh7Uzp73a3PW"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'Tt3lEWPwlN3wKkhv' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 74, "resource": "itABNoJlpDyZX1sI"}, {"action": 58, "resource": "L3ajha2FEeL3XQLQ"}, {"action": 36, "resource": "gyICV0U9hwX20xmY"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '30' \
    --clientId '9SP6HGeXlD4npqsa' \
    --namespace $AB_NAMESPACE \
    --resource 'pQ0OSZNtrPxhjK4l' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'YqrdrVMl2RXZGBUx' \
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
    --body '{"blacklist": ["cLulfSxLXUFhKuSi", "tamMqS5G1Awf8t3K", "HrMLg1coBASbF9ZQ"]}' \
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
    --limit '34' \
    --offset '58' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 140 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Mc9XO4IWDdKBmUHQ' \
    > test.out 2>&1
eval_tap $? 140 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 141 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wseikWSG4Eaw12qj' \
    --body '{"ACSURL": "tpi4yGOd4dtk4PEt", "AWSCognitoRegion": "R5UogDT3SvGC6ddn", "AWSCognitoUserPool": "P2Tm5Y44KcW867r4", "AllowedClients": ["Tqat3hDRR2QbnZMb", "v7iGvt8hX7Y5pUtC", "cqVrAWft3WmWlEV3"], "AppId": "AV04Isor5blh39Kq", "AuthorizationEndpoint": "vdcdYz53TvrQrZgB", "ClientId": "dWi1zBp7xgNL8A7L", "EmptyStrFieldList": ["kFABN0X3B54WWhTr", "z6NrjgIvX3dfruNL", "zm6vOxL4rslAMW1e"], "Environment": "cg3CdZ1XNdhAqpFj", "FederationMetadataURL": "fEJR9cq85TZIN8ZP", "GenericOauthFlow": false, "IsActive": true, "Issuer": "FI8gqvgJmwtrJoWI", "JWKSEndpoint": "bc5rYY2bjdtMV0L8", "KeyID": "vc69yyTEZkFl3uzk", "LogoURL": "T46GgTWrzZolFJgC", "NetflixCertificates": {"encryptedPrivateKey": "hoj056lZBdKL2pFV", "encryptedPrivateKeyName": "4vfUDEkClRV6fnHe", "publicCertificate": "Y1HR9m7XhqowkNMN", "publicCertificateName": "pRWnaXP9bQNX8kpf", "rootCertificate": "l4zgzpXUTpX0JQsb", "rootCertificateName": "n1H5zWGl5X3Jmkei"}, "OrganizationId": "ncxRePMDfYbFLrjk", "PlatformName": "Zy9RGJeRS4Fwua0h", "RedirectUri": "jS6qf3egZW5nT74r", "RegisteredDomains": [{"affectedClientIDs": ["jQSjQluM0H93Yy6n", "lg7QXMIaS4nwETWO", "hz48bX4UIrv0ROcc"], "domain": "TPbOZEwuuS3Rslj0", "namespaces": ["snNX2ukiP8IUXzre", "DgLUtMBCyiGrvdMa", "fUvCwhyQyGyhQTCi"], "roleId": "w7fHzqOA45UHGnOv"}, {"affectedClientIDs": ["DokbIJk7jL5dUGfg", "z7x3sqno4EkhWgo7", "DjbtFN1JSyVrYUMu"], "domain": "BnWMUTHD4beCY8x7", "namespaces": ["xUHAgHB9BuICvqf4", "RryNv4NF6dOeGNT2", "2DJaiLZ52xNM0XVa"], "roleId": "zER3Prfjt7cIC7Z7"}, {"affectedClientIDs": ["hxSuZf6eqm3f0bgj", "8fw0oSsfOjGzzkFZ", "WqIukBQE7ggigkKF"], "domain": "VYAdGBLDhNAoFD3X", "namespaces": ["BjlCiDCRsFWeFLL6", "zPJ3oh3LLVVwcrSS", "ArFSicOaGvHahKxU"], "roleId": "4GmN1I9bzhu4UA9V"}], "Secret": "8aI8MOn9iguc3D4K", "TeamID": "p3VgtSDIOfLv9QMy", "TokenAuthenticationType": "KuwoQX1T3RDUep3L", "TokenClaimsMapping": {"fp2hXI8qjyy3COu0": "Otsed7cbibW1j1rr", "Mhi9l8EPom4CzHL6": "jAw8eKyfHFT4eTeF", "llpTPCBVKVORyDiL": "zQqDTYMXvPL2sx4m"}, "TokenEndpoint": "PE3MaZHtLkUwsxeN", "UserInfoEndpoint": "nifVcPkYjaPnaYLO", "UserInfoHTTPMethod": "vB06GHbOQbCABERu", "scopes": ["mAiEUI9UTDOnEYp5", "oB6DS4Gz83Nt16EY", "W94CTuYobVbUPHvY"]}' \
    > test.out 2>&1
eval_tap $? 141 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 142 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9fk1hUI8AZVrPGVI' \
    > test.out 2>&1
eval_tap $? 142 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'U6UWP8TgFUKFOAkO' \
    --body '{"ACSURL": "jVDvGZHX9h28mNTK", "AWSCognitoRegion": "C20RyPRKbVCjYs2b", "AWSCognitoUserPool": "9NzdGmcfJtqndD9m", "AllowedClients": ["SptutzXiq7JoweoB", "2p6JsQaF24vgR3XJ", "2K6I1f6lDAQjLcqV"], "AppId": "CVNwacnwx4HvotDm", "AuthorizationEndpoint": "OcEZxe66tJXbh9aU", "ClientId": "xptfd7mGFaiK0TZx", "EmptyStrFieldList": ["k4pCGfCspOntqH4a", "8tAIsVaGvRK03wUk", "FKJfP1I7UJKb4Hb4"], "Environment": "ZmyCmnGEJq7gpWcf", "FederationMetadataURL": "arxxYLndrvfn5XwD", "GenericOauthFlow": true, "IsActive": false, "Issuer": "soUFIKSx01aVuMZv", "JWKSEndpoint": "ZTbknr1tUhShDTzW", "KeyID": "zMfMpEp09YWbInhW", "LogoURL": "BLsTC243FuEMJufr", "NetflixCertificates": {"encryptedPrivateKey": "JOuGPaP0cGsfRclO", "encryptedPrivateKeyName": "fINOb3Ifvqddbzjo", "publicCertificate": "GT1w5QIPAnDCoHXY", "publicCertificateName": "LSPrYmRc8oEgCcs9", "rootCertificate": "Tm5gRreUwTfrV74N", "rootCertificateName": "Y9YJN6GUXIFPFbAU"}, "OrganizationId": "xtYCLJgWX0zZ6bLT", "PlatformName": "ZK1S87o0dNjdEMCx", "RedirectUri": "Mtf5ZyOyWS15TGIP", "RegisteredDomains": [{"affectedClientIDs": ["RC4qB256qEbogw74", "8DimyZpPG4MuJ40f", "lYCfFFgoHAGTHybS"], "domain": "FFOvk51iU8ZjnN5p", "namespaces": ["ECSYhrJmOVVxQWmm", "RUh2eDo7bznwLmac", "m9iWW0YEyC9bxLNG"], "roleId": "IFWapNz8HGmj63MW"}, {"affectedClientIDs": ["LMJOp9PKwzR5bgcn", "2zbS3DaYgAzsm0P2", "8EqVUJEgtLXNULuf"], "domain": "htvWLUvqen5sSdn5", "namespaces": ["lodESPBN1cejphny", "HodCPKeD3KREddiK", "WNgUImpJDHAClpvD"], "roleId": "57sgSI48UmCMPhDO"}, {"affectedClientIDs": ["qUPfTLitsmFVmRHF", "MZwXAxBqSKeB7Nyf", "I1it9ZVVVtvk4EUT"], "domain": "Ndzw5bG4D8Qpd9dx", "namespaces": ["AQzjpi6gmdnOjNeS", "8q2t6mqp5rRWGVqY", "lRxxxmtkDxOPZHp7"], "roleId": "Zyw0zP2ktSRmxsSu"}], "Secret": "ej85phV1TxJgZtRX", "TeamID": "tQ4r1xLXp27rSdyl", "TokenAuthenticationType": "PIG31vQr5RLxHRni", "TokenClaimsMapping": {"bLEjTmCvuhkynAKx": "sVmiSuTFRe4cToqw", "nZYF2B2R1VigbYF8": "tSivr8oMNNXMxq3h", "RmZYSVv7MGrgGHcB": "Lt3MIXUst57zO2Sx"}, "TokenEndpoint": "ITw4IKDXBumygHif", "UserInfoEndpoint": "M7XpEmhyd1yPyyjO", "UserInfoHTTPMethod": "2h0skhxYXlRa0xla", "scopes": ["JyQXuIyeEznF5eq9", "gUvFCvxFv2iqlE30", "I9hL6tVbDsk8i90W"]}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 144 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cvfmsJ4iBDQVKi6q' \
    --body '{"affectedClientIDs": ["RXF4kXW3bu5E97Ok", "Jdc3Lh1VKsdLnVxi", "RkNjMjNXso2jCSwg"], "assignedNamespaces": ["Nbmg78vG3oIExlMp", "ArLlZmRo43BQ0VY3", "YruYKKsolBi8lLPr"], "domain": "prVRcl54rEJSSsOv", "roleId": "r7DU5o2674AgLV18"}' \
    > test.out 2>&1
eval_tap $? 144 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 145 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gfZEvRvfwDrerc5f' \
    --body '{"domain": "oN7tfxXlCltENqLm"}' \
    > test.out 2>&1
eval_tap $? 145 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 146 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'ijLkUM38K1MJPwj4' \
    > test.out 2>&1
eval_tap $? 146 'RetrieveSSOLoginPlatformCredential' test.out

#- 147 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '9OdHzJZjvXT3PsPv' \
    --body '{"acsUrl": "vtpMtfZ6FNBdzcpu", "apiKey": "hD7j2S7z6Ox6PWM5", "appId": "NVTjes1HVO6r95zg", "federationMetadataUrl": "tcBcugRRGdU6ueX3", "isActive": false, "redirectUri": "N4E1K7kzQCa16Kfj", "secret": "XYTdTgq7D38VvWZE", "ssoUrl": "dSo28YpDqFrUGw3R"}' \
    > test.out 2>&1
eval_tap $? 147 'AddSSOLoginPlatformCredential' test.out

#- 148 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4rQRcH5i8SRfWybC' \
    > test.out 2>&1
eval_tap $? 148 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 149 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'j5bqGcqgEJFFByhU' \
    --body '{"acsUrl": "OuUtSgplPFZZ4h26", "apiKey": "XX8dxX4UzRzopEbW", "appId": "WHLG7r1iKg8Y5Afo", "federationMetadataUrl": "Hbg3uv62LcvMaTlW", "isActive": true, "redirectUri": "o5TEgv54Z8VBwqD3", "secret": "yaCQKSiUdd53eCAm", "ssoUrl": "9bZLPNU9v4GmlfjD"}' \
    > test.out 2>&1
eval_tap $? 149 'UpdateSSOPlatformCredential' test.out

#- 150 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T49lnRU4gYiEYKl0' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["thJoCovMbgZK7J51", "2EfQDr8neNfSkQQ4", "AKnEc0ZjuD28nNxB"]}' \
    > test.out 2>&1
eval_tap $? 150 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 151 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pSx35fLgaq98QIxP' \
    --platformUserId 'WXM1J1A3uCCUnfuK' \
    > test.out 2>&1
eval_tap $? 151 'AdminGetUserByPlatformUserIDV3' test.out

#- 152 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'CdQFscdmosxl2lXW' \
    --after '28' \
    --before '85' \
    --limit '90' \
    > test.out 2>&1
eval_tap $? 152 'GetAdminUsersByRoleIdV3' test.out

#- 153 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'iXtnkCFbNpZn1sMC' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByEmailAddressV3' test.out

#- 154 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["Ri5TcTJhouE6g7yU", "TMxPkvxgQXS0IdTF", "KrTspEqphj6d49Nj"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminBulkUpdateUsersV3' test.out

#- 155 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType '5XD9qWLhnqMo4t5D' \
    --body '{"bulkUserId": ["HBjI1A4MKD6Z7fMj", "SsKD5E07r8kDh7D9", "XmoEbAq7YOgGpoSZ"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminGetBulkUserBanV3' test.out

#- 156 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ITjDheYDfui5LFBF", "Af04bMSLpgqelhxA", "b2lTLg6lL1mioiKd"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminListUserIDByUserIDsV3' test.out

#- 157 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["BxkV4rddYmOx0yLI", "DiDmXYAz71FMgjsG", "rB2CnrTKBcWJ3y7D"]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminBulkGetUsersPlatform' test.out

#- 158 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["FwmMyu6e84EXRZAo", "Kl1U0Zeadao4QuIv", "chbLC9dvVbTZ9WpP"], "isAdmin": false, "languageTag": "Knrq2ElFoREvj8YC", "namespace": "g2Z56IjKGeIiNHYQ", "roles": ["DAdlHxsR2rEKgYMD", "PSp1UUDQnRwNaExv", "5V3R4efFnrdNzAjj"]}' \
    > test.out 2>&1
eval_tap $? 158 'AdminInviteUserV3' test.out

#- 159 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '27' \
    --offset '94' \
    --platformUserId 'd29RFyinLfofAyzs' \
    --platformId 'qlIQ4isycd92npZb' \
    > test.out 2>&1
eval_tap $? 159 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 160 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '24' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 160 'AdminListUsersV3' test.out

#- 161 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '123Asa7yg1EyCuDQ' \
    --endDate 'CK7BpwScVNUbKKve' \
    --includeTotal 'true' \
    --limit '32' \
    --offset '43' \
    --platformBy 'bgkxS2Wfv791qgdU' \
    --platformId 'oZqm4WAaRK6cqamg' \
    --query 'XfmzslsAnQZCm7Vu' \
    --roleIds 'NtgREkucuEmuEBkL' \
    --skipLoginQueue 'true' \
    --startDate '6S3BrNsIupevWqxI' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 161 'AdminSearchUserV3' test.out

#- 162 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["gD8MB8m43uSlB08n", "K6jDx3P0XTdkJsgo", "O7hxVDWjhUaDwEhf"]}' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetBulkUserByEmailAddressV3' test.out

#- 163 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dcKPJzA5dBgis3Oc' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserByUserIdV3' test.out

#- 164 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '42jzUFsYFOvqUp6e' \
    --body '{"avatarUrl": "Zmexxk6gaTXku0B4", "country": "z9PYHlQHNvK1VH3a", "dateOfBirth": "Gno9f7Pk5F3MpNk7", "displayName": "yUFyTMjPY5V0O3lx", "languageTag": "ZeYAND2NTHy5uM6u", "skipLoginQueue": false, "uniqueDisplayName": "6jKgNmi3fnxpohrB", "userName": "Ry1QsFUf1JJNthmK"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminUpdateUserV3' test.out

#- 165 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ZRe5C6MMV9M3OtBM' \
    --activeOnly 'true' \
    --after 'sPN8hZGL9y7iAtOv' \
    --before 'zD12zxmMo98zZJiP' \
    --limit '3' \
    > test.out 2>&1
eval_tap $? 165 'AdminGetUserBanV3' test.out

#- 166 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LVIyyBJk3eCfBYLW' \
    --body '{"ban": "WLDpcj5qanQvUKMg", "comment": "KQ2xAN7lgfSamtmO", "endDate": "G3z1EZXipJI7eOsr", "reason": "Hun20jvUnTrSbX9V", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBanUserV3' test.out

#- 167 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qfBz6RmyQiGEUAqO' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserBanSummaryV3' test.out

#- 168 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'UkDdg1Qge8MqT0Kf' \
    --namespace $AB_NAMESPACE \
    --userId 'aoX1wcN7ZJAZ6iBc' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 168 'AdminUpdateUserBanV3' test.out

#- 169 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XFT0zG3VwUP9Lk0b' \
    --body '{"context": "KKczkjfudgslyH1d", "emailAddress": "bbQpSrFDI45Xx7mv", "languageTag": "ZwBN60wUWhHiw7wp"}' \
    > test.out 2>&1
eval_tap $? 169 'AdminSendVerificationCodeV3' test.out

#- 170 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'O5OMRh1dcfYeEXjK' \
    --body '{"Code": "pQajGcaLOaDCE3JJ", "ContactType": "p8xznd3vgQaYR0yQ", "LanguageTag": "MHv1Iy7lVXSCvH6B", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 170 'AdminVerifyAccountV3' test.out

#- 171 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'iFqM0B0vgp7Uq8rC' \
    > test.out 2>&1
eval_tap $? 171 'GetUserVerificationCode' test.out

#- 172 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xdxL0ypeNUNZWvLY' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserDeletionStatusV3' test.out

#- 173 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'pemzPQ42ZD2AtTqY' \
    --body '{"deletionDate": 17, "enabled": true}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserDeletionStatusV3' test.out

#- 174 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'IXC06tXqiZYiMFFf' \
    > test.out 2>&1
eval_tap $? 174 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 175 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FKandzBqADfA5ITm' \
    --body '{"code": "bw9PC8kpd9I8KyzN", "country": "BGUP8fBc7jaEiXrf", "dateOfBirth": "OzMGobzsbTKk9eeE", "displayName": "jeMDBqT1HWds3fOG", "emailAddress": "ds3fGMrZxYWk5iL7", "password": "RqCeYDpwRKblkkpk", "uniqueDisplayName": "CoqkywSfb3GoLPvr", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpgradeHeadlessAccountV3' test.out

#- 176 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId '92PeyhAv6En8XD7C' \
    > test.out 2>&1
eval_tap $? 176 'AdminDeleteUserInformationV3' test.out

#- 177 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'EXlb77bq7azmqthh' \
    --after '0.6276848167991823' \
    --before '0.13623733887110978' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetUserLoginHistoriesV3' test.out

#- 178 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'AQNclWDngryKs8x8' \
    --body '{"languageTag": "MVFzZihnRfF1eqOJ", "mfaToken": "14WGcIJ7g4J7QnS6", "newPassword": "l3Q4aCuIkLehNy37", "oldPassword": "NO2PvQSd0PRR0vmu"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminResetPasswordV3' test.out

#- 179 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zClD4ZPpQvDriDMe' \
    --body '{"Permissions": [{"Action": 75, "Resource": "iJsZ5S6V89GcSatQ", "SchedAction": 13, "SchedCron": "7hAq1YOi5Oyt0mJz", "SchedRange": ["pfT6vulcHDP8jVzM", "83YuWZjMmtOMRH7Y", "ngLHtgkZccFiymhw"]}, {"Action": 70, "Resource": "Fto5dCcqARG8hUjW", "SchedAction": 29, "SchedCron": "ai9oCqjwyBqdgSg5", "SchedRange": ["d2ey1lDPyd9CdI8g", "tss0JBYcw1H4vjvn", "MVFPdVPllmLVBJ9z"]}, {"Action": 70, "Resource": "QwIvPOJ0zFrZNfDf", "SchedAction": 94, "SchedCron": "rYFaDpvilooGWo0C", "SchedRange": ["qCOaAwAY8KV0RqEF", "ldiJGCVYQVZBwHLw", "t2pfjfYY4zDPZB94"]}]}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserPermissionV3' test.out

#- 180 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PiWOcuDgdoaUTWus' \
    --body '{"Permissions": [{"Action": 3, "Resource": "z43l00DQhWa4TX6W", "SchedAction": 6, "SchedCron": "WagNkFA3myWa5SOr", "SchedRange": ["XxNeN16mdT8kQraB", "6ibvpUkc9bTluyTT", "IoPsbjycGTQmfRSO"]}, {"Action": 8, "Resource": "CoUKiRyyXvSFmfu7", "SchedAction": 98, "SchedCron": "U0lHBZK0tXnCjEkS", "SchedRange": ["Un785rohVCoqbLRa", "Ywqfvt1K5C9iGf6p", "8smOiUwzC3U5mzPa"]}, {"Action": 70, "Resource": "V0N7F7Fu7Bv0Za2K", "SchedAction": 34, "SchedCron": "RgCQGoyVBjPEKFCK", "SchedRange": ["eY5fqtxeKZMVvpfl", "pU0Jtrwjcr20bBcT", "1LUQBICQlrQ7jBBZ"]}]}' \
    > test.out 2>&1
eval_tap $? 180 'AdminAddUserPermissionsV3' test.out

#- 181 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId '0Z5IVEkHl8gBgIvD' \
    --body '[{"Action": 10, "Resource": "JzKN6d9wBrIClj2s"}, {"Action": 32, "Resource": "fCAjhknivCbaziTf"}, {"Action": 30, "Resource": "Q2K9WgUXtcczIJEg"}]' \
    > test.out 2>&1
eval_tap $? 181 'AdminDeleteUserPermissionBulkV3' test.out

#- 182 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '77' \
    --namespace $AB_NAMESPACE \
    --resource 'bb1bTf0W7d97Ukt1' \
    --userId 'YfCbNumSp9A6YfAC' \
    > test.out 2>&1
eval_tap $? 182 'AdminDeleteUserPermissionV3' test.out

#- 183 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aGOmpktkYnjz9BVP' \
    --after 'FBoJ8Pmp6iuCU5d1' \
    --before 'Wp9BYMiVMwf9GBX5' \
    --limit '71' \
    --platformId 'onFHKtMFnDNMNQPW' \
    --targetNamespace 'rN9Usb5p3hpKwzR4' \
    > test.out 2>&1
eval_tap $? 183 'AdminGetUserPlatformAccountsV3' test.out

#- 184 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'ZZ9PDeGMOY0lZsyJ' \
    > test.out 2>&1
eval_tap $? 184 'AdminGetListJusticePlatformAccounts' test.out

#- 185 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '25aRMbE9lXcpLPx6' \
    --userId 'hszTZV6ZoL6KaJCA' \
    > test.out 2>&1
eval_tap $? 185 'AdminGetUserMapping' test.out

#- 186 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'F8oujFBweHcaSMd5' \
    --userId 'Jinp2FflptG71Fgy' \
    > test.out 2>&1
eval_tap $? 186 'AdminCreateJusticeUser' test.out

#- 187 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId '1JG7K8ndg1scPQjA' \
    --skipConflict 'false' \
    --body '{"platformId": "tM9uPGNHiwQldrt7", "platformUserId": "83kJZp9rLtEP4CZL"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminLinkPlatformAccount' test.out

#- 188 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kz40xN5roKkBYUmd' \
    --userId 'WTgM8v3bLTsZ97OP' \
    --body '{"platformNamespace": "10y07vgoKgLFl04s"}' \
    > test.out 2>&1
eval_tap $? 188 'AdminPlatformUnlinkV3' test.out

#- 189 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'nlZQtaFkXShEns0X' \
    --userId '0V12ECj9F596kHlx' \
    > test.out 2>&1
eval_tap $? 189 'AdminPlatformUnlinkAllV3' test.out

#- 190 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FeRa1BNhL7Mod6yX' \
    --userId 'Q59KRNmzU1tVLvlI' \
    --ticket 'cCHclRKRLPnjkbMh' \
    > test.out 2>&1
eval_tap $? 190 'AdminPlatformLinkV3' test.out

#- 191 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MPJ3kXUhru12qGqM' \
    --userId 'O1frhGgzbnhVp5dg' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 192 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CWkS2yLOamlKEnjR' \
    --userId 'sddICdtl2ZH8lciH' \
    --platformToken 'TBu61ruBC6RnNgqY' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 193 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'tYENFqJFAFIyPEh2' \
    --userId '5h1qLaXluWhCExrb' \
    > test.out 2>&1
eval_tap $? 193 'AdminGetUserSinglePlatformAccount' test.out

#- 194 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PYFbeDNfv2XMy8jY' \
    --body '["YeyHU5t5TBKqMXMR", "JFpCQxaM2jd723gB", "URUowMWTJjwtcYKY"]' \
    > test.out 2>&1
eval_tap $? 194 'AdminDeleteUserRolesV3' test.out

#- 195 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '1vWmLONWlh2drLdU' \
    --body '[{"namespace": "LZlrxv1NeiPWFtfg", "roleId": "OovppLnUzqjWYxfK"}, {"namespace": "hkl7QaV54j52Eg6y", "roleId": "e3bHvqC5HqsmidkS"}, {"namespace": "DZ5sSqobsF5ZmJT2", "roleId": "DBEk1iSPAT8NZhkS"}]' \
    > test.out 2>&1
eval_tap $? 195 'AdminSaveUserRoleV3' test.out

#- 196 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '26MmWoKSPW5cBt4W' \
    --userId 'iPn2iwiaMPpGbSDp' \
    > test.out 2>&1
eval_tap $? 196 'AdminAddUserRoleV3' test.out

#- 197 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'VNC0FsPhrThJAIg1' \
    --userId 'bgUMZjsvr2tdRXFY' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserRoleV3' test.out

#- 198 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ndgQYp4hT4CSQgDU' \
    --body '{"enabled": false, "reason": "DNd3jWajgoI2JdRz"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminUpdateUserStatusV3' test.out

#- 199 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'UtlbUWOzKxJwgh4I' \
    --body '{"emailAddress": "3T4ndS0cvhrYqPBz", "password": "jMxxOqi8R4WkivE6"}' \
    > test.out 2>&1
eval_tap $? 199 'AdminTrustlyUpdateUserIdentity' test.out

#- 200 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId '634lPAB1FRmpqUXU' \
    > test.out 2>&1
eval_tap $? 200 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 201 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'yQ08TKhSGmP06S6S' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "1Y1cy89LmvoBoM5A"}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateClientSecretV3' test.out

#- 202 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'otTL0vU4JbLeb7fN' \
    > test.out 2>&1
eval_tap $? 202 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 203 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'ECqGT2JMCdUguvuJ' \
    --before 'WKNyZCK4DKqI73p7' \
    --isWildcard 'true' \
    --limit '75' \
    > test.out 2>&1
eval_tap $? 203 'AdminGetRolesV3' test.out

#- 204 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "managers": [{"displayName": "DQexojSYDSG8zRnU", "namespace": "JJBMyuIoNVUaNdp4", "userId": "uy22789p3c8wi6io"}, {"displayName": "sbsd4XfGSX0O5fMD", "namespace": "J5G0nTxWzB7Hu6MI", "userId": "VsgI2BKbXCopnk1k"}, {"displayName": "4G6kqyl5PhykcGqJ", "namespace": "UMaB6mSbcoAo9ovI", "userId": "zFMTNPKbcQx8BHpn"}], "members": [{"displayName": "J3UjAixvhC0ldrWO", "namespace": "3qhGr9IKkgfnWBBp", "userId": "2QfI7G7nWOGnDZjQ"}, {"displayName": "sdyuVWrDTgBNKxUM", "namespace": "0iJ9fXuaOa0uX5VD", "userId": "hOJScyvjqtoxgpSK"}, {"displayName": "VegkVbSj1ZD18Uhv", "namespace": "M9hXG107C90zfWJw", "userId": "XfNHVeMUfXVidhyn"}], "permissions": [{"action": 55, "resource": "ci2so34foVQnQsJp", "schedAction": 14, "schedCron": "gYNzd1P3gu1DzEDY", "schedRange": ["HHD3e9UVFlajP3Db", "OLADAcpRm5hKv5DV", "YgN7M9ZVItLq80py"]}, {"action": 89, "resource": "qjlBXgLSd4AxbJbG", "schedAction": 90, "schedCron": "S6mIJGNgwgGsnNBh", "schedRange": ["BfAPYmoJhTX3WoMq", "vuJdRWR65FMXhqOC", "k3CKV4ger3C77Cio"]}, {"action": 23, "resource": "dtBOjRc39dhBDs8e", "schedAction": 28, "schedCron": "t73aVfukH5TQPePP", "schedRange": ["vCcmcqpr1znqgR1Q", "wC8IIWlwrEIJgPy5", "gRJd2jyp1lRLPYZb"]}], "roleName": "kPbtKtjNdj5fq5RC"}' \
    > test.out 2>&1
eval_tap $? 204 'AdminCreateRoleV3' test.out

#- 205 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '4c44d9mSqc38ZOhO' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleV3' test.out

#- 206 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'v42YrHUjoT8Cv5bq' \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteRoleV3' test.out

#- 207 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'jfOWlYLcF6g0ViFL' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "wHoZAdJ5bZo6V16F"}' \
    > test.out 2>&1
eval_tap $? 207 'AdminUpdateRoleV3' test.out

#- 208 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'm46lGcqgIw4eml3g' \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleAdminStatusV3' test.out

#- 209 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '122cHXCAV1EQ4ytz' \
    > test.out 2>&1
eval_tap $? 209 'AdminUpdateAdminRoleStatusV3' test.out

#- 210 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'WHYeNbryi1nVwCJx' \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleAdminV3' test.out

#- 211 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'zo7dTFuOz42pl9Og' \
    --after '9PSrXQTaYZBkJjXq' \
    --before 'p0NFPxlurGNPgzV8' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetRoleManagersV3' test.out

#- 212 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'Og8Cj0SIjBUcWs6V' \
    --body '{"managers": [{"displayName": "I2MVPBEIVaQeNnBM", "namespace": "QPjWiQBfu49Ym7AX", "userId": "QR50fSdJFYtLWiUk"}, {"displayName": "W7tsWLpYrqFNDLzG", "namespace": "fiJtLLKcVotFjZ0t", "userId": "ySYDwxNLsG2Syf49"}, {"displayName": "FhSks6Rb7isTWMaw", "namespace": "qNn87SsaAIPdZMv2", "userId": "HflFJdmZ5dis9QQh"}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRoleManagersV3' test.out

#- 213 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId '2kgN1i8G5g8jDEXo' \
    --body '{"managers": [{"displayName": "iniXQXDVOXTlvtIJ", "namespace": "3rhBZr14Pz4k7WuK", "userId": "5eUeA8kgWojKuGnI"}, {"displayName": "VR6W0Pm9buEl3SJV", "namespace": "6Btv5oecMiCJmFcN", "userId": "CG1GQScVj7vPsMIJ"}, {"displayName": "J6f3wGqQ2GUnGxkX", "namespace": "aKw8VrL5ADjYLbgX", "userId": "hBuVFC6PbJpLcg6G"}]}' \
    > test.out 2>&1
eval_tap $? 213 'AdminRemoveRoleManagersV3' test.out

#- 214 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'iYMRW4pbFdL0EKbQ' \
    --after 'xjVzOqvSUGiy3o9I' \
    --before '5ZpuTZ6nEyWo34LL' \
    --limit '84' \
    > test.out 2>&1
eval_tap $? 214 'AdminGetRoleMembersV3' test.out

#- 215 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '9ULYGewzRVitV1La' \
    --body '{"members": [{"displayName": "eZSygNVlpSRNdqzS", "namespace": "HiD32kQsFbg1UhHb", "userId": "18VL2w8DgKB0pUea"}, {"displayName": "GugonWtt60O8XM98", "namespace": "JQx5of9sFYTJDC40", "userId": "fFRvhvxcut9IeClH"}, {"displayName": "0W0xFOQ4uIDhUkor", "namespace": "VOKmAGC6JLjJPZE8", "userId": "kRvaE5BeqQx5PmgF"}]}' \
    > test.out 2>&1
eval_tap $? 215 'AdminAddRoleMembersV3' test.out

#- 216 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId '9xpMBUeWPC5T5Q4m' \
    --body '{"members": [{"displayName": "so8d87pk3cmZThPr", "namespace": "meHRZNPjRAddcesh", "userId": "AcyMxRdIveWvbXoL"}, {"displayName": "Y86jSxbiLINHvo8B", "namespace": "owMphCXMRGhQdj6f", "userId": "cJ9rCEbgUFqKCeYh"}, {"displayName": "crb3YjjNS8xTggSG", "namespace": "054nv9hXdMwO9ZQa", "userId": "6G5oxF8z3gPTS9Ce"}]}' \
    > test.out 2>&1
eval_tap $? 216 'AdminRemoveRoleMembersV3' test.out

#- 217 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'MCeaVu3PqpN2dnuL' \
    --body '{"permissions": [{"action": 96, "resource": "mo9VPJYOVCDNV5wt", "schedAction": 93, "schedCron": "Fx7EJPxtY3ReeNts", "schedRange": ["rsQ10tGWfISFig7J", "RtkPxJ2tT5ua4AoW", "d80ZYN21e36tyCjb"]}, {"action": 6, "resource": "FXZd3uzssMpCaUmG", "schedAction": 98, "schedCron": "diV2zpHZ6avd2KhB", "schedRange": ["1raYUCp6lRbJPbtW", "YS5grCohsJMqLTbw", "MulRyGYSbaAvvnup"]}, {"action": 3, "resource": "nLa9vBTWsnz5QlMC", "schedAction": 45, "schedCron": "zE4r5jtKJYdVybE6", "schedRange": ["vdUye0psYetP1aFF", "JL0JAgIuYCDlXDf7", "fwjcBauXBSMx5Lfr"]}]}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateRolePermissionsV3' test.out

#- 218 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '64SAc2vhz5ExB7MS' \
    --body '{"permissions": [{"action": 23, "resource": "Ac0MxmOlDbLItWyJ", "schedAction": 51, "schedCron": "aTOntaKpytss3XkC", "schedRange": ["AlX8d3gNzCNZVCqf", "a7w0LV3JXqct0Xld", "EuJEGqNMEBsIxp8o"]}, {"action": 29, "resource": "iTWU8cb9RuXMLm05", "schedAction": 55, "schedCron": "jBhgCIs3K3AXBi9W", "schedRange": ["SUCjv1ZBH1QGvk3l", "iEfTA6un7aYXtj8e", "eznUU6e4GC8diY6A"]}, {"action": 84, "resource": "DtdpvID3k3VHW8em", "schedAction": 33, "schedCron": "IYmtqRqdZrepEYiG", "schedRange": ["QazH91UDVy8ghLDK", "BtL67Xc5OSbjIOm9", "ryp3eBthSzPR5oL5"]}]}' \
    > test.out 2>&1
eval_tap $? 218 'AdminAddRolePermissionsV3' test.out

#- 219 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'KdilYTX4MIYCbedH' \
    --body '["RsRiIq9GgNSCeahT", "Pw9STeTk8ynkrINr", "PTl8ZMpv7YAu1L5G"]' \
    > test.out 2>&1
eval_tap $? 219 'AdminDeleteRolePermissionsV3' test.out

#- 220 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '3' \
    --resource 'LFdK0rBqer67ndqq' \
    --roleId 'nmnVwhH0p9ulWZEK' \
    > test.out 2>&1
eval_tap $? 220 'AdminDeleteRolePermissionV3' test.out

#- 221 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 221 'AdminGetMyUserV3' test.out

#- 222 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '0UsqWkNKDzviq9vO' \
    --extendExp 'false' \
    --redirectUri 'OeIXdFUqmNJyDjhP' \
    --password 'SGGUWG7ZnS37DZG5' \
    --requestId 'aiSd8EXqn30nV7eD' \
    --userName '8KTV210EFSe21fnY' \
    > test.out 2>&1
eval_tap $? 222 'UserAuthenticationV3' test.out

#- 223 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '0M3ZUgCpDcsbTPQU' \
    --linkingToken '5k8JRw7WefcsmYHi' \
    --password 'immcICGyumFM0qBA' \
    --username '0dCjMCDRWQju7ekQ' \
    > test.out 2>&1
eval_tap $? 223 'AuthenticationWithPlatformLinkV3' test.out

#- 224 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'v3HgndPPFvCxCpCh' \
    --extendExp 'false' \
    --linkingToken 'M8mDhXhPgmHRnr7c' \
    > test.out 2>&1
eval_tap $? 224 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 225 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'VUb5m5tJl4sFx3K1' \
    > test.out 2>&1
eval_tap $? 225 'RequestOneTimeLinkingCodeV3' test.out

#- 226 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'CncB1uNloOu45nwj' \
    > test.out 2>&1
eval_tap $? 226 'ValidateOneTimeLinkingCodeV3' test.out

#- 227 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'qZl0XKDvzXBfaLA0' \
    --isTransient 'false' \
    --clientId 'iSaeKJd87Ej6s1bL' \
    --oneTimeLinkCode 'joNejMhzx8uE9zVB' \
    > test.out 2>&1
eval_tap $? 227 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 228 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 228 'GetCountryLocationV3' test.out

#- 229 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 229 'Logout' test.out

#- 230 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'pbxN5RvF5BYNyv1C' \
    --codeChallengeMethod 'plain' \
    --clientId 'kT0UhFyZWNeKvWjJ' \
    > test.out 2>&1
eval_tap $? 230 'RequestTokenExchangeCodeV3' test.out

#- 231 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZhzMwxt9n0caL1Sr' \
    --userId 'IzIZKEnanwxQCdxI' \
    --platformUserId 'MQk3RfISFXuVBB03' \
    > test.out 2>&1
eval_tap $? 231 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 232 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qedFcex2vwwlI2S3' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 232 'RevokeUserV3' test.out

#- 233 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'PpYRC84aZVBkCjtJ' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'IW4t4kCVBI2q5FoJ' \
    --redirectUri 'uNYQFuTRW8Ba4a9h' \
    --scope 'Rxdv8nC3YDyMya3J' \
    --state 'u2MLT9qLFrlL8MNm' \
    --targetAuthPage 'sEBhRJw2R3UB3eJv' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'EC7DyCY7ITkoNnmw' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 233 'AuthorizeV3' test.out

#- 234 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'lXrnFSMzJjspY1L1' \
    > test.out 2>&1
eval_tap $? 234 'TokenIntrospectionV3' test.out

#- 235 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 235 'GetJWKSV3' test.out

#- 236 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'qYKoEazTrsQOj6f0' \
    --factor 'UeiyIdIONT5b39Dq' \
    --mfaToken '1u53uRCmyIY2R3LH' \
    > test.out 2>&1
eval_tap $? 236 'SendMFAAuthenticationCode' test.out

#- 237 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'pKLjW96fgRqIdgAb' \
    --mfaToken 'ep6UZyrNB5ISmPoq' \
    > test.out 2>&1
eval_tap $? 237 'Change2faMethod' test.out

#- 238 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '84WrzSMFbd9sYlma' \
    --factor 'cUMAGweZ0sQjqoEH' \
    --mfaToken 'bmx6EgLsFE05JKR7' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 238 'Verify2faCode' test.out

#- 239 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '7d8Xlg5765aXn2hV' \
    --userId 'Q5ajP29ygGRjQqsf' \
    > test.out 2>&1
eval_tap $? 239 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 240 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'mAWErPiDJ8ts4iU4' \
    --clientId '4Y5Fj6NqVDgoJv0Z' \
    --redirectUri 'NJsGNQa5Mg55A3Uc' \
    --requestId 'v49jw67F1eHuxkVt' \
    > test.out 2>&1
eval_tap $? 240 'AuthCodeRequestV3' test.out

#- 241 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'DskXKTQKYcysBJ97' \
    --additionalData 'l4GedwBHJIofPQAF' \
    --clientId 'BNKCkv1mzglhya5y' \
    --createHeadless 'true' \
    --deviceId 'i2r9sx6P0hEUC5uX' \
    --macAddress 'xi6noRuvTov1Sw1R' \
    --platformToken 'OniwDbKrxeSDtni7' \
    --serviceLabel '0.6628440298574558' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 241 'PlatformTokenGrantV3' test.out

#- 242 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 242 'GetRevocationListV3' test.out

#- 243 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'lgfGjplpyka6DmO5' \
    > test.out 2>&1
eval_tap $? 243 'TokenRevocationV3' test.out

#- 244 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'Q8G9X0eyVE6PtmGl' \
    --simultaneousTicket 'TkFCykvqTjU6UDbZ' \
    --nativePlatform 'epicgames' \
    --nativePlatformTicket '9bHlgHFij3WdLyjt' \
    > test.out 2>&1
eval_tap $? 244 'SimultaneousLoginV3' test.out

#- 245 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'NoDQyoF1tiLSr6A3' \
    --clientId 'UphYxZo4KUpjJ52e' \
    --clientSecret 'UmsEwWnSMHB5ctt9' \
    --code 'vaU96cuyBOI9mT8D' \
    --codeVerifier 'Mkwt9HKllRV93uuC' \
    --extendNamespace 'Hf1GtLyAoSWoZpFP' \
    --extendExp 'true' \
    --password 'ubnqYVDNr0gr4wHg' \
    --redirectUri 'FsSHGEpE8hAew60J' \
    --refreshToken 'lRMlaSQtXk8UaR3e' \
    --username 'B9h6GKAuAtmSVNPt' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 245 'TokenGrantV3' test.out

#- 246 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'AqaHQCwFUiP9yPD8' \
    > test.out 2>&1
eval_tap $? 246 'VerifyTokenV3' test.out

#- 247 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'MjxzN3prRhA1oqaa' \
    --code 'tAuqFbpJE9sCGsYD' \
    --error 'JS7ipwujwzPcwMUm' \
    --openidAssocHandle 'CMIEBjmeLAQzE5ri' \
    --openidClaimedId 'TzgKsjr6lGGOTtC1' \
    --openidIdentity 'o0ifA8sP4d8AWyIk' \
    --openidMode 'UFP926xK8dJ59RHO' \
    --openidNs 'iYmyVtYbC4AT6EuF' \
    --openidOpEndpoint 'VR4nbx44cUWKYsUD' \
    --openidResponseNonce 'pr3OHCr6vf6DUOkK' \
    --openidReturnTo 'FbiFIfCpYpOmNPI4' \
    --openidSig 'fDhStVh88yrtgXrZ' \
    --openidSigned 'tNFrGmdi5MxfsdSY' \
    --state 'cAxe3ESa4hqGLq6S' \
    > test.out 2>&1
eval_tap $? 247 'PlatformAuthenticationV3' test.out

#- 248 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'Fofs0XUcSdwhIHfX' \
    --platformToken 'JC4JxpHUZNgGh2aT' \
    > test.out 2>&1
eval_tap $? 248 'PlatformTokenRefreshV3' test.out

#- 249 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'JfgCyPzs7axJREe9' \
    > test.out 2>&1
eval_tap $? 249 'PublicGetInputValidations' test.out

#- 250 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'gO5Uwkq554ifHrNK' \
    > test.out 2>&1
eval_tap $? 250 'PublicGetInputValidationByField' test.out

#- 251 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode '3jG7okyviD2VvMcj' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 251 'PublicGetCountryAgeRestrictionV3' test.out

#- 252 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey '1FEOiB0AeQdqjs0c' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 252 'PublicGetConfigValueV3' test.out

#- 253 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 253 'PublicGetCountryListV3' test.out

#- 254 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 254 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 255 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'TGIokfj2YMWjHsBF' \
    > test.out 2>&1
eval_tap $? 255 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 256 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 256 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 257 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FFKb6UICAGe1emeh' \
    --platformUserId 'wyqWJzY5giABwoOz' \
    > test.out 2>&1
eval_tap $? 257 'PublicGetUserByPlatformUserIDV3' test.out

#- 258 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'usvPKJbtgnhWVfrr' \
    > test.out 2>&1
eval_tap $? 258 'PublicGetAsyncStatus' test.out

#- 259 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'mn4X32JkZdKtT6lr' \
    --limit '28' \
    --offset '47' \
    --platformBy 'vcdVQ9SkavAQdMXa' \
    --platformId 'p65kYqiK1drCLoML' \
    --query 'rghMpsXvq0n7jGRk' \
    > test.out 2>&1
eval_tap $? 259 'PublicSearchUserV3' test.out

#- 260 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "rU6vYAnchzJRruYL", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "79h8EVu0rmcOtJ6V", "policyId": "rignyeuNzC8p4NIV", "policyVersionId": "dHjg2v9rIviUmhbT"}, {"isAccepted": true, "localizedPolicyVersionId": "SC9PrFyxzHjmg7Q6", "policyId": "iWyDFdtfz6aSGB4K", "policyVersionId": "9A215JowCJGLRBnA"}, {"isAccepted": true, "localizedPolicyVersionId": "QVEqrMYHGBgYQZuC", "policyId": "8Ip6TO8akXebOeHs", "policyVersionId": "j4AfE4KsoDPIDZ8G"}], "authType": "VixpopbLlB5W6UJL", "code": "f1G2TylfeHLgVwGl", "country": "9hPkQIYAMfXj4h6C", "dateOfBirth": "hHbcTBp9xO9WEtBr", "displayName": "D13nwhrt5sOeheyW", "emailAddress": "fh9Zgw9KUkL5ihaF", "password": "VFDkaXUDEX3QoTej", "reachMinimumAge": true, "uniqueDisplayName": "Pi0pVnyMoKF9SPvu"}' \
    > test.out 2>&1
eval_tap $? 260 'PublicCreateUserV3' test.out

#- 261 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'woKl793AuuoRtP1I' \
    --query 'M50fFZQgVpTD0dWN' \
    > test.out 2>&1
eval_tap $? 261 'CheckUserAvailability' test.out

#- 262 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["p5zVP68FTFRAWmyO", "VVN0h1DftZ80Kkp3", "2W63BkhHkL7G35bs"]}' \
    > test.out 2>&1
eval_tap $? 262 'PublicBulkGetUsers' test.out

#- 263 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "YvWffx42YSD7YJvI", "languageTag": "OwJeRXXN6h7YOHkV"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicSendRegistrationCode' test.out

#- 264 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "MkQGF7YltRxzYa8r", "emailAddress": "SSlfHIOkYAL0QXMl"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicVerifyRegistrationCode' test.out

#- 265 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "mqYx4K3J9JHuewwc", "languageTag": "YUdCKtOrCiZ3IUou"}' \
    > test.out 2>&1
eval_tap $? 265 'PublicForgotPasswordV3' test.out

#- 266 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "YuJOP3Nje1k9HNRE", "uniqueDisplayName": "r82SPWQntNsRALGB", "username": "WbwS7vrKxTDXlUg7"}' \
    > test.out 2>&1
eval_tap $? 266 'PublicValidateUserInput' test.out

#- 267 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'FL9Qx1BcGL4E5vQ7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 267 'GetAdminInvitationV3' test.out

#- 268 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'NXtKWqJDNMW3wOQs' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "QOfTilwNdSek3csy", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mNL2xTpJwEPySyw5", "policyId": "btvY3C09AWdUrEic", "policyVersionId": "uxJPysnW63s8ZonA"}, {"isAccepted": true, "localizedPolicyVersionId": "6BDeTP7t9IZePsIJ", "policyId": "U9tdAxL7RvGD6CjF", "policyVersionId": "VAOWLPu5gjgZkEnU"}, {"isAccepted": true, "localizedPolicyVersionId": "bvtXEreZaoIkELuk", "policyId": "gHwM9qZBGio9GnEK", "policyVersionId": "HOZKsXTOIm5mKTWt"}], "authType": "YvTOzSoOYNnLu9TZ", "code": "Ok9JRTsdXwxPG6vq", "country": "kEbPFO3kMejUz9dU", "dateOfBirth": "Mu0Tv8J3re7314dP", "displayName": "U3GxY2c3AeCHKPU7", "emailAddress": "VBqGZh5jpbX5dDx7", "password": "ztYWm7u4y7aVKXaQ", "reachMinimumAge": false, "uniqueDisplayName": "YtRACcdNbAt4S6Xt"}' \
    > test.out 2>&1
eval_tap $? 268 'CreateUserFromInvitationV3' test.out

#- 269 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "zp4BL09qcD06GxPg", "country": "gpCckZTMKba1x5BT", "dateOfBirth": "KLYQMvFVR02Wf3Wk", "displayName": "HUhTyTDFkkgNg1qX", "languageTag": "hNxB4oDixAExXQO6", "uniqueDisplayName": "VuRYOgFIlYQp3uDE", "userName": "4rRsTHSzQBBuSYE4"}' \
    > test.out 2>&1
eval_tap $? 269 'UpdateUserV3' test.out

#- 270 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "wOHCzIAgkVK7Z1n1", "country": "IWAGW0XfQsQZF3Tr", "dateOfBirth": "NsHU6IMrkDtCA5Ug", "displayName": "4cdxPB8KFsOearHT", "languageTag": "JnvXvxv5RLCjqtya", "uniqueDisplayName": "EmgeMzWodYJuF82H", "userName": "3E7ozMTtHAqoed4r"}' \
    > test.out 2>&1
eval_tap $? 270 'PublicPartialUpdateUserV3' test.out

#- 271 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "rUci3NXYnBWCterr", "emailAddress": "EpROcSkgJ621GDXv", "languageTag": "sJ7MH0WlgnQDjyxU"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicSendVerificationCodeV3' test.out

#- 272 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DCTXp7LCSr993Q3Q", "contactType": "0Ptuzfg4Hxjig9ri", "languageTag": "bNvUhbonkK55hbJm", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 272 'PublicUserVerificationV3' test.out

#- 273 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "25NILO8I6ePf15Ld", "country": "q3JqhPTlNBJlSFAI", "dateOfBirth": "oOdpPXNeos1u7k8D", "displayName": "YewjbBwY4jY60GAm", "emailAddress": "IbcSdaJB8SfAif4L", "password": "g6oZ6Fuc1JIFK8J0", "uniqueDisplayName": "SMe1zgRMLxkCUDqa", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 273 'PublicUpgradeHeadlessAccountV3' test.out

#- 274 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "4Gtvpq0OfMGLDR9r", "password": "ro2MsajQhEp4RgEt"}' \
    > test.out 2>&1
eval_tap $? 274 'PublicVerifyHeadlessAccountV3' test.out

#- 275 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "TKAjGqfuNpLWNofd", "mfaToken": "9EthURUfGpwCwvZq", "newPassword": "ofOCF35A4fwFLOZY", "oldPassword": "bM5LjHaKmQboofN9"}' \
    > test.out 2>&1
eval_tap $? 275 'PublicUpdatePasswordV3' test.out

#- 276 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '7uWK7SfJAEcjmQ3c' \
    > test.out 2>&1
eval_tap $? 276 'PublicCreateJusticeUser' test.out

#- 277 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'W1q7OBrEuHgDR7TD' \
    --redirectUri 'wVCbiiJofoKBxXh8' \
    --ticket 'fD6ZceKHGalpnMoa' \
    > test.out 2>&1
eval_tap $? 277 'PublicPlatformLinkV3' test.out

#- 278 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CYVqDRpjqCkIYguN' \
    --body '{"platformNamespace": "oKaKx8HKMr5GlxUe"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicPlatformUnlinkV3' test.out

#- 279 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'N2Y2zBuv9XEgNeI8' \
    > test.out 2>&1
eval_tap $? 279 'PublicPlatformUnlinkAllV3' test.out

#- 280 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yTEwm4DGm6jB7IC3' \
    --ticket 'zRbSVIvWaMsw1YEi' \
    > test.out 2>&1
eval_tap $? 280 'PublicForcePlatformLinkV3' test.out

#- 281 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'cXROKLnaBKNYLCHz' \
    --clientId 'V2Te2W6zDkBtMg90' \
    --redirectUri 'gCtK33fyWJeAV3Gi' \
    > test.out 2>&1
eval_tap $? 281 'PublicWebLinkPlatform' test.out

#- 282 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'Y9aCYfOBiVTWJacf' \
    --code 'yxide5AtSZfZq2VU' \
    --state 'kj5EfpqrLXbdFHJS' \
    > test.out 2>&1
eval_tap $? 282 'PublicWebLinkPlatformEstablish' test.out

#- 283 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rsEA2GmICBBFroXa' \
    --code 'mKD0hxy8A6kzxEZF' \
    --state 'zUR0fIJ4vOLxQlFh' \
    > test.out 2>&1
eval_tap $? 283 'PublicProcessWebLinkPlatformV3' test.out

#- 284 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "brQRLM9lrJiKYkKF", "userIds": ["Ux6OKrITGsMavZI2", "APvz2VEgN0PEwxOj", "gcx01WSDnAVBd1Do"]}' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetUsersPlatformInfosV3' test.out

#- 285 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "zLjeIFw7ojWZLeBe", "emailAddress": "QHAJI698TLNEmdtj", "newPassword": "vCoRGuUiL2IzvF6h"}' \
    > test.out 2>&1
eval_tap $? 285 'ResetPasswordV3' test.out

#- 286 PublicGetUserByUserIdV3
eval_tap 0 286 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 287 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hRGb0p40WUr93Epf' \
    --activeOnly 'true' \
    --after '57gF4sPWFNCxLFHa' \
    --before 'JeelXsruJ4hbK0dM' \
    --limit '12' \
    > test.out 2>&1
eval_tap $? 287 'PublicGetUserBanHistoryV3' test.out

#- 288 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'aOMLBO6ycuOuVZu6' \
    > test.out 2>&1
eval_tap $? 288 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 289 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'ntqBf1jTRgL0sjGZ' \
    > test.out 2>&1
eval_tap $? 289 'PublicGetUserInformationV3' test.out

#- 290 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Z3ub48jPQcWZveKI' \
    --after '0.00036995034910747293' \
    --before '0.6099155409717268' \
    --limit '20' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetUserLoginHistoriesV3' test.out

#- 291 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pdlsp09GVaGsn6LB' \
    --after 'b4IaCV2P2GhnT5pg' \
    --before '2gjtRtq845keVidr' \
    --limit '17' \
    --platformId 'n9vDbe1ErFHOnWCo' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetUserPlatformAccountsV3' test.out

#- 292 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BOFMCAHY5IPLYHJM' \
    > test.out 2>&1
eval_tap $? 292 'PublicListJusticePlatformAccountsV3' test.out

#- 293 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'wthCxpzRmHpMQQIM' \
    --body '{"platformId": "GLNngDVmuf3pXj29", "platformUserId": "frRBREpEn13fmAwk"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicLinkPlatformAccount' test.out

#- 294 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'HTm1wC3HYffOyXfQ' \
    --body '{"chosenNamespaces": ["r5FUFF1wljmIuc4z", "GY44fXeQ0MbYY2tV", "jabsLku9G32js2Tb"], "requestId": "e0aRpGgRnfcPUWJR"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicForceLinkPlatformWithProgression' test.out

#- 295 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'iUzNxlo2uD3gxbkI' \
    > test.out 2>&1
eval_tap $? 295 'PublicGetPublisherUserV3' test.out

#- 296 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uURZj0rTZd8BcsDO' \
    --password 'a5tFyuB2LtpBn4E8' \
    > test.out 2>&1
eval_tap $? 296 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 297 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'gY5TvlFUM9xLkNtU' \
    --before 'j0CVv30YZi1gvrmU' \
    --isWildcard 'false' \
    --limit '60' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetRolesV3' test.out

#- 298 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'VmRvuxCKAnSlNkzt' \
    > test.out 2>&1
eval_tap $? 298 'PublicGetRoleV3' test.out

#- 299 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 299 'PublicGetMyUserV3' test.out

#- 300 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'XqZ88oBo5FMfqn2T' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 301 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["Ov4bxbvzkLouHFfl", "41Ge30AeGnlEx9NF", "dIBWrcjEbyUr8fbp"], "oneTimeLinkCode": "WUz2BtiUekTTTO67"}' \
    > test.out 2>&1
eval_tap $? 301 'LinkHeadlessAccountToMyAccountV3' test.out

#- 302 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "iptBBP10lOHH4zGy"}' \
    > test.out 2>&1
eval_tap $? 302 'PublicSendVerificationLinkV3' test.out

#- 303 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code '0yrkqmrnrPNWlQdg' \
    > test.out 2>&1
eval_tap $? 303 'PublicVerifyUserByLinkV3' test.out

#- 304 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'XaWllBQU8pm93LA6' \
    --code 'C04cZeIAPP39Nado' \
    --error 'Trsj4szJJmaGj9X7' \
    --state 'TCr4Pxj4KRq2A3Z4' \
    > test.out 2>&1
eval_tap $? 304 'PlatformAuthenticateSAMLV3Handler' test.out

#- 305 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'JuutEn2zVNcTcfWX' \
    --payload 'gDtXhjgTrWXpD3Qw' \
    > test.out 2>&1
eval_tap $? 305 'LoginSSOClient' test.out

#- 306 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'Nfj2dD9LofMWZi6X' \
    > test.out 2>&1
eval_tap $? 306 'LogoutSSOClient' test.out

#- 307 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 'XesQTJ8Ado43YfbR' \
    --code 's3SNAn8Zg3Ahhfez' \
    > test.out 2>&1
eval_tap $? 307 'RequestTargetTokenResponseV3' test.out

#- 308 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '30' \
    --namespace 'Wdv5wBzWx3F9Qumc' \
    --offset '64' \
    > test.out 2>&1
eval_tap $? 308 'AdminListInvitationHistoriesV4' test.out

#- 309 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'wudWlGQuryFNc4C8' \
    > test.out 2>&1
eval_tap $? 309 'AdminGetDevicesByUserV4' test.out

#- 310 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '08xEDuzPkl2796dd' \
    --endDate 'CNY3QCI0Qsi8NMsb' \
    --limit '92' \
    --offset '83' \
    --startDate 'SmON0YiBlxCWov7K' \
    > test.out 2>&1
eval_tap $? 310 'AdminGetBannedDevicesV4' test.out

#- 311 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ax5ntARKG3VsSIRc' \
    > test.out 2>&1
eval_tap $? 311 'AdminGetUserDeviceBansV4' test.out

#- 312 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "2xuBPV5fWaH9vgSO", "deviceId": "KObejqqSg6Fqjp1z", "deviceType": "FTy9ebf1Dr1cJFLf", "enabled": false, "endDate": "8mKgK6yOnaVqozmu", "ext": {"nf6stXeFQwPipmU2": {}, "8WSg79rKL24ZDaKd": {}, "OKaKXT0VvNQinbbi": {}}, "reason": "whbjbIWKEV1WghtE"}' \
    > test.out 2>&1
eval_tap $? 312 'AdminBanDeviceV4' test.out

#- 313 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'IOL0v4kK2fu9fkSY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 313 'AdminGetDeviceBanV4' test.out

#- 314 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'OmBCvnfxBvzoidKq' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 314 'AdminUpdateDeviceBanV4' test.out

#- 315 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'y47BUITdfbz8F42a' \
    --startDate 'Zgl7DWNDH2xbB8WF' \
    --deviceType 'IgSC38eF0DKD691v' \
    > test.out 2>&1
eval_tap $? 315 'AdminGenerateReportV4' test.out

#- 316 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 316 'AdminGetDeviceTypesV4' test.out

#- 317 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'er3mrHWEtufI5wgG' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 317 'AdminGetDeviceBansV4' test.out

#- 318 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'huo6gze4UCGaB3Cd' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 318 'AdminDecryptDeviceV4' test.out

#- 319 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'qeY38yMD0PSNa3tY' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 319 'AdminUnbanDeviceV4' test.out

#- 320 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'OlaFMrE0K0WQcmVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 320 'AdminGetUsersByDeviceV4' test.out

#- 321 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 321 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 322 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '99' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 322 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 323 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 14}' \
    > test.out 2>&1
eval_tap $? 323 'AdminCreateTestUsersV4' test.out

#- 324 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "SU8dfezyKszmXxR5", "policyId": "PHzBVRTrog4gPVBN", "policyVersionId": "zgR6Of2ArAOwtkem"}, {"isAccepted": false, "localizedPolicyVersionId": "8WrZoWiyfiShpMfr", "policyId": "shuxPcZuXDqm7LV9", "policyVersionId": "9NWQTe98IBWH4cNS"}, {"isAccepted": true, "localizedPolicyVersionId": "HnclKHwjKxv62RWP", "policyId": "tJQxT1e1P70IewjX", "policyVersionId": "fMNjikAjf0uiwxrb"}], "authType": "EMAILPASSWD", "code": "TNFfFBfi6v1Jxi5k", "country": "m5fqMAVEaBup9zCM", "dateOfBirth": "w1Ku3UHefwiExyov", "displayName": "mlnFCtGuDyMYcEvV", "emailAddress": "u2TmrJl6GkREhzBH", "password": "hNkBmxAUCMMpmZwm", "passwordMD5Sum": "EEAN76tCx8TDFQrG", "reachMinimumAge": false, "uniqueDisplayName": "Fn0T7CviwM2S2O6o", "username": "0RdaW2B6a6zrFF80"}' \
    > test.out 2>&1
eval_tap $? 324 'AdminCreateUserV4' test.out

#- 325 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": false, "userIds": ["P7J8PGJT82vuK5E7", "QzDvTMOqXRak7ewF", "ENxlBZTTCtw3GvsC"]}' \
    > test.out 2>&1
eval_tap $? 325 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 326 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["Sf3mxCNrqOE9HEes", "8hPE4fNPJ4PK1mmQ", "G3gWeF5mGaO7k7EA"]}' \
    > test.out 2>&1
eval_tap $? 326 'AdminBulkCheckValidUserIDV4' test.out

#- 327 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '883xhaMRVDrqYlP1' \
    --body '{"avatarUrl": "xPfSnhNAwLgNEkFz", "country": "DtZdT32DPQrsVifJ", "dateOfBirth": "WfKuRqQFXDtlWHQC", "displayName": "LlLpQ8RLJUmZxrH1", "languageTag": "krQCxeORwaPS6hcf", "skipLoginQueue": true, "uniqueDisplayName": "0qScGMaXcdAoGOfJ", "userName": "86KFqBkDDTTjuUmt"}' \
    > test.out 2>&1
eval_tap $? 327 'AdminUpdateUserV4' test.out

#- 328 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'WVt7QVAXLnRjnZUQ' \
    --body '{"code": "hFDCmmSQT2s4P8S7", "emailAddress": "ZJs8CJCStCFOHsdb"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateUserEmailAddressV4' test.out

#- 329 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ZrdDRUaO3HKcbeJg' \
    > test.out 2>&1
eval_tap $? 329 'AdminDisableUserMFAV4' test.out

#- 330 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'iu5qPyJ9iB4jGRVM' \
    > test.out 2>&1
eval_tap $? 330 'AdminListUserRolesV4' test.out

#- 331 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'g2uZAuy4ibHMtRdq' \
    --body '{"assignedNamespaces": ["JwXSstSX7cWYQalQ", "7wWjX5H183Ckrcoc", "rj9AJgdl00raebUa"], "roleId": "Ece01csvgetfDFVq"}' \
    > test.out 2>&1
eval_tap $? 331 'AdminUpdateUserRoleV4' test.out

#- 332 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '87Hu6iGTuW2Ee8g6' \
    --body '{"assignedNamespaces": ["qlZmmzsmBJuIvZLA", "mHNgezrVTgdOGBBf", "d2mvvW87KHwTsi1S"], "roleId": "9Go7UKb1ZhTrRCsI"}' \
    > test.out 2>&1
eval_tap $? 332 'AdminAddUserRoleV4' test.out

#- 333 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'jsd0agYzg8prVKLI' \
    --body '{"assignedNamespaces": ["s7h7DMusjqVdAhp9", "bGqPU5m5etckkAc9", "yHE1lJKxCZJaS8PY"], "roleId": "W8HroIWLB8DQCXfi"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminRemoveUserRoleV4' test.out

#- 334 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'false' \
    --isWildcard 'false' \
    --limit '36' \
    --offset '30' \
    > test.out 2>&1
eval_tap $? 334 'AdminGetRolesV4' test.out

#- 335 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "UNDwG8wK54zvP9y1"}' \
    > test.out 2>&1
eval_tap $? 335 'AdminCreateRoleV4' test.out

#- 336 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId '9p0IjY7xljt83T8Y' \
    > test.out 2>&1
eval_tap $? 336 'AdminGetRoleV4' test.out

#- 337 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'frhUNjsIrbKkadnl' \
    > test.out 2>&1
eval_tap $? 337 'AdminDeleteRoleV4' test.out

#- 338 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'p3VQcZoID2ZH0Xkl' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "BMjdB2lC9SBYh0mH"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminUpdateRoleV4' test.out

#- 339 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'Zoc2fNqAIolEYFdF' \
    --body '{"permissions": [{"action": 96, "resource": "gIldIJ6WKQ2igpLM", "schedAction": 44, "schedCron": "hlQpplBQLaqXP3ne", "schedRange": ["qorsG48NHSHgFSOo", "7K8G2kD5MAavlvVf", "cK3JCK6hwYxtQ6Oi"]}, {"action": 91, "resource": "NH0uoy6lRsWHpeY2", "schedAction": 8, "schedCron": "v3uBriTKelWaEB80", "schedRange": ["WBnkGsvjawNZlHk3", "Jf3on9QA4RCF9OQV", "An43XNAOJX5nxLko"]}, {"action": 14, "resource": "UlCDNonwN8v0JaFF", "schedAction": 39, "schedCron": "13jYyP5mSCCjogKb", "schedRange": ["atHvcm5qBsbHneu0", "UgI9KIsDXWveJ2n4", "8fqyQ8r5wXmEwt21"]}]}' \
    > test.out 2>&1
eval_tap $? 339 'AdminUpdateRolePermissionsV4' test.out

#- 340 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'kKbsSpMc4e06AR3Z' \
    --body '{"permissions": [{"action": 85, "resource": "Afif0g2s1CleLQhw", "schedAction": 20, "schedCron": "8L4N06oIswWjoM5g", "schedRange": ["IEwG2RlAS8o1WQ3B", "W7jqriqiBQoA2Ytf", "NIzu1Iq8MiVynQis"]}, {"action": 19, "resource": "WXJZabv7SxRAsn2V", "schedAction": 25, "schedCron": "A0qC5UPAaNTgeDCE", "schedRange": ["tWBSvgPIquOZIsCt", "IaDogH2Dy4s8Er8k", "a0Y0UpXos2e29gd2"]}, {"action": 16, "resource": "IRbsOtHoTEJeGCJl", "schedAction": 69, "schedCron": "MHA8BfctFxJkIfao", "schedRange": ["KsZrTubMmefs3HqU", "8ulwD1TZIk5EZYZe", "9JoOiGQcqCItmBS6"]}]}' \
    > test.out 2>&1
eval_tap $? 340 'AdminAddRolePermissionsV4' test.out

#- 341 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'aB8SMe9KHi9GKeuB' \
    --body '["T2u39yuuAt97QTnD", "D3N9MKIZ2lFFfwVD", "BMJ9eYiIs3GaATPj"]' \
    > test.out 2>&1
eval_tap $? 341 'AdminDeleteRolePermissionsV4' test.out

#- 342 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId '2O8S9503Tobr1Z0v' \
    --after 'OwIeHKOXKdsIRqlj' \
    --before 'DA6ZJPXsWTgyKdNf' \
    --limit '34' \
    > test.out 2>&1
eval_tap $? 342 'AdminListAssignedUsersV4' test.out

#- 343 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'kTjS1S0OiZfYVVj5' \
    --body '{"assignedNamespaces": ["lmOkr97zPT9SjNUd", "gujQDKc9lBk9IPd7", "Ws22p8vVYAqkWhrX"], "namespace": "CoOZ7gA4rB8ZWeYc", "userId": "S6CJBlxYHjUVBtua"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminAssignUserToRoleV4' test.out

#- 344 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'TmhpnFk1gbILuBpd' \
    --body '{"namespace": "4oLkPnVPaKEsJs7A", "userId": "VOqACNnjdC3uKW5f"}' \
    > test.out 2>&1
eval_tap $? 344 'AdminRevokeUserFromRoleV4' test.out

#- 345 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["mQ6AyNP6OgUWxaLk", "xlfbtyp4R35n1Xh6", "9dh6rIkuvlmC1urQ"], "emailAddresses": ["aT1v0TIzIBly9oD1", "chJV5hOuC3vIzbOd", "EBOIOS416bkvoIvt"], "isAdmin": true, "isNewStudio": false, "languageTag": "2BXflJ6oVvzGu5ZG", "namespace": "h0Fc6MIORawCVpuC", "roleId": "Tl4vTJpyXDIyXk8n"}' \
    > test.out 2>&1
eval_tap $? 345 'AdminInviteUserNewV4' test.out

#- 346 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "hmDv4YBzTV6fICtY", "country": "kVxM0WTznwL96BDO", "dateOfBirth": "UggdZPCGk5HzRYts", "displayName": "81Jac1ZpThbCb6QS", "languageTag": "xkrLcfNZ0GBG0KDs", "skipLoginQueue": true, "uniqueDisplayName": "cAQGx5nyJFSQhMe6", "userName": "vSSRHWwDq3oOsR9o"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateMyUserV4' test.out

#- 347 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"mfaToken": "csNYDfjAFyKz0J2E"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminDisableMyAuthenticatorV4' test.out

#- 348 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'zuII4hAz12xy3nh8' \
    > test.out 2>&1
eval_tap $? 348 'AdminEnableMyAuthenticatorV4' test.out

#- 349 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 349 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 350 AdminGetMyBackupCodesV4
eval_tap 0 350 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 351 AdminGenerateMyBackupCodesV4
eval_tap 0 351 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 352 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"mfaToken": "7pZwvfJkQXBsnZZ3"}' \
    > test.out 2>&1
eval_tap $? 352 'AdminDisableMyBackupCodesV4' test.out

#- 353 AdminDownloadMyBackupCodesV4
eval_tap 0 353 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 354 AdminEnableMyBackupCodesV4
eval_tap 0 354 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 355 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'graxQevtK6xxQUWZ' \
    > test.out 2>&1
eval_tap $? 355 'AdminGetBackupCodesV4' test.out

#- 356 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag '6eSZ9xd4BujGAn1x' \
    > test.out 2>&1
eval_tap $? 356 'AdminGenerateBackupCodesV4' test.out

#- 357 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'lEDHzEEkuyp8OLkJ' \
    > test.out 2>&1
eval_tap $? 357 'AdminEnableBackupCodesV4' test.out

#- 358 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'KFH4DwnvXuJN9goE' \
    --factor 'xGGVPkV8p1ZHmIdp' \
    > test.out 2>&1
eval_tap $? 358 'AdminChallengeMyMFAV4' test.out

#- 359 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'yw0GTYQWlRNgowwz' \
    > test.out 2>&1
eval_tap $? 359 'AdminSendMyMFAEmailCodeV4' test.out

#- 360 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"mfaToken": "3qYbgRul8sLSzM4V"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminDisableMyEmailV4' test.out

#- 361 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'G2396RSKAWhkbjGW' \
    > test.out 2>&1
eval_tap $? 361 'AdminEnableMyEmailV4' test.out

#- 362 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 362 'AdminGetMyEnabledFactorsV4' test.out

#- 363 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'xqFTtp6BnA4rRYvj' \
    > test.out 2>&1
eval_tap $? 363 'AdminMakeFactorMyDefaultV4' test.out

#- 364 AdminGetMyMFAStatusV4
samples/cli/sample-apps Iam adminGetMyMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 364 'AdminGetMyMFAStatusV4' test.out

#- 365 AdminInviteUserV4
eval_tap 0 365 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 366 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'q0dNkqBDSht1hgrs' \
    --linkingToken 'tMbOuqY092Knksxq' \
    --password '77P3pf4bkcY1qEn4' \
    --username '61aHcjSq4T1eamig' \
    > test.out 2>&1
eval_tap $? 366 'AuthenticationWithPlatformLinkV4' test.out

#- 367 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'Sr92uWGVppYAvHXO' \
    --extendExp 'false' \
    --linkingToken 'ZS0Rjru1lJi7hq49' \
    > test.out 2>&1
eval_tap $? 367 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 368 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'Rvh1xU9AvCcngY6J' \
    --factor 'TQSXWYh0uY1aUjc6' \
    --mfaToken '9WhI4UKPTYSNar9J' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 368 'Verify2faCodeV4' test.out

#- 369 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'sACOawAHaTYfivNf' \
    --codeChallenge 'APBhBSbKcthshIJe' \
    --codeChallengeMethod 'S256' \
    --additionalData 'gsVJmi6mHrOPHRHG' \
    --clientId 'XDGTKRB3UFQxBC5x' \
    --createHeadless 'true' \
    --deviceId '8xrydVOmQZp7a2pp' \
    --macAddress 'KeBuQNZic0kK3gxF' \
    --platformToken 'jWkp5SyfvJu6RRTx' \
    --serviceLabel '0.346420870485432' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 369 'PlatformTokenGrantV4' test.out

#- 370 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'OoustUEId9qXdURH' \
    --codeChallengeMethod 'S256' \
    --simultaneousPlatform 'elmHOcq4mM5AZL4Z' \
    --simultaneousTicket 'XSoCyInwjVBOmzFD' \
    --nativePlatform 'steam' \
    --nativePlatformTicket '7wbTBz6GkcRBRqkc' \
    > test.out 2>&1
eval_tap $? 370 'SimultaneousLoginV4' test.out

#- 371 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '4DphgJc4K8l8FF8T' \
    --codeChallengeMethod 'S256' \
    --additionalData 'rOWgCqS9FRMQ8AEP' \
    --clientId 'cpYOHbO5FboE9ime' \
    --clientSecret 'IKDEM9BN4VaVDt5g' \
    --code 'rgwEaQrisn0v8OWP' \
    --codeVerifier '4cAoe0b2LFxWwtDG' \
    --extendNamespace 'RH6zDIsthhyI682o' \
    --extendExp 'false' \
    --loginQueueTicket '0pBDznoGOUCJpoWQ' \
    --password 'pIVIk1Jtgg7T9bjJ' \
    --redirectUri 'OHcFDIS4CudD7zyB' \
    --refreshToken 'Q6SwH2t5r3zLS28Y' \
    --username 'nEReruPsfhfpZNjx' \
    --grantType 'urn:ietf:params:oauth:grant-type:login_queue_ticket' \
    > test.out 2>&1
eval_tap $? 371 'TokenGrantV4' test.out

#- 372 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'jZC9dOK6l4lvn93u' \
    --code 'w13ozLa8wQUSLxxY' \
    > test.out 2>&1
eval_tap $? 372 'RequestTargetTokenResponseV4' test.out

#- 373 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId '1yr8quJCbKxBiL0Q' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["MFU4I4uZjF7ZYnu7", "ulhZERkr3ZdcAWxE", "eG3Px5JJ5uvR26Oh"]}' \
    > test.out 2>&1
eval_tap $? 373 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 374 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "KrLqoa7voezSs0vr", "policyId": "io1XnDnzuSCffu2S", "policyVersionId": "gJQaX9KgtnNU4j3H"}, {"isAccepted": true, "localizedPolicyVersionId": "pkLui6YrUkRkWkHe", "policyId": "J3Axlf2scJwxgd8n", "policyVersionId": "FZkO8DRxRI4wIkrr"}, {"isAccepted": true, "localizedPolicyVersionId": "kZSmesbYnWrIGCrv", "policyId": "uiOJihM6tzKcZZKV", "policyVersionId": "GxAYfuSDIACBK6Yu"}], "authType": "EMAILPASSWD", "country": "xKl9AQNgKacxPEEn", "dateOfBirth": "3JcnKwB7Zx5b3P6G", "displayName": "UyYPhbKtKHn2EfFE", "emailAddress": "YxA8ynKiAdEoDYQo", "password": "wYF5VujUtYUlBxd0", "passwordMD5Sum": "ulfC7dSlrmB7t8yy", "uniqueDisplayName": "xJeEXddeHInbWpMo", "username": "2iFlbHGM9iIyIVmN", "verified": false}' \
    > test.out 2>&1
eval_tap $? 374 'PublicCreateTestUserV4' test.out

#- 375 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "hKV6qvtRadUAFCTp", "policyId": "zA7iVh04YMDNsBde", "policyVersionId": "NmShILoGqLwHaGIr"}, {"isAccepted": false, "localizedPolicyVersionId": "oXWCuY7WeT7kAlr6", "policyId": "R8Yj1EK0xlUcmdWX", "policyVersionId": "iKTCixvVdMTpodTe"}, {"isAccepted": true, "localizedPolicyVersionId": "gH73lcT3lU4ckIux", "policyId": "scleuhDEz3VSlWcc", "policyVersionId": "yCRkSvfjuptj1Kxm"}], "authType": "EMAILPASSWD", "code": "QLamOjnRlJNJHAVG", "country": "bapUwIF1wrl2JFiL", "dateOfBirth": "i4MLBR0W6HTyCF5H", "displayName": "w99go0jY0Ua32vec", "emailAddress": "WxySmudtqDiNujzh", "password": "gZmfSPpAzE1CICcx", "passwordMD5Sum": "6gJnhV7KdDp1uSKq", "reachMinimumAge": false, "uniqueDisplayName": "G8HUPTjKYZHdTJfw", "username": "W3Oyi2zFwB6mDW04"}' \
    > test.out 2>&1
eval_tap $? 375 'PublicCreateUserV4' test.out

#- 376 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'horsMMmMC1tzeaRT' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "3APybE1cliLmog23", "policyId": "nPWIAeyFXbZptamE", "policyVersionId": "DBMOJDhLPmeMxEAo"}, {"isAccepted": false, "localizedPolicyVersionId": "Ac5jmiVNIAX1L39i", "policyId": "2yXzoAXp91XearIR", "policyVersionId": "iKKi34O1pxixcCa3"}, {"isAccepted": false, "localizedPolicyVersionId": "n2cxbpaluZWw9wI6", "policyId": "AwKQxjFfvYwJ0LTC", "policyVersionId": "ZhZtxpUpjXxhENvI"}], "authType": "EMAILPASSWD", "code": "z6Z77cOdC7mqtJNW", "country": "BUASI8gUcGQZ6CEU", "dateOfBirth": "6WlVM8oZjWhFe8Nu", "displayName": "DIxrQoHpIjRPtc8I", "emailAddress": "Sqpd96m000TJ7a8q", "password": "fu8PnebDA1MDPDuQ", "passwordMD5Sum": "cFwM2ve7x6w0jxXL", "reachMinimumAge": false, "uniqueDisplayName": "8Z8OsmB9o6D4HpF1", "username": "9IQUY1iAHjnFMOKi"}' \
    > test.out 2>&1
eval_tap $? 376 'CreateUserFromInvitationV4' test.out

#- 377 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "vTZ8UAufTjDy26Sa", "country": "YFMfCBsF1n2fyBiN", "dateOfBirth": "Wpk9RRMna7m5g76P", "displayName": "XHGEW2brJqdg5bpP", "languageTag": "sCCR3iMZs8JDkx2I", "uniqueDisplayName": "LskdOwfxjXmn3aWW", "userName": "iup6W7rejtB0a7q4"}' \
    > test.out 2>&1
eval_tap $? 377 'PublicUpdateUserV4' test.out

#- 378 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "DszVylcs3pDJdRH1", "emailAddress": "k5xRFQCKmhfVyXek"}' \
    > test.out 2>&1
eval_tap $? 378 'PublicUpdateUserEmailAddressV4' test.out

#- 379 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "EmXkJ4X5iFcWXFdu", "country": "BflJDjFxrpbAdyzI", "dateOfBirth": "VIIY1HQp4syZBk4b", "displayName": "5VULN4CCQh5WXNAv", "emailAddress": "rWIMjjwfnXeJONdF", "password": "6eWfl6P0OCdpLVN8", "reachMinimumAge": false, "uniqueDisplayName": "2fFeaYzoqTWYBEMC", "username": "HxAtAiqbqTNKGs2e", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 379 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 380 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "FlKtxMg47jNlIXN6", "password": "rHl5Fwzg326LA7Dr", "username": "p7dugmsl6GKq3ZnY"}' \
    > test.out 2>&1
eval_tap $? 380 'PublicUpgradeHeadlessAccountV4' test.out

#- 381 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "ufIiLs5zJB0sYzE5"}' \
    > test.out 2>&1
eval_tap $? 381 'PublicDisableMyAuthenticatorV4' test.out

#- 382 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'ifYBg1HxKrSF5G7P' \
    > test.out 2>&1
eval_tap $? 382 'PublicEnableMyAuthenticatorV4' test.out

#- 383 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 383 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 384 PublicGetMyBackupCodesV4
eval_tap 0 384 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 PublicGenerateMyBackupCodesV4
eval_tap 0 385 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 386 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "mm02ZprUZ4naDcbl"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicDisableMyBackupCodesV4' test.out

#- 387 PublicDownloadMyBackupCodesV4
eval_tap 0 387 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 388 PublicEnableMyBackupCodesV4
eval_tap 0 388 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 389 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'XaTrqnzyazzkX79Z' \
    > test.out 2>&1
eval_tap $? 389 'PublicGetBackupCodesV4' test.out

#- 390 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '9LDi2zt4f9Zkvhf3' \
    > test.out 2>&1
eval_tap $? 390 'PublicGenerateBackupCodesV4' test.out

#- 391 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 391 'PublicEnableBackupCodesV4' test.out

#- 392 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'w2w2PA0unFIgKjel' \
    --factor 'LVVSWznN0E5lPWIa' \
    > test.out 2>&1
eval_tap $? 392 'PublicChallengeMyMFAV4' test.out

#- 393 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 393 'PublicRemoveTrustedDeviceV4' test.out

#- 394 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'vlyGyvFLSTt6vbjW' \
    > test.out 2>&1
eval_tap $? 394 'PublicSendMyMFAEmailCodeV4' test.out

#- 395 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"mfaToken": "ZYf8NeBR1o6psrHF"}' \
    > test.out 2>&1
eval_tap $? 395 'PublicDisableMyEmailV4' test.out

#- 396 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'oqrgshNtAILaJdT0' \
    > test.out 2>&1
eval_tap $? 396 'PublicEnableMyEmailV4' test.out

#- 397 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 397 'PublicGetMyEnabledFactorsV4' test.out

#- 398 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'EPQbax7YkR0IX0xK' \
    > test.out 2>&1
eval_tap $? 398 'PublicMakeFactorMyDefaultV4' test.out

#- 399 PublicGetMyMFAStatusV4
samples/cli/sample-apps Iam publicGetMyMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 399 'PublicGetMyMFAStatusV4' test.out

#- 400 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'amsQp9acNUm6NlNm' \
    > test.out 2>&1
eval_tap $? 400 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 401 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "twiHLB0Setkm0NBt", "emailAddress": "MjVVvpXOrncQHSCx", "languageTag": "2aESBaYQipwuNyWU", "namespace": "CtoOH4POz0B4yniI", "namespaceDisplayName": "2Q9d6TRxVZiy1HdR"}' \
    > test.out 2>&1
eval_tap $? 401 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE