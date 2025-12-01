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
    --body '{"modules": [{"docLink": "IsFwdiKmconDUqkN", "groups": [{"group": "mZuMnt9Gj2C1VXE0", "groupId": "ImCVlNK3mwJSR5Jm", "permissions": [{"allowedActions": [17, 89, 51], "resource": "K50XfkE2LxiknHsH"}, {"allowedActions": [86, 6, 53], "resource": "eq6q7XzIBx0M65zo"}, {"allowedActions": [76, 93, 72], "resource": "4UWEaERp1fio0vyU"}]}, {"group": "jJxQOR5BqsmgAcdX", "groupId": "iIqFE0ol4IGfZBH1", "permissions": [{"allowedActions": [15, 6, 72], "resource": "MMKAvgzVKFDe8Zzi"}, {"allowedActions": [6, 33, 20], "resource": "KJcy0SB6sUCtmfx3"}, {"allowedActions": [95, 81, 12], "resource": "jYPomCPd7hqo3jVp"}]}, {"group": "3v0WPCoshr6qlB9g", "groupId": "UjIX3um2X2zflQuc", "permissions": [{"allowedActions": [83, 40, 54], "resource": "461uM23xkKOHc2Ge"}, {"allowedActions": [74, 47, 22], "resource": "oQptooQjJ1q8qWKs"}, {"allowedActions": [20, 91, 11], "resource": "osUI44dDyH18pd8f"}]}], "module": "Z9qaKyf4DQNSNCth", "moduleId": "phCmZbFEAVV6flRK"}, {"docLink": "KagzCMqKTQuFHEHJ", "groups": [{"group": "NiHUvWkH9xN2Ta8a", "groupId": "yUcGJ5YpDdMNeDs5", "permissions": [{"allowedActions": [30, 21, 53], "resource": "sqrsdn6BpiSfahXW"}, {"allowedActions": [87, 93, 52], "resource": "Sj0U8gs0iB1CQkoB"}, {"allowedActions": [0, 82, 74], "resource": "0bIKn2vmrqTvVgZh"}]}, {"group": "nPeHtt9MMpKaoCm1", "groupId": "Bie7VqO9QpbTn14G", "permissions": [{"allowedActions": [61, 33, 67], "resource": "jXJ3G3DKN7tATbxS"}, {"allowedActions": [77, 12, 6], "resource": "JlTqxViaPcfOmjeV"}, {"allowedActions": [50, 38, 25], "resource": "rjRMmkKWuEVceibd"}]}, {"group": "T0pxKusdBXMR22OU", "groupId": "vvxvxWz8jCH0qnNu", "permissions": [{"allowedActions": [13, 79, 71], "resource": "V2EeHWNxoQ8q3hCY"}, {"allowedActions": [57, 89, 95], "resource": "msOThcXFzwYFY8nr"}, {"allowedActions": [27, 84, 53], "resource": "HYOrK4TLH8Phe5XH"}]}], "module": "gaZCn8keOA3zFK99", "moduleId": "1kP5Yl2byZaCGjg0"}, {"docLink": "qGFdXFs9uxtdhEkU", "groups": [{"group": "10x7bMV0YJNfEmug", "groupId": "7Fx92tZziVOw0Gxs", "permissions": [{"allowedActions": [3, 22, 26], "resource": "k06C2JTERctDSbj6"}, {"allowedActions": [92, 98, 95], "resource": "s4ur7z08lJkJ6TLo"}, {"allowedActions": [51, 53, 92], "resource": "xjBZMoF0BsLRk1GY"}]}, {"group": "RhY5sha3VJT13626", "groupId": "Xd1haIVY7NvWeTEa", "permissions": [{"allowedActions": [53, 33, 22], "resource": "fIZSXnCh4SOZ4d5m"}, {"allowedActions": [8, 70, 9], "resource": "w3DUarZ4Z8TWysaD"}, {"allowedActions": [10, 100, 47], "resource": "bjfA3AQlc8xsUURi"}]}, {"group": "zOpbZbEvgfgkY4KO", "groupId": "3m0IjkUhTMVyHzft", "permissions": [{"allowedActions": [25, 94, 60], "resource": "t4JqqEMsLTmn1JhL"}, {"allowedActions": [48, 38, 54], "resource": "v9O1AQt7EJHmUCXk"}, {"allowedActions": [75, 73, 48], "resource": "jSlWlWQcabwW2EL6"}]}], "module": "k5hnSyD1GObkLuoS", "moduleId": "cetSjzcPyDZfiJIx"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --forceDelete 'true' \
    --body '{"groupId": "YKXSMXw1hklTmb0w", "moduleId": "WGqAf7pvgT4XcPha"}' \
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
    --body '[{"field": "4HGTAyrUY8SpZabQ", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": false, "allowSpace": true, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["drIZLbr24u1FthTj", "owKIEPiZaZDBMfS4", "j0Y6syjPFrwwXEcT"], "preferRegex": true, "regex": "XlimuNZRGtDbeemm"}, "blockedWord": ["6T2u3tFQdcm1J2oB", "WUeo0CRIZB2Wcrvt", "jtY8LQCIUVsvzt4D"], "description": [{"language": "HhsBvz7dwmgiOU2P", "message": ["V1r4BtCbiL5QoGJM", "d50v694pNOoEjfjO", "ss0zB5rlwdbewBjR"]}, {"language": "EEW3BKnzprl4yuxY", "message": ["Vs8gyNghfR7KhFpC", "iD4qwAHXg60UMqkZ", "sgkVRFhTsRklxj56"]}, {"language": "D26I34y19YqxG5lQ", "message": ["Bhcx4NAwZBfdurEe", "OQxzHhuTaTMcDgBU", "b7MunxKkDT7FGeIT"]}], "isCustomRegex": false, "letterCase": "pmMshZajsA40IiyK", "maxLength": 59, "maxRepeatingAlphaNum": 96, "maxRepeatingSpecialCharacter": 49, "minCharType": 83, "minLength": 12, "profanityFilter": "8jfCiNbTU9ScRuJA", "regex": "p01On0mHeKKRqoEi", "specialCharacterLocation": "ojW7yZsMXgqP93QB", "specialCharacters": ["hmKf2ITCqhY1XK1Z", "ggeOROAOPPYvVlKI", "lbhIpdMIcjwfIzlZ"]}}, {"field": "oEXRQ4hYoK1Zcb0r", "validation": {"allowAllSpecialCharacters": true, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["fQfC0Z5W732kUQY1", "SA5T4nbCAA6AzoUr", "NQn1YUSTwARXxlve"], "preferRegex": false, "regex": "TnPbcNx3Fgqz2Kaw"}, "blockedWord": ["Od290w6crymHzzrD", "gH6QlGMdNcxWMWAa", "nMnjxDGwocXcBiIS"], "description": [{"language": "UsGxkwnmgum2jzqS", "message": ["c7lFJGVYBDtbV17Y", "Ydo31otluNhII6nm", "wkpJZAEu4kbKwvRk"]}, {"language": "uy04fDArRLS4kITt", "message": ["3Ska9oLwcrYoDQaR", "7XanVkWFIZWr3ujb", "5Kd3sgpg7MnaTpfS"]}, {"language": "AUw8KdX9MMSTna5B", "message": ["t2VssmuEMuRZEQEd", "HViRFJXFOUrsKYkh", "ZR387GUWD5iEZPIL"]}], "isCustomRegex": true, "letterCase": "8by9zx6iBwkT7W2a", "maxLength": 83, "maxRepeatingAlphaNum": 63, "maxRepeatingSpecialCharacter": 66, "minCharType": 23, "minLength": 1, "profanityFilter": "mVkFyC0weaoWT3se", "regex": "e1DIbWHzC0n5HCZO", "specialCharacterLocation": "eoWybLZytheAK5q9", "specialCharacters": ["duOD54ZlZ6U6E2Dt", "eKJva6spnhESgQUM", "ifLCMgf6nUzt3vAG"]}}, {"field": "MQsKNYE2k32qi9Xn", "validation": {"allowAllSpecialCharacters": true, "allowDigit": false, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["HZEORpUd19QfroaG", "kt0vVmwqSDkcbWcU", "vWI2oKTHu0bNp5w4"], "preferRegex": true, "regex": "I8XQe0Og5j9jfcer"}, "blockedWord": ["9xA4q5KF4xKutwJi", "6XhbZMDabXFAiHEU", "Sny0O0Ad88fgnK0S"], "description": [{"language": "kGCKH3cBkjhgJLVs", "message": ["qwMIqroYFl517TGI", "kM8iF2BRCvNHhYMC", "DmsOoEGWo3MgUTDB"]}, {"language": "ta7nRApuVuz3RjlF", "message": ["4jAgKZyH0roUEDwS", "P0hQYwlvEzXGmbMx", "3vHYXVZ8ubMHS49l"]}, {"language": "j9KMFF8VQBJLzyM9", "message": ["FZBXSVU3i9dYZCgl", "7swQF6ccRctXZCUf", "xt7LIiWZQFaGDP6c"]}], "isCustomRegex": true, "letterCase": "dqGpaWx80GBNJtDr", "maxLength": 68, "maxRepeatingAlphaNum": 56, "maxRepeatingSpecialCharacter": 51, "minCharType": 44, "minLength": 21, "profanityFilter": "axgiH8h7bcbHwSVH", "regex": "acorsdIdo1WWjojf", "specialCharacterLocation": "2ziI5D2mi2mCB463", "specialCharacters": ["exl2h5tKOXy4ThtG", "ZFY5109MyQuCv79N", "zGyy4iltgUXuxUop"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'IkllkDM3hLaftqap' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'XjRB41y7Tt1wGfDI' \
    --before 'hYnLWqWwjr9jSqjM' \
    --endDate 'AwTBxPjF9yNqa9eQ' \
    --limit '12' \
    --query '7kfJ8kmN0MUCUk3b' \
    --roleId 'kEu3zy4O7x2pfO2r' \
    --startDate 'ceeIXX1xaX86ZkLh' \
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
    --body '{"ageRestriction": 73, "enable": false}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'QwO7Wu42LUiomG1V' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 70}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'xDdcSsYQ9MwrvSx8' \
    --limit '39' \
    --offset '50' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "691LnAKAbBPIyBki", "comment": "EL3UwwFCsVnkhKYV", "endDate": "AftjECq34ERl6r6T", "reason": "yOwbEAQZjuH0kjG1", "skipNotif": false, "userIds": ["kXi3wbThXjo3b842", "qxCdhJBYrhVOg0kN", "s1OriQF1OzN2l8aW"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "hjrKNcPeeY2qi6u9", "userId": "sVD47CzNVTXhwrwj"}, {"banId": "6CEm0h1x8KVeL1sN", "userId": "6Pe9VakRa9Ysqffl"}, {"banId": "Nw9NRsiUfCbv9NwE", "userId": "kleRCzCKsNQX7MeE"}]}' \
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
    --clientId '5s6gc5GVKrhuwp3p' \
    --clientName '5e9BMtLCTWGV7Krq' \
    --clientType 'CvcYs2lGKs6P4e7I' \
    --limit '68' \
    --offset '51' \
    --skipLoginQueue 'true' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminBulkUpdateClientsV3
samples/cli/sample-apps Iam adminBulkUpdateClientsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientIds": ["s9M52GVzU4sbbeM5", "7wjhTljfu56cczDr", "nLQiz8xQpY9kPCeL"], "clientUpdateRequest": {"audiences": ["dbJ2ELikrQRN2f0N", "YXlsqvISiO1fcB0F", "uk3gvxVjoKZeggam"], "baseUri": "V7u9ayuTAOBJkju1", "clientName": "zwsDiESP1xHHdj9T", "clientPermissions": [{"action": 36, "resource": "q8V9QSzRGWCyA4Jm", "schedAction": 90, "schedCron": "IgGdbbBbZm7g1wdW", "schedRange": ["mUCDjZcrIbc8bAmH", "HM1sHw4ESwhD6II9", "vXctuV0FnVrbot2q"]}, {"action": 22, "resource": "934bkd35rlCeGnW1", "schedAction": 98, "schedCron": "YCQWd4SkbwJsf727", "schedRange": ["XjRc0jSWQ0BBLETo", "iOAFtLSSI6b64U8M", "eAhgOwkqhv1XqAFF"]}, {"action": 86, "resource": "ZHuzwtjFaOgxiVfs", "schedAction": 50, "schedCron": "Lfb9bM2IkyjVdVEz", "schedRange": ["pUdKtAzEFUscUTSf", "RzCE8tEzoG17I0GV", "l32WMbnwW9JGWgmp"]}], "clientPlatform": "gHEMngOf20pKCHR6", "deletable": true, "description": "abgXK42f4S31lVhm", "modulePermissions": [{"moduleId": "WQd2oaY0TIklrpQq", "selectedGroups": [{"groupId": "hZua1cqx9f0Dg1SZ", "selectedActions": [73, 2, 44]}, {"groupId": "k6cyTmBctKjKfnf8", "selectedActions": [72, 56, 54]}, {"groupId": "iY5jUIo5ralfGIY6", "selectedActions": [6, 44, 69]}]}, {"moduleId": "3RLexIl9VYpEggH3", "selectedGroups": [{"groupId": "hGYwlaNSHlA7z1uM", "selectedActions": [86, 95, 25]}, {"groupId": "HmI9zfwUXHhlTxYJ", "selectedActions": [20, 59, 28]}, {"groupId": "XGIb1CbwH9LdZm2c", "selectedActions": [11, 35, 74]}]}, {"moduleId": "0bP3QGyXgichmfQd", "selectedGroups": [{"groupId": "lzCABMv45TLpy5OL", "selectedActions": [68, 84, 60]}, {"groupId": "6yxbuBUJ9Mmw61Fb", "selectedActions": [54, 29, 96]}, {"groupId": "mIqBVYUkS8ZrkPNd", "selectedActions": [12, 87, 4]}]}], "namespace": "SfgaQevDlDbgCKpq", "oauthAccessTokenExpiration": 24, "oauthAccessTokenExpirationTimeUnit": "lPXHPdU2rD1COFQo", "oauthRefreshTokenExpiration": 2, "oauthRefreshTokenExpirationTimeUnit": "lKb9SvxsoOxthGW5", "redirectUri": "Nb2ha2nZxAc63n92", "scopes": ["IpDIBlmofLSdVBab", "iuvEki4VsaDwmivu", "cCau3kS7OKF3F1XY"], "skipLoginQueue": true, "twoFactorEnabled": true}}' \
    > test.out 2>&1
eval_tap $? 125 'AdminBulkUpdateClientsV3' test.out

#- 126 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["7utAeWeZZSmKqq4W", "c2VvRoVVEXRGTtl8", "UWLp6A41NGg2QYAH"], "baseUri": "i8JpwMCxHpQOu53T", "clientId": "vrgTAG4pvWyIcMvu", "clientName": "KEgjJv4PAOua9Hfi", "clientPermissions": [{"action": 20, "resource": "W8jEQZmVIs6LiMuS", "schedAction": 40, "schedCron": "HsH1U8jZdP8GQZSX", "schedRange": ["A1VeAYZapxFZBvjT", "z332z7z8Ebxinf3q", "h3V1yCJh53tgGzam"]}, {"action": 25, "resource": "cct77iZc1IGKnmMT", "schedAction": 34, "schedCron": "4DarqwFMNXCvAImZ", "schedRange": ["15WMfioSg23dNdpi", "NPP20TVzVwJsk7KJ", "dGTVBOp1tJ64FN48"]}, {"action": 14, "resource": "mh0VCn3SKzKU14Gr", "schedAction": 97, "schedCron": "Gsn18ETlQB8E4Q2l", "schedRange": ["XaJvK6nDMoirFt61", "RdtVPHWN4mec5dU5", "13DCVXG1tCtoJBnu"]}], "clientPlatform": "PYl2B5VhECwkH52n", "deletable": false, "description": "F4ocYAD9KCGtrPDO", "modulePermissions": [{"moduleId": "rISu5A120nZe6Wez", "selectedGroups": [{"groupId": "SRvOqiA0do8eW4Zj", "selectedActions": [18, 50, 26]}, {"groupId": "gfT0Up7xYAA5FVf3", "selectedActions": [61, 29, 100]}, {"groupId": "vrfA7ezMlrYwuN7w", "selectedActions": [61, 76, 4]}]}, {"moduleId": "Mjb4KQEuvSm95IM9", "selectedGroups": [{"groupId": "w4IH6rcIcaIcDwN3", "selectedActions": [4, 49, 2]}, {"groupId": "6oxBJZmu0gOng4GJ", "selectedActions": [99, 50, 84]}, {"groupId": "n3CSw3yjPsYqyyia", "selectedActions": [6, 35, 89]}]}, {"moduleId": "TlEYAzMK9qPcUljy", "selectedGroups": [{"groupId": "vT1xekDYRfci9JVv", "selectedActions": [56, 44, 39]}, {"groupId": "UhhcnjigDfBgGlK4", "selectedActions": [21, 62, 1]}, {"groupId": "M4X8BKRYAg56636Z", "selectedActions": [67, 74, 3]}]}], "namespace": "XQjNs4oy68TgF1uB", "oauthAccessTokenExpiration": 20, "oauthAccessTokenExpirationTimeUnit": "AuTUKNpiWVkqwgMa", "oauthClientType": "nAVGiFHhZh2gqunX", "oauthRefreshTokenExpiration": 77, "oauthRefreshTokenExpirationTimeUnit": "nlp6iqxTgGnDCKs1", "parentNamespace": "DqLONkOeyHHnCvdq", "redirectUri": "HDd5mIac4gmvnSzV", "scopes": ["AfjrZRyTLMd4UKhh", "gWKaeUxeNPNrZew6", "0B2PBIQCM6sjqPfU"], "secret": "MCLpNzfG8NV9x37F", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 126 'AdminCreateClientV3' test.out

#- 127 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'nSpR7rajMvpRT9T1' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 128 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'VpcMXlHGCE52K84m' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 128 'AdminDeleteClientV3' test.out

#- 129 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'kAtRlE59vOlZR1Vn' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["UOk1YWHDMIt9oVOV", "EhQULLXgMEAviFSx", "QxIry57iPVwyM41a"], "baseUri": "z6wIv6Kvwl6Tj6rB", "clientName": "swhZaQfELJawxZtK", "clientPermissions": [{"action": 3, "resource": "Vlw8wbzioW6i8yLE", "schedAction": 82, "schedCron": "I5wu9Fr3nx11GC90", "schedRange": ["qE2WPmy98ebHQTJW", "oD7OH77rlvYIAPgc", "q1pZ1QFb9AP3MrNU"]}, {"action": 4, "resource": "Pfzm6nBIGZ2ock9U", "schedAction": 68, "schedCron": "XgSI55xCWdHAaoXS", "schedRange": ["GkNWTxqyqNNrRm6n", "xXZ0YQJS7MZr4VoL", "lEkBFaFGHqYrgTIn"]}, {"action": 90, "resource": "nis4N558IyN5ilyY", "schedAction": 58, "schedCron": "6osqgL36NhxgdVgq", "schedRange": ["vaVUYt3VBe8qbaLh", "7roWmqhn479semVL", "8tuLSf32iCyYi5Ky"]}], "clientPlatform": "z0SCOHBdZOdtTMbU", "deletable": false, "description": "cvFD4LiuJIRNnDry", "modulePermissions": [{"moduleId": "N8dAv1X6wfJJRiAZ", "selectedGroups": [{"groupId": "cCels8JGFS7Vx1eT", "selectedActions": [96, 68, 10]}, {"groupId": "ELCbFCC49GVFu3qR", "selectedActions": [32, 60, 51]}, {"groupId": "FixVXLI5VZOf8GpH", "selectedActions": [61, 98, 98]}]}, {"moduleId": "wjkZt4G19LY8sqn9", "selectedGroups": [{"groupId": "QyGiba6GDJ6jgFc9", "selectedActions": [91, 15, 49]}, {"groupId": "YrBCoduRPDAo3Zdr", "selectedActions": [4, 26, 50]}, {"groupId": "Ir9em7exMVjCPWKG", "selectedActions": [71, 35, 10]}]}, {"moduleId": "scPQ5y5aMNXoe1u9", "selectedGroups": [{"groupId": "Kd4xqKuIjvmQGeBX", "selectedActions": [83, 94, 56]}, {"groupId": "vf9MmtZqPQRgc8TK", "selectedActions": [95, 90, 90]}, {"groupId": "hLAFnFtEbbwQQ1PY", "selectedActions": [65, 2, 27]}]}], "namespace": "ejv7S3SqbJCA5vpa", "oauthAccessTokenExpiration": 23, "oauthAccessTokenExpirationTimeUnit": "lwhtTm9prntMLdqQ", "oauthRefreshTokenExpiration": 25, "oauthRefreshTokenExpirationTimeUnit": "H4BbkwjsxV4jN7Bc", "redirectUri": "GJMHF4Uj4MHGcL0a", "scopes": ["59Mghs9tLPyYAiVh", "Fh974ICw0M4I1SSI", "NmhVXuOfBgHJZ5Sh"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientV3' test.out

#- 130 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'QJiylvNiJDHGfE7N' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 67, "resource": "OnAjXoryFvCbzNQI"}, {"action": 81, "resource": "tOOS5nVGftvRr9Ec"}, {"action": 46, "resource": "wp7WWTL6Zd7bvDHi"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminUpdateClientPermissionV3' test.out

#- 131 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'vkeZihUMaWtUkvoh' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 87, "resource": "kArfpsBilZSofgvW"}, {"action": 50, "resource": "g0Gzvac2sl2Eg2mP"}, {"action": 44, "resource": "GisO4IeLk9U17TiM"}]}' \
    > test.out 2>&1
eval_tap $? 131 'AdminAddClientPermissionsV3' test.out

#- 132 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '10' \
    --clientId '9XJhxuTHGtSS3DML' \
    --namespace $AB_NAMESPACE \
    --resource 'sO0frNcPULfaIFf3' \
    > test.out 2>&1
eval_tap $? 132 'AdminDeleteClientPermissionV3' test.out

#- 133 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey '60WM7DQ1MdxqRQYo' \
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
    --body '{"blacklist": ["X0D0gcGmWiVJrJit", "Nd01n0uQz3OUfQrg", "h84eeo5KEEUKpK68"]}' \
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
    --body '{"active": false, "roleIds": ["6xdbH7ZmLQVp6TKC", "jGtl42HUFz6zLINt", "sIWKPzjhnAZjTepY"]}' \
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
    --limit '25' \
    --offset '21' \
    > test.out 2>&1
eval_tap $? 141 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 142 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '5aSjdmjO7Pu9kFt0' \
    > test.out 2>&1
eval_tap $? 142 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 143 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '8Gv5jOtfBVF63OFo' \
    --body '{"ACSURL": "MBBWQwv6PwW3JC4P", "AWSCognitoRegion": "tAg7y0wKljDjK3nR", "AWSCognitoUserPool": "HFgO5rWaJxMB1NPO", "AllowedClients": ["k981QFtw7yCJJ5BA", "AxvWQ7NjtBnNJBhy", "ejH6kXJpTnlzs1sj"], "AppId": "QHI4sjAyHZor1keS", "AuthorizationEndpoint": "VlRtj20fFNAkS5pw", "ClientId": "NCi8P4NuI6XcNez5", "EmptyStrFieldList": ["EKnKwNUx921g4RP5", "EOb5h5qSEkPXhqIj", "oYJD4BmazCx2rL5u"], "EnableServerLicenseValidation": true, "Environment": "Gb81qJAjyzGoVDNp", "FederationMetadataURL": "t45v7NjeLQw1Qt5F", "GenericOauthFlow": true, "IncludePUID": true, "IsActive": true, "Issuer": "mU27fjz5ADGxughP", "JWKSEndpoint": "03PHrF4IcntMDySx", "KeyID": "rxrQF8H0yDTxAI17", "LogoURL": "4HSTFSuTlZMPmZLM", "NetflixCertificates": {"encryptedPrivateKey": "2WDzxXCxYfQet0QF", "encryptedPrivateKeyName": "HfkhlgPazhf5doJa", "publicCertificate": "X5IlcOfgZteze8Dc", "publicCertificateName": "QlNbhE9qrzaJZ50U", "rootCertificate": "wE4M5mJH5Zx4CXb7", "rootCertificateName": "GW85iXsb9ZIOficP"}, "OrganizationId": "ma7WSDXJKx4wCbxg", "PlatformName": "cQhxXCyFgnrHwsmp", "PrivateKey": "GO6q8zKOawgt42yt", "RedirectUri": "Gt54juZc9sGZuiwf", "RegisteredDomains": [{"affectedClientIDs": ["oG8RdkRljAmTCAUu", "e13Fiqwb9UZ5ItSW", "RnLr9R980hxEhhri"], "domain": "PDTGpFipNFvpQ5vu", "namespaces": ["2Mf3blj54Kv3YWh5", "v8qVacdn5an7txLe", "PqB69IV9kX0IUpw0"], "roleId": "Elk3NEoe685UN9tN", "ssoCfg": {"googleKey": {"BwSV51VnRs9dBawj": {}, "QKcPAYJbnLNsk16p": {}, "Hd6FDuHER8zAPB84": {}}, "groupConfigs": [{"assignNamespaces": ["e4ZIKdISj3AjHcFs", "Evw6Y166GUjC6smI", "amVXHZ11ZezXuqtd"], "group": "0qdV0rmax9tQzxlj", "roleId": "IpLNO019MjTqhqqv"}, {"assignNamespaces": ["bAfkIXCsS2HaxkMz", "2HZ1v1JaGmOecOpl", "QFDqbzE0TC2o22u3"], "group": "wizGbGVg8cgW6ybj", "roleId": "MscJIxUrxhGSNRbZ"}, {"assignNamespaces": ["WqRBXYhxpNR3UmQ3", "Gc0PMoMU0pQ2IvxV", "krNb4YxhCmhr5XlE"], "group": "XUxKUyKGLUtWKC8F", "roleId": "6KdEAZOsQZAb8TPN"}]}}, {"affectedClientIDs": ["HE2y6q6j3gl5Pxkj", "8U9S4vkRL7t2muaW", "4C3c2JyzNk7J0Mjs"], "domain": "DEUyPrdB7bgGoVgq", "namespaces": ["sRlHvB3weTAWYq1g", "eebEfQxNQyGbDpTP", "PGU7R5Ud0rfAzTaw"], "roleId": "gNsJdHpZxdbKIrxI", "ssoCfg": {"googleKey": {"pBNOwtg5Lwxg8kWl": {}, "Gk0rVvfwe53tl6lt": {}, "9gy837FXs0maohTI": {}}, "groupConfigs": [{"assignNamespaces": ["hgrjUFb50fgcg9N7", "5O21vtPeF062ULSQ", "PSKb5ybVXUIuYqDt"], "group": "3IBXLvLJbkqegxlu", "roleId": "EblQgULLmxv4x2om"}, {"assignNamespaces": ["Sq3ckEwnSDu9vDft", "0VG9sOPoMExI1rmu", "XptNZXHtVLN3qKMy"], "group": "LYTKUZIfa4gci6t6", "roleId": "ILRZ4ujO560DmUZQ"}, {"assignNamespaces": ["x6x22ORh4vlrdB6Z", "J4zMrdrAobhmgVPs", "aaylHWOVTILrVFmx"], "group": "Z6OuhHKCm7lzAhOp", "roleId": "mf8QD6E3wPLHzEbf"}]}}, {"affectedClientIDs": ["Y7lENGg0bg1YGakt", "iM2hfj43fpc6cbjt", "7EQsTSLma6bK5bpU"], "domain": "6UoNlhGd83X5qcoL", "namespaces": ["WtFwEkAxXDlVdqJi", "Hv2QtTM5Nj58Rmmc", "ekzkUdVTyMw16hlE"], "roleId": "Nak5XtXhyw7S4X81", "ssoCfg": {"googleKey": {"kOGiwcYJuWsWutth": {}, "OsyrBpOyDr9Quyfi": {}, "77aG8Mmd2UDD4Za0": {}}, "groupConfigs": [{"assignNamespaces": ["rbn2ZGOONIbdqaNm", "Z9TTedsJ4QjcoZBU", "CWhgr2yUCbwCzdXP"], "group": "noNyZNzrxpIIUOhr", "roleId": "PdcEQtlVtDzmPAk3"}, {"assignNamespaces": ["Qzy7b0odGVahU8E5", "5v3q904D5TNHHoee", "6FdjhGZge6K3YCt9"], "group": "qugmkoQ75GVdQy2L", "roleId": "FLxlipRLRzS09vDd"}, {"assignNamespaces": ["cY3vclqlm3hKhUVB", "nDpp4ZDLj7YrcB8v", "zwwbGLXGXnQ5cA7R"], "group": "FFERnaBE36JzE5rv", "roleId": "zgZeRFkvgD8uz22S"}]}}], "RelyingParty": "FDbJcAdgLU13F5aP", "SandboxId": "21hNg5Sbv2OzHpF0", "Secret": "lLj5erwku1EHTSjQ", "TeamID": "RlgkLpER5cMKlPIN", "TokenAuthenticationType": "lghSG09jqI7MiUqe", "TokenClaimsMapping": {"PfDZ64y3RzWhTKar": "udsRzd16zzOqGFCN", "KQmtV1QKgI8NDaaK": "YtuoxQVP7cssooJY", "LaQASqBOFbbYg8Ko": "xlIiFi0MgQLKoTbV"}, "TokenEndpoint": "xpjN9xP4OmJ9jB2p", "UserInfoEndpoint": "i4V2FwpGYkPbi15e", "UserInfoHTTPMethod": "GSiP2hSfTCKCOIFs", "googleAdminConsoleKey": "v1tHMYjdFoc6IjiF", "scopes": ["5apfSuW2UnWXiJ86", "n4eE1jgtiAYQeP5i", "mDRkrUKM97QSS4ay"]}' \
    > test.out 2>&1
eval_tap $? 143 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 144 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wrQGAf78sy8kWb58' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 145 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1adgViFdX8pPaopd' \
    --body '{"ACSURL": "AAjf7JSYG0bIgD4X", "AWSCognitoRegion": "qcx112z1UrDajZwb", "AWSCognitoUserPool": "xHJD1dxPUSCEBhd9", "AllowedClients": ["Xv6fq1ugOADBMNZh", "KqdES6ZaoCZ5Gf6p", "uL5Hy9s4et1DMuvd"], "AppId": "voDw1nzfyrBrfrFR", "AuthorizationEndpoint": "EmIfif22fTryFIBW", "ClientId": "KyuyqZPGyVyjmWzT", "EmptyStrFieldList": ["tnuon0PR6GG6WWQC", "HjmZlaJryyIR5JiG", "Pa5KVQKYwP3IV3ob"], "EnableServerLicenseValidation": true, "Environment": "Nr9LAa8JVRkAYGBL", "FederationMetadataURL": "K1F0eJ6RlpjeDuZD", "GenericOauthFlow": false, "IncludePUID": true, "IsActive": false, "Issuer": "zZ7hxVcOXcSLwp8x", "JWKSEndpoint": "F48CgRdxuWoljJYO", "KeyID": "PNZ7NnzRCqOn0Zqc", "LogoURL": "giYqTIMInE1E7CGQ", "NetflixCertificates": {"encryptedPrivateKey": "6rCUPuaBuuXdhBWz", "encryptedPrivateKeyName": "gq2UomVvYQq4dpIi", "publicCertificate": "Dvhj7nFFK86XXnDY", "publicCertificateName": "HniSn7IZbzGFzmWz", "rootCertificate": "b3qRqhHX4dawQlrM", "rootCertificateName": "InWyakNd3qUF8WUj"}, "OrganizationId": "8lDI8e0qIuzUJYgH", "PlatformName": "4LBYQkxdknBevZQK", "PrivateKey": "VOARXIlhA4bKJf3d", "RedirectUri": "WzTwXeZkWbzD5cV2", "RegisteredDomains": [{"affectedClientIDs": ["pEhKy1fOVYbbRzN9", "0fTHn9vMovuyTlrZ", "14D9P6zvTm2Oj6dq"], "domain": "bvJSmpF04ZxPPOVE", "namespaces": ["6gAkdVl9j3UnEpcg", "FB7VppGEli0P8WXt", "8WFxcbYHVn5kgO95"], "roleId": "QsTCXbMC6wgBumq7", "ssoCfg": {"googleKey": {"xkTR8y6rAQRz70Mw": {}, "KNSZWFsRc2EmH8Pw": {}, "4arjVCIPVdHS3gk2": {}}, "groupConfigs": [{"assignNamespaces": ["5gSxVCquQuuTgeWa", "pq4aj637bJ8ekF1Z", "jY8heyaaDQHoG9RA"], "group": "dPxNbdQDlXeEnGIO", "roleId": "BIfQEi1nEtsU9Pin"}, {"assignNamespaces": ["hYkyjleqOFpZs9Js", "lPPbqmLj4o1IyfoS", "FW4CBHavmB9I9u8F"], "group": "UlQmIpFBjqRR6uXU", "roleId": "j5nJ1BWfZiHVWidz"}, {"assignNamespaces": ["jeMcLmMUJ8IWcVSx", "EjWlctZoDCCJXHgs", "zapB76DXYi1IWyMe"], "group": "B249UqdPlYO0KA8e", "roleId": "2sr8DLKpkd8lwrGw"}]}}, {"affectedClientIDs": ["31vIg1BvKSzzaUkc", "L2OLuT48xGbshyGC", "kKN14eNQ2fBwVEpA"], "domain": "6fszWzxUzoeoSw1Z", "namespaces": ["zzpX9IcNBAK4Rb7G", "PJlsnLWWmPiNqFb1", "lYGVV2kgZZpJefU1"], "roleId": "tSGNc9UGVtLjqm8e", "ssoCfg": {"googleKey": {"963LjsNbKkszSouS": {}, "coIjlunvkPnNw5Zs": {}, "AceV3aqQNYEtFTbn": {}}, "groupConfigs": [{"assignNamespaces": ["6HbgrAQpbp7dPbLF", "7MJVfWwnrQnYQ8W9", "sNv3Tcd0Ol4TZcAp"], "group": "3aXyF2BKAJdqLx5g", "roleId": "FMXrznqoPdJSoO7r"}, {"assignNamespaces": ["bkcvoILXpQvcnoIz", "amQFtMMDRTBQs7Uo", "4VZrIi7rbfbwK1KT"], "group": "a413UzyEpXg3r6iN", "roleId": "dBEBhZAA2edJnUGl"}, {"assignNamespaces": ["Th6EYjmjnpSDIHcA", "eCItqranZhCXUdgF", "KYnRnGZLbq1QUog7"], "group": "M8onL85sKO2e6H6b", "roleId": "d1NLI6tZbWL1FSMQ"}]}}, {"affectedClientIDs": ["jvhkAuDiaWCy5iom", "orFYxvC7cTIj1Zv9", "Nex4oct0OlTS6fmU"], "domain": "YxRgoNYqKUWtwHKW", "namespaces": ["0ovr5BVnsJps8EFn", "eJRzryggw2FgJdfd", "IaUmECGpqy6KslmJ"], "roleId": "99jZAbS5j97gVYd2", "ssoCfg": {"googleKey": {"Ldg3b5URLvqjOmgR": {}, "2hqo6GdReOHBuiqM": {}, "e4daAluRrqBf1WtP": {}}, "groupConfigs": [{"assignNamespaces": ["YJ9EBTwqqU9A8s3W", "oGnBjQ5eWCqJXlvV", "ovlnVQ5G2gnWNAzb"], "group": "XQnHkC0Ov5WV6hRS", "roleId": "cPgKzADHy9TjpHBX"}, {"assignNamespaces": ["hswho82ITenE29Nm", "Yae4rQ1HbJv1rH6S", "ZaxT2zeg7fPkEYLC"], "group": "1Yumdj0l9j2i1CPY", "roleId": "bA74KAbnLl4xfF5N"}, {"assignNamespaces": ["PkO3YNWbuma0POMX", "38ydD088nXl6nIVe", "Nrka7p1E667dAswM"], "group": "Ib6ioodqrGokOgj3", "roleId": "uwZT4ZOEHsNzuzcN"}]}}], "RelyingParty": "PGVdNZA4vzfmS0bh", "SandboxId": "jWHZi3VdK2XqfLKJ", "Secret": "8LLqF1N431znt0o2", "TeamID": "XwACn6j2jGxwLrIY", "TokenAuthenticationType": "MslgKjWdM2IyoSVI", "TokenClaimsMapping": {"jw1jqENGtH69Lpgk": "tBSwktAyChby2Rsn", "5WsEfTF2zgcgJcJC": "C3glHyYTEoWO2TAO", "iltacwq9BpXydjRx": "UjrS5VRRRzJxd56i"}, "TokenEndpoint": "TzP4T6RsyBorjdQS", "UserInfoEndpoint": "CfyLZTs9f0K0hjv8", "UserInfoHTTPMethod": "iiJtxrv98keRxj1E", "googleAdminConsoleKey": "ePm9Ki1eCN775Chq", "scopes": ["rRncGDGyIlwgABhd", "KsBL65wswimzniwA", "I9nbgpJR9KAk8c1l"]}' \
    > test.out 2>&1
eval_tap $? 145 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 146 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'hdlnI8zAEFBzZhkl' \
    --body '{"affectedClientIDs": ["pAs38cT4CEDSpn9o", "oXimdjHkHXJkA0LW", "LxdXIktz6it3y3Xp"], "assignedNamespaces": ["6A3hXOiNU9dt5wj3", "ZmEnHZ3SHG2FK8BD", "BXj5azPDq4eOWpUS"], "domain": "ACJx6Jhv2LxI05Ky", "roleId": "tfryIpTZwb5Stwww", "ssoCfg": {"googleKey": {"n8j49Tx0tnhuisU0": {}, "py3rhw0c9xblD4lD": {}, "F3HsBIQIh10TJVZo": {}}, "groupConfigs": [{"assignNamespaces": ["q2gLD3fqZHAGLZ15", "lHuLUJwwgdLXGxyA", "T2BaWbPcsZMan03v"], "group": "0JPIoaNpwNZ1cnWV", "roleId": "6N5bTWD8eW3Rek5U"}, {"assignNamespaces": ["4Dkw9mP2PVOCO5Ig", "S5VkE6DKmMh7jUm1", "0Ht4n0JvEd3GVhWF"], "group": "Dy8buzn9EY71Nyd1", "roleId": "tlsb9LC3kkkUhOvI"}, {"assignNamespaces": ["bwqrlaRWPslGX4sx", "A5dbQHmb745mdS9h", "HgsPCBsT2qh6xplc"], "group": "e2MHDgiHFk5pUEcp", "roleId": "L0IeP7FvoitbPW4f"}]}}' \
    > test.out 2>&1
eval_tap $? 146 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 147 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId '3J0RA8aWuF17EAez' \
    --body '{"domain": "ZtFjkNcbS7yRI46b", "ssoGroups": ["hEPSb1jsS75sUEew", "BAeRkFRk7xhOPpBW", "9LhmMS8IUAhiU9eP"]}' \
    > test.out 2>&1
eval_tap $? 147 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 148 PartialUpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam partialUpdateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'LnGuICX1eoiPYH7J' \
    --body '{"affectedClientIDs": ["GMKQR3gDvqiXmyCY", "jyFbYvo4vGIPbxDE", "apV7e0I5jIYjfDKM"], "assignedNamespaces": ["78rkO7dALLVQzvp8", "pkrkpz7vxhbgrGv1", "Othgvpj213adlcvf"], "domain": "7zn7RGBFI2ZGkl8b", "roleId": "GtWBg2NVMPCDTN4W", "ssoCfg": {"googleKey": {"lfL1lrEFhpMeKMRs": {}, "kV56ghkVVLALdD6a": {}, "Zi3JOUbp424e2jOe": {}}, "groupConfigs": [{"assignNamespaces": ["CvzaWAEy81h9aLrT", "ODprelpA6NOR0qHW", "raxu9I8dv2nkYwln"], "group": "50HuEoBsjTkxxAlw", "roleId": "ME6g6PHsPQukRZ1p"}, {"assignNamespaces": ["OCfzNAt8uIvYiLGI", "lMIIwS7VFGEVnFlW", "8AyBFQCR5EeE5Ycy"], "group": "AWhVch1cbOHYHtO4", "roleId": "IaKzpWPbBgc2gDog"}, {"assignNamespaces": ["J0XbtZ5lvDX8sJPf", "tCqngvDWKOzfCsrH", "4Rz4CMxGzxndu3tu"], "group": "rU9EVbMcNSA50K8H", "roleId": "AGv16adb9PZtctS0"}]}}' \
    > test.out 2>&1
eval_tap $? 148 'PartialUpdateThirdPartyLoginPlatformDomainV3' test.out

#- 149 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'bJzLua1V6qC2qlgt' \
    > test.out 2>&1
eval_tap $? 149 'RetrieveSSOLoginPlatformCredential' test.out

#- 150 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'UO8NS6NuwEnckcyf' \
    --body '{"acsUrl": "4u02xWBRWM3robFk", "apiKey": "XJpSTKRCLRn9j5DX", "appId": "3RgF40L0Ci2ssYwp", "federationMetadataUrl": "4TyLIPfzVJ9DBRtY", "isActive": true, "redirectUri": "Q3wdqY3C8f3FWn49", "secret": "mLTOi8aycasubZ3L", "ssoUrl": "4JgRRykYNr76OG6R"}' \
    > test.out 2>&1
eval_tap $? 150 'AddSSOLoginPlatformCredential' test.out

#- 151 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'OpqWch8tQrzA9RUG' \
    > test.out 2>&1
eval_tap $? 151 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 152 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'Sk8E1AY6HV1DAxLo' \
    --body '{"acsUrl": "tDA1ZXkFVPGCE9bn", "apiKey": "FSXxM5S21QJ87Dgv", "appId": "WAhSnhuyIizmVzkO", "federationMetadataUrl": "86i56K8c2H07Kk1U", "isActive": false, "redirectUri": "8fqhKo6Ub6izgIGx", "secret": "FwWbG6mC0sDANBCT", "ssoUrl": "Wi8F05OKO2q6J5e7"}' \
    > test.out 2>&1
eval_tap $? 152 'UpdateSSOPlatformCredential' test.out

#- 153 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rd0V61su1PKoxzvQ' \
    --rawPID 'false' \
    --rawPUID 'true' \
    --body '{"platformUserIds": ["GiTbp9erop5CYhYG", "u9ZOzLBpZy8a0Upm", "yryQzDqoXMgfC1Bw"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 154 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cFSKsDIziRNQICXl' \
    --platformUserId 'sSUqllgXxGbvDrXI' \
    --pidType 'ESvl9ACCAAsC6DBa' \
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
    --body '{"config": {"minimumAllowedInterval": 16}, "type": "DSmdssoPWvym6MgZ"}' \
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
    --body '{"additions": [{"actions": [31, 22, 77], "resource": "OyAyyted9auCMrvU"}, {"actions": [48, 10, 26], "resource": "qqsDMqz3tdcaAGab"}, {"actions": [74, 52, 93], "resource": "Q5g3kX6sCe0ViRgw"}], "exclusions": [{"actions": [87, 35, 68], "resource": "miAA6UX0gFUp4xIZ"}, {"actions": [7, 74, 82], "resource": "EZu19FZF75pVkVcW"}, {"actions": [19, 100, 89], "resource": "MG1B0p8p2mFdd5u1"}], "overrides": [{"actions": [78, 30, 24], "resource": "LqJsLzZJP8GGeo34"}, {"actions": [84, 58, 93], "resource": "ZB8sHBCfaDanYsrg"}, {"actions": [22, 98, 45], "resource": "Slk1pz9A10eSOMsV"}], "replacements": [{"replacement": {"actions": [38, 11, 17], "resource": "2jaZE7exJC81EQBB"}, "target": "oSZXe1dKu2anv8iM"}, {"replacement": {"actions": [18, 57, 63], "resource": "07ltHG3RiS3f58Rl"}, "target": "7sggot8SWnKJCkjR"}, {"replacement": {"actions": [18, 29, 15], "resource": "rVKpJmTVFZtN031N"}, "target": "cbFPYdSae3omzCdi"}]}' \
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
    --roleId 'Ygy88OaIZEVhprhI' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetRoleNamespacePermissionV3' test.out

#- 162 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'SXTEgqHILZAAG2yr' \
    --after '30' \
    --before '28' \
    --limit '35' \
    > test.out 2>&1
eval_tap $? 162 'GetAdminUsersByRoleIdV3' test.out

#- 163 AdminQueryTagV3
samples/cli/sample-apps Iam adminQueryTagV3 \
    --namespace $AB_NAMESPACE \
    --limit '48' \
    --offset '24' \
    --tagName 'ifSioLPIPxi6gvxb' \
    > test.out 2>&1
eval_tap $? 163 'AdminQueryTagV3' test.out

#- 164 AdminCreateTagV3
samples/cli/sample-apps Iam adminCreateTagV3 \
    --namespace $AB_NAMESPACE \
    --body '{"tagName": "w6riamelndlL7E7m"}' \
    > test.out 2>&1
eval_tap $? 164 'AdminCreateTagV3' test.out

#- 165 AdminUpdateTagV3
samples/cli/sample-apps Iam adminUpdateTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'U58pQSDyoyeKrrJK' \
    --body '{"tagName": "VRNXXuydyCVRSGJX"}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateTagV3' test.out

#- 166 AdminDeleteTagV3
samples/cli/sample-apps Iam adminDeleteTagV3 \
    --namespace $AB_NAMESPACE \
    --tagId 'gHtVtQ2oc9KW4ofD' \
    > test.out 2>&1
eval_tap $? 166 'AdminDeleteTagV3' test.out

#- 167 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'QKxJhD5Xl15VaQTh' \
    > test.out 2>&1
eval_tap $? 167 'AdminGetUserByEmailAddressV3' test.out

#- 168 AdminBulkUpdateUsersV3
samples/cli/sample-apps Iam adminBulkUpdateUsersV3 \
    --namespace $AB_NAMESPACE \
    --body '{"updateRequest": {"skipLoginQueue": false}, "userIds": ["kGyIglKDro3CrBED", "O3562t2ICOR5MGpS", "KhqnKtfoPU9WbpnM"]}' \
    > test.out 2>&1
eval_tap $? 168 'AdminBulkUpdateUsersV3' test.out

#- 169 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType 'LXcatAFxTxb6qR5q' \
    --body '{"bulkUserId": ["2BFD58wM3LknMbp2", "yHHuNpzM1MkfMo5K", "AuUh4utSaiqkCBZ9"]}' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetBulkUserBanV3' test.out

#- 170 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"findByPublisherNamespace": true, "userIds": ["ARi7SuNGPEsV2dLd", "gorAzponpKF9LgQT", "lER2E1nZcdlwBuGY"]}' \
    > test.out 2>&1
eval_tap $? 170 'AdminListUserIDByUserIDsV3' test.out

#- 171 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["OzJgt6qn9tWe6mTO", "Z4vHjZw7CSEo10fO", "RxSDFORcxEYSnUVP"]}' \
    > test.out 2>&1
eval_tap $? 171 'AdminBulkGetUsersPlatform' test.out

#- 172 AdminCursorGetUserV3
samples/cli/sample-apps Iam adminCursorGetUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"cursor": {"cursorTime": "cY03QxOm5M3Rg0Wo", "userId": "vJs3r2x4w5jv4DIa"}, "fields": ["NX3FPSKJSVfBYwNB", "cu7GEYLR9S7Nyiu9", "NEXxxZtij1En3LYg"], "limit": 46}' \
    > test.out 2>&1
eval_tap $? 172 'AdminCursorGetUserV3' test.out

#- 173 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["AFf540YlDx2dKWgq", "lsfg5UQOYly4nTMY", "PKVmC4W4Gv0S2zhD"], "isAdmin": false, "languageTag": "l5L0VLyKgJ26gkax", "namespace": "tacuHi79DuIPlMhj", "roles": ["EkHtFEChtSiAZLHJ", "yXR8L3NqFBjevhK6", "cl6FpyqZPPplSNht"]}' \
    > test.out 2>&1
eval_tap $? 173 'AdminInviteUserV3' test.out

#- 174 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '9' \
    --offset '5' \
    --platformUserId 'uZMtbMEQVaFx15Wl' \
    --platformId 'HTjBw6NUVlQzCUrE' \
    > test.out 2>&1
eval_tap $? 174 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 175 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '63' \
    --offset '88' \
    > test.out 2>&1
eval_tap $? 175 'AdminListUsersV3' test.out

#- 176 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '5GLwGqOUKdPP7tnA' \
    --endDate 'tQVMhGLl8PnHzMzM' \
    --includeTotal 'true' \
    --limit '21' \
    --offset '99' \
    --platformBy 'J72qAtAXOHF2i7PG' \
    --platformId 'qISoaWF0GPfhfT58' \
    --query 'QKlocxcy2naKztHX' \
    --roleIds 'RSEW67byuSPYVUIo' \
    --selectedFields 'eW6ZCTA7CofRkX1C' \
    --skipLoginQueue 'false' \
    --startDate 's3kRRfwBycUaq6sT' \
    --tagIds 'gTJvINgfIV4R60ez' \
    --testAccount 'false' \
    > test.out 2>&1
eval_tap $? 176 'AdminSearchUserV3' test.out

#- 177 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["ErrE9qkpNiFYbIrd", "JiUKzQvQzfTbPPcL", "RNnJ1JWXtef4KeJz"]}' \
    > test.out 2>&1
eval_tap $? 177 'AdminGetBulkUserByEmailAddressV3' test.out

#- 178 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'OY5nVSxfe0y29iY0' \
    > test.out 2>&1
eval_tap $? 178 'AdminGetUserByUserIdV3' test.out

#- 179 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YoZWJntFRfrUeyKR' \
    --body '{"avatarUrl": "MPvr0DwWHDodxCsO", "country": "XJ2OIGUBx4lsIXFN", "dateOfBirth": "RdXFIlbFVlkCxOuf", "displayName": "U9Cs5U9QCvDkqGtL", "languageTag": "MsBFciUwaMhJ4Q0F", "skipLoginQueue": true, "tags": ["pZUp8FCFP555AYqU", "wfWngGeBcrIyUIYx", "1iLvttUkYjROqbHl"], "uniqueDisplayName": "q0eDh1FCHi2FEkYe", "userName": "zlDqj4jWpM7OjYah"}' \
    > test.out 2>&1
eval_tap $? 179 'AdminUpdateUserV3' test.out

#- 180 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dt00UjvWcJzBUoVG' \
    --activeOnly 'true' \
    --after 'pEVAA5ot6UkR9KS7' \
    --before 'taQu4ngGPF7vfRXH' \
    --limit '79' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetUserBanV3' test.out

#- 181 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '6t6xcEeeRRcMH1Fs' \
    --body '{"ban": "0xCiYpfgwCUS2OzU", "comment": "0TObMK8JjMrNQmUa", "endDate": "zZn9k3zFKuDLijsu", "reason": "887Wo135ixqMwOin", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 181 'AdminBanUserV3' test.out

#- 182 AdminGetUserBanSummaryV3
samples/cli/sample-apps Iam adminGetUserBanSummaryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'eFKzmZ7EUvNSAEGG' \
    > test.out 2>&1
eval_tap $? 182 'AdminGetUserBanSummaryV3' test.out

#- 183 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId 'czJjBzc0wQ7QGVza' \
    --namespace $AB_NAMESPACE \
    --userId '7aHxKCkabMIRdwlm' \
    --body '{"enabled": false, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 183 'AdminUpdateUserBanV3' test.out

#- 184 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'mk3Sk6m1EvROpr7U' \
    --body '{"context": "WdZYGyYAFPf4nDTs", "emailAddress": "tJafrIkLY5nRIlpH", "languageTag": "IcCLl4DAaw7E5TxW", "upgradeToken": "KiqhPLEsTzeooZuG"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminSendVerificationCodeV3' test.out

#- 185 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PmIXpBIzuxtqGzof' \
    --body '{"Code": "7GaQFOTLTDBxG7sM", "ContactType": "UighdVQo9Bpg7VxI", "LanguageTag": "8ek8jJMpU9ijgLQR", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 185 'AdminVerifyAccountV3' test.out

#- 186 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId 'istw3WuyIAutE11Y' \
    > test.out 2>&1
eval_tap $? 186 'GetUserVerificationCode' test.out

#- 187 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TUKiZWpIPhXSXpI5' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetUserDeletionStatusV3' test.out

#- 188 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YYHwVJaP6ti5c4eR' \
    --body '{"deletionDate": 12, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 188 'AdminUpdateUserDeletionStatusV3' test.out

#- 189 AdminListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam adminListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BRXokeVZKq9SqlhY' \
    > test.out 2>&1
eval_tap $? 189 'AdminListUserAllPlatformAccountsDistinctV3' test.out

#- 190 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TJGEsOs8Rdklero9' \
    --body '{"code": "U8QFZffNsDTAmUaV", "country": "TnUYzFP85WRBEkRN", "dateOfBirth": "4wk4nmpy4xwGxha3", "displayName": "TZFT8u0cDSnCZnmg", "emailAddress": "dh75IqpiniBXyNnF", "password": "rsE2Qz023Cvkfp3T", "uniqueDisplayName": "5AtXUyBuiD8cznz1", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 190 'AdminUpgradeHeadlessAccountV3' test.out

#- 191 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'oIQjaAfjfVTtCP55' \
    > test.out 2>&1
eval_tap $? 191 'AdminDeleteUserInformationV3' test.out

#- 192 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DICc8IpHJmGkSxZJ' \
    --after '0.6329806103132708' \
    --before '0.29647748307707644' \
    --limit '62' \
    > test.out 2>&1
eval_tap $? 192 'AdminGetUserLoginHistoriesV3' test.out

#- 193 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cP1VJHZUCWGxgm18' \
    --body '{"languageTag": "9gahYUbCuC4Lvadh", "mfaToken": "nN1g3WpzFXVdQLdi", "newPassword": "P3cyXQm4HL17Xa99", "oldPassword": "hYAGbUEdOXNJ7x4k"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminResetPasswordV3' test.out

#- 194 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'fURx3JSVKSoUZke6' \
    --body '{"Permissions": [{"Action": 54, "Resource": "f9QqBg9fMViyTUxT", "SchedAction": 78, "SchedCron": "y0W1K5eyqlGZaMPQ", "SchedRange": ["hPLL298XzLctRpd9", "3OEKGYGG0WxLgtw8", "sgAxzVfb7j0azBh2"]}, {"Action": 23, "Resource": "AJNe1UzejlOKWx3J", "SchedAction": 90, "SchedCron": "tqqorqdlxninHCdz", "SchedRange": ["eXh3jTmpQbatT8TY", "LL2VvY7LgqtkVgPP", "4lnM9ncVyjGuQfV6"]}, {"Action": 61, "Resource": "0VjEKaK2DPciyXEc", "SchedAction": 66, "SchedCron": "baCmpFgHk6awtPQI", "SchedRange": ["MYbgtjQCUVs4wGOA", "cYv5SAnSG3fRv7C5", "fy6OvEA31LmoRHJ4"]}]}' \
    > test.out 2>&1
eval_tap $? 194 'AdminUpdateUserPermissionV3' test.out

#- 195 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'xib0vBmj5YlN7oov' \
    --body '{"Permissions": [{"Action": 14, "Resource": "XbT11cMYLe70VSEb", "SchedAction": 32, "SchedCron": "QBzIgzJroifpN3ag", "SchedRange": ["9WdR8PCnCH027e5o", "LRtx9wdMfSSMb64w", "hJEPCQG7woOgXltI"]}, {"Action": 1, "Resource": "K2YKLdpOmcYQuNnH", "SchedAction": 53, "SchedCron": "Beq4cxsJBF0IpoPh", "SchedRange": ["6DAQTxgvvHdyd7ZJ", "Ff0XVgunT7Hz7Vsl", "ZLT5RPnM3xiL9C73"]}, {"Action": 30, "Resource": "QibMmfBrNyYsTOOg", "SchedAction": 16, "SchedCron": "l0V1xqrtXxocHnbm", "SchedRange": ["2Vw7sDEw0yqr9dRU", "baQK1YpyPfUFBtmi", "nkVEpBskcSzexASZ"]}]}' \
    > test.out 2>&1
eval_tap $? 195 'AdminAddUserPermissionsV3' test.out

#- 196 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'lz7ZwEAZICyfO3jp' \
    --body '[{"Action": 33, "Resource": "2lQfZejXO4GKeEiS"}, {"Action": 56, "Resource": "55Wviooy33K7dOmJ"}, {"Action": 44, "Resource": "2HwfsOQPXxO3B4A8"}]' \
    > test.out 2>&1
eval_tap $? 196 'AdminDeleteUserPermissionBulkV3' test.out

#- 197 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '17' \
    --namespace $AB_NAMESPACE \
    --resource 'GUxC83MAAGY4RkkL' \
    --userId '4boQXQOifvLKdiwv' \
    > test.out 2>&1
eval_tap $? 197 'AdminDeleteUserPermissionV3' test.out

#- 198 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'asZAQV2u54RuqIvD' \
    --after '8YRWMnxHoEKnMz1t' \
    --before 'FOb5oCE9eN0nHF6S' \
    --limit '64' \
    --platformId 'MVlXQEhFrtEo5pjI' \
    --targetNamespace 'Gcgm8nFbtLzvlVKz' \
    > test.out 2>&1
eval_tap $? 198 'AdminGetUserPlatformAccountsV3' test.out

#- 199 AdminListAllDistinctPlatformAccountsV3
samples/cli/sample-apps Iam adminListAllDistinctPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pr5CYQHI8QQBy1cP' \
    --status 'YXnk3Q3XQjrteNeZ' \
    > test.out 2>&1
eval_tap $? 199 'AdminListAllDistinctPlatformAccountsV3' test.out

#- 200 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'JjyiBmaSBqiBphDw' \
    > test.out 2>&1
eval_tap $? 200 'AdminGetListJusticePlatformAccounts' test.out

#- 201 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '4gsTBIhISENZgZxW' \
    --userId 'WvFFb0XldP4pagj8' \
    --createIfNotFound 'true' \
    > test.out 2>&1
eval_tap $? 201 'AdminGetUserMapping' test.out

#- 202 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'l0qEUBI8We6jU5OA' \
    --userId 'Ye3ca6rBH7vN5LDD' \
    > test.out 2>&1
eval_tap $? 202 'AdminCreateJusticeUser' test.out

#- 203 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'n56k0jsrTaMsdoIY' \
    --skipConflict 'true' \
    --body '{"platformId": "syIVXUaXcRCt8lC4", "platformUserId": "nDUinkkw9cJMHAGb"}' \
    > test.out 2>&1
eval_tap $? 203 'AdminLinkPlatformAccount' test.out

#- 204 AdminGetUserLinkHistoriesV3
samples/cli/sample-apps Iam adminGetUserLinkHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'qD2hjLdiqDqYOMEG' \
    --platformId 'OlexVJboLUZPuJwk' \
    > test.out 2>&1
eval_tap $? 204 'AdminGetUserLinkHistoriesV3' test.out

#- 205 AdminPlatformUnlinkV3
eval_tap 0 205 'AdminPlatformUnlinkV3 # SKIP deprecated' test.out

#- 206 AdminPlatformUnlinkAllV3
samples/cli/sample-apps Iam adminPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1a4MMga7yIks7uqT' \
    --userId 'jWnIP8i7xSI3PDs9' \
    > test.out 2>&1
eval_tap $? 206 'AdminPlatformUnlinkAllV3' test.out

#- 207 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'gevXKaoM7aQK9aVk' \
    --userId 'TDMGXPjAFQ3nPyUX' \
    --ticket 'NecQ10EGLw9N9uKi' \
    > test.out 2>&1
eval_tap $? 207 'AdminPlatformLinkV3' test.out

#- 208 AdminDeleteUserLinkingHistoryByPlatformIDV3
eval_tap 0 208 'AdminDeleteUserLinkingHistoryByPlatformIDV3 # SKIP deprecated' test.out

#- 209 AdminDeleteUserLinkingRestrictionByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingRestrictionByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'WaxzCHoNtaquVerj' \
    --userId 'ke48aQGFZc5cIJp6' \
    > test.out 2>&1
eval_tap $? 209 'AdminDeleteUserLinkingRestrictionByPlatformIDV3' test.out

#- 210 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'dTK7t2IAGuDyY1zV' \
    --userId '1HWDVVSsV32RTznT' \
    --platformToken 'FfD6TMmD4oTNFcD9' \
    > test.out 2>&1
eval_tap $? 210 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 211 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'vyjsL2tucOjUxuEE' \
    --userId 'nBWDsnFqBVX7zQcj' \
    --crossNamespace 'true' \
    > test.out 2>&1
eval_tap $? 211 'AdminGetUserSinglePlatformAccount' test.out

#- 212 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId '1O2qsk4A0bxCDsgC' \
    --body '["WHHFXiLZt1XiwjQk", "898YPgyGQPGgWJ2Z", "0wqP3WtdSe0ylvzW"]' \
    > test.out 2>&1
eval_tap $? 212 'AdminDeleteUserRolesV3' test.out

#- 213 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId '6onHCDptwbW9xtLP' \
    --body '[{"namespace": "qlIVtoGlCXYlDDjQ", "roleId": "S3R7WmZuLvE6zERe"}, {"namespace": "PMgyuFpB3L1EY3uT", "roleId": "aw19I7c9kSzVTVRC"}, {"namespace": "JF0S94si6jyyLbDr", "roleId": "5lwxk1439shVgjWl"}]' \
    > test.out 2>&1
eval_tap $? 213 'AdminSaveUserRoleV3' test.out

#- 214 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'GbDkSzgBhfY8Ht5R' \
    --userId 'THduBGg4BQtg7vFs' \
    > test.out 2>&1
eval_tap $? 214 'AdminAddUserRoleV3' test.out

#- 215 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'UiYXBjxFP5jSlrYi' \
    --userId 'kxDxFip2GvMWbnMs' \
    > test.out 2>&1
eval_tap $? 215 'AdminDeleteUserRoleV3' test.out

#- 216 AdminGetUserStateByUserIdV3
samples/cli/sample-apps Iam adminGetUserStateByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'x7Ms54g2jhi0GKrc' \
    > test.out 2>&1
eval_tap $? 216 'AdminGetUserStateByUserIdV3' test.out

#- 217 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'am7TyR750IZMBRFx' \
    --body '{"enabled": false, "reason": "SZCYYFJIJ5x5U6Z6"}' \
    > test.out 2>&1
eval_tap $? 217 'AdminUpdateUserStatusV3' test.out

#- 218 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'MgBGBVVNCDNSAhxj' \
    --body '{"emailAddress": "fpKgg0C82PBIhCqc", "password": "txXcvhYxTsTB37jo"}' \
    > test.out 2>&1
eval_tap $? 218 'AdminTrustlyUpdateUserIdentity' test.out

#- 219 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'btks0bnp6gBVHbfe' \
    > test.out 2>&1
eval_tap $? 219 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 220 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'M1ou7HCkfiWJnVHR' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "vInazz7aCmVHFOJ2"}' \
    > test.out 2>&1
eval_tap $? 220 'AdminUpdateClientSecretV3' test.out

#- 221 AdminCheckThirdPartyLoginPlatformAvailabilityV3
samples/cli/sample-apps Iam adminCheckThirdPartyLoginPlatformAvailabilityV3 \
    --platformId 'bNX30Ljmgb0uphSI' \
    > test.out 2>&1
eval_tap $? 221 'AdminCheckThirdPartyLoginPlatformAvailabilityV3' test.out

#- 222 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'U6mnAqA9WfPXb6JZ' \
    --before 'hcHwKzr6orUXiq6c' \
    --isWildcard 'true' \
    --limit '76' \
    > test.out 2>&1
eval_tap $? 222 'AdminGetRolesV3' test.out

#- 223 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": true, "isWildcard": true, "managers": [{"displayName": "QjzWuay7Zxq8dAxv", "namespace": "bJkx64FFmp86XWWd", "userId": "apXqOlgvnfYTynrR"}, {"displayName": "XSuHSl7WasMzkAbh", "namespace": "LXkKAlKj3The3yfT", "userId": "D3bXVOzwuzN5cVQx"}, {"displayName": "Akz8dvNMDAxYOJoR", "namespace": "eQhQJvXlQiGPfQQS", "userId": "ElWZOuQ5mQJfgKuL"}], "members": [{"displayName": "MyjnXpykGEvNlQLR", "namespace": "JuHYvXwfgtKqXlu2", "userId": "4yQUOXcCd632gDpW"}, {"displayName": "SPFXPPNWK8LZszA6", "namespace": "dn7tsbuNKCg58S85", "userId": "3fm7TqfkAZhXK50G"}, {"displayName": "N5N01mNhNfy5U7Kk", "namespace": "t3UV0fzDHRBM9W4g", "userId": "HImtuv60uxwcKXij"}], "permissions": [{"action": 2, "resource": "EOw456xJlfXDCvun", "schedAction": 41, "schedCron": "qZP15L2xsiiJbqbH", "schedRange": ["EgGSbz2SJ8Kiu6sZ", "0VrpexK4HrKm1HAB", "3np3t9qFRTjPBBBB"]}, {"action": 45, "resource": "3ukdapIQzjI7WnJt", "schedAction": 86, "schedCron": "YmNfJULFVMJSY8oV", "schedRange": ["IgrTbH0nB3vtfnU6", "4RtuJwBpUoUnGjNH", "2zW3ioVs2f2y4WZL"]}, {"action": 55, "resource": "xx5xPsQrEBzO9IRc", "schedAction": 27, "schedCron": "icHYkGndN1YEO67O", "schedRange": ["eHknSKv4jYcFMmRN", "OxvBcrsDZCnBCVgk", "vKq9IqcRaPU4Zc4d"]}], "roleName": "pROhkc9ReqcEHQpq"}' \
    > test.out 2>&1
eval_tap $? 223 'AdminCreateRoleV3' test.out

#- 224 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId '1VvupAk7lsGEiAGu' \
    > test.out 2>&1
eval_tap $? 224 'AdminGetRoleV3' test.out

#- 225 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'SXJe3CNuWAmyowgM' \
    > test.out 2>&1
eval_tap $? 225 'AdminDeleteRoleV3' test.out

#- 226 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'nUtJh9z1NXWH0StW' \
    --body '{"deletable": false, "isWildcard": true, "roleName": "ekpSYDTrkfufioIo"}' \
    > test.out 2>&1
eval_tap $? 226 'AdminUpdateRoleV3' test.out

#- 227 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId 'YOCNa2HKKKIt4ScI' \
    > test.out 2>&1
eval_tap $? 227 'AdminGetRoleAdminStatusV3' test.out

#- 228 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'RWEpEbgDTDBZQakj' \
    > test.out 2>&1
eval_tap $? 228 'AdminUpdateAdminRoleStatusV3' test.out

#- 229 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'Gph5zQedrmedVeU0' \
    > test.out 2>&1
eval_tap $? 229 'AdminRemoveRoleAdminV3' test.out

#- 230 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId '3tgOuN470W7pVCWg' \
    --after 'HFrCCjh8ZnxajR71' \
    --before 'sNrvjix6kraT8yET' \
    --limit '86' \
    > test.out 2>&1
eval_tap $? 230 'AdminGetRoleManagersV3' test.out

#- 231 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'WogTBCvFn9WUGK8A' \
    --body '{"managers": [{"displayName": "ZI1LNddsgOGIzlDT", "namespace": "seIdNq1CRc0BgktO", "userId": "xq3R2Dh0rOOYcc1X"}, {"displayName": "3FkotjhUkBGU97ah", "namespace": "jqzb5jKwUOFYPW95", "userId": "v3d99DMkItatTQDN"}, {"displayName": "uM5nD1dnUiKTNvpA", "namespace": "h11pWCUx65VQp8jH", "userId": "FaA8H42aNgfD20SV"}]}' \
    > test.out 2>&1
eval_tap $? 231 'AdminAddRoleManagersV3' test.out

#- 232 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'WOyaH5vq22WcBRb2' \
    --body '{"managers": [{"displayName": "r4BUdMC5NMMpv8tZ", "namespace": "k790j7iNDXeVGzwO", "userId": "RtMjNDS9xzH7zQfN"}, {"displayName": "e9xL1ephAKnnr5YJ", "namespace": "WmLRWxBhGQ3sPtzA", "userId": "xV2NUOqekg8HrAXy"}, {"displayName": "lktCaPAAY1U40Bxf", "namespace": "WIArMFm2POAc0OCV", "userId": "r6EAGCc0V9Tiivvj"}]}' \
    > test.out 2>&1
eval_tap $? 232 'AdminRemoveRoleManagersV3' test.out

#- 233 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'Wsyj8pvcNvD37nTE' \
    --after 'uYb8kYhtj1ybbo22' \
    --before '16UG0ciiDLmxs5f8' \
    --limit '32' \
    > test.out 2>&1
eval_tap $? 233 'AdminGetRoleMembersV3' test.out

#- 234 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId '24hX7OlVui2CFaSR' \
    --body '{"members": [{"displayName": "tjP9skjX63yIWvNf", "namespace": "xyR1AF8dzmKUXpIz", "userId": "GfkGatzVbeR38iPZ"}, {"displayName": "q7zE72khX8DTETMq", "namespace": "tVXkWP8u26BSHnGr", "userId": "0SwdSzWJn1x84LyC"}, {"displayName": "xJa0VG3yXbWdufhq", "namespace": "h3BnyYvt6xjfN4AA", "userId": "td1cFKBrRNo6v7fS"}]}' \
    > test.out 2>&1
eval_tap $? 234 'AdminAddRoleMembersV3' test.out

#- 235 AdminRemoveRoleMembersV3
eval_tap 0 235 'AdminRemoveRoleMembersV3 # SKIP deprecated' test.out

#- 236 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '3zhAYiwVZUYyscIE' \
    --body '{"permissions": [{"action": 93, "resource": "yeciJoVvy2zZnolM", "schedAction": 20, "schedCron": "tWi3lDAxDf0uDVHV", "schedRange": ["XRiqSNvftQuflerf", "eW45HYCUIoCmKzKf", "b2CtKnEPS3B24gjH"]}, {"action": 70, "resource": "7OtXudoqDCCzDsoH", "schedAction": 86, "schedCron": "Tgs9fnwNKBNsBrQC", "schedRange": ["rcuIMPV1oGTbghbp", "XAbEHMgQ0tyhPSj8", "kh0zORaO3HDiQwXy"]}, {"action": 47, "resource": "pNUqxcJ6jFMJFzqA", "schedAction": 71, "schedCron": "hCCHLgnwDlx52Tmi", "schedRange": ["rQcGaevpk78ygtHq", "Rf5YuQlhNg6DdQQW", "uneRZoNYAggs2eee"]}]}' \
    > test.out 2>&1
eval_tap $? 236 'AdminUpdateRolePermissionsV3' test.out

#- 237 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId '0JFRYCOCXBr0PVVG' \
    --body '{"permissions": [{"action": 94, "resource": "FmNRfkbSpVU98YlL", "schedAction": 92, "schedCron": "aoiT5vMVYMCnJBHf", "schedRange": ["ZCHGflGR6qKhJi3N", "C7YpWmbxhscGDIdV", "0IwoD0deCJHkyDd0"]}, {"action": 33, "resource": "mlHXRuvmPuT1XbLd", "schedAction": 29, "schedCron": "QHn1QhNJaDMbBx5m", "schedRange": ["WJdl98NhSheuShaE", "pM8U9Yeg6uJZRBw1", "BixgADtbdc3lSz0r"]}, {"action": 69, "resource": "9P1j5YkSmXF0b6UF", "schedAction": 57, "schedCron": "feo6bn1qsanSltQ4", "schedRange": ["I0H3XGfrg0bY1Hxj", "XO7QEIA1wJJsWpOa", "ANrUe3gMk3FHUMx2"]}]}' \
    > test.out 2>&1
eval_tap $? 237 'AdminAddRolePermissionsV3' test.out

#- 238 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId 'pQgtlIhWZl6ZwlX2' \
    --body '["qyWRvu3QyAxk36Ak", "00dQzVnyS0NFJhM5", "8xKbmA38VlXJz0kx"]' \
    > test.out 2>&1
eval_tap $? 238 'AdminDeleteRolePermissionsV3' test.out

#- 239 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '98' \
    --resource 'Tmd6xGqXZNh5cHFW' \
    --roleId 'LG4tC2GxVpDw5zBc' \
    > test.out 2>&1
eval_tap $? 239 'AdminDeleteRolePermissionV3' test.out

#- 240 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 240 'AdminGetMyUserV3' test.out

#- 241 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'SnIhZmTlOTasiBIG' \
    --extendExp 'true' \
    --redirectUri 'yA8DIBYu00Sfic00' \
    --password 'erwtogaH3Su88Hkj' \
    --requestId 'i956bXnUQOU3asNe' \
    --userName 'KYg3umr22WmOZdzc' \
    > test.out 2>&1
eval_tap $? 241 'UserAuthenticationV3' test.out

#- 242 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'XtTG7vFrZt3ZR2Lm' \
    --linkingToken 'UfIOiOzwsMhq5f0G' \
    --password 'S9qwbj7D5ee3gyoj' \
    --username 'urWiQxozrhdsXpA6' \
    > test.out 2>&1
eval_tap $? 242 'AuthenticationWithPlatformLinkV3' test.out

#- 243 AuthenticateAndLinkForwardV3
samples/cli/sample-apps Iam authenticateAndLinkForwardV3 \
    --extendExp 'false' \
    --clientId 'jP8P0ODW9W5YbFYX' \
    --linkingToken 'ArSM1BUXZIU7xZTJ' \
    --password 'Fcp0xQWwX6KdZmph' \
    --username 'mysbvA3nNMwsisYp' \
    > test.out 2>&1
eval_tap $? 243 'AuthenticateAndLinkForwardV3' test.out

#- 244 PublicGetSystemConfigV3
samples/cli/sample-apps Iam publicGetSystemConfigV3 \
    > test.out 2>&1
eval_tap $? 244 'PublicGetSystemConfigV3' test.out

#- 245 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'eoXKJypZilMCAwLL' \
    --extendExp 'false' \
    --linkingToken 's1x1PQYd7rOJcRx0' \
    > test.out 2>&1
eval_tap $? 245 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 246 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --redirectUri 'NBdWnMcpDwUatlTF' \
    --state 'UsruloiEEuHd2KjW' \
    --platformId '3Tk5MxCVE42SXnTG' \
    > test.out 2>&1
eval_tap $? 246 'RequestOneTimeLinkingCodeV3' test.out

#- 247 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'KjsTx1LduWP8fTaI' \
    > test.out 2>&1
eval_tap $? 247 'ValidateOneTimeLinkingCodeV3' test.out

#- 248 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData 'NB9S5aAIsyePmJxp' \
    --isTransient 'true' \
    --clientId 'g9gLcr0RduGXuk5v' \
    --oneTimeLinkCode 'lYalBuXochLyEktt' \
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
    --codeChallenge 'cORsDDJXM3xvtsXo' \
    --codeChallengeMethod 'plain' \
    --clientId 'uEjphEI7kgEiOjwI' \
    > test.out 2>&1
eval_tap $? 251 'RequestTokenExchangeCodeV3' test.out

#- 252 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'T9GbWUYNTzURx4bX' \
    --userId '1jndrz6lrC9jCwCo' \
    --platformUserId 'hQ8KOr5Lzp31kTzU' \
    > test.out 2>&1
eval_tap $? 252 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 253 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'LBFQLJR2ny6rVW3g' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 253 'RevokeUserV3' test.out

#- 254 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --blockedPlatformId 'sz4K0bsVNZwDeP8p' \
    --codeChallenge 'EfmCXhusG4LMD4q3' \
    --codeChallengeMethod 'plain' \
    --createHeadless 'true' \
    --loginWebBased 'true' \
    --nonce 'CEBLnlRSD5oju2x0' \
    --oneTimeLinkCode 'Xw4XTnVYTWFFp7O1' \
    --redirectUri '0SaBrZgAP6qFQJ9O' \
    --scope '4pGJ57NcG1UrP2Cm' \
    --state 'Fxvn5J0ZTZPlaLiA' \
    --targetAuthPage 'Wbdok666bEjG6T6I' \
    --useRedirectUriAsLoginUrlWhenLocked 'true' \
    --clientId 'jJbD7mXB5SZ1UVKR' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 254 'AuthorizeV3' test.out

#- 255 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token '9VGGnhGCatz1gIqc' \
    > test.out 2>&1
eval_tap $? 255 'TokenIntrospectionV3' test.out

#- 256 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 256 'GetJWKSV3' test.out

#- 257 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'r6VNJwoeEmamhKvl' \
    --factor 'Q3RQGoHakp4QhdsY' \
    --mfaToken 'sq3pVj2eoclQTG7K' \
    > test.out 2>&1
eval_tap $? 257 'SendMFAAuthenticationCode' test.out

#- 258 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor '5TUabrLbnwPvQSsh' \
    --mfaToken '5pcek6sv5DqybtG5' \
    > test.out 2>&1
eval_tap $? 258 'Change2faMethod' test.out

#- 259 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code '03N0Y4W8pudO9xzh' \
    --factor 'izRNZIvujHiTs5L0' \
    --mfaToken 'G9XqIJmUBodbBAKN' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 259 'Verify2faCode' test.out

#- 260 Verify2faCodeForward
samples/cli/sample-apps Iam verify2faCodeForward \
    --defaultFactor 'KSsf6SAVSgDicckn' \
    --factors 'EAEgO4g7WPVieUuv' \
    --rememberDevice 'true' \
    --clientId 'QMoJbe3QxRvspKzh' \
    --code '6OrXXjzuKJVlvg2x' \
    --factor 'p4GBNzwPJiNtbJHs' \
    --mfaToken 'JF2SRbTAkemXxxSk' \
    > test.out 2>&1
eval_tap $? 260 'Verify2faCodeForward' test.out

#- 261 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9s152PJd8HYTrN4K' \
    --userId 'IWozifQoNgEv35SD' \
    > test.out 2>&1
eval_tap $? 261 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 262 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'nADBeoeJ9KZ7FrAi' \
    --clientId '78OOjYOYSo3BHcgd' \
    --redirectUri 'X7wTZ8pc0Y5YGuYQ' \
    --requestId '1pZgQ7Wim9Jg6iNA' \
    > test.out 2>&1
eval_tap $? 262 'AuthCodeRequestV3' test.out

#- 263 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId 'jau9Gf59bKcxWLTm' \
    --additionalData 'UK4KNrZDGM6lBqM8' \
    --clientId 'ov7fnEydsOU5cxXG' \
    --createHeadless 'false' \
    --deviceId 'nWxjJXVRBWP06hd7' \
    --macAddress 'MNDNNrVdQBpLY5vp' \
    --platformToken 'INyScbUPbP4eprHX' \
    --serviceLabel '0.5131044011251032' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 263 'PlatformTokenGrantV3' test.out

#- 264 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 264 'GetRevocationListV3' test.out

#- 265 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'QzzJfN1udvQcmRtw' \
    > test.out 2>&1
eval_tap $? 265 'TokenRevocationV3' test.out

#- 266 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'lFAqWk9o0uTSy5F4' \
    --simultaneousTicket 'VOwPJIRPSxMOdjuD' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'KMb9bf8fsi2Ncybh' \
    > test.out 2>&1
eval_tap $? 266 'SimultaneousLoginV3' test.out

#- 267 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'aBLDMQiejIUE8Tv7' \
    --clientId 'fyZQ2leJNpWOlWxW' \
    --clientSecret '9oWDcL8ZKPm70Z1R' \
    --code 'zljRAOeaELRdJcqc' \
    --codeVerifier '8BRXAeHsOLODCRBH' \
    --extendNamespace 'buXPiJmT6eYuVvLE' \
    --extendExp 'false' \
    --password '2K9Aatn3NMzb1Gph' \
    --redirectUri 'okjuMeTUzHHJjvzr' \
    --refreshToken 'bTo8jT0J5vKmRByC' \
    --scope 'C8NBpjYyVysEK9jH' \
    --username '4C8uHR3HrVY7kuv3' \
    --grantType 'urn:ietf:params:oauth:grant-type:extend_client_credentials' \
    > test.out 2>&1
eval_tap $? 267 'TokenGrantV3' test.out

#- 268 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'hCr30LyYMQRPUwMz' \
    > test.out 2>&1
eval_tap $? 268 'VerifyTokenV3' test.out

#- 269 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId '99RfOWHrmpKo5SF6' \
    --code 'svl1syZVZUQSPbsI' \
    --error 'Fm4iVeXvDFREtxyu' \
    --openidAssocHandle '7QxyqrXVoTovNphP' \
    --openidClaimedId '9PqZcC18RfaTVStC' \
    --openidIdentity 'zJSeajBbHRUrIGIS' \
    --openidMode 'ewHsduQ6yU5306fJ' \
    --openidNs 'dYW20uJC6EK0oUNY' \
    --openidOpEndpoint 'u9Z3gykZk32N8sXL' \
    --openidResponseNonce 'PJbYZUlvHG9TupjH' \
    --openidReturnTo 'IMyfDiKITdV0RfIq' \
    --openidSig 'F4ykfFQpi1ptUnZS' \
    --openidSigned 'sAT1KrhKcvHJRIOr' \
    --state 'Wcdo9qhfWH9FwxLF' \
    > test.out 2>&1
eval_tap $? 269 'PlatformAuthenticationV3' test.out

#- 270 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId 'pahAr7mO8SUTMF0y' \
    --platformToken 'jfDVYNihJs45SN5Y' \
    > test.out 2>&1
eval_tap $? 270 'PlatformTokenRefreshV3' test.out

#- 271 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'false' \
    --languageCode 'dMPo5cbMA9jcbyTi' \
    > test.out 2>&1
eval_tap $? 271 'PublicGetInputValidations' test.out

#- 272 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'FMwapQTlnjLNfcUm' \
    > test.out 2>&1
eval_tap $? 272 'PublicGetInputValidationByField' test.out

#- 273 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'q1cxeKbBGUjUjnsR' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 273 'PublicGetCountryAgeRestrictionV3' test.out

#- 274 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey '6WaKiXKfXn0gdDeA' \
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
    --clientId 'AGR7bki0ZYQDg0Lj' \
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
    --requestId 'LOOATQtnNd4B9Fb9' \
    > test.out 2>&1
eval_tap $? 281 'PublicGetAsyncStatus' test.out

#- 282 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'ZgrVsy5WDzuGh6N1' \
    --limit '87' \
    --offset '60' \
    --platformBy 'Z9oc6A5ZrenWtt1U' \
    --platformId 't2H3qNgL5rVBMs0p' \
    --query 'zjVyQj5ldlMqRnRB' \
    > test.out 2>&1
eval_tap $? 282 'PublicSearchUserV3' test.out

#- 283 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "44mUfss71O8silsu", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "VKsmtjrD2huNwMIU", "policyId": "ADpxYpBh55u4w7fm", "policyVersionId": "dywi6Gbl068YdcCM"}, {"isAccepted": true, "localizedPolicyVersionId": "OhuPABsUCWNKTWMM", "policyId": "xXyPvCcaQYAqHKjA", "policyVersionId": "EtCAMmTlAYZLFwfq"}, {"isAccepted": true, "localizedPolicyVersionId": "4rL8EqECvHf762yJ", "policyId": "tUzUJTUtbO5QOhzH", "policyVersionId": "9s0A8pZcBLw60zP1"}], "authType": "TGXEyPpkKtW2Yqvy", "code": "zWrH04WnzGN2dWCf", "country": "u8lbYx2YbiGgmY0f", "dateOfBirth": "zrSKKVSRUAINarNu", "displayName": "2N2uwpwkm04DUnAJ", "emailAddress": "VNfYGWqS23bJjEFj", "password": "STSkhm184OZSJXtt", "reachMinimumAge": true, "uniqueDisplayName": "flTMY6x2gj4UOG01"}' \
    > test.out 2>&1
eval_tap $? 283 'PublicCreateUserV3' test.out

#- 284 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field '0guv0cLf4NBm548v' \
    --query 'Fq1LBdOIB1Pcyv7W' \
    > test.out 2>&1
eval_tap $? 284 'CheckUserAvailability' test.out

#- 285 PublicBulkGetUsers
eval_tap 0 285 'PublicBulkGetUsers # SKIP deprecated' test.out

#- 286 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "MbCahn0V6N1IWC4q", "languageTag": "dvbuBRBgwdqvxNDb"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicSendRegistrationCode' test.out

#- 287 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xVmau8UAlgFLdEvs", "emailAddress": "qX9WIEDgO4ZK5gFI"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicVerifyRegistrationCode' test.out

#- 288 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "guK2r6tIhpoLPZ3Z", "languageTag": "tVBd5r6tS2mun4C3"}' \
    > test.out 2>&1
eval_tap $? 288 'PublicForgotPasswordV3' test.out

#- 289 PublicValidateUserInput
samples/cli/sample-apps Iam publicValidateUserInput \
    --namespace $AB_NAMESPACE \
    --body '{"displayName": "mRdgWSaUniSHK3QR", "password": "EONPVhmNWm07fTaH", "uniqueDisplayName": "JoneXIY9yWOwLfaN", "username": "KleAgMdp3GfEPgY4"}' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserInput' test.out

#- 290 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId 'oGxqtf3DLDcw6wdT' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 290 'GetAdminInvitationV3' test.out

#- 291 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId 'VDrdtN7MXmgfj2S5' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "G2xwynfqkQ1rIGcD", "acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "fy1yIea1j2FaPzWY", "policyId": "QuElSMHdgHTuwgij", "policyVersionId": "V4EQ4h8DdyRylYRX"}, {"isAccepted": true, "localizedPolicyVersionId": "1GOSDqPrywYUd1SN", "policyId": "pafQlhA0EpwP0YyP", "policyVersionId": "o4xkPsjbo75SWsps"}, {"isAccepted": false, "localizedPolicyVersionId": "mDUkQnPPqwjnJkfW", "policyId": "QAZ6SSe3zuJsuvN3", "policyVersionId": "EVPSa4k40GiCq1Ca"}], "authType": "2TDZdPwWmIq6syWb", "code": "F2KXWz6aB8hkUyqh", "country": "I2OfxsDwNBNCJ8LG", "dateOfBirth": "TczxplzYZuA90hsU", "displayName": "SRCADCe0sv1DHjZN", "emailAddress": "xiCVVFrVgc8AB9Ko", "password": "QOYizOUi0WdvdCoP", "reachMinimumAge": false, "uniqueDisplayName": "ofnZOWcgETCVnuWg"}' \
    > test.out 2>&1
eval_tap $? 291 'CreateUserFromInvitationV3' test.out

#- 292 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Dj1tbAjG1xdiJGmr", "country": "DDDi7mpxx8Vbb4YD", "dateOfBirth": "R51rqSQAqO8SUU65", "displayName": "EuCU0BTNlnYUxUxG", "languageTag": "GsR7zHGs8UGUGdYh", "uniqueDisplayName": "aOQ3kd83skO8iJLK", "userName": "unWLPyUtnel0vi8t"}' \
    > test.out 2>&1
eval_tap $? 292 'UpdateUserV3' test.out

#- 293 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "wLsfCraHJ2dCYjkQ", "country": "FCeNfJtZTbMXC0Nd", "dateOfBirth": "y1eV2rh0emgpS3Lv", "displayName": "mjbLhKkMFquWQdF9", "languageTag": "p20wSzPBbUV8gHCj", "uniqueDisplayName": "jtZTVPkdbLio8IzI", "userName": "C8tcUu1fY2Llj8ec"}' \
    > test.out 2>&1
eval_tap $? 293 'PublicPartialUpdateUserV3' test.out

#- 294 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "z5obCs11eZUYG9am", "emailAddress": "lGUsiJXGwXUHflYn", "languageTag": "skQkQjWTucbRPKRr", "upgradeToken": "jmqIa1xa5BJedVqD"}' \
    > test.out 2>&1
eval_tap $? 294 'PublicSendVerificationCodeV3' test.out

#- 295 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "hUmEjhaabhqaWWjd", "contactType": "DUvgMx2d7WzOWwv0", "languageTag": "zxplM7CukW5zSylc", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 295 'PublicUserVerificationV3' test.out

#- 296 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "xnXfwh0YU0j8wrV9", "country": "ExWN45aLKchw3YOw", "dateOfBirth": "VkNwdiXGl7SgrA1g", "displayName": "jnsS6mljnAaAQut0", "emailAddress": "9tdICSmUJLuZxxtU", "password": "2FA95gRE4ZDibSH9", "uniqueDisplayName": "DmiJeow2pToQrDxR", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 296 'PublicUpgradeHeadlessAccountV3' test.out

#- 297 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "EqadqTYqxNF9yD00", "password": "Fh9RHl56jceIRqUd"}' \
    > test.out 2>&1
eval_tap $? 297 'PublicVerifyHeadlessAccountV3' test.out

#- 298 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "DemfYK426slUl1n5", "mfaToken": "JTcqyylwtdsNbyYv", "newPassword": "1pNqo1WchUeOPgfn", "oldPassword": "RRKXI6qUSsIWCZUB"}' \
    > test.out 2>&1
eval_tap $? 298 'PublicUpdatePasswordV3' test.out

#- 299 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'u3S2HqYVzb8lKGwj' \
    > test.out 2>&1
eval_tap $? 299 'PublicCreateJusticeUser' test.out

#- 300 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1wAFO2GYQDJZmAme' \
    --redirectUri 'OKwmAhC5FmyPBe8U' \
    --ticket 'enkE1qzW89BSZ4Bw' \
    > test.out 2>&1
eval_tap $? 300 'PublicPlatformLinkV3' test.out

#- 301 PublicPlatformUnlinkV3
eval_tap 0 301 'PublicPlatformUnlinkV3 # SKIP deprecated' test.out

#- 302 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId '1JeiAxPjbUc7EtlV' \
    > test.out 2>&1
eval_tap $? 302 'PublicPlatformUnlinkAllV3' test.out

#- 303 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'FB4q9SRgjU8m1KNC' \
    --ticket '2NpmcIjGs1vhgo4B' \
    > test.out 2>&1
eval_tap $? 303 'PublicForcePlatformLinkV3' test.out

#- 304 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId 'NFFxaYGwWH5naRkj' \
    --clientId 'huKqCcYxXrxt3KKA' \
    --redirectUri 'XEDDj81uH1LOS0Fx' \
    > test.out 2>&1
eval_tap $? 304 'PublicWebLinkPlatform' test.out

#- 305 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'PeRGb5aAiJGVIeV2' \
    --code 'o0mmiGxT2uzZNVOw' \
    --state 'CYNwjJGCHHkeq4cM' \
    > test.out 2>&1
eval_tap $? 305 'PublicWebLinkPlatformEstablish' test.out

#- 306 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'MJeMB49PhhMcFwrC' \
    --code '5Yv7I13AljevxI76' \
    --state 'zBjN4GlhIBRT7JDh' \
    > test.out 2>&1
eval_tap $? 306 'PublicProcessWebLinkPlatformV3' test.out

#- 307 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "gXiQ7jE4onjyED8S", "userIds": ["FUvXrryUXo49IWY7", "4bMMfvN5w5aNUJ8g", "nreG02tcigiE8pNY"]}' \
    > test.out 2>&1
eval_tap $? 307 'PublicGetUsersPlatformInfosV3' test.out

#- 308 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"clientId": "Z8BhTKAeGknShDCd", "code": "JC04AhgCENGQCYRw", "emailAddress": "hDGVOV0nJcAxSiKY", "languageTag": "87BrjbTpR4GkxuRK", "newPassword": "Q54ciGk3R4ZT7CpM"}' \
    > test.out 2>&1
eval_tap $? 308 'ResetPasswordV3' test.out

#- 309 PublicGetUserByUserIdV3
eval_tap 0 309 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 310 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'q6siCzXs2fNIIxt0' \
    --activeOnly 'true' \
    --limit '60' \
    --offset '12' \
    > test.out 2>&1
eval_tap $? 310 'PublicGetUserBanHistoryV3' test.out

#- 311 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'TW9gkfXNnyix3MjB' \
    > test.out 2>&1
eval_tap $? 311 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 312 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'rQHcVJQB4pzBgYQ2' \
    > test.out 2>&1
eval_tap $? 312 'PublicGetUserInformationV3' test.out

#- 313 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'YjhHRW8KIQ8t7dWB' \
    --after '0.37102068167879376' \
    --before '0.4514828891891908' \
    --limit '17' \
    > test.out 2>&1
eval_tap $? 313 'PublicGetUserLoginHistoriesV3' test.out

#- 314 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'kHtqhyBNwwwvyxON' \
    --after 'RAGUVar6i4dj86R2' \
    --before 'ZDgyyEoUW7tHopTl' \
    --limit '31' \
    --platformId 'b5y7EXhmHIJ8QnIH' \
    > test.out 2>&1
eval_tap $? 314 'PublicGetUserPlatformAccountsV3' test.out

#- 315 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'VfTsA3ZQJiRPQCeD' \
    > test.out 2>&1
eval_tap $? 315 'PublicListJusticePlatformAccountsV3' test.out

#- 316 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'RJKomKcSbCgb0a69' \
    --body '{"platformId": "QzW35NbMPhFim5Ts", "platformUserId": "xGBW0jsSjZfcQiz9"}' \
    > test.out 2>&1
eval_tap $? 316 'PublicLinkPlatformAccount' test.out

#- 317 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'N7NRn9OtG2usbL6m' \
    --body '{"chosenNamespaces": ["F2gfQYbNIXgWhZDX", "N7ZzSZOdFfDzwuvo", "DU0HkF4F42cW8GnY"], "requestId": "3Qcpyoxbrz02VR2O"}' \
    > test.out 2>&1
eval_tap $? 317 'PublicForceLinkPlatformWithProgression' test.out

#- 318 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gVIGH0tvHk0xh8D2' \
    > test.out 2>&1
eval_tap $? 318 'PublicGetPublisherUserV3' test.out

#- 319 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QPv31hfJ7lw6fj56' \
    --password 'FShmqmohthOMnu2v' \
    > test.out 2>&1
eval_tap $? 319 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 320 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'b0olFoEd3Lz2M1r8' \
    --before 'gC4DXdtfch1YyYbD' \
    --isWildcard 'true' \
    --limit '46' \
    > test.out 2>&1
eval_tap $? 320 'PublicGetRolesV3' test.out

#- 321 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'BEWEkVWiLU8DkmTh' \
    > test.out 2>&1
eval_tap $? 321 'PublicGetRoleV3' test.out

#- 322 PublicForgotPasswordWithoutNamespaceV3
samples/cli/sample-apps Iam publicForgotPasswordWithoutNamespaceV3 \
    --body '{"clientId": "QDKU1f8ZrF86clyB", "emailAddress": "KEGAtWQaaprf2Vf8", "languageTag": "sxHZlAVPOvVIyuaB"}' \
    > test.out 2>&1
eval_tap $? 322 'PublicForgotPasswordWithoutNamespaceV3' test.out

#- 323 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'true' \
    > test.out 2>&1
eval_tap $? 323 'PublicGetMyUserV3' test.out

#- 324 PublicSendCodeForwardV3
samples/cli/sample-apps Iam publicSendCodeForwardV3 \
    --body '{"context": "Aai990LGpmkE9wDW", "emailAddress": "wT6GrVO54pmGUj0Q", "languageTag": "yyPtpNq1ioW8CmQD", "upgradeToken": "ozPliFuGgsmSuU3H"}' \
    > test.out 2>&1
eval_tap $? 324 'PublicSendCodeForwardV3' test.out

#- 325 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'K4Q8wCD3npktHlwy' \
    > test.out 2>&1
eval_tap $? 325 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 326 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["O1hNqUYJnWHgKWDz", "g437QCZaSL6nRONe", "eLXyUxoBC4VRWHxD"], "oneTimeLinkCode": "dDB0iDanLLqM8ZDD"}' \
    > test.out 2>&1
eval_tap $? 326 'LinkHeadlessAccountToMyAccountV3' test.out

#- 327 PublicGetMyRedirectionAfterLinkV3
samples/cli/sample-apps Iam publicGetMyRedirectionAfterLinkV3 \
    --oneTimeLinkCode 'R9HA3YIhPfTJmqZy' \
    > test.out 2>&1
eval_tap $? 327 'PublicGetMyRedirectionAfterLinkV3' test.out

#- 328 PublicGetMyProfileAllowUpdateStatusV3
samples/cli/sample-apps Iam publicGetMyProfileAllowUpdateStatusV3 \
    > test.out 2>&1
eval_tap $? 328 'PublicGetMyProfileAllowUpdateStatusV3' test.out

#- 329 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "RsVCOg0CJB9xDOgx"}' \
    > test.out 2>&1
eval_tap $? 329 'PublicSendVerificationLinkV3' test.out

#- 330 PublicGetOpenidUserInfoV3
samples/cli/sample-apps Iam publicGetOpenidUserInfoV3 \
    > test.out 2>&1
eval_tap $? 330 'PublicGetOpenidUserInfoV3' test.out

#- 331 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'aky61s37xLxT5O1a' \
    > test.out 2>&1
eval_tap $? 331 'PublicVerifyUserByLinkV3' test.out

#- 332 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId '2bVdFSBfX9jwCUpp' \
    --code 's3JuVbyVaoiBRAw4' \
    --error 'XEtiQ3NTn8kricRu' \
    --state 'qGM6DyAq0ONWVVZo' \
    > test.out 2>&1
eval_tap $? 332 'PlatformAuthenticateSAMLV3Handler' test.out

#- 333 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'O9g6v6c0OX0JxpGN' \
    --payload 'FT0TIrkjs8JK9epR' \
    > test.out 2>&1
eval_tap $? 333 'LoginSSOClient' test.out

#- 334 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'tQFrXRwyaBi57PJE' \
    > test.out 2>&1
eval_tap $? 334 'LogoutSSOClient' test.out

#- 335 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData 't5NyZZpxWyw1PRs8' \
    --code 'XrigLIlbXCGrX7Na' \
    > test.out 2>&1
eval_tap $? 335 'RequestTargetTokenResponseV3' test.out

#- 336 UpgradeAndAuthenticateForwardV3
samples/cli/sample-apps Iam upgradeAndAuthenticateForwardV3 \
    --clientId 'cPO6FHsTRjnDQIOm' \
    --upgradeSuccessToken 'hAVosdWbYd0k3VEQ' \
    > test.out 2>&1
eval_tap $? 336 'UpgradeAndAuthenticateForwardV3' test.out

#- 337 AdminListInvitationHistoriesV4
samples/cli/sample-apps Iam adminListInvitationHistoriesV4 \
    --limit '53' \
    --namespace 'E4TlB0BEcy339PCZ' \
    --offset '97' \
    > test.out 2>&1
eval_tap $? 337 'AdminListInvitationHistoriesV4' test.out

#- 338 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '2w8GyhED5ivADQa6' \
    > test.out 2>&1
eval_tap $? 338 'AdminGetDevicesByUserV4' test.out

#- 339 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType 'W0M8KB9BjgEYEcmx' \
    --endDate 'EpzsHUdVJXSMMJLM' \
    --limit '53' \
    --offset '86' \
    --startDate 'jkQzJK6fIlRZPIUL' \
    > test.out 2>&1
eval_tap $? 339 'AdminGetBannedDevicesV4' test.out

#- 340 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'HQmYaLM4nPkCFNsC' \
    > test.out 2>&1
eval_tap $? 340 'AdminGetUserDeviceBansV4' test.out

#- 341 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "VgICG7NkpHemrIqa", "deviceId": "0b86k1bX8V5HHXQb", "deviceType": "DyqNwsRiCizuECzr", "enabled": true, "endDate": "jSGhpWjVa54Qs3cW", "ext": {"HbJe0yJevm8AE9CL": {}, "D1sU9phIrfAGQjrF": {}, "9247dcvsHThPiMgI": {}}, "reason": "A8YtZLROd1lYUl6f"}' \
    > test.out 2>&1
eval_tap $? 341 'AdminBanDeviceV4' test.out

#- 342 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'lPjmhJqvZWJGAQQW' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 342 'AdminGetDeviceBanV4' test.out

#- 343 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'd68PgyMdB98F4FeR' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 343 'AdminUpdateDeviceBanV4' test.out

#- 344 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate 'EQAIg4KyZLPeLxll' \
    --startDate 'MtJB2OqdnzFfXgRz' \
    --deviceType '8Na073jCVAm7l3bW' \
    > test.out 2>&1
eval_tap $? 344 'AdminGenerateReportV4' test.out

#- 345 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 345 'AdminGetDeviceTypesV4' test.out

#- 346 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'WQ7qqsCKe1tyWRyF' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 346 'AdminGetDeviceBansV4' test.out

#- 347 AdminDecryptDeviceV4
eval_tap 0 347 'AdminDecryptDeviceV4 # SKIP deprecated' test.out

#- 348 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'yJ4PWYKubIDclwHp' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 348 'AdminUnbanDeviceV4' test.out

#- 349 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId '5KbJ3sboKUUlGfCw' \
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
    --offset '100' \
    > test.out 2>&1
eval_tap $? 351 'AdminGetNamespaceUserInvitationHistoryV4' test.out

#- 352 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "otrWDUZU5naDe1AA", "policyId": "beQ4pdgLhPnmGhpF", "policyVersionId": "knUtwI0CnEO94mU5"}, {"isAccepted": false, "localizedPolicyVersionId": "hPipIGuN0kTLEgXN", "policyId": "6Hl9GaiKvhr8XeaY", "policyVersionId": "3miN5w8X0kIm1mOT"}, {"isAccepted": false, "localizedPolicyVersionId": "G6WlptN2Ungyqt09", "policyId": "ex6yNr9zBm1k6GkT", "policyVersionId": "dbSWMmsJqnA6yfxH"}], "count": 4, "userInfo": {"country": "2xAj4fr11cMPtxFt"}}' \
    > test.out 2>&1
eval_tap $? 352 'AdminCreateTestUsersV4' test.out

#- 353 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zMaWVWU8zWCDD2wa", "policyId": "B4M7Sw9Rtpb1S3Ma", "policyVersionId": "83TRM6mLrYPK2Ath"}, {"isAccepted": true, "localizedPolicyVersionId": "A0DcUBzJ2q5Jw7jO", "policyId": "DSWf5OJJlThZJyl8", "policyVersionId": "YhNO8XfA8PgCc70B"}, {"isAccepted": true, "localizedPolicyVersionId": "Z1nBADERaikfhVPu", "policyId": "zywUTQogiypg6UMv", "policyVersionId": "OVHZRQdazcMWna4y"}], "authType": "EMAILPASSWD", "code": "XMKJfZ4E1yrlPkMg", "country": "X4GgRdnODb2Sd8SL", "dateOfBirth": "PByE1zhZesIDkG27", "displayName": "y390Wa5jgODLTCg1", "emailAddress": "rW3Ky9ZJRQIi1JNO", "password": "svpX0UMCF4fnzEtk", "passwordMD5Sum": "ctxpZyGSCkoLLzUd", "reachMinimumAge": true, "uniqueDisplayName": "G8r10IU0cG4iSXRc", "username": "pMOqToZW2hUYkIul"}' \
    > test.out 2>&1
eval_tap $? 353 'AdminCreateUserV4' test.out

#- 354 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["pgvL94YJy4ORawww", "7e5XnP9oqNUWA6TL", "bFHw2wOjQe6awry5"]}' \
    > test.out 2>&1
eval_tap $? 354 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 355 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["F9W422wFXglpnzxn", "LtgdXEMaGNjkKALY", "nfd5U2BJtKtWeZiz"]}' \
    > test.out 2>&1
eval_tap $? 355 'AdminBulkCheckValidUserIDV4' test.out

#- 356 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId '4exueWd7YigXWrbH' \
    --body '{"avatarUrl": "dFhD27o5sMWvSBEI", "country": "UDAhgQvSpqhHsHbg", "dateOfBirth": "IXFag4r9VVQWRx0A", "displayName": "9Hx4TkoCZkQCR938", "languageTag": "fIhLjvase5gBqPmV", "skipLoginQueue": false, "tags": ["xbcsVCupRJnDfbex", "N4x5sFTfVsFjGViE", "Hchq0Z1mE7kTwImT"], "uniqueDisplayName": "XmiVnUoDVWcR6Zzp", "userName": "EvczUxmFcpDkULFY"}' \
    > test.out 2>&1
eval_tap $? 356 'AdminUpdateUserV4' test.out

#- 357 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'FQ5IZGVvcdY4aQ9s' \
    --body '{"code": "9u5iz5fNcFc79V3k", "emailAddress": "u5TeTQosig3K6buj"}' \
    > test.out 2>&1
eval_tap $? 357 'AdminUpdateUserEmailAddressV4' test.out

#- 358 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId 'CPud7MmJeNASWyZz' \
    --body '{"factor": "2ouflyS97Q9nwOWB", "mfaToken": "LRbfSV7Z5fkAD3on"}' \
    > test.out 2>&1
eval_tap $? 358 'AdminDisableUserMFAV4' test.out

#- 359 AdminGetUserMFAStatusV4
samples/cli/sample-apps Iam adminGetUserMFAStatusV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Wo8yPqUQmBsSnAxH' \
    > test.out 2>&1
eval_tap $? 359 'AdminGetUserMFAStatusV4' test.out

#- 360 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ca5TCvSuCTs7Ehxi' \
    > test.out 2>&1
eval_tap $? 360 'AdminListUserRolesV4' test.out

#- 361 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'hbfuSuIdXcgIUtmx' \
    --body '{"assignedNamespaces": ["AAIL5zyihGyUZz0I", "CHF6ChUnLBlTrMSr", "reSzzc6BhSHoRBgd"], "roleId": "3LxO7CfkRprJRNPv"}' \
    > test.out 2>&1
eval_tap $? 361 'AdminUpdateUserRoleV4' test.out

#- 362 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'YP8gPKIPeYrt04FP' \
    --body '{"assignedNamespaces": ["LXUke2oO6AIpHzQv", "KqCaHRCbg8IofijG", "FGnmeleRmmSZxCuW"], "roleId": "U7SP9md5y9FZkOsE"}' \
    > test.out 2>&1
eval_tap $? 362 'AdminAddUserRoleV4' test.out

#- 363 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Rxwv7xExerPbEfDL' \
    --body '{"assignedNamespaces": ["dnCI81YJSuVXzUtT", "t5kNbNxjhWIXVlO1", "mkTT3Ia7lwZ1Szwz"], "roleId": "KNiSC6JnwpBkkbir"}' \
    > test.out 2>&1
eval_tap $? 363 'AdminRemoveUserRoleV4' test.out

#- 364 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'false' \
    --limit '56' \
    --offset '39' \
    > test.out 2>&1
eval_tap $? 364 'AdminGetRolesV4' test.out

#- 365 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": true, "isWildcard": true, "roleName": "jJU1XWwtwJ6t8jig"}' \
    > test.out 2>&1
eval_tap $? 365 'AdminCreateRoleV4' test.out

#- 366 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'azEN3Nl5VoEzmVf6' \
    > test.out 2>&1
eval_tap $? 366 'AdminGetRoleV4' test.out

#- 367 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId 'db2Pg9SpHYcr9qJ4' \
    > test.out 2>&1
eval_tap $? 367 'AdminDeleteRoleV4' test.out

#- 368 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId 'Nz6p59nE80whTfIC' \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "roleName": "ksZbdg8lBbCWnjOe"}' \
    > test.out 2>&1
eval_tap $? 368 'AdminUpdateRoleV4' test.out

#- 369 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId '2ArNNpktG6OFxS1R' \
    --body '{"permissions": [{"action": 4, "resource": "GJrI9zpY6tRuQHP5", "schedAction": 11, "schedCron": "tlIex1yt4nDlAP1P", "schedRange": ["9MheHL2I8t3WZHZn", "pan38imnWadf72GX", "i39q4uG79OWyhDQY"]}, {"action": 22, "resource": "wTGcog2iU1ObY4cM", "schedAction": 41, "schedCron": "7uQ7N1NY4doczQUI", "schedRange": ["vDsz6b4kWdfj8959", "dTca1P4JQrPD9yu7", "Jo4DiZJ8zVlBbGTm"]}, {"action": 30, "resource": "AlFWpwr2LHLNgNBA", "schedAction": 28, "schedCron": "kkpSnAYqxFLKpuIt", "schedRange": ["7Nb3PTBqWr2j1Nnt", "FVU3GnvK4Ogenp4z", "FIzvPdFblktyDul8"]}]}' \
    > test.out 2>&1
eval_tap $? 369 'AdminUpdateRolePermissionsV4' test.out

#- 370 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId '7NAmnspDk3gGmS9n' \
    --body '{"permissions": [{"action": 50, "resource": "gyZPhTYvCYKNfwD6", "schedAction": 63, "schedCron": "QnIPMzyZmRd94W7g", "schedRange": ["wYutY3F8Dlw5zmmo", "H7CEUBUTfDPnpjza", "048b0IsyrIlm8Yur"]}, {"action": 5, "resource": "URdED9XJHVAC9cze", "schedAction": 32, "schedCron": "YyWMAIJURIrH0FUq", "schedRange": ["7yy3Hh30QxUPeuXd", "CoSHgxt6F3dHTo0t", "WgTh2rWjmmIGT3Nh"]}, {"action": 82, "resource": "1wbAwQ91JySFrqEQ", "schedAction": 65, "schedCron": "6zWYXrUjp1AYL2wp", "schedRange": ["Xpx7f3chXWtvTALH", "jc0qVWoEsBmFtDuI", "FYKqVJKUUupuV6k2"]}]}' \
    > test.out 2>&1
eval_tap $? 370 'AdminAddRolePermissionsV4' test.out

#- 371 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'tTX44MkGBce4xVVW' \
    --body '["9pi3woCb6nzQMRYI", "wDrHCSQHZzlRG2wl", "O71uzMUkSKbvscBJ"]' \
    > test.out 2>&1
eval_tap $? 371 'AdminDeleteRolePermissionsV4' test.out

#- 372 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'fTeHNLWPnHJFlZsR' \
    --after 'eDvnwSmGE1A6in2F' \
    --before 'esiUvgtdYCAztgNb' \
    --limit '99' \
    > test.out 2>&1
eval_tap $? 372 'AdminListAssignedUsersV4' test.out

#- 373 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'vae2KEWvDnMlIZsf' \
    --body '{"assignedNamespaces": ["ZuZM8HGwR6iNwYjV", "AkuS5ArgZcmhqktS", "oeszmzawSup9aei7"], "namespace": "zI22cFMyxP6sowEg", "userId": "KunwtW8XvZLFndMG"}' \
    > test.out 2>&1
eval_tap $? 373 'AdminAssignUserToRoleV4' test.out

#- 374 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'lWLTWk8jaAullaFj' \
    --body '{"namespace": "1aatdwOERo6Xapul", "userId": "GMaJxSXkWryeOP4k"}' \
    > test.out 2>&1
eval_tap $? 374 'AdminRevokeUserFromRoleV4' test.out

#- 375 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["wPjmbk0ZdpLWQ9Hy", "qun7UGnuOqIUfIVA", "dAOdjHr4fU0Uol5H"], "emailAddresses": ["Xy0MswZGT1BZAZtP", "D2hvhG66vIOYhHo0", "RZbh8PQ4SYwYMqIf"], "isAdmin": false, "isNewStudio": false, "languageTag": "g7JP5izW3OJXQzpx", "namespace": "dtJMZMV8wjp3mju8", "roleId": "YUWP02Fke8qixQfE"}' \
    > test.out 2>&1
eval_tap $? 375 'AdminInviteUserNewV4' test.out

#- 376 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "L70XuM7jmuSMDCMM", "country": "FSDCiDKz1Kk061YY", "dateOfBirth": "Nu5A8a87xxcxWM3u", "displayName": "PWLfu4ufA4yCgrfw", "languageTag": "dYl0HCzi7Y3dFcuH", "skipLoginQueue": true, "tags": ["KaSaA0oOBupIkO5t", "aVkOOJkWX7O3LqyC", "1aUnDFVmnsiWwSsp"], "uniqueDisplayName": "yrVpTuAvsBD1zhrm", "userName": "M3RE9jGUym9bf8nU"}' \
    > test.out 2>&1
eval_tap $? 376 'AdminUpdateMyUserV4' test.out

#- 377 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    --body '{"factor": "WXwV8NRCwlUQ8J3x", "mfaToken": "7rn428vAw9jJW9na"}' \
    > test.out 2>&1
eval_tap $? 377 'AdminDisableMyAuthenticatorV4' test.out

#- 378 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'gjDOWWwPYQSC6CLZ' \
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
    --body '{"factor": "4WLURdROamzjK51I", "mfaToken": "ZqPbzQqzvzL4ivbS"}' \
    > test.out 2>&1
eval_tap $? 382 'AdminDisableMyBackupCodesV4' test.out

#- 383 AdminDownloadMyBackupCodesV4
eval_tap 0 383 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 384 AdminEnableMyBackupCodesV4
eval_tap 0 384 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 385 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    --languageTag 'JoylIKBSqFn02wrt' \
    > test.out 2>&1
eval_tap $? 385 'AdminGetBackupCodesV4' test.out

#- 386 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    --languageTag 'Z9pTDT7vnH9gbGSb' \
    > test.out 2>&1
eval_tap $? 386 'AdminGenerateBackupCodesV4' test.out

#- 387 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    --languageTag 'CR0MhpDFRt78nw3y' \
    > test.out 2>&1
eval_tap $? 387 'AdminEnableBackupCodesV4' test.out

#- 388 AdminChallengeMyMFAV4
samples/cli/sample-apps Iam adminChallengeMyMFAV4 \
    --code 'WY96PVacz3CcXWCv' \
    --factor 'vWwBxMoI6nBr36o8' \
    > test.out 2>&1
eval_tap $? 388 'AdminChallengeMyMFAV4' test.out

#- 389 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    --action 'Eo6AkhCsKVqTdwsv' \
    --languageTag 'OEHgHgCE15jORReh' \
    > test.out 2>&1
eval_tap $? 389 'AdminSendMyMFAEmailCodeV4' test.out

#- 390 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    --body '{"factor": "FeuBin5rowPrI7fM", "mfaToken": "KUdGCf6aT51wBIVr"}' \
    > test.out 2>&1
eval_tap $? 390 'AdminDisableMyEmailV4' test.out

#- 391 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code '83X1Zck4hTKef7CI' \
    > test.out 2>&1
eval_tap $? 391 'AdminEnableMyEmailV4' test.out

#- 392 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 392 'AdminGetMyEnabledFactorsV4' test.out

#- 393 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'Bqi5cIVawhneNDVv' \
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
    --clientId 'joHqh2Kqa0u17HG4' \
    --linkingToken 'H44DoD2BBnQyQOP0' \
    --password 'EW2ccCRzSYG9o1st' \
    --username 'kBukMcOIKOG7qAoR' \
    > test.out 2>&1
eval_tap $? 397 'AuthenticationWithPlatformLinkV4' test.out

#- 398 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'DO29aXVXOoctFT2q' \
    --extendExp 'false' \
    --linkingToken 'PvZIsnQ1q430a7ln' \
    > test.out 2>&1
eval_tap $? 398 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 399 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code 'ZMmPpsWXdJdhQcgx' \
    --factor 'KMxC03DltwpbPiSH' \
    --mfaToken 'BuJF9wixBnrk3z0l' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 399 'Verify2faCodeV4' test.out

#- 400 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'M8IKq3wT7jRUMMxg' \
    --codeChallenge 'puJfFjtboMp5Z2hs' \
    --codeChallengeMethod 'plain' \
    --additionalData 'Vz29yIzXyARDqtJ3' \
    --clientId 'WC3ZG9qpFWttsNXn' \
    --createHeadless 'false' \
    --deviceId 'OK2olbxZxZQEvGdB' \
    --macAddress 'V24VN0qW6Bjbl4Qz' \
    --platformToken 'UfhWemKvR48x6BD9' \
    --serviceLabel '0.7646311570240764' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 400 'PlatformTokenGrantV4' test.out

#- 401 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'tNAzM6RaFfzzYNrX' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'vwXW5brfIrnEnblJ' \
    --simultaneousTicket 'cgcjIZ9bNx2Crd9W' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'mId3AVFxsBxzsoyu' \
    > test.out 2>&1
eval_tap $? 401 'SimultaneousLoginV4' test.out

#- 402 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'G3GDwZuviv2sONZX' \
    --codeChallengeMethod 'S256' \
    --additionalData 'Wcs3WXyuIAlaC9lZ' \
    --clientId '2cucrh1pe16udC1z' \
    --clientSecret 'Qh0YsxeklKkA3KWZ' \
    --code 'lz937DypFSuNorab' \
    --codeVerifier 'MMy8oV3bWoHpU3oZ' \
    --extendNamespace 'sadelBNdMb3iVgHO' \
    --extendExp 'true' \
    --loginQueueTicket 'sdzftke2NhRLEJMc' \
    --password 'P4KKJ2hQBdYAW2QW' \
    --redirectUri 'AnO4IxBzPVhLF0il' \
    --refreshToken 'NgBzZxZ7mgwIMcqE' \
    --scope 'zlxFiXan6BXGWKkv' \
    --username 'Tq80FGZutdwmEEQ7' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 402 'TokenGrantV4' test.out

#- 403 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData '8cyv1xY4pcSSeCAD' \
    --code 'dmmLx4gwAnx4GlXW' \
    > test.out 2>&1
eval_tap $? 403 'RequestTargetTokenResponseV4' test.out

#- 404 PublicListUserIDByPlatformUserIDsV4
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZS0MQsWPLJiV4s2P' \
    --rawPUID 'false' \
    --body '{"pidType": "PTaxffDuS9IE6IGr", "platformUserIds": ["y9xwhktvW6EhXVkO", "1JhSERyBiyKNucF5", "IbKOnAXJXgqxgkqB"]}' \
    > test.out 2>&1
eval_tap $? 404 'PublicListUserIDByPlatformUserIDsV4' test.out

#- 405 PublicGetUserByPlatformUserIDV4
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV4 \
    --namespace $AB_NAMESPACE \
    --platformId 'H3JovbJ6gUeaGiw4' \
    --platformUserId '7OTwtehrcM5WDX9h' \
    > test.out 2>&1
eval_tap $? 405 'PublicGetUserByPlatformUserIDV4' test.out

#- 406 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "mPxf8VxfjAhAIPrI", "policyId": "DaE4sCLQpkfZ0GmY", "policyVersionId": "Y8YnfN9V8u6ZGV2a"}, {"isAccepted": false, "localizedPolicyVersionId": "nTVHVnZYhznagjeF", "policyId": "lJDc8WEityLCZeCp", "policyVersionId": "mmBxggA1rEPqwhzv"}, {"isAccepted": true, "localizedPolicyVersionId": "8d1LEnZYHdi7rkXC", "policyId": "SVz8xOUrBpSrD2Gr", "policyVersionId": "qF0GAntpnPm2L0zf"}], "authType": "EMAILPASSWD", "country": "s3tqcJk3P7mu7TfL", "dateOfBirth": "XE1ZXjvPZlqe6qvR", "displayName": "XFH5isQCMf6cJUUW", "emailAddress": "YqHVjW2X3jIDC1bp", "password": "47AIkAm5QoJDkaJz", "passwordMD5Sum": "Men8RGpqW0klJLjD", "uniqueDisplayName": "aYYntI74XJXvLIIF", "username": "I2ScPh5nBld20a2z", "verified": true}' \
    > test.out 2>&1
eval_tap $? 406 'PublicCreateTestUserV4' test.out

#- 407 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "nWcRl0SRQ6OE9AYR", "policyId": "iBjaULcIsnLc1SGm", "policyVersionId": "4QIHKmLc7X14ikBB"}, {"isAccepted": true, "localizedPolicyVersionId": "LtinWPO6szXKfcDI", "policyId": "V2MuIFDI3Yqan0oX", "policyVersionId": "nc2mkZEoaK7N3RvH"}, {"isAccepted": false, "localizedPolicyVersionId": "9SATHYU96AlulKfr", "policyId": "xuNDKFw7woiWJ7JP", "policyVersionId": "JyxcEZ8BEtI52aZe"}], "authType": "EMAILPASSWD", "code": "MCE7s61J3GjsVG7r", "country": "4TQZtTqM1QIurqvz", "dateOfBirth": "MecOBxw9rADtTYIV", "displayName": "ROSpER31Htl0etNw", "emailAddress": "gLBAKeth7Ejb5eEJ", "password": "nr8z9Ug9sfrjgXFj", "passwordMD5Sum": "GK3WCG4PjhSRRlLs", "reachMinimumAge": true, "uniqueDisplayName": "VQeGdIWnxv6V9daG", "username": "O3qXYqSylSL9am5Y"}' \
    > test.out 2>&1
eval_tap $? 407 'PublicCreateUserV4' test.out

#- 408 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'VeozU27ctr9o5LrO' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "A88S0a43cl1MGBqt", "policyId": "aLPceULbFmgrW5BU", "policyVersionId": "mYE7Q9LVUcNr3yTl"}, {"isAccepted": true, "localizedPolicyVersionId": "WOOw1aEZqFndcZJw", "policyId": "zU3a3uFqfTll5eu6", "policyVersionId": "kZZ2ZtZM8iNnISpW"}, {"isAccepted": true, "localizedPolicyVersionId": "hOQW8HM3O6jv02yV", "policyId": "N5eZ8IJHtBLbyTJx", "policyVersionId": "2pC1tTCOl3jQIixn"}], "authType": "EMAILPASSWD", "code": "nDSTibflE7XqtxOB", "country": "QQC73IYv7yoYMFy8", "dateOfBirth": "PayhwVSJT8mVsW9f", "displayName": "lyKyMpKGA2oqx7nW", "emailAddress": "GHHRRLjewDGWHKnA", "password": "3KElHT49rpUiIxBF", "passwordMD5Sum": "0VgFs2IJGloLkEBP", "reachMinimumAge": false, "uniqueDisplayName": "57YaeloOu09Ow6GU", "username": "aJX98HIL54I8SXZc"}' \
    > test.out 2>&1
eval_tap $? 408 'CreateUserFromInvitationV4' test.out

#- 409 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "TIz2MXu6M444AoMc", "country": "TmK0EskkyonvYKfR", "dateOfBirth": "dRfj0438rsgKyt3w", "displayName": "8PxKlg7G3sdzn8ZN", "languageTag": "e5YYREDJwuKoZMZN", "uniqueDisplayName": "EMCJQkI2p7hrvTR9", "userName": "ZZfUeq4TBNg9yAIH"}' \
    > test.out 2>&1
eval_tap $? 409 'PublicUpdateUserV4' test.out

#- 410 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "iPidd2KqjzONCcwk", "emailAddress": "NDWqfjea26GDRzAn"}' \
    > test.out 2>&1
eval_tap $? 410 'PublicUpdateUserEmailAddressV4' test.out

#- 411 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "PdpDj5XB65AilEXe", "country": "2HDqpVr6mVfWpFXQ", "dateOfBirth": "TliGVaXK3mcyAxnJ", "displayName": "KbGfR36zJvbMEZY0", "emailAddress": "DXHDlXhovOo2neOn", "password": "W5VqRMghs2jWQii0", "reachMinimumAge": true, "uniqueDisplayName": "1slGQ4lfGvOsuuQ9", "username": "SBeBloHGf5ne2bVw", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 411 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 412 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"dateOfBirth": "JSYWZqHj1biijV9Z", "displayName": "iLuBVHaTIGjoglgB", "emailAddress": "R8SEf7STqypa7OSF", "password": "YljGJe9Petk8nhlG", "uniqueDisplayName": "mqq6saljvSlGam9R", "username": "asjp2xSORXoK8Taa"}' \
    > test.out 2>&1
eval_tap $? 412 'PublicUpgradeHeadlessAccountV4' test.out

#- 413 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "DEIswkPTZFdN5MeX", "mfaToken": "D8G1zTgloOz8NcPY"}' \
    > test.out 2>&1
eval_tap $? 413 'PublicDisableMyAuthenticatorV4' test.out

#- 414 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'RBdJDwL8z6JUMKJi' \
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
    --body '{"factor": "SDAJiiDaJkEpadWl", "mfaToken": "sepPGxD1JmAzms4Q"}' \
    > test.out 2>&1
eval_tap $? 418 'PublicDisableMyBackupCodesV4' test.out

#- 419 PublicDownloadMyBackupCodesV4
eval_tap 0 419 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 420 PublicEnableMyBackupCodesV4
eval_tap 0 420 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 421 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'Ie81XHPKHIwJom7u' \
    > test.out 2>&1
eval_tap $? 421 'PublicGetBackupCodesV4' test.out

#- 422 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag 'RPaKLXN13MRGBZts' \
    > test.out 2>&1
eval_tap $? 422 'PublicGenerateBackupCodesV4' test.out

#- 423 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    --languageTag '6EA6Q0UmRuHI5ESr' \
    > test.out 2>&1
eval_tap $? 423 'PublicEnableBackupCodesV4' test.out

#- 424 PublicChallengeMyMFAV4
samples/cli/sample-apps Iam publicChallengeMyMFAV4 \
    --namespace $AB_NAMESPACE \
    --code '6H97DDtRNYjIkhTz' \
    --factor '3NyUTykG0bonGp1S' \
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
    --action 'aS9sztfbiivdOZ5n' \
    --languageTag 'pnZQwBRdG3eTtNds' \
    > test.out 2>&1
eval_tap $? 426 'PublicSendMyMFAEmailCodeV4' test.out

#- 427 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --body '{"factor": "TUiX1knTIEEgKBdz", "mfaToken": "hpmusAB8jmd5ej8W"}' \
    > test.out 2>&1
eval_tap $? 427 'PublicDisableMyEmailV4' test.out

#- 428 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'd6FcbZw4AVkncfmk' \
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
    --factor 'knZH9O11vrg2Iaiv' \
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
    --userId 'zzXBQ3MWiPZFpMjz' \
    > test.out 2>&1
eval_tap $? 433 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 434 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "83uZXC4nIwFA20p1", "emailAddress": "bbXlCvhyyTXtWj1b", "languageTag": "PUpvBWTml7dcnLMM", "namespace": "p7phkXnNuobz38Jo", "namespaceDisplayName": "viuRsrhOojiZySS1"}' \
    > test.out 2>&1
eval_tap $? 434 'PublicInviteUserV4' test.out

#- 435 PublicUpgradeHeadlessWithCodeV4Forward
samples/cli/sample-apps Iam publicUpgradeHeadlessWithCodeV4Forward \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "8Z21Vg5fV4ciQ3uw", "policyId": "D7zbwggO7kBJineH", "policyVersionId": "lZ3deb3eZQWkBC3K"}, {"isAccepted": false, "localizedPolicyVersionId": "mbVsmjXRcSMfCE8N", "policyId": "7AXoAexo7ON6u8K1", "policyVersionId": "FvkH2FYOm8JTGSKD"}, {"isAccepted": true, "localizedPolicyVersionId": "Uh77CeEetGh0b2To", "policyId": "bjDasOK7RpmFFZjT", "policyVersionId": "AL3v2CzxmpMqaZ58"}], "code": "dTP5AOgzKRqL0zg4", "country": "moS9MhWBR43RtYV3", "dateOfBirth": "lgTTr3xU9NcAevnx", "displayName": "wwIbcq37D3rU0blj", "emailAddress": "unEoPhYkKiVFnJpS", "password": "omIDOMrhB6Jnww9Z", "reachMinimumAge": true, "uniqueDisplayName": "0gouk0hiWg4XjZXz", "username": "an2sZT6GUNzFZjzR", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 435 'PublicUpgradeHeadlessWithCodeV4Forward' test.out


rm -f "tmp.dat"

exit $EXIT_CODE