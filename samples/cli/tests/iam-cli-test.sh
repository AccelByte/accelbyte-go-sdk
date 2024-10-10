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
echo "1..418"

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
    --forceDelete 'true' \
    --body '{"modules": [{"docLink": "hTS4BsFqCI0MUGj0", "groups": [{"group": "jlsCJZPOmMgkyhGo", "groupId": "PSeybbrH3kEHnLUK", "permissions": [{"allowedActions": [10, 33, 87], "resource": "BoWeJKgeiHSvsIAO"}, {"allowedActions": [13, 4, 47], "resource": "G8s0PN73856ESqwi"}, {"allowedActions": [1, 73, 11], "resource": "R8zF8XngN3F60wRF"}]}, {"group": "2bYUUelX3jXNcj2e", "groupId": "hhoSoayfYBwY3EAO", "permissions": [{"allowedActions": [46, 64, 70], "resource": "8OFyoSsVGblg03rB"}, {"allowedActions": [54, 88, 98], "resource": "0k8PckwlEQUENHmG"}, {"allowedActions": [20, 45, 11], "resource": "frhHFh0lxeeuDzTM"}]}, {"group": "Quz3VcE9t3YMwc2U", "groupId": "gs2gDZEJrk420u6b", "permissions": [{"allowedActions": [48, 95, 39], "resource": "XlsHgGBa2U2NW11O"}, {"allowedActions": [14, 64, 43], "resource": "ubjxjsU6Rndfan79"}, {"allowedActions": [77, 73, 3], "resource": "QaqF8ebJ4S4r6Qf2"}]}], "module": "paILBvp7oqLqJCLt", "moduleId": "s1EtJRvEMOIwtz6i"}, {"docLink": "ED48J2Dk5oFuKvfE", "groups": [{"group": "kGRNYBDOxLl8rZ8z", "groupId": "wI9ZDxJKDbLeLS2I", "permissions": [{"allowedActions": [80, 2, 26], "resource": "1b6CIhkeBuITeyn3"}, {"allowedActions": [35, 21, 20], "resource": "tto8ihmjIlq8alev"}, {"allowedActions": [31, 69, 48], "resource": "ENVM1e79VvA8jnAi"}]}, {"group": "PLQgrQPnP1JorSGT", "groupId": "WNcKtc4Mz089nLnF", "permissions": [{"allowedActions": [72, 60, 43], "resource": "xCqPgH84OkQEvxUy"}, {"allowedActions": [54, 69, 10], "resource": "IOkMs24hf0wglx7v"}, {"allowedActions": [43, 75, 29], "resource": "Au4kqA0YYarQoMYL"}]}, {"group": "SmdVnYt4cVMSxtr2", "groupId": "0PuqxiozZytem0TQ", "permissions": [{"allowedActions": [36, 38, 46], "resource": "qjAPTlCO8BF4jRwv"}, {"allowedActions": [28, 50, 42], "resource": "gXHTNPDSeFpAMxVc"}, {"allowedActions": [55, 92, 88], "resource": "XJXAsyc6GVah842q"}]}], "module": "Tvxa9o7hntdDW77c", "moduleId": "sdBIdWMAwCMn5hDN"}, {"docLink": "RywiyN2pazFqoKA4", "groups": [{"group": "kRTxN5ZB7OM2PFQd", "groupId": "Mcy3FY7Bto2DTd46", "permissions": [{"allowedActions": [12, 28, 76], "resource": "OEXthfG8YtCPh7Ye"}, {"allowedActions": [52, 74, 10], "resource": "TyfbDRRSBELOahsN"}, {"allowedActions": [44, 48, 26], "resource": "ITrf6W5FY9ggEw8b"}]}, {"group": "wPQWwgXdpOB6QL16", "groupId": "B3J2lXL6yGn0IIBC", "permissions": [{"allowedActions": [53, 71, 87], "resource": "DqpjVahkAMIkzstc"}, {"allowedActions": [20, 24, 88], "resource": "RcLNYlRoqKzf4cH8"}, {"allowedActions": [71, 4, 90], "resource": "bAN1UVfJArV62YdS"}]}, {"group": "XTBqHP6zd2L2SkhG", "groupId": "IoSf13aPPCErjzyK", "permissions": [{"allowedActions": [51, 62, 79], "resource": "z2nP6IugPLcQ5OaW"}, {"allowedActions": [14, 33, 100], "resource": "SgpoX6aUTHbcufWt"}, {"allowedActions": [20, 79, 14], "resource": "uCNMFZipZIPoeFaN"}]}], "module": "uBLStC1eqxWKc66K", "moduleId": "LGQqQL865rgmUFnH"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "7XdXbeCYovjUaU23", "moduleId": "HOo5qtOF8xls335T"}' \
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
    --body '[{"field": "NTEezoFQs7h39f2e", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["7Vk0oHWVlqNQDVkm", "WuEUMYkqvp2qcQ7u", "jnv0ddUADBrBg4P2"], "preferRegex": true, "regex": "YIaYfXKnMNyJWnHU"}, "blockedWord": ["PaGDufk7gXYE5aeg", "r0T1FC6U8oayC0Na", "WQySz9aFVOYjB3op"], "description": [{"language": "r09S2ICHbdiCHonV", "message": ["Se1HoNCBKjAyrhpu", "wwCoDgEwXuL5EM74", "b4GOoelA1UhfAbWE"]}, {"language": "RHsFAwLh7XrWNEec", "message": ["3ebgxztpaV6vbvDq", "SciVjQOSt8CpuspF", "8oXKzrgesrB8tdSY"]}, {"language": "dUZdAv6AHJY3GWtp", "message": ["SZL4zbYtPcRzkliv", "smOVHOwlO6X0uKV5", "43Jei0E0QuW6vvCM"]}], "isCustomRegex": true, "letterCase": "OR3125pb08959VMG", "maxLength": 83, "maxRepeatingAlphaNum": 93, "maxRepeatingSpecialCharacter": 3, "minCharType": 43, "minLength": 95, "profanityFilter": "1hPsOlH21u7BmWap", "regex": "SUQX6naQ5P8lATJf", "specialCharacterLocation": "Qi5eu3Ch65XzEyes", "specialCharacters": ["jyUtjoGj7BA6l259", "GeZjZ5xnCpALx6Cl", "AN5nfUB4qxv8CZBL"]}}, {"field": "UBqtsI7TgnKRsE8z", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["zd93qnvGqmmCXWDy", "gUfa60iZfI0fNy7B", "tbitCafRB6HKoPOj"], "preferRegex": false, "regex": "023CMaAwKD8FNwXY"}, "blockedWord": ["w2AZDsmWYSJnfEGn", "z3JWT0v1GvoTt4m8", "qfcLVYKH9fVP7Bdv"], "description": [{"language": "o3az7SCaltSWuYOI", "message": ["Off5GbNWjeFztgvy", "NHA9BZh2kz9jVPaM", "GANRGgOdPpLu4rAf"]}, {"language": "dkBw2gc7JH8htjJb", "message": ["jkGUw6I5ATvkALXT", "kgD1D942jQBoTHzN", "AR0O8ow8m4ZSM4g6"]}, {"language": "BBgF2bXAfeZmDOWx", "message": ["QPYPleUCffR7OH8w", "QWKTFvXmxeYbY80O", "RjvKI6iMp9wT8YP9"]}], "isCustomRegex": false, "letterCase": "3nyQeK9Kycfh3O2W", "maxLength": 72, "maxRepeatingAlphaNum": 71, "maxRepeatingSpecialCharacter": 26, "minCharType": 16, "minLength": 49, "profanityFilter": "4rA2DmQtPD7Navba", "regex": "5ibQmyND0J9sC79Q", "specialCharacterLocation": "19ORv2n6c5lftIVj", "specialCharacters": ["QqZpoKVIYT6BeNMV", "g4sZBmL5MSP338vm", "lKt5ijpu5OdpJSa8"]}}, {"field": "exW7YOjGwZjmMXrN", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["czUyd4gcdDZsksp2", "SIoSKt74qO5Sgh4x", "FJp7WWdZ8vFdXxTU"], "preferRegex": false, "regex": "anLRoDvaLSIs45x1"}, "blockedWord": ["lJxHiLGfsEtE0oeK", "pYt0QKCkgZaUoyH8", "mzMBhXSkdDJy14mJ"], "description": [{"language": "mDLNTAnylRIj35pX", "message": ["b0i4034MAVblURpM", "4BmeSPUODTYP0j1d", "Pa9k0Z68eE3arnJX"]}, {"language": "Vy4z87rvaUZPgRWJ", "message": ["vsozGFDBfEc4YaHb", "FxDN8bco1i2edTVu", "jl5MOInp1Ioqm8vk"]}, {"language": "hJnOT8oA0Qmp05L2", "message": ["YVJELOEX64uwCqxo", "VvNdpjoXs0GwP8eb", "iVVZ2l7GPUFoFVGk"]}], "isCustomRegex": false, "letterCase": "6IMjJgVdM1ImVyiF", "maxLength": 32, "maxRepeatingAlphaNum": 86, "maxRepeatingSpecialCharacter": 15, "minCharType": 50, "minLength": 64, "profanityFilter": "XTs0Ys79FOC2W4QP", "regex": "axPwlMFHYAM3mlQV", "specialCharacterLocation": "MDusAvc3tVoq5ObU", "specialCharacters": ["zzMjCjNVms8Otuaf", "C8WhX0jnHm4cyuHF", "dQij4Y58oieRgdhH"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'P8vtoRcEjvb0spOS' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'OMQK7F3fssypUZlY' \
    --before 'x0nkHvYyWuseKPsL' \
    --endDate 'SRlQXAh5ExWVq7pT' \
    --limit '52' \
    --query 'oNA67H3ljK1Akgm7' \
    --roleId 't3Y5ywNmBQMSuLAR' \
    --startDate 'i1B0Hhsz1JmhKSge' \
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
    --body '{"ageRestriction": 77, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'Ga4VKvoax7svRHvg' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 71}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'ba82ZmUEvvWdWf6C' \
    --limit '60' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "4gfX98AWfMOgtb3h", "comment": "NRwpO0laHbeHHMAt", "endDate": "EjSzuzAPIyCgYEj2", "reason": "2d88T3JoBHr9BlKs", "skipNotif": true, "userIds": ["4d3i1iPzOqkeh3au", "LqW6mZwlXivYne6a", "OOJrAVyegtoJ0ZAW"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "ssCjWclvIYz7oMAm", "userId": "0Qmv9TaXvPs2KiyY"}, {"banId": "DfwEKKOlr5JMxYu5", "userId": "Zr0Wg1bLnC3kAQVt"}, {"banId": "gk4JRf6JlnlbYUZY", "userId": "t8Q9qhmMHYV649U2"}]}' \
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
    --clientId 'HimknOFDZL5UWAyM' \
    --clientName '7yQApkgfuGxPj4hj' \
    --clientType 'aR4A6gE6dX5Nw3VT' \
    --limit '22' \
    --offset '16' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["U5Ijv2tNGWR9ycQi", "ST9UYVC3xKjXGIhb", "gHem3zTO9krBpGm9"], "clientUpdateRequest": {"audiences": ["X8w5SUVKK8vOrNMU", "zUf9QBtgzp9BQoST", "9fRIy6j7DqN8JnHc"], "baseUri": "IGo8TxFjPiDP4Kef", "clientName": "xXwGRNe6jzFDS4l2", "clientPermissions": [{"action": 55, "resource": "DYwrZow79f9OAx6U", "schedAction": 72, "schedCron": "IX6FCFABv7VzsPWt", "schedRange": ["CBQrMyg8yPduebVq", "kHBWWQAQcsQbWndA", "1VzVbNOWOC5kxOE8"]}, {"action": 93, "resource": "pgez0MER0lsuV8KY", "schedAction": 21, "schedCron": "GARSK4hONHRwGI3X", "schedRange": ["eoJHiQPFZ6k49vuZ", "82jUK5Rl1k9t2uTA", "mxdQzDpcJKGsDo9F"]}, {"action": 17, "resource": "Is7Xw8cALphmZ765", "schedAction": 81, "schedCron": "dBqKsAjLNFvq4GQx", "schedRange": ["Zm6Uy8EJC7Uj7Dtp", "v2ZuX0yZEx5jKzH2", "q9xwma8AvEtpHndb"]}], "clientPlatform": "qjoTv9It8IFhoV4n", "deletable": false, "description": "87HfS14XYbNb5xgR", "modulePermissions": [{"moduleId": "hDMIIQ0ZhAwWdudo", "selectedGroups": [{"groupId": "VkJWxwRRxZhEnTzz", "selectedActions": [21, 38, 99]}, {"groupId": "GynKA7PLe15BZJ9z", "selectedActions": [61, 73, 98]}, {"groupId": "mMusnnfk0Ru3jSEX", "selectedActions": [52, 75, 69]}]}, {"moduleId": "nSmzvOtqn7c4zQIL", "selectedGroups": [{"groupId": "hYrDBoCyVmC6WcOD", "selectedActions": [40, 94, 16]}, {"groupId": "GM3KvZoijEYsHPB8", "selectedActions": [94, 66, 23]}, {"groupId": "lrxE0WLQKcs7k7lI", "selectedActions": [83, 37, 68]}]}, {"moduleId": "UFNqKFURQEXsRTHl", "selectedGroups": [{"groupId": "wPGkV4pJkpliWbHw", "selectedActions": [83, 34, 93]}, {"groupId": "ngADHDi57atue9gR", "selectedActions": [38, 50, 20]}, {"groupId": "rO0n7fJBMsq1RbKI", "selectedActions": [11, 56, 93]}]}], "namespace": "5iWYCE7IHSSIeQQP", "oauthAccessTokenExpiration": 36, "oauthAccessTokenExpirationTimeUnit": "CwXfm41GlpZTsxkj", "oauthRefreshTokenExpiration": 72, "oauthRefreshTokenExpirationTimeUnit": "QuuW6cAyfYMIferv", "redirectUri": "tpS4T9g6QPTFbphN", "scopes": ["Vuq4XFOCKYY20Sbz", "8g6GJfjOvxOIHe35", "yeooKQNWVWr0zJcg"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["ta0X85wMHKBXadY3", "hB94KGiIwe5h0oJG", "DrA2n6zvLQjQgIkF"], "baseUri": "ChiRgDAnXGfSGGe0", "clientId": "yL1HPLSoFYom0zOC", "clientName": "GHtptzVbavuMUcnY", "clientPermissions": [{"action": 73, "resource": "FqZZnxDjrcl02sz0", "schedAction": 18, "schedCron": "4KX1RW6UbalNjIC3", "schedRange": ["oPeGDN0LRnFm7ghd", "TVpz5v6Z5sWxvBgE", "ON6GgYAbpR9JRpdX"]}, {"action": 37, "resource": "bT2zF4kje6LA9tya", "schedAction": 1, "schedCron": "fWlda6y348WNrjKX", "schedRange": ["uj1do9ubZ1LC03si", "KfcjXCH8zZhyfMAT", "hYyZ1nlmU7uBXSHg"]}, {"action": 24, "resource": "E2tub2UAg9UbN39P", "schedAction": 4, "schedCron": "WbuIym54KQYFjsNc", "schedRange": ["0GdrADQLdQZLh1Wm", "EVT2vxbLBJCYOYuz", "x2Oh6ha1djvxjHVi"]}], "clientPlatform": "EIFXrVluQmEm5K9e", "deletable": true, "description": "tFzUdnCmOZL5nZe6", "modulePermissions": [{"moduleId": "a1NWdxen1z2HrAoW", "selectedGroups": [{"groupId": "hlETQ18Mpy5375wi", "selectedActions": [77, 26, 70]}, {"groupId": "I1EHnbgsZ2yJ4mr6", "selectedActions": [66, 71, 98]}, {"groupId": "YgX2bhtNHkMsdqC6", "selectedActions": [59, 51, 8]}]}, {"moduleId": "6DyIkQUdIO8vIpm7", "selectedGroups": [{"groupId": "dAs2XbMMEtHlxzs4", "selectedActions": [13, 28, 10]}, {"groupId": "w3WuWzKhckBdZIMR", "selectedActions": [77, 84, 54]}, {"groupId": "zBGDFQ5X9OA47a1n", "selectedActions": [9, 91, 31]}]}, {"moduleId": "6Iy7Ewwsj0GspFmo", "selectedGroups": [{"groupId": "KSA0sD34YyTCAUzb", "selectedActions": [56, 13, 28]}, {"groupId": "I1ItGPUO00yVjWo2", "selectedActions": [49, 77, 4]}, {"groupId": "qlbUL6RlfMdFCN7K", "selectedActions": [35, 99, 93]}]}], "namespace": "0GR7YjxRnEwKfGFl", "oauthAccessTokenExpiration": 84, "oauthAccessTokenExpirationTimeUnit": "C0tW35O7ew0qkB19", "oauthClientType": "vADRX4j5gciy80Ub", "oauthRefreshTokenExpiration": 26, "oauthRefreshTokenExpirationTimeUnit": "5IL5SzT4EBsWDv5p", "parentNamespace": "YWNePdBmYossySu8", "redirectUri": "KphjdTChytJbsseJ", "scopes": ["rIDIEML4v1iaDLN0", "rnKhkxyp60iv1NOW", "77qn5glDbXWPRb33"], "secret": "ejR8DZe9qPXO4A7p", "skipLoginQueue": false, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'YzRFQIDSd6lp0Z4p' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'zc8lmBr5OGW6FJSV' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId '1W1W0IYeDbBs7HeT' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["tqihewSEhMniRta8", "LY1pxGF45ReYI6tH", "amJi9dv1Pryi8PMe"], "baseUri": "v3iO3aeJzzuO4GzQ", "clientName": "bRWOsowqpsze9Swn", "clientPermissions": [{"action": 13, "resource": "wzwSxFqSHoDhbD3f", "schedAction": 72, "schedCron": "uohKnT2MToAlx6Dh", "schedRange": ["4Rx2cilwizZJW3nc", "57kWdEdIEoQIC5fs", "cPJVZmR4eOmSs1GV"]}, {"action": 27, "resource": "VrOcmJsuPQ0O1afH", "schedAction": 97, "schedCron": "Fh6yUTieDXpRpclG", "schedRange": ["viDsXFPQkAGEJOLJ", "d4DKZGx4coy3ZLs2", "kD8dTNWZe0SGZcim"]}, {"action": 61, "resource": "woM8L0Z8aO55QaV9", "schedAction": 33, "schedCron": "ttVATOgkXC6Lh2K6", "schedRange": ["FwC9A4mRVLjkGibq", "hn6kQOZbrA3lTU9D", "LEVVHGI6GvoX825W"]}], "clientPlatform": "VegpNf0MSTK6Oqbn", "deletable": true, "description": "gsi2qQQlV8sZJm7x", "modulePermissions": [{"moduleId": "1iK4uFhFCHGseimm", "selectedGroups": [{"groupId": "PUWTmvegPx13v9Io", "selectedActions": [23, 94, 86]}, {"groupId": "BGSZjjvyNxXJOiyE", "selectedActions": [10, 24, 57]}, {"groupId": "BOGIXFqIAGYNC35e", "selectedActions": [96, 60, 5]}]}, {"moduleId": "b3Gdl9NVl76NVuK6", "selectedGroups": [{"groupId": "JCqqNnJTFmg1zoTg", "selectedActions": [100, 60, 62]}, {"groupId": "qa2KJTd5IxrWaCNh", "selectedActions": [94, 25, 56]}, {"groupId": "3MR3ewbLgXGq8hvs", "selectedActions": [3, 21, 41]}]}, {"moduleId": "PXks3tTRXHF3YsUE", "selectedGroups": [{"groupId": "CkU3f6lsc4Cp7BjP", "selectedActions": [97, 79, 70]}, {"groupId": "pYVAhFbkfs5ikb0v", "selectedActions": [46, 32, 55]}, {"groupId": "Uu1qtRHStSdBHlcq", "selectedActions": [99, 68, 68]}]}], "namespace": "QS9T6FNwA08fCmx6", "oauthAccessTokenExpiration": 71, "oauthAccessTokenExpirationTimeUnit": "bsVCeGheGwMNEWZQ", "oauthRefreshTokenExpiration": 80, "oauthRefreshTokenExpirationTimeUnit": "RzaxyBOrZzHmSxxh", "redirectUri": "RCH6w9jKCA5nqmGC", "scopes": ["LTLgDTKuefynOy9a", "zvkMrPv1FcXE0IMK", "K9XGsp8TwUrUbdiA"], "skipLoginQueue": true, "twoFactorEnabled": true}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'Umy53UZlEeDO1M2N' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 86, "resource": "mOEvZihtjWWRdNgb"}, {"action": 41, "resource": "FoZPEWqQRpCkS1m1"}, {"action": 90, "resource": "iEkZ1nj1PzWCm27p"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId '5jwh0oF9SgLgsQhr' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 57, "resource": "Kn6F9Qq1NkiwmnoN"}, {"action": 50, "resource": "zaCviogM8rHN6PvN"}, {"action": 27, "resource": "qF21YVQPmiO4foX4"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '27' \
    --clientId 'Jr9cWwZDrEYAGpmg' \
    --namespace $AB_NAMESPACE \
    --resource '8y9LwuVgCsxV0x99' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey '4srxMnjnocEJu2w4' \
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
    --body '{"blacklist": ["2HsM7HfBISfTX7Ec", "ZZllkRu5nRDcEtqr", "R80AULvCq25tTrpr"]}' \
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
    --body '{"active": false, "roleIds": ["Koyp3AUraLu0rmaL", "rrFDItvr3k67Rqu5", "CPxpdFCJasuv3Kjb"]}' \
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
    --limit '58' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'jTYGGGB94PdZVwFq' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4VJoQwx8z7HY8sHm' \
    --body '{"ACSURL": "AqAGeq36rfUpoV6J", "AWSCognitoRegion": "IwbVLiVaKn2Rtax8", "AWSCognitoUserPool": "LRjBp0zP9nR2YR3v", "AllowedClients": ["XqcxLUXSmsBckMtA", "43gD1p5JFtiaGr8e", "304GQKoBoVXKhyZN"], "AppId": "ch9d9yPlOuCdeYHe", "AuthorizationEndpoint": "pIAc8jG8NvH3k2fU", "ClientId": "uyjd2J8DuKQ3IyOo", "EmptyStrFieldList": ["45BCQScPTyAUokpc", "lyapw98YC0ZuCrKM", "21gFNHYR8Ch3NnLP"], "EnableServerLicenseValidation": false, "Environment": "fkVXk1GikcTrLbty", "FederationMetadataURL": "VRdIKtgM9kHAcDtY", "GenericOauthFlow": false, "IncludePUID": false, "IsActive": false, "Issuer": "sPDLzGEqw4pEvARI", "JWKSEndpoint": "gdPMWosvrRnOWNAz", "KeyID": "vDSBe3cDFUA5jRA8", "LogoURL": "EwNrYsPtY5FTVjI7", "NetflixCertificates": {"encryptedPrivateKey": "wIr1ZZSl9O7uUP8C", "encryptedPrivateKeyName": "YGkpNFi19X8hMX4Y", "publicCertificate": "HJ6gaDQknXuorKm1", "publicCertificateName": "4jnmnKXBqvzMJfte", "rootCertificate": "0hNX2UG248wXPIv8", "rootCertificateName": "exipnKuxOGkrCkXt"}, "OrganizationId": "dqpTUdLb7fCqx4ju", "PlatformName": "ulVP3Dr1a6PEx3AQ", "RedirectUri": "KWZQ0aBm7QMTgqRG", "RegisteredDomains": [{"affectedClientIDs": ["69HcseiRzydXXFNn", "2kAaC0z7rhw94oGI", "jyuJcUuYSFwlXWXL"], "domain": "XawqNHeHaOvtLk2R", "namespaces": ["fD67axLHEoG6huF1", "BIbByM1K3BMyyuo2", "cohEqSb4oslZxCaM"], "roleId": "jEgQJRxUwQA5z0Kw"}, {"affectedClientIDs": ["UlOTirbA2Sdr7oZF", "WoPSGjNKBEW5Af44", "LKmawf7pzvXK64gR"], "domain": "vGFCjTG1KjXIRpxz", "namespaces": ["2MrzlbsBE5G2Qt6k", "IJzX7oUxg0eB3FCL", "XPVYRceqvODG8Z88"], "roleId": "EcLJ75b2DxcVzUmW"}, {"affectedClientIDs": ["KpLPi6a5zGv8MPVE", "cmWb1zHv9ffi03Uw", "hVet3uaSiVV8CsBW"], "domain": "UzwG3WRS64OIb6nJ", "namespaces": ["B1MF83mUP3RQ3oO5", "jvsZQcIwXWxWW1ZX", "nAUh2B5YjzyQUzus"], "roleId": "YH8pITgWVQJANEQ3"}], "Secret": "i7iUptRIZrJX4u5Z", "TeamID": "Bo1ZhgS4OWO1Apb6", "TokenAuthenticationType": "hYREcZMkxBOBgO4W", "TokenClaimsMapping": {"GWsxcZV3yC5e9abe": "bkz9KoL2WO5VE2pF", "riHC2PrfT5Tm1Dcz": "YtYFAa2bylDHwvyS", "Etf7JlabDk9jRWAC": "Y0A6SEzynl1i9zdv"}, "TokenEndpoint": "Br5c76dCwCjInVAn", "UserInfoEndpoint": "DrgkIcvslTe276hU", "UserInfoHTTPMethod": "5Md6Cxk5QOYnMsYy", "scopes": ["tmvRSDyecpYVLS9g", "QyOE25KUTBGLg8Pb", "6imzHCFqwG4bHzc7"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'GVgcsoaKYWoaZ2ZK' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kt0zXtuS3nKyVjzL' \
    --body '{"ACSURL": "UkaRUYBcmEMiepu5", "AWSCognitoRegion": "wAyPC0zh48u7VXBt", "AWSCognitoUserPool": "ZnJuV5shb7QcmWVD", "AllowedClients": ["ruJQCeBkXgRbfXkF", "UnmgGD1ITokOa77F", "BAXXdrO6wlSXGItx"], "AppId": "2EZuI2IWjp0Kjsug", "AuthorizationEndpoint": "w0zsG8oA8EkSNz5D", "ClientId": "N7d4GYgSjKQY7tjU", "EmptyStrFieldList": ["HNSmytj2F1ubmpnw", "Fl8wHdaG8SYoGoBJ", "qAbajCxSQ2sbseM4"], "EnableServerLicenseValidation": true, "Environment": "1CFGLkIUIxAx1ISp", "FederationMetadataURL": "QoypwpoGg1yW00Gi", "GenericOauthFlow": true, "IncludePUID": false, "IsActive": true, "Issuer": "beWoZQLvD4UZADcw", "JWKSEndpoint": "rxsEuGGjMDypOYuJ", "KeyID": "gA9hU9xo4KAjLIvg", "LogoURL": "uCaAWGd4otJZp3ku", "NetflixCertificates": {"encryptedPrivateKey": "75SC5MUlqjqmzAKn", "encryptedPrivateKeyName": "GvRU4TtNxdQfpDIM", "publicCertificate": "bOmafQGjaUtEXQVY", "publicCertificateName": "MwpGCiSVtIHjWUiv", "rootCertificate": "Gyuha1Rn2JL1gqdd", "rootCertificateName": "S2aCjqBXrkZJn6Al"}, "OrganizationId": "pOTlumyVW6gUIiCD", "PlatformName": "N5Pz2f5qjS4nQUKo", "RedirectUri": "iyejg1lnVu8CGBCr", "RegisteredDomains": [{"affectedClientIDs": ["51vttLlrwL7B8hkj", "VfEcRcomRJI0akqT", "bocbZ8m7fkw5G4fn"], "domain": "WqNC6t9K8xQbOl8p", "namespaces": ["XqXaKFWbNYe9LhsS", "PCegzHbTSg6ielKs", "gENqOFnt4ZSGjI9d"], "roleId": "uFSwcLuWR7Z52u4Z"}, {"affectedClientIDs": ["uv14L2c4uN8DMP3m", "eoTbAUbAQxkXjAbI", "aPjhYlKvQTZYnKob"], "domain": "LJBBQU122NfnkvdQ", "namespaces": ["NFxCD95MYEhY8x73", "Um93dLhItnFzT9BX", "Gesp7C3vJmv9WeDP"], "roleId": "jesRnJTjJdSMiOqT"}, {"affectedClientIDs": ["9hGpN9H1ehz5Y6LB", "3jPxD5nmdNWj578a", "oVkZIvwY2CnP2Rd1"], "domain": "DsDTByqtks8GLPmx", "namespaces": ["FTNrV5ImW7urVGv2", "cnHG96E6vnNXZP0e", "IPFfbGPfioAQyg8q"], "roleId": "wY2O0WiUdwuOHfYK"}], "Secret": "m69y8dfbMNJJzTuo", "TeamID": "WIsEIGVGSyEKdwE9", "TokenAuthenticationType": "m1Xmh25RtTnd6HuY", "TokenClaimsMapping": {"eXiRESxqPLFM1l5T": "dcLY7gUK6OLDLgyW", "stKOaNIn4BaJVPFB": "8Kq4x8mh4fp86QQa", "DH0mg2xWR3J39hmu": "AwxuKcSKCDbo4PZQ"}, "TokenEndpoint": "7Sczks5wlBM1yrjd", "UserInfoEndpoint": "QvhA9voiZu6gRmpI", "UserInfoHTTPMethod": "jmOtYPzvRd6RIIlg", "scopes": ["qQeXEjWDzkNt57Y9", "BSvaB9b0FDIbG7q3", "y7mCSODxaKmdqoUw"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HA2JZsQc5Cmj3xSM' \
    --body '{"affectedClientIDs": ["x84wyO4VoZmIR6eL", "hu10iBRZGS71P2ue", "DfPTtsjd7XH61whn"], "assignedNamespaces": ["Ncu65F5CCqocY6b7", "ajvpKTNM5Otdrr9F", "CIUd7dsWPQmcL2vU"], "domain": "L0SRfzCVIN2vF2yd", "roleId": "edLtXLnIYIJfJkSp"}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '6oCv8Fre3pbPvSdZ' \
    --body '{"domain": "IZOCxvuRGlkLVNOl"}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Zkz5PUbLHA42sKGl' \
    > test.out 2>&1
eval_tap $? 148 'RetrieveSSOLoginPlatformCredential' test.out

#- 149 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'jcmMIHi27GCBDXLo' \
    --body '{"acsUrl": "0RdKXhhAoP7Sh4dC", "apiKey": "FpgBiJaSuitYbmLK", "appId": "iEvE02DnJbWr1Qbu", "federationMetadataUrl": "4bNAoXpevAu647ov", "isActive": false, "redirectUri": "sHnLv3GpEwR3Efuv", "secret": "qig3MZRpmoDRgXgp", "ssoUrl": "noMYtgb8TpwmTbrA"}' \
    > test.out 2>&1
eval_tap $? 149 'AddSSOLoginPlatformCredential' test.out

#- 150 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'YPUBG5jf9NV2SXri' \
    > test.out 2>&1
eval_tap $? 150 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 151 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'rXYjRT4ONdNqdtFV' \
    --body '{"acsUrl": "Ao0TTujUXpjxmdvC", "apiKey": "DeKvzN1IxY17uoIE", "appId": "8zoIa4zMCY6zd47J", "federationMetadataUrl": "H3nTHsnVWwbuirWy", "isActive": false, "redirectUri": "lNrTD3MEzRw2ZZvR", "secret": "zano5Gjaj4c2tjKa", "ssoUrl": "2J0UqdNcVKwR2OaI"}' \
    > test.out 2>&1
eval_tap $? 151 'UpdateSSOPlatformCredential' test.out

#- 152 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'U7007COm2CUZOIJs' \
    --rawPID 'true' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["5I57867ivgUABVcv", "AcwdnjdUjpqtCDdg", "QwPQ1KRuht2M6u9M"]}' \
    > test.out 2>&1
eval_tap $? 152 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 153 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NAoxdqwONqHzFhnC' \
    --platformUserId 'ruvr2ektrvFp2Z5K' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetUserByPlatformUserIDV3' test.out

#- 154 AdminGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'display_name' \
    > test.out 2>&1
eval_tap $? 154 'AdminGetProfileUpdateStrategyV3' test.out

#- 155 AdminUpdateProfileUpdateStrategyV3
samples/cli/sample-apps Iam adminUpdateProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'dob' \
    --body '{"config": {"minimumAllowedInterval": 25}, "type": "VlqmOLf06XJeQM1N"}' \
    > test.out 2>&1
eval_tap $? 155 'AdminUpdateProfileUpdateStrategyV3' test.out

#- 156 AdminGetRoleOverrideConfigV3
samples/cli/sample-apps Iam adminGetRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'VIEW_ONLY' \
    > test.out 2>&1
eval_tap $? 156 'AdminGetRoleOverrideConfigV3' test.out

#- 157 AdminUpdateRoleOverrideConfigV3
samples/cli/sample-apps Iam adminUpdateRoleOverrideConfigV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"additions": [{"actions": [8, 39, 84], "resource": "dawy6qzVTsdMMNie"}, {"actions": [46, 67, 39], "resource": "YtXJE5xtqHvfRgcv"}, {"actions": [35, 4, 58], "resource": "qHRvpFihXV4tZHZJ"}], "exclusions": [{"actions": [0, 66, 61], "resource": "B6nD2ayvs8ArkGVx"}, {"actions": [58, 5, 50], "resource": "Jw5khswlg82mHb8M"}, {"actions": [3, 63, 79], "resource": "YxgGpuD8GoUIvBlN"}], "overrides": [{"actions": [70, 56, 17], "resource": "1mj5gMfjnWtGrpik"}, {"actions": [3, 77, 79], "resource": "rKzN1TUtMs4feFbF"}, {"actions": [40, 53, 33], "resource": "ZFQfqURlowu4apcP"}], "replacements": [{"replacement": {"actions": [89, 70, 39], "resource": "lx9DX4Pd4PYpeCXk"}, "target": "8BoXgnK3nTrw4Yrd"}, {"replacement": {"actions": [38, 70, 20], "resource": "N6nUrzi96I9xquh1"}, "target": "QTObdr1gR0Fws24J"}, {"replacement": {"actions": [12, 8, 89], "resource": "3Taa1b4IKvzlnHDh"}, "target": "cXhb7fTLH3k0Y0IQ"}]}' \
    > test.out 2>&1
eval_tap $? 157 'AdminUpdateRoleOverrideConfigV3' test.out

#- 158 AdminGetRoleSourceV3
samples/cli/sample-apps Iam adminGetRoleSourceV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    > test.out 2>&1
eval_tap $? 158 'AdminGetRoleSourceV3' test.out

#- 159 AdminChangeRoleOverrideConfigStatusV3
samples/cli/sample-apps Iam adminChangeRoleOverrideConfigStatusV3 \
    --namespace $AB_NAMESPACE \
    --identity 'USER' \
    --body '{"active": true}' \
    > test.out 2>&1
eval_tap $? 159 'AdminChangeRoleOverrideConfigStatusV3' test.out

#- 160 AdminGetRoleNamespacePermissionV3
samples/cli/sample-apps Iam adminGetRoleNamespacePermissionV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'nb5lhWv9sEfwQvl8' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetRoleNamespacePermissionV3' test.out

#- 161 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'oJdUCf2n44DwVBBf' \
    --after '47' \
    --before '56' \
    --limit '38' \
    > test.out 2>&1
eval_tap $? 161 'GetAdminUsersByRoleIdV3' test.out

#- 162 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress '0e5gJzQ3m9a9bU1L' \
    > test.out 2>&1
eval_tap $? 162 'AdminGetUserByEmailAddressV3' test.out

#- 163 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": true}, "userIds": ["TpjLvbPtpxdCPIAk", "yA4iDzvOYEToZzPt", "a3a0VWD15TaXBJoN"]}' \
    > test.out 2>&1
eval_tap $? 163 'AdminBulkUpdateUsersV3' test.out

#- 164 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'grT3wj30nFE72XVV' \
    --body '{"bulkUserId": ["8X6QJdGVJLfIQGps", "PTnXdqd3Sjtv0kjX", "FiSADDMIsjOPMmBn"]}' \
    > test.out 2>&1
eval_tap $? 164 'AdminGetBulkUserBanV3' test.out

#- 165 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["ViGEU8eWn8zSsGxH", "zm8Wqv2DRJ9DQKBk", "5r3j2TVB19zvj0po"]}' \
    > test.out 2>&1
eval_tap $? 165 'AdminListUserIDByUserIDsV3' test.out

#- 166 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OSikOFtNHx3edilz", "kW6ubXlMLgFcLCni", "NnlffylTqUx4148A"]}' \
    > test.out 2>&1
eval_tap $? 166 'AdminBulkGetUsersPlatform' test.out

#- 167 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["pz029CpORrjvPpmz", "xx0FKCH9Qh8ZibSO", "RjR1hjqtw6wcJDDA"], "isAdmin": false, "languageTag": "JwOh6gomKYKWeihw", "namespace": "J7fy5JSdRZAnTkw8", "roles": ["P7dRoXwsPwGfLjjn", "Q6WbKVWt9AQMuNDT", "7GZrBxrAVzaAtyNm"]}' \
    > test.out 2>&1
eval_tap $? 167 'AdminInviteUserV3' test.out

#- 168 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '85' \
    --offset '33' \
    --platformUserId '8795KeFn1ww9HnJN' \
    --platformId '8bKhTERsoecMDpWG' \
    > test.out 2>&1
eval_tap $? 168 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 169 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '35' \
    --offset '57' \
    > test.out 2>&1
eval_tap $? 169 'AdminListUsersV3' test.out

#- 170 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'VBnFeMLufsEVTZsC' \
    --endDate 'dbCdMgnaURZY2o1h' \
    --includeTotal 'true' \
    --limit '77' \
    --offset '13' \
    --platformBy 'b1uHb2ESRADpKwOt' \
    --platformId 'gOv59fs6CDHIbJ54' \
    --query 'BsLWaKRCV07GAvLk' \
    --roleIds '9YfMPCDz0K8wfaMw' \
    --skipLoginQueue 'false' \
    --startDate 'SC0VjvQILua7e8nB' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 170 'AdminSearchUserV3' test.out

#- 171 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["xnYtBSnytcdLMguO", "dLDUjo2sTOIcgwSc", "iD8qDk7FNpeA8pyO"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminGetBulkUserByEmailAddressV3' test.out

#- 172 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 's5WkFZeBxXVtelIj' \
    > test.out 2>&1
eval_tap $? 172 'AdminGetUserByUserIdV3' test.out

#- 173 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '4HnVdFYdnpj10mJ8' \
    --body '{"avatarUrl": "wkA1qPgvzlhzrOFR", "country": "SMg0RdeMnd9R4nJN", "dateOfBirth": "a4UE0F2SOndvk8na", "displayName": "LJVBg52FQdCgpcgD", "languageTag": "TJCbxtVYbtjefWdd", "skipLoginQueue": true, "uniqueDisplayName": "l0Sdh7jkFkZuZUD4", "userName": "7MCcalc1y8tK4tlX"}' \
    > test.out 2>&1
eval_tap $? 173 'AdminUpdateUserV3' test.out

#- 174 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'MKAb5mrWzld66nfs' \
    --activeOnly 'false' \
    --after 'kDD9XK2eQ3ebH1hG' \
    --before 'myefZG2HDTnF4X4p' \
    --limit '40' \
    > test.out 2>&1
eval_tap $? 174 'AdminGetUserBanV3' test.out

#- 175 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'vAOvffychqdfPCyv' \
    --body '{"ban": "hMVtoVOpKPtKZdN5", "comment": "tGy8SktXyyB4YEtd", "endDate": "14p20PWaFF2agWvz", "reason": "VxRA68gkTOiHxymH", "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 175 'AdminBanUserV3' test.out

#- 176 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId '9PrHMQlfgteizA3D' \
    > test.out 2>&1
eval_tap $? 176 'AdminGetUserBanSummaryV3' test.out

#- 177 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '14RhqvFwitXljd3K' \
    --namespace $AB_NAMESPACE \
    --userId 'cr12Kqjk3RyUsVlB' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 177 'AdminUpdateUserBanV3' test.out

#- 178 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kzB2UDjPKmzNTb6v' \
    --body '{"context": "PZ2SyL4pv5laQIun", "emailAddress": "7MIqyud3d2sFA3IJ", "languageTag": "z5ZCDmwhMtth4KUC"}' \
    > test.out 2>&1
eval_tap $? 178 'AdminSendVerificationCodeV3' test.out

#- 179 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId '8w6h0yMM6xREieYR' \
    --body '{"Code": "UObdg2PHIjNSMLjy", "ContactType": "7Oa7PUu7pUzdg03c", "LanguageTag": "rs3hTJXrOHYY48We", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 179 'AdminVerifyAccountV3' test.out

#- 180 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'OXjnr5HzBTI4cv2j' \
    > test.out 2>&1
eval_tap $? 180 'GetUserVerificationCode' test.out

#- 181 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bS1cRKtWT3Xusdgt' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserDeletionStatusV3' test.out

#- 182 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '36vSuQSr0CIohgd9' \
    --body '{"deletionDate": 84, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 182 'AdminUpdateUserDeletionStatusV3' test.out

#- 183 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'uB4tlLwKRa69Jfmc' \
    > test.out 2>&1
eval_tap $? 183 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 184 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VYawn5syvFa3XyFh' \
    --body '{"code": "LAvFw2MvAOumcxsD", "country": "3loj776H1nRKbw8t", "dateOfBirth": "Jss0jFlKWo9YSPDu", "displayName": "o2F6IPvKLfdDM3eG", "emailAddress": "zecq3pMJOk9p6gnC", "password": "Toc785AP4xRNVntv", "uniqueDisplayName": "QTWqnW7KAo9Q8VId", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 184 'AdminUpgradeHeadlessAccountV3' test.out

#- 185 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'J3AoEnBvIls7D0xN' \
    > test.out 2>&1
eval_tap $? 185 'AdminDeleteUserInformationV3' test.out

#- 186 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId '68irWs3TDryOO5K2' \
    --after '0.4336490600557059' \
    --before '0.6128281201382202' \
    --limit '87' \
    > test.out 2>&1
eval_tap $? 186 'AdminGetUserLoginHistoriesV3' test.out

#- 187 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'CPiaT91O9JGJ4Xoq' \
    --body '{"languageTag": "jTYBTOsPEVssJVY4", "mfaToken": "KHvnJqP6BWlZgowB", "newPassword": "fBlqCGh4GVxO4VKF", "oldPassword": "3yE7dkYwpOUCrwwr"}' \
    > test.out 2>&1
eval_tap $? 187 'AdminResetPasswordV3' test.out

#- 188 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'v3sjwIuRfhq3qlS5' \
    --body '{"Permissions": [{"Action": 7, "Resource": "OXSvfiM31ulr0KWH", "SchedAction": 88, "SchedCron": "wAkXfGmz0QZhiX7C", "SchedRange": ["1KWqclvnLJJrQict", "FSjgUk18MI1N59fw", "sFeEyajoB8WHaEfk"]}, {"Action": 81, "Resource": "dHOJ8kC33m3wolqE", "SchedAction": 16, "SchedCron": "NVOBiTo0e1aep0M0", "SchedRange": ["co4ndU0TLcxWFA5C", "tLehoSLX9oXpJYM0", "QB2xYJmvuKKVJeRz"]}, {"Action": 87, "Resource": "sdLVLfCPTn1Q602N", "SchedAction": 79, "SchedCron": "D1emEWq2bDotRVM1", "SchedRange": ["JHgTDOwTjn6bCR3b", "lKQZhS20Ljl3Ye0E", "gkoV9AeL8WHY9ezD"]}]}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserPermissionV3' test.out

#- 189 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'B6727GHFhmK62too' \
    --body '{"Permissions": [{"Action": 63, "Resource": "93vEY5c9tHTKhh5G", "SchedAction": 98, "SchedCron": "2g2Wyp4vnqTZSjnp", "SchedRange": ["lLxYYLEGGdwPXQSw", "5KDS1FMnm7KAm4ik", "ZnT1MuPWQWObSbfq"]}, {"Action": 65, "Resource": "BZ6fOU1z5OmnQpa7", "SchedAction": 21, "SchedCron": "WaYxqKDYe6JyLunw", "SchedRange": ["nnTdzCLoH1y3LbWB", "VIFdZOUoSktZi7vf", "KMZQX3yRtsKaxGIE"]}, {"Action": 9, "Resource": "4no5IhoqGMetPBsw", "SchedAction": 77, "SchedCron": "b69oGlxZOXpJaKht", "SchedRange": ["XX4KLLwAFDn1URjC", "U8UIb26HLot4ir7P", "ZEi9NteHWXI068RW"]}]}' \
    > test.out 2>&1
eval_tap $? 189 'AdminAddUserPermissionsV3' test.out

#- 190 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DTAL0G9sqhETPoj7' \
    --body '[{"Action": 51, "Resource": "udomPFTg8J7b3rFr"}, {"Action": 100, "Resource": "4d6WnhHZErh69LTx"}, {"Action": 51, "Resource": "4So1d5u0YSd4DX2F"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminDeleteUserPermissionBulkV3' test.out

#- 191 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '6' \
    --namespace $AB_NAMESPACE \
    --resource 'FLrsic3cnvHgxb5P' \
    --userId 'rKLLIpaKz3Nlbs4m' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserPermissionV3' test.out

#- 192 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'sQREe8SCEHHnNaRU' \
    --after '3risXavxc4k6Joza' \
    --before 'Gj7iy8p2qWUKwUJX' \
    --limit '64' \
    --platformId 'dyBBKmoC9UEdMamB' \
    --targetNamespace 'jn8BPdPErAzQzbvc' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserPlatformAccountsV3' test.out

#- 193 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qiV8xRFAYRUmCdu5' \
    --status 'x8Avc0Jv5rEJOnfR' \
    > test.out 2>&1
eval_tap $? 193 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 194 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'GShaLNHYe1GVIMBg' \
    > test.out 2>&1
eval_tap $? 194 'AdminGetListJusticePlatformAccounts' test.out

#- 195 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'dufSOqzmW9GXR8Hm' \
    --userId 'k62grF2Qw9F71MFz' \
    > test.out 2>&1
eval_tap $? 195 'AdminGetUserMapping' test.out

#- 196 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace '1MGQHismLUW7YPSn' \
    --userId 'KDwlPFYfjvshfD9t' \
    > test.out 2>&1
eval_tap $? 196 'AdminCreateJusticeUser' test.out

#- 197 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'plIdtHdKSTz3uycY' \
    --skipConflict 'true' \
    --body '{"platformId": "6KZtZIPFbYIhwNOZ", "platformUserId": "mFM83x2k080QUXl9"}' \
    > test.out 2>&1
eval_tap $? 197 'AdminLinkPlatformAccount' test.out

#- 198 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'E67nLsoMxeBm30Ir' \
    --platformId 'azLZ9SjVLwc6hCcZ' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserLinkHistoriesV3' test.out

#- 199 AdminPlatformUnlinkV3
eval_tap 0 199 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 200 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'L9ls8vKvjaa1qZs1' \
    --userId 'lhTpBXZzlxjtuUml' \
    > test.out 2>&1
eval_tap $? 200 'AdminPlatformUnlinkAllV3' test.out

#- 201 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '2dxAVXisqf5uAoGU' \
    --userId 'xeZI1lweRm5Pg0OF' \
    --ticket 't8WY0XOwKGyvYRAL' \
    > test.out 2>&1
eval_tap $? 201 'AdminPlatformLinkV3' test.out

#- 202 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 202 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 203 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FyLD4JKD3xBbKMSY' \
    --userId 'G6G0WFUEtSaclcg4' \
    > test.out 2>&1
eval_tap $? 203 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 204 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'tvGkHAuOTSfXK6DY' \
    --userId 'i3TKFSSasOWqUcN3' \
    --platformToken 'lFyZhV5K6DvoorhX' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 205 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'vsp9IgW2XlRi7kmp' \
    --userId '3zwPwyCtSy5eA4Ek' \
    --crossNamespace 'false' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetUserSinglePlatformAccount' test.out

#- 206 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'hYyngkioqIEeo7T0' \
    --body '["kIUU7KU6upzo3rvJ", "m4QKHSVlExDjmJ3b", "W30ORBMlEhbpaQza"]' \
    > test.out 2>&1
eval_tap $? 206 'AdminDeleteUserRolesV3' test.out

#- 207 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kMNOk6IH6DR3pQxS' \
    --body '[{"namespace": "Iu4D8Y0glQ0Ka4hO", "roleId": "1XW4OhSN2VuFI125"}, {"namespace": "DLgR0xKHYtR7KP4F", "roleId": "3BkT5Ejo1pRScPJb"}, {"namespace": "GAmevBTEw3U3tnRd", "roleId": "UejVHx5hNt6NsAfO"}]' \
    > test.out 2>&1
eval_tap $? 207 'AdminSaveUserRoleV3' test.out

#- 208 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'wJAN3qb7EjGWCvIW' \
    --userId 'xFWkR5gLTdvy9PA0' \
    > test.out 2>&1
eval_tap $? 208 'AdminAddUserRoleV3' test.out

#- 209 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'ISjcarEiuhcuBbDE' \
    --userId 'TjBJyoHyL9s8tgUI' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserRoleV3' test.out

#- 210 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '5A10QL2KzNZVyL30' \
    --body '{"enabled": true, "reason": "9WonfGAOh3ykMfQX"}' \
    > test.out 2>&1
eval_tap $? 210 'AdminUpdateUserStatusV3' test.out

#- 211 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId '0VCl5yf652RN08Jt' \
    --body '{"emailAddress": "imSZgZhXUhUaNQVo", "password": "H5BjYzZyvqFyBLee"}' \
    > test.out 2>&1
eval_tap $? 211 'AdminTrustlyUpdateUserIdentity' test.out

#- 212 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'FfrL5SDZMxmavikd' \
    > test.out 2>&1
eval_tap $? 212 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 213 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId '6s73hpThOlULdwcc' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "94vbA8ljs3NcvGPl"}' \
    > test.out 2>&1
eval_tap $? 213 'AdminUpdateClientSecretV3' test.out

#- 214 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'DHt1O3gp7dpeYSrD' \
    > test.out 2>&1
eval_tap $? 214 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 215 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'x6GdtionyQT7UnOF' \
    --before 'WIcbu6AZ2QZF0QWt' \
    --isWildcard 'false' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 215 'AdminGetRolesV3' test.out

#- 216 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "UO6YgXnekZkYyow4", "namespace": "z6CtNXqd2ONRnl1x", "userId": "lbRDDOn5ZPHhxhbV"}, {"displayName": "mZvdGHIB0xvUEl75", "namespace": "09Ib2iT7eWzOwVwq", "userId": "WJHEoE3ujz5k6SRc"}, {"displayName": "OEBjjFYNYA0tVjSM", "namespace": "eIULssOaFFKajv7I", "userId": "MBLNphUhCHKsgeEy"}], "members": [{"displayName": "jJ0x8OUnCrCuFgx7", "namespace": "iTPafhNJEvAEjTRu", "userId": "uXavNT2DTT5TqTvG"}, {"displayName": "Y6B3jbQdLcsWxxQG", "namespace": "V8TI4SuirqEHrTLI", "userId": "ybrk0hJi0RZr9Aee"}, {"displayName": "XAlR9xG7XAJMDhkd", "namespace": "TkY8Q8XIJlAMJmlq", "userId": "PPrXc7FSLZG3mZ6p"}], "permissions": [{"action": 7, "resource": "3btZp1pqOt8n50pq", "schedAction": 50, "schedCron": "IzEkQhiWstJJhQ0b", "schedRange": ["1b8tAPGxkzX7gaFX", "fsNfgq2Ne1KwTzfj", "OjZqPK92zk8lmWGs"]}, {"action": 76, "resource": "3EfIb46w1lJc2QAm", "schedAction": 95, "schedCron": "gN244dPcPFkoBkxY", "schedRange": ["wgLugP4QXGTjzIZ0", "Pfo1YnySySYDYv6D", "eNnRLaWTZyytnw6B"]}, {"action": 24, "resource": "uV06He69pezJXYZt", "schedAction": 43, "schedCron": "WfMyCjDoUbEZ2raH", "schedRange": ["LNrvRAwMsdJTvDGh", "sGruVdO2Vags7pWd", "sFXFFTBEdPNFyqtN"]}], "roleName": "Nat0XVBQRcUy9B5t"}' \
    > test.out 2>&1
eval_tap $? 216 'AdminCreateRoleV3' test.out

#- 217 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'gjwbcUlYP6TwO5Pi' \
    > test.out 2>&1
eval_tap $? 217 'AdminGetRoleV3' test.out

#- 218 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'W6QWOybjqA6lnum4' \
    > test.out 2>&1
eval_tap $? 218 'AdminDeleteRoleV3' test.out

#- 219 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'SvPuVI1FY4n4h2xH' \
    --body '{"deletable": true, "isWildcard": true, "roleName": "xKz4IYg4UIcJkGnL"}' \
    > test.out 2>&1
eval_tap $? 219 'AdminUpdateRoleV3' test.out

#- 220 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'iu0pMFnFncmAO1nX' \
    > test.out 2>&1
eval_tap $? 220 'AdminGetRoleAdminStatusV3' test.out

#- 221 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId '840VJFNxhQksSufw' \
    > test.out 2>&1
eval_tap $? 221 'AdminUpdateAdminRoleStatusV3' test.out

#- 222 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'y1Vrw6IOtvrM2yge' \
    > test.out 2>&1
eval_tap $? 222 'AdminRemoveRoleAdminV3' test.out

#- 223 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'IF0SxxeYHpnvEHFv' \
    --after '2K0kONVUN5MT82Vc' \
    --before 'wRjrgYi5J6bFg6KA' \
    --limit '5' \
    > test.out 2>&1
eval_tap $? 223 'AdminGetRoleManagersV3' test.out

#- 224 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'xtcJdac2apCg7vuR' \
    --body '{"managers": [{"displayName": "rhYSzNlgtcDD1phg", "namespace": "LrdqTtauPm7Zj7e6", "userId": "Wc3iNbndCHT0QmDJ"}, {"displayName": "nsL1cE5ihxwcwEKC", "namespace": "1gXctEv9uUSZNm3y", "userId": "BgbfKSErDE8k7RZT"}, {"displayName": "jAj54Fmi59QT5idH", "namespace": "TEtJGXd4STyXqqu0", "userId": "gSC6F15UJknn1NxG"}]}' \
    > test.out 2>&1
eval_tap $? 224 'AdminAddRoleManagersV3' test.out

#- 225 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'Cdqxw1mvOyL6Z6OE' \
    --body '{"managers": [{"displayName": "zxbHPlMVE9bwdXQM", "namespace": "33aVbXFS4QTNsnA4", "userId": "LkeGU315ooEMESDj"}, {"displayName": "NTf5AGlWOJy113Ji", "namespace": "oFktUeciou8rNCNV", "userId": "5iNaA7ohQvPXGs14"}, {"displayName": "eopcE8RxeDjooC0A", "namespace": "VJgen3M7UhVWhp6j", "userId": "doRN9tgsFh79TriS"}]}' \
    > test.out 2>&1
eval_tap $? 225 'AdminRemoveRoleManagersV3' test.out

#- 226 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'bcKrirPjw7tyTFNq' \
    --after 'oV1tS3ZtXYmXym1T' \
    --before 'abHgZS7wXtOO0W62' \
    --limit '63' \
    > test.out 2>&1
eval_tap $? 226 'AdminGetRoleMembersV3' test.out

#- 227 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'JftEdyC29q4x70GX' \
    --body '{"members": [{"displayName": "O5OiQJTPWwO29bnz", "namespace": "RFW3fTjPYskzpsML", "userId": "MluDXy9SDMi6juls"}, {"displayName": "XifBlqpXduHgVc6v", "namespace": "I9M1YgiccnC5Eqsv", "userId": "Fz8ueFqRIjVvW70u"}, {"displayName": "U90qPCsOzyGFSQoI", "namespace": "Rmw8ZfbDiCAtQxls", "userId": "Phf6LhSVKY3RzWlf"}]}' \
    > test.out 2>&1
eval_tap $? 227 'AdminAddRoleMembersV3' test.out

#- 228 AdminRemoveRoleMembersV3
eval_tap 0 228 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 229 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId 'dCi8wQhtA5Q3USoJ' \
    --body '{"permissions": [{"action": 73, "resource": "BTac0s8zLsmbsHe2", "schedAction": 13, "schedCron": "8gctYXrlaxQE9pNP", "schedRange": ["Gowio0OLJacJIWux", "2qna2Qfz8cTE7qMN", "Vcp63hCSmha17k7l"]}, {"action": 91, "resource": "387WXp7r2fWKOzWg", "schedAction": 95, "schedCron": "LPlAqYROLUcmw54v", "schedRange": ["iakMCLzppYXHGwnj", "WdHDw7X7MFI08EgS", "mGdWQDGVdGYULeRd"]}, {"action": 38, "resource": "N0sujCoQAFwmSK1j", "schedAction": 59, "schedCron": "ETGQ2MDEBYPJP97S", "schedRange": ["FqbnbeQWPS96PPAN", "x4o2oftaqfOZghAd", "auQ8eMWhZ7fhsXWX"]}]}' \
    > test.out 2>&1
eval_tap $? 229 'AdminUpdateRolePermissionsV3' test.out

#- 230 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'ttCvBSSCoO9nII0u' \
    --body '{"permissions": [{"action": 48, "resource": "ehfgojNMQNgUkgF0", "schedAction": 37, "schedCron": "vQOXQL9dWLbXwFFJ", "schedRange": ["c9UIPgfbcK1udseN", "jSZSmdRphCEnKTS2", "ryC3NZZMOAHKCOuM"]}, {"action": 37, "resource": "UXs3tCfoyEk6YlPR", "schedAction": 40, "schedCron": "LMNDELmeFXwRIuwL", "schedRange": ["I779btVQE33iuBX0", "pxOB4HpxyDEnAuBF", "zQtlOmhVAlDwHLfu"]}, {"action": 54, "resource": "wQyBalYJMARZc3np", "schedAction": 99, "schedCron": "fc1eTuk4UzLbnNql", "schedRange": ["RiwlC9xgw92kQ4PP", "c5XJzzHqDSfMLUYo", "YoxVuqeUvOpgzfFc"]}]}' \
    > test.out 2>&1
eval_tap $? 230 'AdminAddRolePermissionsV3' test.out

#- 231 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'XKhzgmWt5T2d5tp1' \
    --body '["y9PLQnQ1GroRG4tv", "X37L6hNQRZ8qFjVy", "6ZhvPPtxwKd0V37g"]' \
    > test.out 2>&1
eval_tap $? 231 'AdminDeleteRolePermissionsV3' test.out

#- 232 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '45' \
    --resource '7oc3k28HscnCUQjD' \
    --roleId 'B7z69HEYShKqk5pI' \
    > test.out 2>&1
eval_tap $? 232 'AdminDeleteRolePermissionV3' test.out

#- 233 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 233 'AdminGetMyUserV3' test.out

#- 234 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId '6tRCijetGkI6Olkq' \
    --extendExp 'true' \
    --redirectUri 'CRQvuv2qHubA1KxS' \
    --password '8BlMgN96WSJ7fJxr' \
    --requestId '5LfdTlMIPneTiZVK' \
    --userName 'uGjxbcFaqkS0F2hb' \
    > test.out 2>&1
eval_tap $? 234 'UserAuthenticationV3' test.out

#- 235 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId '0JEfWIPJ2FMKdpBI' \
    --linkingToken 'V4G7fxvKJpxch3Qh' \
    --password 'iyPHlcRhKetlrjyf' \
    --username 'Ov2ySEm12DM6qPFG' \
    > test.out 2>&1
eval_tap $? 235 'AuthenticationWithPlatformLinkV3' test.out

#- 236 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'pFd6SQHsEQGnyS5h' \
    --extendExp 'false' \
    --linkingToken 'ELrZFz9RQMhR3t13' \
    > test.out 2>&1
eval_tap $? 236 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 237 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'mploXZKm7uKXCd3d' \
    > test.out 2>&1
eval_tap $? 237 'RequestOneTimeLinkingCodeV3' test.out

#- 238 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode '3w965ai4K0CtZ0VK' \
    > test.out 2>&1
eval_tap $? 238 'ValidateOneTimeLinkingCodeV3' test.out

#- 239 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'LItlwAyzWEKqmQ6s' \
    --isTransient 'false' \
    --clientId '7N2Tk3qH6X9L4F1m' \
    --oneTimeLinkCode 'vb3OxuBJdN33205p' \
    > test.out 2>&1
eval_tap $? 239 'RequestTokenByOneTimeLinkCodeResponseV3' test.out

#- 240 GetCountryLocationV3
samples/cli/sample-apps Iam getCountryLocationV3 \
    > test.out 2>&1
eval_tap $? 240 'GetCountryLocationV3' test.out

#- 241 Logout
samples/cli/sample-apps Iam logout \
    > test.out 2>&1
eval_tap $? 241 'Logout' test.out

#- 242 RequestTokenExchangeCodeV3
samples/cli/sample-apps Iam requestTokenExchangeCodeV3 \
    --namespace $AB_NAMESPACE \
    --codeChallenge 'CojbBfsr0L02siY8' \
    --codeChallengeMethod 'plain' \
    --clientId 'ZnYyjHUxrt3uCC91' \
    > test.out 2>&1
eval_tap $? 242 'RequestTokenExchangeCodeV3' test.out

#- 243 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NaXtn4mtBntMuFg0' \
    --userId 'AEZAy6w1OWWlEpMO' \
    --platformUserId 'ZGfuzXwGIgkhoqSv' \
    > test.out 2>&1
eval_tap $? 243 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 244 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eaVRoCJdIdvo1Mcb' \
    --includeGameNamespace 'true' \
    > test.out 2>&1
eval_tap $? 244 'RevokeUserV3' test.out

#- 245 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'SNo0MPI1qJLMtNeq' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'false' \
    --oneTimeLinkCode 'FRxDoKu0c0xdd0K7' \
    --redirectUri 'vugdVeL4yto917BQ' \
    --scope 'BpL71P5G3nSR4xpL' \
    --state 'tX0vWujZlN6LU55x' \
    --targetAuthPage '2EIkutvrfQu4XDgN' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'aBoxi10iwwBUv2av' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 245 'AuthorizeV3' test.out

#- 246 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'fMqDCEijMvMPBsUQ' \
    > test.out 2>&1
eval_tap $? 246 'TokenIntrospectionV3' test.out

#- 247 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 247 'GetJWKSV3' test.out

#- 248 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'tevdLQFva238OvAV' \
    --factor 'emKdomgEMlnRDg4u' \
    --mfaToken 'kZpk4vpuUTgVOCL9' \
    > test.out 2>&1
eval_tap $? 248 'SendMFAAuthenticationCode' test.out

#- 249 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'VBqgtbbFDjkHBTjz' \
    --mfaToken 'X9owxsCarSTE4iMo' \
    > test.out 2>&1
eval_tap $? 249 'Change2faMethod' test.out

#- 250 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '7anfg1aF9anWA8iw' \
    --factor 'bMaC66AkXM3hG26n' \
    --mfaToken '5mQhrrEwg3uhvZvK' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 250 'Verify2faCode' test.out

#- 251 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9mDBCQ8xADyaVJrc' \
    --userId 'jtCZxwnMD287Las5' \
    > test.out 2>&1
eval_tap $? 251 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 252 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'FMUseK07gSxWgWew' \
    --clientId '7Appb5jI8qcKLrJL' \
    --redirectUri '1YYLgpoOQWszgrpE' \
    --requestId 'kKH5pRlDd46VJxZD' \
    > test.out 2>&1
eval_tap $? 252 'AuthCodeRequestV3' test.out

#- 253 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'y22ghcDiTlqCju1S' \
    --additionalData 'Mvia8YWiH9lFuX9u' \
    --clientId 'p8p49kDRifLl9QzM' \
    --createHeadless 'false' \
    --deviceId 'IVavzF2Rjb6Oi5j2' \
    --macAddress 'iSDduOvEv1gzbMBR' \
    --platformToken 'IgfhjiECP8vICVbZ' \
    --serviceLabel '0.8685139343056061' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 253 'PlatformTokenGrantV3' test.out

#- 254 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 254 'GetRevocationListV3' test.out

#- 255 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'nUjHPGOr7gpUyOX3' \
    > test.out 2>&1
eval_tap $? 255 'TokenRevocationV3' test.out

#- 256 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'SMTDwUmlkSnfn3b1' \
    --simultaneousTicket 'p5Hdkejlk3TntHta' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'uKTJcOlRvzoKjsk1' \
    > test.out 2>&1
eval_tap $? 256 'SimultaneousLoginV3' test.out

#- 257 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData '331FBmWBYz7RYN1V' \
    --clientId 'rsXc3U3ojQs6G4Kk' \
    --clientSecret 'MgnZZhnoaYkkbpk1' \
    --code 'fPTECt3sAKQU8riT' \
    --codeVerifier 'CjG2BQN7dSRrl02A' \
    --extendNamespace 'yfTGfkiPjazW8Ewf' \
    --extendExp 'true' \
    --password 'WCAlDTCatt3bfjJD' \
    --redirectUri '00ZU6jxs9hBoUcMk' \
    --refreshToken 'EbwkacrafoxuJBls' \
    --username 'BskqCZ8OKk0MRZE8' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 257 'TokenGrantV3' test.out

#- 258 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'P2ge6b82cif66mva' \
    > test.out 2>&1
eval_tap $? 258 'VerifyTokenV3' test.out

#- 259 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'ESw0YWeyFpVknepC' \
    --code 'JFjYrS3LxVbm0x9c' \
    --error '5FjcdbIZkcBkQYdQ' \
    --openidAssocHandle 'FNBUoKi5QeaNCioU' \
    --openidClaimedId '7motYAfwI7vVOSSe' \
    --openidIdentity 'JoJSwEcNjGAiAkKg' \
    --openidMode 'IF5t5c0bMHiGdHmt' \
    --openidNs 'cCpWqFv8jMEQkgLH' \
    --openidOpEndpoint '2jwzQAgYovNQfnPP' \
    --openidResponseNonce 'yIk3wRpXAqg6Sm5L' \
    --openidReturnTo '9UI6CWxgcSrfuadJ' \
    --openidSig 'jrRq8kVJu7XF6Tks' \
    --openidSigned 'UAIPg8VKCbksjMWr' \
    --state 'nxtgYCnIMCo3sU3j' \
    > test.out 2>&1
eval_tap $? 259 'PlatformAuthenticationV3' test.out

#- 260 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'W9QUZDwR9hCjrINg' \
    --platformToken 'ItWwz6SqBUSfyoLW' \
    > test.out 2>&1
eval_tap $? 260 'PlatformTokenRefreshV3' test.out

#- 261 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'EMNT0uPNuFmnVhrP' \
    > test.out 2>&1
eval_tap $? 261 'PublicGetInputValidations' test.out

#- 262 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'kYejTnrT2zdRA6K1' \
    > test.out 2>&1
eval_tap $? 262 'PublicGetInputValidationByField' test.out

#- 263 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'hxJYwP5gQ872eeq7' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 263 'PublicGetCountryAgeRestrictionV3' test.out

#- 264 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'WrwFPwmWVUyMMCCT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 264 'PublicGetConfigValueV3' test.out

#- 265 PublicGetCountryListV3
samples/cli/sample-apps Iam publicGetCountryListV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 265 'PublicGetCountryListV3' test.out

#- 266 RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3
samples/cli/sample-apps Iam retrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 266 'RetrieveAllActiveThirdPartyLoginPlatformCredentialPublicV3' test.out

#- 267 RetrieveActiveOIDCClientsPublicV3
samples/cli/sample-apps Iam retrieveActiveOIDCClientsPublicV3 \
    --namespace $AB_NAMESPACE \
    --clientId 'zYcbhWZZcccrkSVs' \
    > test.out 2>&1
eval_tap $? 267 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 268 PublicListUserIDByPlatformUserIDsV3
eval_tap 0 268 'PublicListUserIDByPlatformUserIDsV3 # SKIP deprecated' test.out

#- 269 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ruJ8ucTMdQgReX7E' \
    --platformUserId 'bCWhpXSdQJulUiUm' \
    > test.out 2>&1
eval_tap $? 269 'PublicGetUserByPlatformUserIDV3' test.out

#- 270 PublicGetProfileUpdateStrategyV3
samples/cli/sample-apps Iam publicGetProfileUpdateStrategyV3 \
    --namespace $AB_NAMESPACE \
    --field 'username' \
    > test.out 2>&1
eval_tap $? 270 'PublicGetProfileUpdateStrategyV3' test.out

#- 271 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId 'D7ScwDjR8AFMyojX' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetAsyncStatus' test.out

#- 272 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'wmHw1fC8q1AxmXK1' \
    --limit '36' \
    --offset '12' \
    --platformBy 'LH7iUIAfH03QatiL' \
    --platformId 'bYCoe8Psgx6N2Dve' \
    --query 'V2fNa3h7YwEHNi2Z' \
    > test.out 2>&1
eval_tap $? 272 'PublicSearchUserV3' test.out

#- 273 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "dty4NO8ntZJ1dIwg", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "Uw8R1XPrDnTeS5up", "policyId": "BY5qFSS8KzfM1ji6", "policyVersionId": "vDvbgCkGFQYYrmdz"}, {"isAccepted": true, "localizedPolicyVersionId": "LjubsZAHX2i4gNDd", "policyId": "cfl9QQR5CWR1A9Mb", "policyVersionId": "Dv4d8MAqf4dejKfd"}, {"isAccepted": false, "localizedPolicyVersionId": "7vPgtVCV6rVjg3zP", "policyId": "AT9I95xKGUoL9rR1", "policyVersionId": "amKotrD9fXBFp6U7"}], "authType": "m49t9MA76jukxlqZ", "code": "cyz5WzzzdhYMJo1g", "country": "C096n7C4rOu3sCWl", "dateOfBirth": "XdMuJLb8XWASaoNA", "displayName": "4qSgJKokJ2GcVd20", "emailAddress": "brpZsNYY4lkSfrpM", "password": "ajzi5DxlbEKzPd0z", "reachMinimumAge": false, "uniqueDisplayName": "Au2hpIzFstl1R6Tl"}' \
    > test.out 2>&1
eval_tap $? 273 'PublicCreateUserV3' test.out

#- 274 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'E3P31yD8jEjZMrjb' \
    --query 'DpzRvnhDCBS2rYet' \
    > test.out 2>&1
eval_tap $? 274 'CheckUserAvailability' test.out

#- 275 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["bgjnHTVZKS9hpT9q", "wIpE33p0xRuksT6F", "trqd0AZfW7l7jq2b"]}' \
    > test.out 2>&1
eval_tap $? 275 'PublicBulkGetUsers' test.out

#- 276 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "TTWEfMKf3AroEcBY", "languageTag": "oYt9fZOOXlcDykMG"}' \
    > test.out 2>&1
eval_tap $? 276 'PublicSendRegistrationCode' test.out

#- 277 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iTm6CPVgzHylyZEf", "emailAddress": "bluxPrsRaSJhJuae"}' \
    > test.out 2>&1
eval_tap $? 277 'PublicVerifyRegistrationCode' test.out

#- 278 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "4qaBp7h8627aoRJH", "languageTag": "jXcW1V6TjVRX0H16"}' \
    > test.out 2>&1
eval_tap $? 278 'PublicForgotPasswordV3' test.out

#- 279 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "TNt8uiJ7yfepsOx4", "password": "XouPFSSR1z0yMIjK", "uniqueDisplayName": "stCat5dkefIT4stT", "username": "SgINuQ69uB9GNcut"}' \
    > test.out 2>&1
eval_tap $? 279 'PublicValidateUserInput' test.out

#- 280 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'Xj1ogYIJsE4V0KUf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 280 'GetAdminInvitationV3' test.out

#- 281 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'AEN5oXIlGqw5u2vE' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "9HHgmOzbcSx9qyIu", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "es4UlvtkxpX1W940", "policyId": "hcPIYKw3nMs93c0K", "policyVersionId": "5Htpmlza15yJXViX"}, {"isAccepted": false, "localizedPolicyVersionId": "Sput3DQgkt3ALMAk", "policyId": "2gFAuQ2JnGkqEznf", "policyVersionId": "eP7oPwynpv5P79TK"}, {"isAccepted": true, "localizedPolicyVersionId": "gvh0RIylRIX3Gfcc", "policyId": "BeVD5pKufwwdzHmI", "policyVersionId": "oK8awymX4pcKen4Y"}], "authType": "DPO3DdqTIh2rMyWQ", "code": "yyga4QjI9sJUpmQx", "country": "P9KL84fIJLGOGQY5", "dateOfBirth": "fKYYEJSfkPTxL3Ch", "displayName": "msJIi2aacWllKn4a", "emailAddress": "0mwKD6A5dCc4NzDC", "password": "ZpymNm278Rh7ydd8", "reachMinimumAge": true, "uniqueDisplayName": "bHd87XerM7DDCfnb"}' \
    > test.out 2>&1
eval_tap $? 281 'CreateUserFromInvitationV3' test.out

#- 282 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "gvSupB46yGUiZZB7", "country": "vidf7FL1N8kzpFEg", "dateOfBirth": "vWSs2gsGNCmVpG2f", "displayName": "UvlmO3NbUp1MC5M9", "languageTag": "hLpOIaHt8UmJRjeR", "uniqueDisplayName": "O5ZcwZOLY4dVtNwd", "userName": "gEelv2JKEnOIZbn1"}' \
    > test.out 2>&1
eval_tap $? 282 'UpdateUserV3' test.out

#- 283 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "nszc0DDtjPEt6siT", "country": "Tt1ozYWOqktd9AgG", "dateOfBirth": "1Nl3XzMEKdiXhev8", "displayName": "GnK3ajbXvshtsX5A", "languageTag": "LR8pADdFAPPf5ujt", "uniqueDisplayName": "4dIG3tYn8VVduTix", "userName": "qqfbjI9wbqOVN3AO"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicPartialUpdateUserV3' test.out

#- 284 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "P3uUx940bOG5JgST", "emailAddress": "FXOQGJPmCCmx0aDe", "languageTag": "1LOszf20ZS67pC8v"}' \
    > test.out 2>&1
eval_tap $? 284 'PublicSendVerificationCodeV3' test.out

#- 285 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "3r0TSWMW2P5cmYsN", "contactType": "KtB7pKSaIIXSzFvJ", "languageTag": "Y7vbtUlqGDyB50XS", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 285 'PublicUserVerificationV3' test.out

#- 286 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "qICFl98WW139X27x", "country": "QnbR2O3ONniX4hqe", "dateOfBirth": "YEBoYUIu1LkXPLgg", "displayName": "rXR3bdhVL3DRav4y", "emailAddress": "JlvFLHnqlY84AKpK", "password": "cNwkQIqiTuiIPR6A", "uniqueDisplayName": "Ni5OO36T1HTh9CNi", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 286 'PublicUpgradeHeadlessAccountV3' test.out

#- 287 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'true' \
    --body '{"emailAddress": "ifdGz7HGPHqEgJDl", "password": "myiBCgusNtzfAkme"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyHeadlessAccountV3' test.out

#- 288 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "BGk7GYXr81kd5zxS", "mfaToken": "YF11Q3kLpX4E1GjG", "newPassword": "DlG2oqEOXS1ZUQV0", "oldPassword": "unPXF3tVJHecui6Z"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicUpdatePasswordV3' test.out

#- 289 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'bra3prj7h6h1Hg08' \
    > test.out 2>&1
eval_tap $? 289 'PublicCreateJusticeUser' test.out

#- 290 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kik0ZvX44H46aglk' \
    --redirectUri '3xVFunjRddpeNSG5' \
    --ticket 'POFdueRpGwSrgIkx' \
    > test.out 2>&1
eval_tap $? 290 'PublicPlatformLinkV3' test.out

#- 291 PublicPlatformUnlinkV3
eval_tap 0 291 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 292 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8ypmPVgKXuJIGk9s' \
    > test.out 2>&1
eval_tap $? 292 'PublicPlatformUnlinkAllV3' test.out

#- 293 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Vfx6YjJe7eHmRXb2' \
    --ticket 'SBieeva5KURW2GYE' \
    > test.out 2>&1
eval_tap $? 293 'PublicForcePlatformLinkV3' test.out

#- 294 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'vo8Nc7XzZX3w9NAa' \
    --clientId 'aL9AY49IEU4H3xmp' \
    --redirectUri 'h4c1R5iNtN7ibHhz' \
    > test.out 2>&1
eval_tap $? 294 'PublicWebLinkPlatform' test.out

#- 295 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId '40O2AF68eHIhsQSy' \
    --code '2MthnFHDXTZatsmi' \
    --state 'kMdrpJf4Zr9hS33B' \
    > test.out 2>&1
eval_tap $? 295 'PublicWebLinkPlatformEstablish' test.out

#- 296 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'sfnszkxCpBxJgwhV' \
    --code 'VkptyKS4YPxzNM9P' \
    --state 'jwO2ud1KQFEm6Os3' \
    > test.out 2>&1
eval_tap $? 296 'PublicProcessWebLinkPlatformV3' test.out

#- 297 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "Ypp4ufvtzHDIsPmV", "userIds": ["Fu1VMuASCgmJ7jOE", "RCTDCPgjf7OKItNZ", "2QumQwIicaiUl0rm"]}' \
    > test.out 2>&1
eval_tap $? 297 'PublicGetUsersPlatformInfosV3' test.out

#- 298 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "VO7ZvelCzzuFc19D", "code": "E8FBrYsYOxgllUzT", "emailAddress": "Q48i0BoweK5F1YZd", "languageTag": "toeFsaeNq2KZUXMG", "newPassword": "eFStW0cNBSXlMrN6"}' \
    > test.out 2>&1
eval_tap $? 298 'ResetPasswordV3' test.out

#- 299 PublicGetUserByUserIdV3
eval_tap 0 299 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 300 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId '04LjBwKrlacMUGCD' \
    --activeOnly 'true' \
    --after 'VkHV0GiZUhuSOl0R' \
    --before 'UdVhtHMRzg0gAZU7' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 300 'PublicGetUserBanHistoryV3' test.out

#- 301 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bX5Io6KW91xxyDxc' \
    > test.out 2>&1
eval_tap $? 301 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 302 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'XMP84L8RutVgo0HB' \
    > test.out 2>&1
eval_tap $? 302 'PublicGetUserInformationV3' test.out

#- 303 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PukkvgxBQ29K8JDn' \
    --after '0.8862444214550546' \
    --before '0.7068355950700868' \
    --limit '52' \
    > test.out 2>&1
eval_tap $? 303 'PublicGetUserLoginHistoriesV3' test.out

#- 304 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lQc5OtifW0u7tuL9' \
    --after 'fJO9uMVWRck8LFlA' \
    --before 'fH46tBNTpa6wYMXr' \
    --limit '63' \
    --platformId '3xbpuOUSnXHd74hN' \
    > test.out 2>&1
eval_tap $? 304 'PublicGetUserPlatformAccountsV3' test.out

#- 305 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'wEygaF4NTdQRJGz9' \
    > test.out 2>&1
eval_tap $? 305 'PublicListJusticePlatformAccountsV3' test.out

#- 306 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'O7o6VkvFckp1RC6Y' \
    --body '{"platformId": "CAd15Stq2Ej6at1d", "platformUserId": "nh8jVLKEPpi3niTq"}' \
    > test.out 2>&1
eval_tap $? 306 'PublicLinkPlatformAccount' test.out

#- 307 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'G0ZrBWAH3aE9IthM' \
    --body '{"chosenNamespaces": ["OBjlMcBxoVaG8UUs", "8kibafc4iTLOqCsj", "Q2HBcua5UjbKXi8N"], "requestId": "l6lOon2LbGyIgcwb"}' \
    > test.out 2>&1
eval_tap $? 307 'PublicForceLinkPlatformWithProgression' test.out

#- 308 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '7OdORtZ7jQMK8N3Q' \
    > test.out 2>&1
eval_tap $? 308 'PublicGetPublisherUserV3' test.out

#- 309 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId '0zvm4Ruve3EaG42o' \
    --password 'jiFai5jsNonnGmBW' \
    > test.out 2>&1
eval_tap $? 309 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 310 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'GNhCDh19OSa29ztb' \
    --before 'TfaxY4MJSgen9MHG' \
    --isWildcard 'true' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetRolesV3' test.out

#- 311 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'J4AMf8OiOeZDEVr9' \
    > test.out 2>&1
eval_tap $? 311 'PublicGetRoleV3' test.out

#- 312 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetMyUserV3' test.out

#- 313 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'BTE4zcitJN74AwbB' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 314 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["xpqIz9qEZKIFGXJa", "SZmO9un8GrT5K3r1", "LXdfLDQCmSRwlbLX"], "oneTimeLinkCode": "F0ouDf6VWzWW3oXP"}' \
    > test.out 2>&1
eval_tap $? 314 'LinkHeadlessAccountToMyAccountV3' test.out

#- 315 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 315 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 316 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "4cDlkrb3WjPXbyOg"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicSendVerificationLinkV3' test.out

#- 317 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'Uha4BIoymydU2CVf' \
    > test.out 2>&1
eval_tap $? 317 'PublicVerifyUserByLinkV3' test.out

#- 318 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'AFejnEYTdhjOsrMn' \
    --code 'L10kOYgudDojWmHW' \
    --error 'M8jKC0lgfx1JXqGs' \
    --state 'pKEi2WJDhww7flhQ' \
    > test.out 2>&1
eval_tap $? 318 'PlatformAuthenticateSAMLV3Handler' test.out

#- 319 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'XZHOn0IxsIIrkMyQ' \
    --payload 'iA0vaXz0DutImGpN' \
    > test.out 2>&1
eval_tap $? 319 'LoginSSOClient' test.out

#- 320 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'HYofI9qySL2CHe96' \
    > test.out 2>&1
eval_tap $? 320 'LogoutSSOClient' test.out

#- 321 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '2nx0xI6IVqriiiJf' \
    --code 'A577dKjNUQKY3xgF' \
    > test.out 2>&1
eval_tap $? 321 'RequestTargetTokenResponseV3' test.out

#- 322 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '5' \
    --namespace 'jqLsutIgge3ADj3f' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 322 'AdminListInvitationHistoriesV4' test.out

#- 323 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'IMiDHPnuY0OKU321' \
    > test.out 2>&1
eval_tap $? 323 'AdminGetDevicesByUserV4' test.out

#- 324 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'cNEEqf30G3L4cDDQ' \
    --endDate '3ahXtAqxBgrRVpYA' \
    --limit '5' \
    --offset '97' \
    --startDate 'Ib0rEerdzsL62a8V' \
    > test.out 2>&1
eval_tap $? 324 'AdminGetBannedDevicesV4' test.out

#- 325 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'B7phxv3dOcCU4Bqz' \
    > test.out 2>&1
eval_tap $? 325 'AdminGetUserDeviceBansV4' test.out

#- 326 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "LmhFmmSPMfplCrnN", "deviceId": "roqQKToQQKEN8kXJ", "deviceType": "lQLclArLVUfMn8N8", "enabled": false, "endDate": "MY66svfl1pKH2Xqp", "ext": {"cjQKvzlbmWaNZc4Z": {}, "1MFLctZVpNo5ewOF": {}, "1Og6pIa1JeSU0vHw": {}}, "reason": "dM9jNtqOBrWKW4rj"}' \
    > test.out 2>&1
eval_tap $? 326 'AdminBanDeviceV4' test.out

#- 327 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'xpZVHgSI2XZZW0YO' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 327 'AdminGetDeviceBanV4' test.out

#- 328 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId '3wyxRnxcgiwIdKgP' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": true}' \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateDeviceBanV4' test.out

#- 329 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'srWUmFx96sUfZT8m' \
    --startDate 'KiwGVrOT0JkC177l' \
    --deviceType 'cAf8XqRIm1GQTkGI' \
    > test.out 2>&1
eval_tap $? 329 'AdminGenerateReportV4' test.out

#- 330 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 330 'AdminGetDeviceTypesV4' test.out

#- 331 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId '9o2uGD2cJKuEvQ5V' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 331 'AdminGetDeviceBansV4' test.out

#- 332 AdminDecryptDeviceV4
eval_tap 0 332 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 333 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'oHrljSptMrBx1485' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 333 'AdminUnbanDeviceV4' test.out

#- 334 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'yCLn8vLXl3JtjWLs' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 334 'AdminGetUsersByDeviceV4' test.out

#- 335 AdminGetNamespaceInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 335 'AdminGetNamespaceInvitationHistoryV4' test.out

#- 336 AdminGetNamespaceUserInvitationHistoryV4
samples/cli/sample-apps Iam adminGetNamespaceUserInvitationHistoryV4 \
    --namespace $AB_NAMESPACE \
    --limit '70' \
    --offset '65' \
    > test.out 2>&1
eval_tap $? 336 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 337 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 15, "userInfo": {"country": "qR4zWVZJEVre0MWu"}}' \
    > test.out 2>&1
eval_tap $? 337 'AdminCreateTestUsersV4' test.out

#- 338 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "yXhGtiZYvBfhhOu6", "policyId": "FKHa2BAc3rbrqfDM", "policyVersionId": "MXHubXP3WsIeFA6n"}, {"isAccepted": false, "localizedPolicyVersionId": "xVFD4sz231oqvUXm", "policyId": "kZiJbNBGBSZM3XZm", "policyVersionId": "tEi69Yzam3o6XxdT"}, {"isAccepted": true, "localizedPolicyVersionId": "Faujjqd3wnWg49DH", "policyId": "PD54EiQC5B6j6pJq", "policyVersionId": "G4vdcmYRBNNT6w61"}], "authType": "EMAILPASSWD", "code": "ZPMyB0f111wcXT60", "country": "ruWi2hVdLr1hFJ72", "dateOfBirth": "VTl8u7AcFjdwEUjX", "displayName": "AUhRGmh5oChbPA3c", "emailAddress": "qcau1wfiqKI8crJQ", "password": "l1VQzZFRgNFA2MJB", "passwordMD5Sum": "b8OuL1dtxGKXx4CK", "reachMinimumAge": true, "uniqueDisplayName": "Wka8lUgb9vD9WsKn", "username": "tbukrbqi4Ia62RfQ"}' \
    > test.out 2>&1
eval_tap $? 338 'AdminCreateUserV4' test.out

#- 339 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["fqDVwkH81pys7EZq", "3u5KS9gl9dD3Rt10", "Fxyj5D8581Q2szqT"]}' \
    > test.out 2>&1
eval_tap $? 339 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 340 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["yHOU8RtDSWppB8bF", "IXLGPIaGPC2igFcA", "6iLVkXJXHqucYXDz"]}' \
    > test.out 2>&1
eval_tap $? 340 'AdminBulkCheckValidUserIDV4' test.out

#- 341 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ps6feQzQL4vQIcGz' \
    --body '{"avatarUrl": "swW7x7ChWM4pUfPB", "country": "82beqaQluaivOFva", "dateOfBirth": "76PyA1DoEJX1aBwY", "displayName": "MA58J7U6Ay8aiejw", "languageTag": "oeRAkOYItTDK5lMN", "skipLoginQueue": false, "uniqueDisplayName": "wT0pP6jUj1oW647N", "userName": "LzMeAX8Xee8bJJ22"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminUpdateUserV4' test.out

#- 342 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId '0Ux5abhzH5BzJZ6S' \
    --body '{"code": "HDXEMteZ8cWMCfBm", "emailAddress": "LuYSLZA48qe0zXzR"}' \
    > test.out 2>&1
eval_tap $? 342 'AdminUpdateUserEmailAddressV4' test.out

#- 343 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '7V8U5iuBmL1c9CDo' \
    --body '{"factor": "3kvl9Oh0vDUlLKhB", "mfaToken": "rR3pxhlwPPj90AjJ"}' \
    > test.out 2>&1
eval_tap $? 343 'AdminDisableUserMFAV4' test.out

#- 344 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'v326XTwjI7ZCFWpF' \
    > test.out 2>&1
eval_tap $? 344 'AdminGetUserMFAStatusV4' test.out

#- 345 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oqd8yeL9GLYfVK5M' \
    > test.out 2>&1
eval_tap $? 345 'AdminListUserRolesV4' test.out

#- 346 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HYSDsBFKzGqJpaJo' \
    --body '{"assignedNamespaces": ["ciFqibewJ1B2KPzr", "7WK76uhDvCEzJ2Gd", "leN3cOPRn8sl4V1a"], "roleId": "FZFn4aJZF1nZ56KR"}' \
    > test.out 2>&1
eval_tap $? 346 'AdminUpdateUserRoleV4' test.out

#- 347 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'AL3gdo7YLcLP6peu' \
    --body '{"assignedNamespaces": ["WCrwljbAU3SbVnpX", "yqsJq6RSnwflwI10", "2JC3HP3v9ftWNAhn"], "roleId": "9Dy4dDwIPjwBXvrV"}' \
    > test.out 2>&1
eval_tap $? 347 'AdminAddUserRoleV4' test.out

#- 348 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'oIp2xY8StElhYBhs' \
    --body '{"assignedNamespaces": ["mq2f1DjpktksWLio", "t0gGi67I9b3rVf7c", "fL4GCqavzGikYVu7"], "roleId": "uGTYusTfsLUkF4fn"}' \
    > test.out 2>&1
eval_tap $? 348 'AdminRemoveUserRoleV4' test.out

#- 349 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '95' \
    --offset '52' \
    > test.out 2>&1
eval_tap $? 349 'AdminGetRolesV4' test.out

#- 350 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "roleName": "XDn7AE8DH0WYCP2Y"}' \
    > test.out 2>&1
eval_tap $? 350 'AdminCreateRoleV4' test.out

#- 351 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'lDh2EYzShJd3HHxI' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetRoleV4' test.out

#- 352 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'NCuVtLxfaQYSqNQQ' \
    > test.out 2>&1
eval_tap $? 352 'AdminDeleteRoleV4' test.out

#- 353 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'E6plwg85U2u0Zw0H' \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "zXnglSUQvlcfQRfh"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminUpdateRoleV4' test.out

#- 354 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'hjwUadgwpu8zFM5B' \
    --body '{"permissions": [{"action": 14, "resource": "meHUpWwvjABpOfgF", "schedAction": 73, "schedCron": "QFKZCdH58wu8aJnN", "schedRange": ["S1keLzna7hQyTL7g", "9UqkXBh4TU1Pr1sV", "MiPu7SAnkIyRpasV"]}, {"action": 64, "resource": "zqUrsRCu1RDUKvRP", "schedAction": 7, "schedCron": "Zm0lwxy2tbhqZUIn", "schedRange": ["vStJNEqRCakVMis3", "G123QqyqmtOOvfXD", "YFEsMrdP8bYN4sQc"]}, {"action": 21, "resource": "ArdoiA2OfSItXwIr", "schedAction": 5, "schedCron": "G5wWG3vcN7C8jAut", "schedRange": ["7ASZW2iniQHH5Va1", "0HdAFzNBQWt4Tpp9", "eY5KSRCYnTE2nIIG"]}]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminUpdateRolePermissionsV4' test.out

#- 355 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'u2TLc0uIe7WX1Mlp' \
    --body '{"permissions": [{"action": 16, "resource": "0FChBPb6ENXbhFbW", "schedAction": 18, "schedCron": "VkhsH9V6P365BKqv", "schedRange": ["NnFDNS84Yw2S2Tln", "a3EmbOoVg8RT0f08", "O5FfTVvWOeb6Qa82"]}, {"action": 12, "resource": "a5Shd0Flsbz6CbMf", "schedAction": 13, "schedCron": "iwS9PQZzzPRdn9Cl", "schedRange": ["Xp3kwiDJaTx10X3l", "iC1NDpdIbUk8JFU6", "hR6IVAnr3ctcPQWD"]}, {"action": 75, "resource": "6IB1T8AsyOWa5Ghg", "schedAction": 69, "schedCron": "utK37wge1SGXSECS", "schedRange": ["NhfTct2aQSANvi0H", "9M2hyrRIAyQudsqf", "TAocckHw5PaHfze5"]}]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminAddRolePermissionsV4' test.out

#- 356 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'F1vhdvzNselQutQK' \
    --body '["qjoJL8Q9ndDd7tdA", "zltMWqHgRqV9L8sA", "G0zmdO5WgzJ2LOIo"]' \
    > test.out 2>&1
eval_tap $? 356 'AdminDeleteRolePermissionsV4' test.out

#- 357 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'NpeCqfaILDlWCdCh' \
    --after 'hj6yKm1yZbSQXJh8' \
    --before '7vsrz2OdZv1XBbro' \
    --limit '31' \
    > test.out 2>&1
eval_tap $? 357 'AdminListAssignedUsersV4' test.out

#- 358 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'cpTwNlavOXUvTiAd' \
    --body '{"assignedNamespaces": ["MkH3eBv8nzQOta7U", "mcLgLo7JFOctzpVn", "P3dv3lgsFsjLa7IQ"], "namespace": "kX39BdpQqgjez1Ya", "userId": "ZhO8byrA23bVsBJc"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminAssignUserToRoleV4' test.out

#- 359 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'XO2kkjSNsHYMfTye' \
    --body '{"namespace": "ZqrU5vsdAqnah28n", "userId": "k9H40mYlU8RutizU"}' \
    > test.out 2>&1
eval_tap $? 359 'AdminRevokeUserFromRoleV4' test.out

#- 360 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["38K81jM9soM5gCME", "fa2kSVGH5IQwhxnU", "LPH1LkMPdj9efaNV"], "emailAddresses": ["omsJMCbV9zGaTeeu", "L68ZJAjpHmnSiPae", "A1T3cKWL5RH0H3my"], "isAdmin": true, "isNewStudio": true, "languageTag": "zIPo7zNV77nOdCdy", "namespace": "0W4kaPzjeQFaB0Lb", "roleId": "9jNH7K9WVNVYhDsw"}' \
    > test.out 2>&1
eval_tap $? 360 'AdminInviteUserNewV4' test.out

#- 361 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "elu5owu1LD0ifCPw", "country": "Aq6q0SmdPDs45Z9G", "dateOfBirth": "YcCJJzRRuxZfmj6u", "displayName": "tvuBgm4lADi6tWwO", "languageTag": "bhBGUTEKkTvei6C6", "skipLoginQueue": false, "uniqueDisplayName": "7R2yooT78JyHpeUp", "userName": "zQqUcrqX2OyLpAL9"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateMyUserV4' test.out

#- 362 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "oVwa3Wlsg1LqD2b9", "mfaToken": "OEIhL37S4e29JNBS"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminDisableMyAuthenticatorV4' test.out

#- 363 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'y0eCsDCeMUXzST4s' \
    > test.out 2>&1
eval_tap $? 363 'AdminEnableMyAuthenticatorV4' test.out

#- 364 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 364 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 365 AdminGetMyBackupCodesV4
eval_tap 0 365 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 366 AdminGenerateMyBackupCodesV4
eval_tap 0 366 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 367 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    --body '{"factor": "GpzL494DoxiOlyKi", "mfaToken": "Fp4ju5bk6cJaFkfp"}' \
    > test.out 2>&1
eval_tap $? 367 'AdminDisableMyBackupCodesV4' test.out

#- 368 AdminDownloadMyBackupCodesV4
eval_tap 0 368 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 369 AdminEnableMyBackupCodesV4
eval_tap 0 369 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 370 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'ZLGXuWFy2ij8ay88' \
    > test.out 2>&1
eval_tap $? 370 'AdminGetBackupCodesV4' test.out

#- 371 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag '6F05YAf4EgbJurL8' \
    > test.out 2>&1
eval_tap $? 371 'AdminGenerateBackupCodesV4' test.out

#- 372 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'TO5advLSocPbOFQA' \
    > test.out 2>&1
eval_tap $? 372 'AdminEnableBackupCodesV4' test.out

#- 373 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'pMcJB8DIv8eJwkVZ' \
    --factor 'GYk9VvWDgAdNkTFI' \
    > test.out 2>&1
eval_tap $? 373 'AdminChallengeMyMFAV4' test.out

#- 374 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'Ypl5DRao6OGnE9Y6' \
    --languageTag 'Y3mh70Ksnb7ZMVwi' \
    > test.out 2>&1
eval_tap $? 374 'AdminSendMyMFAEmailCodeV4' test.out

#- 375 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "Rqa6urkELhq6LFsS", "mfaToken": "ONn2jQHNWzU62DSl"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminDisableMyEmailV4' test.out

#- 376 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'o5KDKlf6tTnEuLlB' \
    > test.out 2>&1
eval_tap $? 376 'AdminEnableMyEmailV4' test.out

#- 377 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 377 'AdminGetMyEnabledFactorsV4' test.out

#- 378 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'GRnp3YnvzePrVjrK' \
    > test.out 2>&1
eval_tap $? 378 'AdminMakeFactorMyDefaultV4' test.out

#- 379 AdminGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam adminGetMyOwnMFAStatusV4 \
    > test.out 2>&1
eval_tap $? 379 'AdminGetMyOwnMFAStatusV4' test.out

#- 380 AdminGetMyMFAStatusV4
eval_tap 0 380 'AdminGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 381 AdminInviteUserV4
eval_tap 0 381 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 382 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'false' \
    --clientId 'BQh3zr6YlivO6hnb' \
    --linkingToken 'XwOjx8TwIDo6UmFy' \
    --password 'VcqJ3rswQTHacmLO' \
    --username 'iq0u3ututCVVtLJu' \
    > test.out 2>&1
eval_tap $? 382 'AuthenticationWithPlatformLinkV4' test.out

#- 383 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'EnfmKP7srZ18hPj3' \
    --extendExp 'true' \
    --linkingToken 'lTqMsPijzqaqDMvL' \
    > test.out 2>&1
eval_tap $? 383 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 384 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'R8dB83w9u7xra4vN' \
    --factor 'VE7ebK1HbBRo0Xyz' \
    --mfaToken 'AK0bSSzdys53hGhk' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 384 'Verify2faCodeV4' test.out

#- 385 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'k5hnesfZRBHcHH4Y' \
    --codeChallenge '6IKmRrlzGHqCbw6Z' \
    --codeChallengeMethod 'S256' \
    --additionalData 'uTr8P8Rz47G3RvaB' \
    --clientId 'qPL7MvENJKgf4EHT' \
    --createHeadless 'false' \
    --deviceId 'igUwsDt0zUwQQAxU' \
    --macAddress 'w7w4F1Vk8NQn0dBD' \
    --platformToken 'CEiBju8BEo2Zukjh' \
    --serviceLabel '0.9846476244003122' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 385 'PlatformTokenGrantV4' test.out

#- 386 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'bT9YdiT2jImzdI7d' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'qS9jNXN1Ftv9nknN' \
    --simultaneousTicket 'LpkceKaq5pE8LMsZ' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'WB6xjj9fVT0msr7o' \
    > test.out 2>&1
eval_tap $? 386 'SimultaneousLoginV4' test.out

#- 387 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge '5yr6UTOofimkHrcB' \
    --codeChallengeMethod 'plain' \
    --additionalData 'komaOjPiAE1EnUSA' \
    --clientId 'pcu8FJXF9WvlHZb5' \
    --clientSecret 'xHDM6KfXiQomykK3' \
    --code 'ucu4ve1iLv0eX8H1' \
    --codeVerifier 'sal7GTl3Ay9sPRkm' \
    --extendNamespace 'DOibhFlUteeiNVNO' \
    --extendExp 'false' \
    --loginQueueTicket 'LXZKoqdWJ0mGIkOt' \
    --password 'cnmQkUDOJrR3TGJL' \
    --redirectUri '6CptK5DlEGITKI6i' \
    --refreshToken '1v7XkFv16dDIVTeh' \
    --username 'eUGvDNCUIh9YeSah' \
    --grantType 'authorization_code' \
    > test.out 2>&1
eval_tap $? 387 'TokenGrantV4' test.out

#- 388 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData '0OTSoFozaYykzH01' \
    --code 'yki1KlyBrPBS63nt' \
    > test.out 2>&1
eval_tap $? 388 'RequestTargetTokenResponseV4' test.out

#- 389 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'fXziuY3mYMVRKXOM' \
    --rawPUID 'false' \
    --body '{"platformUserIds": ["cDlPELe0zeRDxc4M", "TboyoFOGxiUzTO69", "7KU8MDawa5UpuE4V"]}' \
    > test.out 2>&1
eval_tap $? 389 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 390 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "ZjcXiz270sNbHuAT", "policyId": "wdI0YmaR6W311HhT", "policyVersionId": "6loTqzvE3z9fY8KE"}, {"isAccepted": true, "localizedPolicyVersionId": "yLEFIG8q9dKSwQuS", "policyId": "83URoA5TD35e6LLs", "policyVersionId": "AuLuJM8giLOqxL2V"}, {"isAccepted": true, "localizedPolicyVersionId": "BgGdBrht6AUKTenx", "policyId": "R18ScNZsMk61orn4", "policyVersionId": "l4fk1EUZHdMiWyMp"}], "authType": "EMAILPASSWD", "country": "xsQawk1gV4jaA4de", "dateOfBirth": "UB30hxapib8sQpOD", "displayName": "aSBWszladrKh43jN", "emailAddress": "HWocrsSiB5GQED8N", "password": "yjvW2EBBWtoFgXWi", "passwordMD5Sum": "smz6rIVCjibQb7SP", "uniqueDisplayName": "m2FpFh26fpMoj0yN", "username": "a2OCJ0VWuyLS8fVL", "verified": true}' \
    > test.out 2>&1
eval_tap $? 390 'PublicCreateTestUserV4' test.out

#- 391 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "wmueCsqjiY0r8pV1", "policyId": "v5rXY7ogRcAlMdGm", "policyVersionId": "ExprVgziqrOf2EV6"}, {"isAccepted": true, "localizedPolicyVersionId": "fXvSBzX1qwiISy1E", "policyId": "SqLr1pBXbXOLU73s", "policyVersionId": "nWMpIbiIV26fzyqI"}, {"isAccepted": true, "localizedPolicyVersionId": "F2VuPIA2TAdwXkam", "policyId": "dgQ0qQDmNlwukb4M", "policyVersionId": "obomNKCcFAqSns3Y"}], "authType": "EMAILPASSWD", "code": "IbcEjah231h3zIht", "country": "eSC8oZXE3HEckrH3", "dateOfBirth": "TcxkVwxgV3QZmR3D", "displayName": "vY8JiEebZAQKNijy", "emailAddress": "KTpG09cLAWDkFAcW", "password": "kmQyOKROniIRXIsi", "passwordMD5Sum": "EjL9LdGehrIoqB1R", "reachMinimumAge": true, "uniqueDisplayName": "jLw4LR6tWhASI5S1", "username": "NB1Fiq06gC2CYjVo"}' \
    > test.out 2>&1
eval_tap $? 391 'PublicCreateUserV4' test.out

#- 392 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'MlFqVEnSh7CobyiY' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "s9oqyMkZZTdknBVp", "policyId": "WAzhtAQ9lUvuNI9q", "policyVersionId": "FBEsiCqmASkuve2N"}, {"isAccepted": true, "localizedPolicyVersionId": "3dw2IYBRg2BZAF0A", "policyId": "nnNhsBmHmQLDEedq", "policyVersionId": "BwhOWu29iejsuces"}, {"isAccepted": false, "localizedPolicyVersionId": "uZngS97OtvSxzL3t", "policyId": "BW35wyY06Bj2Vv9E", "policyVersionId": "S0icP7F9kAem3pcY"}], "authType": "EMAILPASSWD", "code": "pHgZgjLrxXtc4O5P", "country": "Sg1GcuJPFZh1mHm5", "dateOfBirth": "ez0B09AMeLLJxGuM", "displayName": "emIaEDWNZGjGP0SI", "emailAddress": "lNBzgWGqMZqt3vW2", "password": "kXsRTpe8K9lZD6oy", "passwordMD5Sum": "HZchsmsZc7tnzWT2", "reachMinimumAge": true, "uniqueDisplayName": "HYy78yXQetq7OH0O", "username": "Ag09SlQDqXvfq17S"}' \
    > test.out 2>&1
eval_tap $? 392 'CreateUserFromInvitationV4' test.out

#- 393 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "62TQNsThurqrQaoS", "country": "NwQZ7K7n4yAQUWYH", "dateOfBirth": "9cXBAhTi3b0fJKEW", "displayName": "ZGHjmOUXQD1B0BQD", "languageTag": "JDYDWKoSMQUatycr", "uniqueDisplayName": "DGjd9emTwhU8Ox9P", "userName": "EterLow7QW06lRCc"}' \
    > test.out 2>&1
eval_tap $? 393 'PublicUpdateUserV4' test.out

#- 394 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "vfbEF4IKAwDlaQ7M", "emailAddress": "CAEZd9aH67QimJU0"}' \
    > test.out 2>&1
eval_tap $? 394 'PublicUpdateUserEmailAddressV4' test.out

#- 395 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "94LffjLDpnepiLsb", "country": "i9hI28lbnEYZoCjL", "dateOfBirth": "SxAuU3t42eHZDnAd", "displayName": "L0ZM0WDiVQuyjn6H", "emailAddress": "Kb88PkRjg6f69HR8", "password": "XLqJbHyWmHJU7f4b", "reachMinimumAge": true, "uniqueDisplayName": "YgJgwo8RFj5y6kF6", "username": "dOZ9H6ATEs7NbVTb", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 395 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 396 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "b2i6d9EDxPTHHYsW", "password": "KbLTdM1DmQ56ruSp", "username": "SrgccHmOBR5o1xe7"}' \
    > test.out 2>&1
eval_tap $? 396 'PublicUpgradeHeadlessAccountV4' test.out

#- 397 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "9sisGld2OEXHpnMO", "mfaToken": "CWmkymuZHLmkWGXL"}' \
    > test.out 2>&1
eval_tap $? 397 'PublicDisableMyAuthenticatorV4' test.out

#- 398 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'pc47zw9ubeIPAXEP' \
    > test.out 2>&1
eval_tap $? 398 'PublicEnableMyAuthenticatorV4' test.out

#- 399 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 399 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 400 PublicGetMyBackupCodesV4
eval_tap 0 400 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 401 PublicGenerateMyBackupCodesV4
eval_tap 0 401 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 402 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "9aoZLnKxx5m0Qf6P", "mfaToken": "hvsxtkjsl4JXa4Uh"}' \
    > test.out 2>&1
eval_tap $? 402 'PublicDisableMyBackupCodesV4' test.out

#- 403 PublicDownloadMyBackupCodesV4
eval_tap 0 403 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 404 PublicEnableMyBackupCodesV4
eval_tap 0 404 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 405 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'BrJtcodV3WzsyTM6' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetBackupCodesV4' test.out

#- 406 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'rE2GVFw6mIh63UGJ' \
    > test.out 2>&1
eval_tap $? 406 'PublicGenerateBackupCodesV4' test.out

#- 407 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'yF1jUzMrbmhOECUr' \
    > test.out 2>&1
eval_tap $? 407 'PublicEnableBackupCodesV4' test.out

#- 408 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code 'R27y5WbkymNtbWvV' \
    --factor 'aBKW1z1ouwHMnszQ' \
    > test.out 2>&1
eval_tap $? 408 'PublicChallengeMyMFAV4' test.out

#- 409 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 409 'PublicRemoveTrustedDeviceV4' test.out

#- 410 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    --action 'uukO1KRPWo8pMSRo' \
    --languageTag '85HzfeVqiYHl2tOu' \
    > test.out 2>&1
eval_tap $? 410 'PublicSendMyMFAEmailCodeV4' test.out

#- 411 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "jkUwaPO3IJkime0W", "mfaToken": "vfn5ejFse8HvFjuL"}' \
    > test.out 2>&1
eval_tap $? 411 'PublicDisableMyEmailV4' test.out

#- 412 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'zIZryIWVDmZP4CSn' \
    > test.out 2>&1
eval_tap $? 412 'PublicEnableMyEmailV4' test.out

#- 413 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 413 'PublicGetMyEnabledFactorsV4' test.out

#- 414 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor 'kZog44nM5dnUD6tt' \
    > test.out 2>&1
eval_tap $? 414 'PublicMakeFactorMyDefaultV4' test.out

#- 415 PublicGetMyOwnMFAStatusV4
samples/cli/sample-apps Iam publicGetMyOwnMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 415 'PublicGetMyOwnMFAStatusV4' test.out

#- 416 PublicGetMyMFAStatusV4
eval_tap 0 416 'PublicGetMyMFAStatusV4 # SKIP deprecated' test.out

#- 417 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'SG8KppLH7uWqxVKp' \
    > test.out 2>&1
eval_tap $? 417 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 418 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "tCbkXwSnHw0Yu6yJ", "emailAddress": "reLQeJBlmNjJqOIF", "languageTag": "IJ735orBucAxrDu8", "namespace": "3nvsZqWQ1Jo4apHG", "namespaceDisplayName": "jsLeuTKDUGAitFTY"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE