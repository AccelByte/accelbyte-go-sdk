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
echo "1..386"

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
    --body '{"modules": [{"docLink": "dXtwW5AvNjffW698", "groups": [{"group": "jGytKHjwxgcBiEz1", "groupId": "2MEbNDy4EhQmSRsN", "permissions": [{"allowedActions": [15, 85, 92], "resource": "opwd0RDDKD7wjrOH"}, {"allowedActions": [66, 18, 37], "resource": "TUlHTi7aRWxK5b8E"}, {"allowedActions": [99, 96, 98], "resource": "hQWN0dXpeJcdEsB6"}]}, {"group": "rjuJcWwUVh80buCB", "groupId": "bI3w7MCOJFGL0GyG", "permissions": [{"allowedActions": [92, 73, 4], "resource": "SmbpML91QNk5hJJW"}, {"allowedActions": [87, 49, 90], "resource": "4c1nkTUJ9YuCPi6H"}, {"allowedActions": [46, 95, 40], "resource": "VhVPgrVigxBigg0u"}]}, {"group": "xsfGqFUwvfpKTisL", "groupId": "SAy6fs1aYaFHxGhm", "permissions": [{"allowedActions": [6, 86, 32], "resource": "tqskvV6gg5r86SV1"}, {"allowedActions": [44, 96, 33], "resource": "OiCpZdxEIbsXi6Nb"}, {"allowedActions": [8, 99, 21], "resource": "q6UfLLtsD2PAtmdo"}]}], "module": "lyA3eljIUsM5IUX4", "moduleId": "enscbgMmYYOEYKRv"}, {"docLink": "WtIlXgR3v854qlNI", "groups": [{"group": "EE1nADD6bV9hxL8X", "groupId": "CedN7GhGVAG30Pj6", "permissions": [{"allowedActions": [36, 95, 10], "resource": "7lQtTGRCMBFYBgwp"}, {"allowedActions": [73, 12, 96], "resource": "vv8VyN2LoSxCDr7m"}, {"allowedActions": [62, 75, 46], "resource": "ZNnQMEd9KEQfwEUq"}]}, {"group": "JHU0Nqg7InPkvD0H", "groupId": "cFVMSqHujKPYtFsT", "permissions": [{"allowedActions": [65, 64, 51], "resource": "tLeXE4j907YkQacD"}, {"allowedActions": [4, 74, 60], "resource": "1hEnGhYOwioqJigx"}, {"allowedActions": [26, 47, 83], "resource": "TZKgmLIVJvXDaHZV"}]}, {"group": "bSVTHqnmPtwvM3pm", "groupId": "L9aSvc51X5Gaaogy", "permissions": [{"allowedActions": [17, 32, 61], "resource": "4WKm5ximhm7ZLWMK"}, {"allowedActions": [78, 89, 42], "resource": "p03lS2tekbGuUrNp"}, {"allowedActions": [86, 43, 3], "resource": "IZ16dIPUVtN4YRY2"}]}], "module": "eUdGzfu4aHwBXyw2", "moduleId": "ex0ASpnMv1z39Fil"}, {"docLink": "rIpKrDWRHuVp7vJo", "groups": [{"group": "XxKmH7ncJIIYS1JO", "groupId": "eRZh8XKCNKfI1v8A", "permissions": [{"allowedActions": [37, 48, 13], "resource": "Y8LsN32SK3RFqhMP"}, {"allowedActions": [15, 96, 56], "resource": "13xnPYkMYtaBW9Vf"}, {"allowedActions": [95, 14, 66], "resource": "YdAzsFxCqfApUkGd"}]}, {"group": "WIZcwb6Ml5TKeD1R", "groupId": "kQeoVFFutpIG2nhp", "permissions": [{"allowedActions": [74, 99, 59], "resource": "HrDyfejnSQD062nN"}, {"allowedActions": [78, 35, 79], "resource": "BH7AvR6HNtGTTrkQ"}, {"allowedActions": [65, 72, 74], "resource": "pT9ws63hQjaGypSO"}]}, {"group": "MMXWEn3V8NnX01qV", "groupId": "logAZRjTLnGvp4nY", "permissions": [{"allowedActions": [88, 47, 8], "resource": "3XZ9SVYHcoIs5z1M"}, {"allowedActions": [27, 20, 51], "resource": "khfcBn55JVpSC8GS"}, {"allowedActions": [36, 31, 13], "resource": "jDjK667hdQnMiuFn"}]}], "module": "C6Aj1jSJZhCQdUrc", "moduleId": "CFEMWzfxbadUhti5"}]}' \
    > test.out 2>&1
eval_tap $? 109 'AdminUpdateAvailablePermissionsByModule' test.out

#- 110 AdminDeleteConfigPermissionsByGroup
samples/cli/sample-apps Iam adminDeleteConfigPermissionsByGroup \
    --body '{"groupId": "ONqO7wumClQoZnEm", "moduleId": "jq84xqXLoSdH1Q5F"}' \
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
    --body '[{"field": "iyQ2m0aVrCKQyGF4", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": false, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["fmXLxqJLuHaevdZx", "IC6Mhc7D9gBWeAbK", "FPwbWMMeTaUMiFAj"], "preferRegex": false, "regex": "VDhEftOQyx8q8FE1"}, "blockedWord": ["i0cl9jYLJjw29I63", "xS5rok7Om7WVGalD", "JMUP5HNsMkMYzx6Q"], "description": [{"language": "EvebhD3FlmeLxkSh", "message": ["6bm2ACMMmdjmZB6g", "P5lCJIu5lXlz7Z78", "zIRjllSQc7wLFUAZ"]}, {"language": "QZDwqUZcHnQvyczx", "message": ["g1AKAw3lBkIL2Wzf", "X88JIq21gbFD2VzL", "XSfIV5vEuFEYIMwx"]}, {"language": "wZ9xoCyUYDAkonu0", "message": ["nGCCePCbKkqViP9F", "Uf6kaVxSzwWu1xFw", "XqXLFrJ3mTVuijAJ"]}], "isCustomRegex": false, "letterCase": "CZkAq7Dx3yHvyhoW", "maxLength": 98, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 46, "minCharType": 35, "minLength": 1, "regex": "nm4kb8qL8ugcKA3o", "specialCharacterLocation": "u3cpHghhtDS4tWuh", "specialCharacters": ["hjtA1fMXQ4uiVLbX", "l0YRlRoE5JxzfgJr", "DoTwCgteREwgI2xK"]}}, {"field": "uyi1b1L5xlWrDI0g", "validation": {"allowAllSpecialCharacters": false, "allowDigit": false, "allowLetter": false, "allowSpace": true, "allowUnicode": false, "avatarConfig": {"allowedPrefixes": ["6oxBOqEjvpfLra1B", "uwwJtiuwIDnrAilK", "QflfXuuSsfKgUzOW"], "preferRegex": false, "regex": "wSKG8cuuROEAGQZu"}, "blockedWord": ["AjKjvlR5AF141jwv", "g16lAYVc6KYzQ3CC", "FtUpJfP6bMWd8rnh"], "description": [{"language": "TXX38qgO6h79qPR0", "message": ["QgQxuPYXyCs1AA44", "Pph0DJcFPuQbZ14c", "7vtk15NJAIJtP2CD"]}, {"language": "8Hp6xJLtO724LwUy", "message": ["ZRqjITpUBZ4vi1Q5", "KD1hvuAvRMY1Hfkb", "KT3E6LPaiydhe87D"]}, {"language": "WaqoBSyOIg7gBK1H", "message": ["3dRuWeTMfaeDL1v2", "gRwDjBjuJeGRYcZq", "aZ1D3cqlO3XlPcyU"]}], "isCustomRegex": true, "letterCase": "ZKvjudjHXmbEm2P3", "maxLength": 3, "maxRepeatingAlphaNum": 25, "maxRepeatingSpecialCharacter": 24, "minCharType": 68, "minLength": 80, "regex": "ZdsVcpFOz5YO9WEt", "specialCharacterLocation": "cEucMA6x3mMJTCGg", "specialCharacters": ["vYNUPDdA2XHAYp9V", "bONFhNAQQKfjZow3", "yg9dvJ6hVjdEdiR9"]}}, {"field": "8V6yUbCahdfZnEQ9", "validation": {"allowAllSpecialCharacters": false, "allowDigit": true, "allowLetter": true, "allowSpace": false, "allowUnicode": true, "avatarConfig": {"allowedPrefixes": ["5S0IMDldJZxctvi1", "PAC7wXd3FcBYGEUq", "ZyifkpN5VreFLGTl"], "preferRegex": false, "regex": "blGvtuy17FAjJmOg"}, "blockedWord": ["0SkpzTgLJwhPLgkD", "yxsMLHeKkTcAYjYn", "PrkDYLXQ23MZD4GA"], "description": [{"language": "ZMumXp6l7Mcst8XP", "message": ["HlEK7IoMjLX9eliP", "cIdY89jLSHZ2zhPQ", "3TbNEu1NOcTOQFCx"]}, {"language": "PV2QkTIDuwZVK0bG", "message": ["Niw3g79ymYzNbRhF", "8KJM6a7RwoQqtcaE", "GeTBz9lNmITWri35"]}, {"language": "a7lms1LkVgzlWD4w", "message": ["iB7bAlYmUU0KTvph", "94N8Pi5fz4SDlVlf", "BdhAvf7VVNAQA91p"]}], "isCustomRegex": false, "letterCase": "rayJnDMHaNEVUv5p", "maxLength": 88, "maxRepeatingAlphaNum": 6, "maxRepeatingSpecialCharacter": 66, "minCharType": 6, "minLength": 7, "regex": "O9ZUHg1hxkc6sNFU", "specialCharacterLocation": "TjbD7KqcKLH9eLWq", "specialCharacters": ["QJuXEt2wca2FZ1A2", "5jhUwv0mWGaPKiBH", "ZiBpOfdLgHC5WLGh"]}}]' \
    > test.out 2>&1
eval_tap $? 113 'AdminUpdateInputValidations' test.out

#- 114 AdminResetInputValidations
samples/cli/sample-apps Iam adminResetInputValidations \
    --field 'Cijc4HeeuJXFEvTn' \
    > test.out 2>&1
eval_tap $? 114 'AdminResetInputValidations' test.out

#- 115 ListAdminsV3
samples/cli/sample-apps Iam listAdminsV3 \
    --namespace $AB_NAMESPACE \
    --after 'P7Hr3YTRKFF0inRw' \
    --before 'Dn7T9MlwLx4gv0aM' \
    --limit '44' \
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
    --body '{"ageRestriction": 29, "enable": true}' \
    > test.out 2>&1
eval_tap $? 117 'AdminUpdateAgeRestrictionConfigV3' test.out

#- 118 AdminGetListCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminGetListCountryAgeRestrictionV3 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 118 'AdminGetListCountryAgeRestrictionV3' test.out

#- 119 AdminUpdateCountryAgeRestrictionV3
samples/cli/sample-apps Iam adminUpdateCountryAgeRestrictionV3 \
    --countryCode 'sfWcEEYKDttTkV3f' \
    --namespace $AB_NAMESPACE \
    --body '{"ageRestriction": 17}' \
    > test.out 2>&1
eval_tap $? 119 'AdminUpdateCountryAgeRestrictionV3' test.out

#- 120 AdminGetBannedUsersV3
samples/cli/sample-apps Iam adminGetBannedUsersV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'false' \
    --banType '6Jb47kkGC5i6iM8L' \
    --limit '75' \
    --offset '55' \
    > test.out 2>&1
eval_tap $? 120 'AdminGetBannedUsersV3' test.out

#- 121 AdminBanUserBulkV3
samples/cli/sample-apps Iam adminBanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"ban": "U5cjLVkImVZ8VXIp", "comment": "iDyOJWslHn8KGvQY", "endDate": "wLR6QsGRMME4Woxz", "reason": "FPp1l9BEbBDaEbVa", "skipNotif": true, "userIds": ["IDdg03xe0mC4sNS4", "4ZM5nwFpPXIFcOK6", "u3JGUyn1zTKAw0cc"]}' \
    > test.out 2>&1
eval_tap $? 121 'AdminBanUserBulkV3' test.out

#- 122 AdminUnbanUserBulkV3
samples/cli/sample-apps Iam adminUnbanUserBulkV3 \
    --namespace $AB_NAMESPACE \
    --body '{"bans": [{"banId": "o7YAZlyuh9sNjX3A", "userId": "o7KslE7R86BEJBQg"}, {"banId": "qgfz3on7OKwHrGmk", "userId": "VDnDqCSt9vW2fhXX"}, {"banId": "eyN5qqrf8kHHCcQJ", "userId": "bu0vI6VJm5fYltn6"}]}' \
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
    --clientId 'tO6SY8A1ECeDFOkg' \
    --clientName 'qSnLIeoMpSqDkjgr' \
    --clientType '4bXlpcOXkEalyGkW' \
    --limit '47' \
    --offset '17' \
    --skipLoginQueue 'false' \
    > test.out 2>&1
eval_tap $? 124 'AdminGetClientsByNamespaceV3' test.out

#- 125 AdminCreateClientV3
samples/cli/sample-apps Iam adminCreateClientV3 \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Gjng2sq8ukkYlJfx", "sbgdXnUkbt6tbzs3", "m97gPD5BV07Qrtq9"], "baseUri": "5fvKPUJg1Cb1Pr16", "clientId": "XBDlrtehWSekMZ8X", "clientName": "1jQ88B0VDy6erSdv", "clientPermissions": [{"action": 59, "resource": "FycKN7MRjzf5b3yO", "schedAction": 79, "schedCron": "ZVptv9TlxyB6dGfr", "schedRange": ["JjGn5lUCrBA6MKJd", "sA3amsqZ3Rg2qJHb", "9s4z2XOzUrJpd2J5"]}, {"action": 97, "resource": "3UJz05MP4aVPujtl", "schedAction": 37, "schedCron": "deJccWH5A8prV806", "schedRange": ["Dwcj3RA7jkLvXuWo", "JGPnVIH4n8lc7FX8", "4KQPwiBPjALrwLvx"]}, {"action": 33, "resource": "L9bccPx8svZE8rLW", "schedAction": 42, "schedCron": "4zYTMMzbV0PaLiMo", "schedRange": ["22yBIjeWrYn1FXCF", "zUQfGTz8hFDjeMft", "w9X3JSHRKMs8Udhk"]}], "clientPlatform": "j450cCXVceeaAoIZ", "deletable": true, "description": "m6PkrJ7dLqkuioAz", "modulePermissions": [{"moduleId": "CgyOh8fBSQ3VR9ea", "selectedGroups": [{"groupId": "8sJ4rlTSN8Ge4jAJ", "selectedActions": [26, 71, 29]}, {"groupId": "xosfjoxNQVSKwHtO", "selectedActions": [76, 16, 1]}, {"groupId": "1zmX5Yj9Z5oQuszh", "selectedActions": [21, 51, 56]}]}, {"moduleId": "PuWtodKafAxsqvMQ", "selectedGroups": [{"groupId": "Nr8212c8bYryIxn9", "selectedActions": [11, 15, 34]}, {"groupId": "LDAnQiAo2VGEYsWo", "selectedActions": [54, 93, 81]}, {"groupId": "fSpIOW6Lt7Wrcwfu", "selectedActions": [99, 44, 4]}]}, {"moduleId": "ywnj0zG46qCLnH8A", "selectedGroups": [{"groupId": "1WkGlJgewlnHIzMA", "selectedActions": [57, 100, 22]}, {"groupId": "x1fX4XDMDJvR6IID", "selectedActions": [99, 21, 66]}, {"groupId": "lQmVrp4U4Q4Yynhm", "selectedActions": [21, 62, 34]}]}], "namespace": "i1zuEmwu7j5eQCvN", "oauthAccessTokenExpiration": 47, "oauthAccessTokenExpirationTimeUnit": "7FI5ed4WzVTHfl3e", "oauthClientType": "P4QpeXwq48SjjZrP", "oauthRefreshTokenExpiration": 56, "oauthRefreshTokenExpirationTimeUnit": "2FFN92jREXUh9FXL", "parentNamespace": "ReipKddSd8NBomzA", "redirectUri": "t7vHkP9Hdtw3t93S", "scopes": ["vrrj2pFlukcuNkFj", "STAMtR0tTrJGqT4k", "FNHXT0gpRvbX4mH8"], "secret": "Fdclfj6MyUzMGzDj", "skipLoginQueue": true, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 125 'AdminCreateClientV3' test.out

#- 126 AdminGetClientsbyNamespacebyIDV3
samples/cli/sample-apps Iam adminGetClientsbyNamespacebyIDV3 \
    --clientId 'Bxmq7j1SkxkBOfqf' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 126 'AdminGetClientsbyNamespacebyIDV3' test.out

#- 127 AdminDeleteClientV3
samples/cli/sample-apps Iam adminDeleteClientV3 \
    --clientId 'LX0kD5D5JP9QrUal' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 127 'AdminDeleteClientV3' test.out

#- 128 AdminUpdateClientV3
samples/cli/sample-apps Iam adminUpdateClientV3 \
    --clientId 'IcQbM6WCgiHrKKAG' \
    --namespace $AB_NAMESPACE \
    --body '{"audiences": ["Uol1xggYPZsiHM8m", "ZJBeYp0cC6Ei1DEj", "R0ldztiUSHtCRkkS"], "baseUri": "jVuyi0NmJS8mKS5B", "clientName": "CO5uORczTQDwZt0c", "clientPermissions": [{"action": 94, "resource": "blxuDI5yS2ui8Fr3", "schedAction": 96, "schedCron": "j1ttU1r2wEtDUNUN", "schedRange": ["97FTZwV4jwqRJLHz", "eSSAvdJdaRfOBCqU", "xoH5VfZdeFdum5cm"]}, {"action": 51, "resource": "xNiVmVY8RAamF61e", "schedAction": 7, "schedCron": "CCXtxBVyPOysfkjS", "schedRange": ["OdJ0PPred2ZjKmpM", "gfJIKkiUtMYpftnF", "kLJwiNNxZxdLPNX9"]}, {"action": 33, "resource": "vjEpXXs6wauLjI9m", "schedAction": 2, "schedCron": "5YiZnoV0fiSRXflz", "schedRange": ["zIw8i1X0eSkrWf37", "3YJfZycA6G6pJ4WF", "X9nJ2HTsntP7ju8R"]}], "clientPlatform": "8VBYL8Wp33sNu9MI", "deletable": true, "description": "14kIfMKphDf0pqSf", "modulePermissions": [{"moduleId": "y4JahXqqvpPutopt", "selectedGroups": [{"groupId": "oWiQQ6jfQTJj1Vpp", "selectedActions": [99, 16, 3]}, {"groupId": "Vkg9Vy6pE8sX9mEP", "selectedActions": [40, 70, 44]}, {"groupId": "AgmaOu5XLunOEjl8", "selectedActions": [0, 69, 88]}]}, {"moduleId": "7JjF3H9uEEKPfVIQ", "selectedGroups": [{"groupId": "3vrXtGCH0TSaMC0p", "selectedActions": [56, 76, 42]}, {"groupId": "aJyrWM3ICpkzfg2o", "selectedActions": [17, 45, 62]}, {"groupId": "xE7rfGCkXFKX7Kc4", "selectedActions": [32, 84, 33]}]}, {"moduleId": "VfCx62PfnjTEsRdn", "selectedGroups": [{"groupId": "wbU4EsghJsxvyxpf", "selectedActions": [6, 35, 28]}, {"groupId": "9QgjoIiRUh9MZqxT", "selectedActions": [24, 99, 0]}, {"groupId": "bbITFGE4A1tRFzZn", "selectedActions": [24, 29, 59]}]}], "namespace": "aTcD3IzycanIhSHz", "oauthAccessTokenExpiration": 82, "oauthAccessTokenExpirationTimeUnit": "LeWZjSQm7AE5v1Zd", "oauthRefreshTokenExpiration": 41, "oauthRefreshTokenExpirationTimeUnit": "tGInqqvXrjdFkjkY", "redirectUri": "kJI3znCKDIbp8lFX", "scopes": ["7nH0N2JrJG0QlKf3", "WnnNtHtB0wW3p5cO", "FPLgDYMnB6gka4Wr"], "skipLoginQueue": false, "twoFactorEnabled": false}' \
    > test.out 2>&1
eval_tap $? 128 'AdminUpdateClientV3' test.out

#- 129 AdminUpdateClientPermissionV3
samples/cli/sample-apps Iam adminUpdateClientPermissionV3 \
    --clientId 'w4wJuXTJjnQ0XbO6' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 88, "resource": "V8x78hpdQuDCwtQl"}, {"action": 95, "resource": "FTbjtxrkpcrZ405g"}, {"action": 73, "resource": "I5BJa8qOuY8XuLxS"}]}' \
    > test.out 2>&1
eval_tap $? 129 'AdminUpdateClientPermissionV3' test.out

#- 130 AdminAddClientPermissionsV3
samples/cli/sample-apps Iam adminAddClientPermissionsV3 \
    --clientId 'sw41vMJRiqHwksvC' \
    --namespace $AB_NAMESPACE \
    --body '{"permissions": [{"action": 60, "resource": "jm0I1HJI3BAGmuoi"}, {"action": 54, "resource": "8nUIBdCo8VIaJXdp"}, {"action": 64, "resource": "VWRcN3hFfX20cczc"}]}' \
    > test.out 2>&1
eval_tap $? 130 'AdminAddClientPermissionsV3' test.out

#- 131 AdminDeleteClientPermissionV3
samples/cli/sample-apps Iam adminDeleteClientPermissionV3 \
    --action '36' \
    --clientId 'zNFDUFQJX7LVpONH' \
    --namespace $AB_NAMESPACE \
    --resource '1rOPbL5hJAqmIYNT' \
    > test.out 2>&1
eval_tap $? 131 'AdminDeleteClientPermissionV3' test.out

#- 132 AdminGetConfigValueV3
samples/cli/sample-apps Iam adminGetConfigValueV3 \
    --configKey 'N3bQbKizx4vOkKrW' \
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
    --body '{"blacklist": ["Hdryv5eza3sVCptK", "bGoTdWdTgmLBLViE", "xgTlGU5JEVqgQZfN"]}' \
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
    --limit '99' \
    --offset '78' \
    > test.out 2>&1
eval_tap $? 138 'RetrieveAllSSOLoginPlatformCredentialV3' test.out

#- 139 RetrieveThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam retrieveThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yNmYBRz8OwMVIDET' \
    > test.out 2>&1
eval_tap $? 139 'RetrieveThirdPartyLoginPlatformCredentialV3' test.out

#- 140 AddThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam addThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'iRcFAgrJafBo2mKo' \
    --body '{"ACSURL": "R5f52oMozZUJIOsI", "AWSCognitoRegion": "qSbbORolnNistNNg", "AWSCognitoUserPool": "1eyAX4J3qvQkgpvc", "AllowedClients": ["VEtPvDK2FKcNbHhK", "JJjKxsRrnEdyjK75", "SFdio05wIdi0ECnW"], "AppId": "Qe44v1s6h4Pxsztw", "AuthorizationEndpoint": "dv8cLldsLcv3kyV3", "ClientId": "jGPHoILUwsK19r4m", "Environment": "YuYD5cAraDMUDFvK", "FederationMetadataURL": "aewqt6P5sU0c63B8", "GenericOauthFlow": true, "IsActive": false, "Issuer": "tA2mvp2FABy2CyQA", "JWKSEndpoint": "vPYMR1yObRnDXIlP", "KeyID": "e5Q4Ny7eNKaM7L6g", "NetflixCertificates": {"encryptedPrivateKey": "gjmIcipmJ4yM5UZt", "encryptedPrivateKeyName": "kXdBgY1fz3xHBQaU", "publicCertificate": "0HqVNKLDnQBS2oCy", "publicCertificateName": "9oADCmQCIBElp9QV", "rootCertificate": "fwRcZEiM4o9LYfI5", "rootCertificateName": "QyqgpQJTcpXEzznw"}, "OrganizationId": "tF3grdW3E4EbCKT8", "PlatformName": "8pUWep9g9VWmorb4", "RedirectUri": "1VwO2sTrooDRwRzm", "RegisteredDomains": [{"affectedClientIDs": ["3Ft6QMj18xyqy7Wf", "r6jdxGjnYhq0AdOb", "lf7sgBXk7pZtONCa"], "domain": "o5WsfNHWQIbo9sMq", "namespaces": ["MMXL0xwEoAAsJApm", "SANxXUtNH0psnaOu", "U3I7MJMr8fnKqRAX"], "roleId": "FngXhjDBfvXexinw"}, {"affectedClientIDs": ["Iga2bbyEDuxBuBWm", "1EnyL3vfLOjt6g5x", "ejgEiMhBUWo71fms"], "domain": "AZoJRrDZQuguFVLo", "namespaces": ["atde13g8h5FD5aBM", "sBPr5te34fVlHKl7", "cmya8N1YTpvxjIsb"], "roleId": "LMGIaX7B9lkFIkj5"}, {"affectedClientIDs": ["6njO04zJHxZRZgXD", "Jtr9xdghYnqnBozp", "oJL1HJphlki1oiTC"], "domain": "2aaxuFmM0mkP5R5b", "namespaces": ["hyb1FOVx7mjIpuY7", "ISjfftsBiuyCqzTx", "iDSWC1VFz3uU7TXf"], "roleId": "5s3X0guchleW4cLb"}], "Secret": "4fWMNaFUR0xEjXj7", "TeamID": "xVxkay70NL7WluQa", "TokenAuthenticationType": "m7g7pO7VXYJsU8dE", "TokenClaimsMapping": {"o36BUHJKCDPnMO7N": "XaphL3ylfL1DWzhF", "7lWcw79l2ULRBOay": "Dh5dDfZdeQvI4t4h", "WcgnvRBMhYYIsf07": "0a5pqj6w983Tx3Ru"}, "TokenEndpoint": "JnbjOqbnbV1pZLH9", "UserInfoEndpoint": "btvB4sHtHMvYMdmq", "UserInfoHTTPMethod": "DxJHhYgruKBZ3hz1", "scopes": ["KNj7d7srppKYDKNc", "0gRC7XxO27lmmc24", "7jVUthEptrpa7BtP"]}' \
    > test.out 2>&1
eval_tap $? 140 'AddThirdPartyLoginPlatformCredentialV3' test.out

#- 141 DeleteThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'kcyMyN3vF0flf9oi' \
    > test.out 2>&1
eval_tap $? 141 'DeleteThirdPartyLoginPlatformCredentialV3' test.out

#- 142 UpdateThirdPartyLoginPlatformCredentialV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4Ik5FoWYgLnpFHA7' \
    --body '{"ACSURL": "1LXEXtXKWqHU41Xu", "AWSCognitoRegion": "c9ls8UH6bjFu98hb", "AWSCognitoUserPool": "IkHNEwfhUWyoYntW", "AllowedClients": ["aRKGkl7wlUPpsVqQ", "XcURPj8Gx9LdVpEI", "zW9ny2eM3w0FqNtY"], "AppId": "hYtoHWbMzucYK77K", "AuthorizationEndpoint": "Y3G2NjEAWYa3Gb8A", "ClientId": "8Nnix0HSAvzKSefa", "Environment": "pVklQXABbsKjEc96", "FederationMetadataURL": "0d7D9AYPFm7tAt7k", "GenericOauthFlow": false, "IsActive": false, "Issuer": "rBpLPFg0XvWaKvYR", "JWKSEndpoint": "iy9Py1XxrH3naNdy", "KeyID": "98KaImJvGYo5qHvG", "NetflixCertificates": {"encryptedPrivateKey": "otk3ue9HWUF5ZApo", "encryptedPrivateKeyName": "r9Z0uAfYQUg8TGY2", "publicCertificate": "hmFMUgtCXp0VGUU5", "publicCertificateName": "bBuVApQaT90dHgQS", "rootCertificate": "hhUEkbwxY1ymL8Qn", "rootCertificateName": "de28er2hXw49ZFW4"}, "OrganizationId": "BDHFJUQzYHBJrfHr", "PlatformName": "Usyo0neD5siM92sW", "RedirectUri": "ynLjQQpmbTAndKNo", "RegisteredDomains": [{"affectedClientIDs": ["Sd2FFlvrJsNWTeEe", "ZAavvObjZhbXYTNf", "Wj7LnkLCOL0sq1nq"], "domain": "ddoJAsRtnZvZWdxc", "namespaces": ["nSSdUBGbR7fNkLsR", "9QIL7dkkMlhtiEeA", "QFuli7hX5LgUxPo0"], "roleId": "rXqRF8KOG8PCOUcu"}, {"affectedClientIDs": ["lPkpw90A8D1zWnnq", "CNQiCu0c9DNlaDrZ", "HGKBg9aDYditgl24"], "domain": "Uc48TTkjRaF5wPqo", "namespaces": ["5O8UDzGVkp7uevKb", "gFlHY2yOEQ1C0vZl", "11O7LbkVaSMvIxgX"], "roleId": "7jl4r71h1Jxbh61m"}, {"affectedClientIDs": ["dxaqlPOsFO58d9zE", "fgJZ3p26GwqNY6Th", "RmAHIAb3u80bHRLl"], "domain": "SkT6SIUW0exVRVZk", "namespaces": ["Vno5lMWUlQlNLxAS", "Ox3QWP4csfePOG0Q", "zARwJ25W1Q7po2zJ"], "roleId": "KkipitFVpBu4wIrc"}], "Secret": "qRGFygBOpyqxOxxo", "TeamID": "jG6zC0HWP5jWhVtM", "TokenAuthenticationType": "R409RvvkMvqhSuZE", "TokenClaimsMapping": {"bH1SDmbvKmTqZJml": "Nkz5PQHrgj6nb82m", "q2ulii3qBUOtU8lb": "dzdSnSQyK6Qgm2Xg", "VByPG38jIfiYOnB3": "rgtP9p8MgJRTw9fE"}, "TokenEndpoint": "DOR5S6alnqoPNXUf", "UserInfoEndpoint": "XiczNTzSB04tdqSi", "UserInfoHTTPMethod": "3bBEAX3mMGNmj1jU", "scopes": ["2klU13xVPbrqkxWa", "BjAJr36sEwFjy5Bs", "6JksIs7FRi8SzdY4"]}' \
    > test.out 2>&1
eval_tap $? 142 'UpdateThirdPartyLoginPlatformCredentialV3' test.out

#- 143 UpdateThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam updateThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'ZBF9u9VmBdJ3jGDo' \
    --body '{"affectedClientIDs": ["0CZouAo1FKRB3iK3", "itBOy3oVN4cDW3RC", "t6UayHMX0DOA51jk"], "assignedNamespaces": ["bckjwZM39P0znU5K", "cohAhs2O28BroSDX", "d1EF2W2UBW76VV2Z"], "domain": "0rxy5mWuTIKhE9DF", "roleId": "Q8VEsW4kDgzB5gF4"}' \
    > test.out 2>&1
eval_tap $? 143 'UpdateThirdPartyLoginPlatformDomainV3' test.out

#- 144 DeleteThirdPartyLoginPlatformDomainV3
samples/cli/sample-apps Iam deleteThirdPartyLoginPlatformDomainV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'qhS8ArSrk8IjtAfz' \
    --body '{"domain": "SXjKZ9mA5vZAZdNa"}' \
    > test.out 2>&1
eval_tap $? 144 'DeleteThirdPartyLoginPlatformDomainV3' test.out

#- 145 RetrieveSSOLoginPlatformCredential
samples/cli/sample-apps Iam retrieveSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'JhgWALHdSAzQqPbF' \
    > test.out 2>&1
eval_tap $? 145 'RetrieveSSOLoginPlatformCredential' test.out

#- 146 AddSSOLoginPlatformCredential
samples/cli/sample-apps Iam addSSOLoginPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId 'QTggwDIt30PdD3cS' \
    --body '{"acsUrl": "3A0b8PoxHd5CKo20", "apiKey": "51VnSSncHe8Qw3Ye", "appId": "arDngp8aTK3eP1PA", "federationMetadataUrl": "UVjUi8iIDQGTDCcL", "isActive": true, "redirectUri": "Tw3oaKQ2ILkBj26v", "secret": "llpzHmoFWfXYW7P0", "ssoUrl": "mu0wdGZGfTAUp0Ws"}' \
    > test.out 2>&1
eval_tap $? 146 'AddSSOLoginPlatformCredential' test.out

#- 147 DeleteSSOLoginPlatformCredentialV3
samples/cli/sample-apps Iam deleteSSOLoginPlatformCredentialV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'rMu1EirksEcSgBjq' \
    > test.out 2>&1
eval_tap $? 147 'DeleteSSOLoginPlatformCredentialV3' test.out

#- 148 UpdateSSOPlatformCredential
samples/cli/sample-apps Iam updateSSOPlatformCredential \
    --namespace $AB_NAMESPACE \
    --platformId '2R7Zy4Sbs1R9k8hs' \
    --body '{"acsUrl": "oCzEbIbrd3DGvqtJ", "apiKey": "KcP4YXxUmLXHzczC", "appId": "Dt3xeZh04AabioB4", "federationMetadataUrl": "gSx7qf39HDmFJHEG", "isActive": true, "redirectUri": "EdzwO6MiSNJBKMT7", "secret": "jb66hkPML1W33h4W", "ssoUrl": "eOMfJ59y4T8cUQD9"}' \
    > test.out 2>&1
eval_tap $? 148 'UpdateSSOPlatformCredential' test.out

#- 149 AdminListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'JiN4Ge9UrEEPRXbd' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["OlDmwJFyenZAa8zs", "o6ZbbSaivWiSp1uY", "lxoECzHk6xH1jqLT"]}' \
    > test.out 2>&1
eval_tap $? 149 'AdminListUserIDByPlatformUserIDsV3' test.out

#- 150 AdminGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam adminGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'CJM0L7CzPWZRUR8H' \
    --platformUserId 'iW68g3ZYAfNAdanr' \
    > test.out 2>&1
eval_tap $? 150 'AdminGetUserByPlatformUserIDV3' test.out

#- 151 GetAdminUsersByRoleIdV3
samples/cli/sample-apps Iam getAdminUsersByRoleIdV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'RZK8QwrNMH8eweV9' \
    --after '27' \
    --before '20' \
    --limit '6' \
    > test.out 2>&1
eval_tap $? 151 'GetAdminUsersByRoleIdV3' test.out

#- 152 AdminGetUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --emailAddress 'qGiQIPHaQfZ9ylGM' \
    > test.out 2>&1
eval_tap $? 152 'AdminGetUserByEmailAddressV3' test.out

#- 153 AdminGetBulkUserBanV3
samples/cli/sample-apps Iam adminGetBulkUserBanV3 \
    --namespace $AB_NAMESPACE \
    --activeOnly 'true' \
    --banType 'D7iBXEjnCHHFDcnV' \
    --body '{"bulkUserId": ["S17mkMs5dMJvyXG9", "qXFnYgKFzpa7IO1N", "tg5Qa9EB6EMYjN02"]}' \
    > test.out 2>&1
eval_tap $? 153 'AdminGetBulkUserBanV3' test.out

#- 154 AdminListUserIDByUserIDsV3
samples/cli/sample-apps Iam adminListUserIDByUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["jtEZiBKUCp6jLmPA", "dEzalD8A9UXjT4vW", "QsIrQeOtfsNCgHXS"]}' \
    > test.out 2>&1
eval_tap $? 154 'AdminListUserIDByUserIDsV3' test.out

#- 155 AdminBulkGetUsersPlatform
samples/cli/sample-apps Iam adminBulkGetUsersPlatform \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["rAGsdLtqEJqLJ9k0", "lHfIbfz5lcRqXAKQ", "NxXaKhErVT5GFk1Z"]}' \
    > test.out 2>&1
eval_tap $? 155 'AdminBulkGetUsersPlatform' test.out

#- 156 AdminInviteUserV3
samples/cli/sample-apps Iam adminInviteUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddresses": ["YakIkvci6beUX9nt", "cg5sfDiF3eDlbaIs", "NVWU6uYO7294G14F"], "isAdmin": false, "namespace": "XDVOp9GuK4gKzs8o", "roles": ["lTvR7aj5v9DS2RAQ", "KxmGfrh5JX9WQgqZ", "eND2gKtNbl4qJeSX"]}' \
    > test.out 2>&1
eval_tap $? 156 'AdminInviteUserV3' test.out

#- 157 AdminQueryThirdPlatformLinkHistoryV3
samples/cli/sample-apps Iam adminQueryThirdPlatformLinkHistoryV3 \
    --namespace $AB_NAMESPACE \
    --limit '20' \
    --offset '61' \
    --platformUserId '7Bxbm72YSFNEQPHY' \
    --platformId 'Cgt76jotU6gVzJmQ' \
    > test.out 2>&1
eval_tap $? 157 'AdminQueryThirdPlatformLinkHistoryV3' test.out

#- 158 AdminListUsersV3
samples/cli/sample-apps Iam adminListUsersV3 \
    --namespace $AB_NAMESPACE \
    --limit '68' \
    --offset '77' \
    > test.out 2>&1
eval_tap $? 158 'AdminListUsersV3' test.out

#- 159 AdminSearchUserV3
samples/cli/sample-apps Iam adminSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by 'TmmV7r1eiAoJQHxI' \
    --endDate 'gbYW8dWmhoBK9cdf' \
    --includeTotal 'false' \
    --limit '66' \
    --offset '77' \
    --platformBy 's5BHIQL4VdoddTR0' \
    --platformId 'II8m6fL1N2dX9GKk' \
    --query '01h6juf0FyvGohCu' \
    --skipLoginQueue 'true' \
    --startDate 'LjuicDTLbSE0PE6c' \
    --testAccount 'true' \
    > test.out 2>&1
eval_tap $? 159 'AdminSearchUserV3' test.out

#- 160 AdminGetBulkUserByEmailAddressV3
samples/cli/sample-apps Iam adminGetBulkUserByEmailAddressV3 \
    --namespace $AB_NAMESPACE \
    --body '{"listEmailAddressRequest": ["pIwHDTIWrSIbKMIN", "32BMtvYltTkzTVYv", "Icxol3FhIwGn27vv"]}' \
    > test.out 2>&1
eval_tap $? 160 'AdminGetBulkUserByEmailAddressV3' test.out

#- 161 AdminGetUserByUserIdV3
samples/cli/sample-apps Iam adminGetUserByUserIdV3 \
    --namespace $AB_NAMESPACE \
    --userId 'A85tkFlw4tCxJJMz' \
    > test.out 2>&1
eval_tap $? 161 'AdminGetUserByUserIdV3' test.out

#- 162 AdminUpdateUserV3
samples/cli/sample-apps Iam adminUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bNxAphFnkDLag9gI' \
    --body '{"avatarUrl": "74LWLYotUq9PfOVY", "country": "J1M092foy6T80ZHs", "dateOfBirth": "bQUxInvAfhUmUXvN", "displayName": "I1GKlJ6jCyloH037", "languageTag": "BdFfDEcjdIwHxir9", "skipLoginQueue": false, "uniqueDisplayName": "KTRmiyTGFmntVkSN", "userName": "kvBDX1Fer3Nlofmv"}' \
    > test.out 2>&1
eval_tap $? 162 'AdminUpdateUserV3' test.out

#- 163 AdminGetUserBanV3
samples/cli/sample-apps Iam adminGetUserBanV3 \
    --namespace $AB_NAMESPACE \
    --userId 'BlS0ae8w0pQPRndu' \
    --activeOnly 'false' \
    --after 'Q1xX1vFfxfmrW1cN' \
    --before 'A6l8oM1LjOPWWG4i' \
    --limit '37' \
    > test.out 2>&1
eval_tap $? 163 'AdminGetUserBanV3' test.out

#- 164 AdminBanUserV3
samples/cli/sample-apps Iam adminBanUserV3 \
    --namespace $AB_NAMESPACE \
    --userId '0rXWdJIQtSBZxNTG' \
    --body '{"ban": "P4miNkAzUKhB9kxA", "comment": "sLLbt1XMsZ6112se", "endDate": "OyjDaycgCcJfWcBk", "reason": "wvoFbhvwkCqfjJEq", "skipNotif": false}' \
    > test.out 2>&1
eval_tap $? 164 'AdminBanUserV3' test.out

#- 165 AdminUpdateUserBanV3
samples/cli/sample-apps Iam adminUpdateUserBanV3 \
    --banId '6C6Tba3tX8wR3YAD' \
    --namespace $AB_NAMESPACE \
    --userId '9zMAQoaOVHiNOfuc' \
    --body '{"enabled": true, "skipNotif": true}' \
    > test.out 2>&1
eval_tap $? 165 'AdminUpdateUserBanV3' test.out

#- 166 AdminSendVerificationCodeV3
samples/cli/sample-apps Iam adminSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'gYXLzSoNVoda8B67' \
    --body '{"context": "UV1VPmaq9i9OffOV", "emailAddress": "axcJ2PhCR71rd5qh", "languageTag": "hwbccMK6g5hxXnxW"}' \
    > test.out 2>&1
eval_tap $? 166 'AdminSendVerificationCodeV3' test.out

#- 167 AdminVerifyAccountV3
samples/cli/sample-apps Iam adminVerifyAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'a0uZlQMjSsYU1WNR' \
    --body '{"Code": "1co3BjT9IiwjzfsL", "ContactType": "NjzvN3hh6akNkN0l", "LanguageTag": "VHt2490CvyWcYmmz", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 167 'AdminVerifyAccountV3' test.out

#- 168 GetUserVerificationCode
samples/cli/sample-apps Iam getUserVerificationCode \
    --namespace $AB_NAMESPACE \
    --userId '6KGTXKNy5mDbI9Ee' \
    > test.out 2>&1
eval_tap $? 168 'GetUserVerificationCode' test.out

#- 169 AdminGetUserDeletionStatusV3
samples/cli/sample-apps Iam adminGetUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'w9wFEXa3rs0Zc7Ij' \
    > test.out 2>&1
eval_tap $? 169 'AdminGetUserDeletionStatusV3' test.out

#- 170 AdminUpdateUserDeletionStatusV3
samples/cli/sample-apps Iam adminUpdateUserDeletionStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId 'DXVRwD5vauDnNUFL' \
    --body '{"deletionDate": 53, "enabled": false}' \
    > test.out 2>&1
eval_tap $? 170 'AdminUpdateUserDeletionStatusV3' test.out

#- 171 AdminUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam adminUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --userId 'b6mxfffZhPhVEMQ5' \
    --body '{"code": "oNJVBuV2odDnwQDU", "country": "bXvcSA1AGSlgviRK", "dateOfBirth": "HEq89lSxzgwLkDfY", "displayName": "awKANBfLln8f3kA8", "emailAddress": "5XhkQGSOfGHdTBan", "password": "eqw3tBvNqwIWnWod", "uniqueDisplayName": "UAw0OVeER4RKJxeK", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 171 'AdminUpgradeHeadlessAccountV3' test.out

#- 172 AdminDeleteUserInformationV3
samples/cli/sample-apps Iam adminDeleteUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'PGz41zoJDveLKc4f' \
    > test.out 2>&1
eval_tap $? 172 'AdminDeleteUserInformationV3' test.out

#- 173 AdminGetUserLoginHistoriesV3
samples/cli/sample-apps Iam adminGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cn7WI4q3bVYzxmLI' \
    --after '0.16344866882828235' \
    --before '0.8754373755542899' \
    --limit '8' \
    > test.out 2>&1
eval_tap $? 173 'AdminGetUserLoginHistoriesV3' test.out

#- 174 AdminResetPasswordV3
samples/cli/sample-apps Iam adminResetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'cGWzuwI6Jf53Ieo7' \
    --body '{"languageTag": "hhFs5rppCbNH1aa8", "newPassword": "7j4QEzjwn7ZSslth", "oldPassword": "eYeBq9pBleyxhAGk"}' \
    > test.out 2>&1
eval_tap $? 174 'AdminResetPasswordV3' test.out

#- 175 AdminUpdateUserPermissionV3
samples/cli/sample-apps Iam adminUpdateUserPermissionV3 \
    --namespace $AB_NAMESPACE \
    --userId 'm5YcaTdvL2NzcYPM' \
    --body '{"Permissions": [{"Action": 94, "Resource": "58p4faxFfeUnhEYW", "SchedAction": 82, "SchedCron": "nTW528bNLQ3eeWDc", "SchedRange": ["kBoCjgQwp1dVxuwq", "pP4GwuFHCsGN7McA", "AQPClaPW77miAbUV"]}, {"Action": 47, "Resource": "nEib16et6qL5iAg9", "SchedAction": 75, "SchedCron": "fqDlGbXCjFwvEAEg", "SchedRange": ["KCTiztnvSVh9azHr", "jOxbiBEwhWd9cw7a", "64ozW9uLncJtrRyi"]}, {"Action": 45, "Resource": "KzYnigaUagNAyNwH", "SchedAction": 67, "SchedCron": "kbaVkWA9qgKBdpYs", "SchedRange": ["MgKZ8mozj3ntXNJF", "CkA2emMtd1sQ0NCP", "dbS3dnH9TtSWJ9mG"]}]}' \
    > test.out 2>&1
eval_tap $? 175 'AdminUpdateUserPermissionV3' test.out

#- 176 AdminAddUserPermissionsV3
samples/cli/sample-apps Iam adminAddUserPermissionsV3 \
    --namespace $AB_NAMESPACE \
    --userId '5g1kPuQYgBeTJEFs' \
    --body '{"Permissions": [{"Action": 23, "Resource": "gQrncbyT7MKqTx7T", "SchedAction": 28, "SchedCron": "XPzYUlhTmbbkGaHV", "SchedRange": ["Aw3zpwkufFHjgOGj", "lw27PJI4wnzqhHTu", "Vppawv9fEK7eZzw6"]}, {"Action": 18, "Resource": "6LFPHR7c79JnedzQ", "SchedAction": 99, "SchedCron": "n1sDJqh8Kj3T1KuX", "SchedRange": ["xxGN0X8PWrVGypNp", "4huPimPHD3vzLUR6", "ibqU7KEGZhBe6sMG"]}, {"Action": 49, "Resource": "pVf3Nr3IfoAjKCUi", "SchedAction": 40, "SchedCron": "bTh3ZYX1smc939F7", "SchedRange": ["lf3Q9hvbJ7TpaKZs", "fkQFdXZqk3Gf0Uae", "0qAp0TZ7rls0peWX"]}]}' \
    > test.out 2>&1
eval_tap $? 176 'AdminAddUserPermissionsV3' test.out

#- 177 AdminDeleteUserPermissionBulkV3
samples/cli/sample-apps Iam adminDeleteUserPermissionBulkV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bsGxdGfhSG4IC6ij' \
    --body '[{"Action": 55, "Resource": "EGDLMcVs6vhPWmLH"}, {"Action": 97, "Resource": "c5kMl8LKQHpwnqsl"}, {"Action": 4, "Resource": "kdHT7oZZ1bo4t6M5"}]' \
    > test.out 2>&1
eval_tap $? 177 'AdminDeleteUserPermissionBulkV3' test.out

#- 178 AdminDeleteUserPermissionV3
samples/cli/sample-apps Iam adminDeleteUserPermissionV3 \
    --action '29' \
    --namespace $AB_NAMESPACE \
    --resource 'uvDQ6w33AccSpAaI' \
    --userId 'aqGf7BbGy6rmIAhs' \
    > test.out 2>&1
eval_tap $? 178 'AdminDeleteUserPermissionV3' test.out

#- 179 AdminGetUserPlatformAccountsV3
samples/cli/sample-apps Iam adminGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '9RIjLm4ThV3tSptT' \
    --after 'HCXkDEChzqMAyXBj' \
    --before 'PLrddOlArDRO5B36' \
    --limit '92' \
    --platformId '5SWZhCNNB5Hq1cYQ' \
    > test.out 2>&1
eval_tap $? 179 'AdminGetUserPlatformAccountsV3' test.out

#- 180 AdminGetListJusticePlatformAccounts
samples/cli/sample-apps Iam adminGetListJusticePlatformAccounts \
    --namespace $AB_NAMESPACE \
    --userId 'fMvk0sUyQvBmIoFx' \
    > test.out 2>&1
eval_tap $? 180 'AdminGetListJusticePlatformAccounts' test.out

#- 181 AdminGetUserMapping
samples/cli/sample-apps Iam adminGetUserMapping \
    --namespace $AB_NAMESPACE \
    --targetNamespace '9PlEw7yhKDrCHWy7' \
    --userId 'TEp0XwSf29o5CIHX' \
    > test.out 2>&1
eval_tap $? 181 'AdminGetUserMapping' test.out

#- 182 AdminCreateJusticeUser
samples/cli/sample-apps Iam adminCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'WQQTFfKzf9Zjatki' \
    --userId 'gW2A1eWnnTiMnD9n' \
    > test.out 2>&1
eval_tap $? 182 'AdminCreateJusticeUser' test.out

#- 183 AdminLinkPlatformAccount
samples/cli/sample-apps Iam adminLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'V3MVF7xMQR4Zy7Na' \
    --skipConflict 'true' \
    --body '{"platformId": "PMTPBmUerLHfLArK", "platformUserId": "1tgSLejvr4uhnak8"}' \
    > test.out 2>&1
eval_tap $? 183 'AdminLinkPlatformAccount' test.out

#- 184 AdminPlatformUnlinkV3
samples/cli/sample-apps Iam adminPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'cP8RddqgsNjtIK3B' \
    --userId 'qDa6Ha9TE3akaw5u' \
    --body '{"platformNamespace": "qEAXDuEkulz4gaic"}' \
    > test.out 2>&1
eval_tap $? 184 'AdminPlatformUnlinkV3' test.out

#- 185 AdminPlatformLinkV3
samples/cli/sample-apps Iam adminPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'fUsSWgBmQWIg1ptT' \
    --userId 'Gs259IJOfm7GCmHj' \
    --ticket 'JtkvPwuNldkTt2uO' \
    > test.out 2>&1
eval_tap $? 185 'AdminPlatformLinkV3' test.out

#- 186 AdminDeleteUserLinkingHistoryByPlatformIDV3
samples/cli/sample-apps Iam adminDeleteUserLinkingHistoryByPlatformIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'xJQDHZDAkRYBA1pG' \
    --userId '29LSDw7bkdcboKlY' \
    > test.out 2>&1
eval_tap $? 186 'AdminDeleteUserLinkingHistoryByPlatformIDV3' test.out

#- 187 AdminGetThirdPartyPlatformTokenLinkStatusV3
samples/cli/sample-apps Iam adminGetThirdPartyPlatformTokenLinkStatusV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'izgtvpYWdYf4iqqH' \
    --userId 'yLD4LzYHtABCN0Jh' \
    --platformToken 'agV4ld5YbYKnl4Mz' \
    > test.out 2>&1
eval_tap $? 187 'AdminGetThirdPartyPlatformTokenLinkStatusV3' test.out

#- 188 AdminGetUserSinglePlatformAccount
samples/cli/sample-apps Iam adminGetUserSinglePlatformAccount \
    --namespace $AB_NAMESPACE \
    --platformId 'L6PULnvjZ61R9wCb' \
    --userId 'flzIDJvJ9zBmr5Du' \
    > test.out 2>&1
eval_tap $? 188 'AdminGetUserSinglePlatformAccount' test.out

#- 189 AdminDeleteUserRolesV3
samples/cli/sample-apps Iam adminDeleteUserRolesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'UOShgVdytG28KWbF' \
    --body '["gjngqMZ2HSKpFlh3", "4oIUfDs53ukWeES1", "Tk4VEKq7v1vgxOXS"]' \
    > test.out 2>&1
eval_tap $? 189 'AdminDeleteUserRolesV3' test.out

#- 190 AdminSaveUserRoleV3
samples/cli/sample-apps Iam adminSaveUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --userId 'zYwwlnWsnFSCVhR6' \
    --body '[{"namespace": "jVi6LBwFJHx8WOko", "roleId": "rdOSt6lh5Q01ciG5"}, {"namespace": "hVyGF6HajlLAuNOc", "roleId": "0Iio7XjvV4Pg652H"}, {"namespace": "XtPbsNlbdX7soP1y", "roleId": "L17BCV58bW43ju77"}]' \
    > test.out 2>&1
eval_tap $? 190 'AdminSaveUserRoleV3' test.out

#- 191 AdminAddUserRoleV3
samples/cli/sample-apps Iam adminAddUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId '5Jl45LsuRoHxMLRT' \
    --userId 'f8pE3S8HIOkNbLNo' \
    > test.out 2>&1
eval_tap $? 191 'AdminAddUserRoleV3' test.out

#- 192 AdminDeleteUserRoleV3
samples/cli/sample-apps Iam adminDeleteUserRoleV3 \
    --namespace $AB_NAMESPACE \
    --roleId 'C424pO2ItVRTCwPk' \
    --userId 'MvhrbO8KuyBygJuc' \
    > test.out 2>&1
eval_tap $? 192 'AdminDeleteUserRoleV3' test.out

#- 193 AdminUpdateUserStatusV3
samples/cli/sample-apps Iam adminUpdateUserStatusV3 \
    --namespace $AB_NAMESPACE \
    --userId '79i1we4FdORCumjc' \
    --body '{"enabled": false, "reason": "VslrIHMz1nkAVkDe"}' \
    > test.out 2>&1
eval_tap $? 193 'AdminUpdateUserStatusV3' test.out

#- 194 AdminTrustlyUpdateUserIdentity
samples/cli/sample-apps Iam adminTrustlyUpdateUserIdentity \
    --namespace $AB_NAMESPACE \
    --userId 'JymNljVTFugSZoHj' \
    --body '{"emailAddress": "oqonq4MqK5YtRy9w", "password": "1GreLx4gG9lDWx5O"}' \
    > test.out 2>&1
eval_tap $? 194 'AdminTrustlyUpdateUserIdentity' test.out

#- 195 AdminVerifyUserWithoutVerificationCodeV3
samples/cli/sample-apps Iam adminVerifyUserWithoutVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --userId 'R0MWK1yHKZTk4vEJ' \
    > test.out 2>&1
eval_tap $? 195 'AdminVerifyUserWithoutVerificationCodeV3' test.out

#- 196 AdminUpdateClientSecretV3
samples/cli/sample-apps Iam adminUpdateClientSecretV3 \
    --clientId 'nm1D04LyDlOQ7lJ0' \
    --namespace $AB_NAMESPACE \
    --body '{"newSecret": "ne29AMYiscRjr17G"}' \
    > test.out 2>&1
eval_tap $? 196 'AdminUpdateClientSecretV3' test.out

#- 197 AdminGetRolesV3
samples/cli/sample-apps Iam adminGetRolesV3 \
    --after 'oSfjWaU5nKE9wXC9' \
    --before '0J9XyJV2ZIT6eVeP' \
    --isWildcard 'true' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 197 'AdminGetRolesV3' test.out

#- 198 AdminCreateRoleV3
samples/cli/sample-apps Iam adminCreateRoleV3 \
    --body '{"adminRole": false, "deletable": false, "isWildcard": false, "managers": [{"displayName": "oj5Kg3eF58vRsqO6", "namespace": "MJet46xYP5KjG3jX", "userId": "S251ui1SmjHxXfZ9"}, {"displayName": "8areYHHEcQyYK5T8", "namespace": "a8Bx95KGEuGbGuW2", "userId": "CzuSMtxp27387n3m"}, {"displayName": "fBIkAOh89BvrlMah", "namespace": "W750cuklB3yPU7MJ", "userId": "JFLPvwvQcvyL2llR"}], "members": [{"displayName": "KjbkJbCUrgdhxfTb", "namespace": "WxLA6ZwjWs5gSUWm", "userId": "7qbfw0uakOxLnxGp"}, {"displayName": "Qtqk6TJ97ohTDqzi", "namespace": "RSZnkvs1n2IMtFKk", "userId": "VGJXd80yZNCj5RtE"}, {"displayName": "YWKh8BrihDQrMkDv", "namespace": "W1XKYRnwabzBz1r0", "userId": "FYA03S9vibEqzm2k"}], "permissions": [{"action": 98, "resource": "J7PY6Zm03BLRbAUb", "schedAction": 48, "schedCron": "J8jvVzN1XXJpNu7P", "schedRange": ["AoXOrMsIjdjvUTdd", "991jOIP9xTJ2J2lR", "en06c4jayqyduZPh"]}, {"action": 44, "resource": "6oQvDs8rtZGZpOMj", "schedAction": 27, "schedCron": "bb9T5My6K2wUxAcH", "schedRange": ["EUdskFUsdffCCjzI", "ZNaIaEFtJhMunmrH", "jYQ6IiIekWArk1WD"]}, {"action": 90, "resource": "SPsiLy8otN3pGVwd", "schedAction": 46, "schedCron": "B34ZdbeCBJcekFIr", "schedRange": ["ge6LbcJAyxr2hmFf", "KanJsRGTNJEuVY4B", "LFWTVaCq5AP0P2FD"]}], "roleName": "gsdjOy74i6QX9XJ2"}' \
    > test.out 2>&1
eval_tap $? 198 'AdminCreateRoleV3' test.out

#- 199 AdminGetRoleV3
samples/cli/sample-apps Iam adminGetRoleV3 \
    --roleId 'E7ldaKQ2HC4cAYMq' \
    > test.out 2>&1
eval_tap $? 199 'AdminGetRoleV3' test.out

#- 200 AdminDeleteRoleV3
samples/cli/sample-apps Iam adminDeleteRoleV3 \
    --roleId 'RXWFnqYa2TGHFq66' \
    > test.out 2>&1
eval_tap $? 200 'AdminDeleteRoleV3' test.out

#- 201 AdminUpdateRoleV3
samples/cli/sample-apps Iam adminUpdateRoleV3 \
    --roleId 'FuMLr6VhVmn0Y85U' \
    --body '{"deletable": false, "isWildcard": false, "roleName": "oGplh9XebvfHMaBL"}' \
    > test.out 2>&1
eval_tap $? 201 'AdminUpdateRoleV3' test.out

#- 202 AdminGetRoleAdminStatusV3
samples/cli/sample-apps Iam adminGetRoleAdminStatusV3 \
    --roleId '6CtINNBqp6vPEB0u' \
    > test.out 2>&1
eval_tap $? 202 'AdminGetRoleAdminStatusV3' test.out

#- 203 AdminUpdateAdminRoleStatusV3
samples/cli/sample-apps Iam adminUpdateAdminRoleStatusV3 \
    --roleId 'MwvuDUm2DG9BWKhw' \
    > test.out 2>&1
eval_tap $? 203 'AdminUpdateAdminRoleStatusV3' test.out

#- 204 AdminRemoveRoleAdminV3
samples/cli/sample-apps Iam adminRemoveRoleAdminV3 \
    --roleId 'AhtthRdvBmkU52Z3' \
    > test.out 2>&1
eval_tap $? 204 'AdminRemoveRoleAdminV3' test.out

#- 205 AdminGetRoleManagersV3
samples/cli/sample-apps Iam adminGetRoleManagersV3 \
    --roleId 'HtVkMy5guKnvX9N7' \
    --after 'fn3RpsxH0PM3HVAK' \
    --before 'moMqckFMfCCDBMGo' \
    --limit '97' \
    > test.out 2>&1
eval_tap $? 205 'AdminGetRoleManagersV3' test.out

#- 206 AdminAddRoleManagersV3
samples/cli/sample-apps Iam adminAddRoleManagersV3 \
    --roleId 'vQbMA8xsom5uK1lI' \
    --body '{"managers": [{"displayName": "lwE4KM0esMNEAbwB", "namespace": "Qf8cSdufXzXGUFH8", "userId": "zf1gJb83736am7V4"}, {"displayName": "HNaW87mpwZijMxn1", "namespace": "KB5l8YJgrNkW6GLq", "userId": "33bUOkUCbLGv98MK"}, {"displayName": "uR6QY7sypeQ2WWR8", "namespace": "UY6vwR9I9LNmzDDB", "userId": "HaPzRaIJIVZUmGzX"}]}' \
    > test.out 2>&1
eval_tap $? 206 'AdminAddRoleManagersV3' test.out

#- 207 AdminRemoveRoleManagersV3
samples/cli/sample-apps Iam adminRemoveRoleManagersV3 \
    --roleId 'MQYS21kgoOu1pK2Z' \
    --body '{"managers": [{"displayName": "rVH7FPBhvOnu6DSN", "namespace": "bVPBZ2HKmvDd6Gs4", "userId": "FEBLOhge7Ru9ULQp"}, {"displayName": "B7L59kEfoYB1A0wk", "namespace": "TKwvtx3WGpe7XeK8", "userId": "KJMbrDb6QngyEbvh"}, {"displayName": "bDt9fozPtXEyt3SK", "namespace": "0ZPg3w1nEQSQ8GyB", "userId": "3qjfF1a3HPkdzW0O"}]}' \
    > test.out 2>&1
eval_tap $? 207 'AdminRemoveRoleManagersV3' test.out

#- 208 AdminGetRoleMembersV3
samples/cli/sample-apps Iam adminGetRoleMembersV3 \
    --roleId 'AXNN6PBr8YihoaiH' \
    --after 'WTyRaA4vPQrEWmU8' \
    --before 'pyrgzLDZfcoBOiiQ' \
    --limit '82' \
    > test.out 2>&1
eval_tap $? 208 'AdminGetRoleMembersV3' test.out

#- 209 AdminAddRoleMembersV3
samples/cli/sample-apps Iam adminAddRoleMembersV3 \
    --roleId 'fQdSZRrmIsqmHaAJ' \
    --body '{"members": [{"displayName": "bw10GwhOJAjr97xp", "namespace": "SptqVjDokVNGop6B", "userId": "9D3Vi0cf2Jb9hFqG"}, {"displayName": "0JFSYKePRSn4cJGO", "namespace": "YgtSXLGCYUb3WPLK", "userId": "8IfIDsu178H6s3j7"}, {"displayName": "iiCF7uDUJnD9f7c1", "namespace": "k42voCe5wsAXFqQK", "userId": "MSRcg9Nbhz3xOxbz"}]}' \
    > test.out 2>&1
eval_tap $? 209 'AdminAddRoleMembersV3' test.out

#- 210 AdminRemoveRoleMembersV3
samples/cli/sample-apps Iam adminRemoveRoleMembersV3 \
    --roleId 'efNmC8fr9KL1earR' \
    --body '{"members": [{"displayName": "g6wJD8lfPlCdZz9t", "namespace": "AV34enQqV30vetjC", "userId": "iXLxvkRvmx6lsbWc"}, {"displayName": "wdh7NnliCYAoB3l2", "namespace": "T2YH4izfEimUBm7w", "userId": "6zEZamDlnSPiPKes"}, {"displayName": "o8tUuVJ3dFfVvy8d", "namespace": "skI2TkVr06zc1o5W", "userId": "Pv09dznkDFnstODX"}]}' \
    > test.out 2>&1
eval_tap $? 210 'AdminRemoveRoleMembersV3' test.out

#- 211 AdminUpdateRolePermissionsV3
samples/cli/sample-apps Iam adminUpdateRolePermissionsV3 \
    --roleId '2jXwrWsfYZmE0q6S' \
    --body '{"permissions": [{"action": 29, "resource": "Izlz2Nc0hLYYNdMM", "schedAction": 62, "schedCron": "5knYf9chPcEzqRJG", "schedRange": ["zSTnUo7j50ptGOHx", "Pfh1B0qMEeuDmG7u", "ss90HCoOUILn5jCl"]}, {"action": 27, "resource": "h14UBReWPNa1w1kn", "schedAction": 100, "schedCron": "1IPhp70J8VEFTZEY", "schedRange": ["W0GZ7dvK4nc7HhrW", "HV72Xr7Co0z88oag", "LJIwUANtN9xkEHBE"]}, {"action": 61, "resource": "YOQdPsCmIdN1PqhK", "schedAction": 80, "schedCron": "9RFJ1aQXwyq7idhv", "schedRange": ["4tRwcheuq8wckxmP", "sXeUQjuh6kGNrCXn", "KiJN1yETAnAnKXkS"]}]}' \
    > test.out 2>&1
eval_tap $? 211 'AdminUpdateRolePermissionsV3' test.out

#- 212 AdminAddRolePermissionsV3
samples/cli/sample-apps Iam adminAddRolePermissionsV3 \
    --roleId 'JrIxdwIYxlQ9sfDO' \
    --body '{"permissions": [{"action": 75, "resource": "y2mYy2so3lMvBBje", "schedAction": 58, "schedCron": "pgLZSwq5PBr3yOU2", "schedRange": ["4QHRseTSUrnQA80c", "PowMjnAbFbf110TJ", "Jvmc9i0aEESCtYXn"]}, {"action": 98, "resource": "CJokxm3qUBjE1fd5", "schedAction": 8, "schedCron": "LJFptDy3VCaUScc7", "schedRange": ["MhK1WjLOHIvP1w8U", "QyXPFXJAE4bSaID9", "OGaHbyOThu9biNn7"]}, {"action": 70, "resource": "Ij8n51XX6jhjLHOb", "schedAction": 9, "schedCron": "xLuHBMhRE6m20vsb", "schedRange": ["mCBgoPiEuLXMPbTy", "Tqdgb2lTdIkSM4GR", "41M01wYvWnjeOxTm"]}]}' \
    > test.out 2>&1
eval_tap $? 212 'AdminAddRolePermissionsV3' test.out

#- 213 AdminDeleteRolePermissionsV3
samples/cli/sample-apps Iam adminDeleteRolePermissionsV3 \
    --roleId '1RZuxQFRnqgYe9cH' \
    --body '["Q9R6vB7qR0ZlAaS2", "crPJHf2TQ66VmhrV", "cyDqj5IhEjaI7sVw"]' \
    > test.out 2>&1
eval_tap $? 213 'AdminDeleteRolePermissionsV3' test.out

#- 214 AdminDeleteRolePermissionV3
samples/cli/sample-apps Iam adminDeleteRolePermissionV3 \
    --action '62' \
    --resource 'YVTNVfPf9jwwYMYb' \
    --roleId '01SOg4LraAFCF6Ki' \
    > test.out 2>&1
eval_tap $? 214 'AdminDeleteRolePermissionV3' test.out

#- 215 AdminGetMyUserV3
samples/cli/sample-apps Iam adminGetMyUserV3 \
    > test.out 2>&1
eval_tap $? 215 'AdminGetMyUserV3' test.out

#- 216 UserAuthenticationV3
samples/cli/sample-apps Iam userAuthenticationV3 \
    --clientId 'SBjF0Qr6N1ixglUq' \
    --extendExp 'false' \
    --redirectUri 'cqygzFgKKB6kXgOc' \
    --password 'S8nqM5rLWeO6O2cI' \
    --requestId 'qo62RONXexGkFdd3' \
    --userName 'AeqFGbZS6VP8nqXb' \
    > test.out 2>&1
eval_tap $? 216 'UserAuthenticationV3' test.out

#- 217 AuthenticationWithPlatformLinkV3
samples/cli/sample-apps Iam authenticationWithPlatformLinkV3 \
    --extendExp 'false' \
    --clientId 'Hh8h5Kn4d78ClcIk' \
    --linkingToken '2SlNnN0fnQ93jbzQ' \
    --password 'WI1wI3iTfbNp7wtu' \
    --username 'TorAINjwIMBfYgw1' \
    > test.out 2>&1
eval_tap $? 217 'AuthenticationWithPlatformLinkV3' test.out

#- 218 GenerateTokenByNewHeadlessAccountV3
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV3 \
    --additionalData 'UXDKYGlLgC0bpvAb' \
    --extendExp 'false' \
    --linkingToken 'DunEwUJvVzT66zIs' \
    > test.out 2>&1
eval_tap $? 218 'GenerateTokenByNewHeadlessAccountV3' test.out

#- 219 RequestOneTimeLinkingCodeV3
samples/cli/sample-apps Iam requestOneTimeLinkingCodeV3 \
    --platformId 'Nwrd4yWkqPVJjf9V' \
    > test.out 2>&1
eval_tap $? 219 'RequestOneTimeLinkingCodeV3' test.out

#- 220 ValidateOneTimeLinkingCodeV3
samples/cli/sample-apps Iam validateOneTimeLinkingCodeV3 \
    --oneTimeLinkCode 'hEq99xzflAAAEwD5' \
    > test.out 2>&1
eval_tap $? 220 'ValidateOneTimeLinkingCodeV3' test.out

#- 221 RequestTokenByOneTimeLinkCodeResponseV3
samples/cli/sample-apps Iam requestTokenByOneTimeLinkCodeResponseV3 \
    --additionalData '7Yni3uFP2wllUWKF' \
    --isTransient 'true' \
    --clientId 'eLLm8dGke0wASIVG' \
    --oneTimeLinkCode 'UtlvEE4LZw4h03ri' \
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
    --codeChallenge 'gMnBmb5UDEn4HKLc' \
    --codeChallengeMethod 'plain' \
    --clientId 'X8CTg7pRJZWARdnM' \
    > test.out 2>&1
eval_tap $? 224 'RequestTokenExchangeCodeV3' test.out

#- 225 AdminRetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam adminRetrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'wpkVD739c7MOchtv' \
    --userId 'Wyo0biw0j1VPxygm' \
    > test.out 2>&1
eval_tap $? 225 'AdminRetrieveUserThirdPartyPlatformTokenV3' test.out

#- 226 RevokeUserV3
samples/cli/sample-apps Iam revokeUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'QNvwhvGw2Zhb2ZRn' \
    --includeGameNamespace 'false' \
    > test.out 2>&1
eval_tap $? 226 'RevokeUserV3' test.out

#- 227 AuthorizeV3
samples/cli/sample-apps Iam authorizeV3 \
    --codeChallenge 'y26K2pQ8B8aCTdTN' \
    --codeChallengeMethod 'S256' \
    --createHeadless 'true' \
    --oneTimeLinkCode '41LtIMRWjhbNv2iT' \
    --redirectUri 'FKuu7ix4lDrTKK8q' \
    --scope 'PqaUjrbP2VyqmWSs' \
    --state 'VWYbQEPP4aMNQZxV' \
    --targetAuthPage 'Ar7Gf1LBAEhjrk9O' \
    --useRedirectUriAsLoginUrlWhenLocked 'false' \
    --clientId 'Wm1FnhuDPvQwJH9c' \
    --responseType 'code' \
    > test.out 2>&1
eval_tap $? 227 'AuthorizeV3' test.out

#- 228 TokenIntrospectionV3
samples/cli/sample-apps Iam tokenIntrospectionV3 \
    --token 'LNJKCxAxKXw5rdlc' \
    > test.out 2>&1
eval_tap $? 228 'TokenIntrospectionV3' test.out

#- 229 GetJWKSV3
samples/cli/sample-apps Iam getJWKSV3 \
    > test.out 2>&1
eval_tap $? 229 'GetJWKSV3' test.out

#- 230 SendMFAAuthenticationCode
samples/cli/sample-apps Iam sendMFAAuthenticationCode \
    --clientId 'De1uh6lXqSPfDrrg' \
    --factor 'tEzSZN4n3sJZKSVf' \
    --mfaToken 'vhu7W8v4dD2qkebB' \
    > test.out 2>&1
eval_tap $? 230 'SendMFAAuthenticationCode' test.out

#- 231 Change2faMethod
samples/cli/sample-apps Iam change2faMethod \
    --factor 'vuVDdJ4vWvLLe4l5' \
    --mfaToken 'oTyM6NHI2F87qm3q' \
    > test.out 2>&1
eval_tap $? 231 'Change2faMethod' test.out

#- 232 Verify2faCode
samples/cli/sample-apps Iam verify2faCode \
    --code 'rfrrdu7oZ93wUKnV' \
    --factor 'a5QpuiUGLEkQg9ae' \
    --mfaToken '4CnRp6mZF3cBK3j0' \
    --rememberDevice 'true' \
    > test.out 2>&1
eval_tap $? 232 'Verify2faCode' test.out

#- 233 RetrieveUserThirdPartyPlatformTokenV3
samples/cli/sample-apps Iam retrieveUserThirdPartyPlatformTokenV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'pu0vFshVCVEEFd5f' \
    --userId '6a9Pe4s72zfKjURr' \
    > test.out 2>&1
eval_tap $? 233 'RetrieveUserThirdPartyPlatformTokenV3' test.out

#- 234 AuthCodeRequestV3
samples/cli/sample-apps Iam authCodeRequestV3 \
    --platformId 'CyyeWYOqp1icsi99' \
    --clientId 'MyIKpR0WRaSrwbrR' \
    --redirectUri 'e77j797yFue2GapV' \
    --requestId 'tZUHP1vQ9kmVkJ05' \
    > test.out 2>&1
eval_tap $? 234 'AuthCodeRequestV3' test.out

#- 235 PlatformTokenGrantV3
samples/cli/sample-apps Iam platformTokenGrantV3 \
    --platformId '3SsXwGlIRABp7tPd' \
    --additionalData 'r2FEMamk60pNabJF' \
    --clientId 'hTE99oeNJzNGa7rW' \
    --createHeadless 'true' \
    --deviceId 'PmgZS8tYojxrlwu8' \
    --macAddress 'chevD5i8bO4Zu1cQ' \
    --platformToken '6bh6aRW7e4Vm7PSK' \
    --skipSetCookie 'false' \
    > test.out 2>&1
eval_tap $? 235 'PlatformTokenGrantV3' test.out

#- 236 GetRevocationListV3
samples/cli/sample-apps Iam getRevocationListV3 \
    > test.out 2>&1
eval_tap $? 236 'GetRevocationListV3' test.out

#- 237 TokenRevocationV3
samples/cli/sample-apps Iam tokenRevocationV3 \
    --token 'zY6a7jI4pDUi6vhb' \
    > test.out 2>&1
eval_tap $? 237 'TokenRevocationV3' test.out

#- 238 SimultaneousLoginV3
samples/cli/sample-apps Iam simultaneousLoginV3 \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket '4Vf2na1CEEY1Oili' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'yTpoaJffeAH8S05v' \
    > test.out 2>&1
eval_tap $? 238 'SimultaneousLoginV3' test.out

#- 239 TokenGrantV3
samples/cli/sample-apps Iam tokenGrantV3 \
    --additionalData 'PoqYEKbLvgnc7RbK' \
    --clientId 'LPsQEnoHgHF2dIHe' \
    --code 'c5U8Vqrm3kFrEJiP' \
    --codeVerifier 'YYz7QDTkVMun8hfM' \
    --extendNamespace '20lreCaTg9d3sJ33' \
    --extendExp 'true' \
    --password 'rchxjJ4gcitZY2fK' \
    --redirectUri 'Wl7TVB8iM2mrruFY' \
    --refreshToken '2Ldn80rAh1VPqjwZ' \
    --username 'Ca15ZMvchSA6KrzF' \
    --grantType 'password' \
    > test.out 2>&1
eval_tap $? 239 'TokenGrantV3' test.out

#- 240 VerifyTokenV3
samples/cli/sample-apps Iam verifyTokenV3 \
    --token 'WLHwBXA6znnKzsnG' \
    > test.out 2>&1
eval_tap $? 240 'VerifyTokenV3' test.out

#- 241 PlatformAuthenticationV3
samples/cli/sample-apps Iam platformAuthenticationV3 \
    --platformId 'RGF8DFj7vlK8BoQV' \
    --code '1WH1NJt2OsZkEqLU' \
    --error 'Ej6GAybkBrppyDJ2' \
    --openidAssocHandle 'kB8XtNFfK2fH8zYY' \
    --openidClaimedId 'i1hXfRT4PNn8wZIF' \
    --openidIdentity 'Cq9SdHB5cx4k6Lqn' \
    --openidMode 'WTHBohsgkfeQmBhz' \
    --openidNs 'a69lmCMWNgAeBfjo' \
    --openidOpEndpoint 'xR9zZz60LAiTxSQv' \
    --openidResponseNonce 'dfg2HQbZfxqwinfU' \
    --openidReturnTo 'KGjVCIM68ylnf8C1' \
    --openidSig 'VdBLEvqldObwpdN2' \
    --openidSigned 'NwTUlqvy43CelGY8' \
    --state 'PgrFoCU4PqGXi2p4' \
    > test.out 2>&1
eval_tap $? 241 'PlatformAuthenticationV3' test.out

#- 242 PlatformTokenRefreshV3
samples/cli/sample-apps Iam platformTokenRefreshV3 \
    --platformId '07g0KFbnbhWbv4Pe' \
    --platformToken 'TcQj530DksvpTIP2' \
    > test.out 2>&1
eval_tap $? 242 'PlatformTokenRefreshV3' test.out

#- 243 PublicGetInputValidations
samples/cli/sample-apps Iam publicGetInputValidations \
    --defaultOnEmpty 'true' \
    --languageCode 'mUEiFveyJGyho5j7' \
    > test.out 2>&1
eval_tap $? 243 'PublicGetInputValidations' test.out

#- 244 PublicGetInputValidationByField
samples/cli/sample-apps Iam publicGetInputValidationByField \
    --field 'ENkFfeyMjBg0aQA9' \
    > test.out 2>&1
eval_tap $? 244 'PublicGetInputValidationByField' test.out

#- 245 PublicGetCountryAgeRestrictionV3
samples/cli/sample-apps Iam publicGetCountryAgeRestrictionV3 \
    --countryCode 'lYXC1TxhfHl5EDVo' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 245 'PublicGetCountryAgeRestrictionV3' test.out

#- 246 PublicGetConfigValueV3
samples/cli/sample-apps Iam publicGetConfigValueV3 \
    --configKey 'D2mYp4hTaAmmrTaM' \
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
    --clientId 'GJUuMldFmDpcOUb3' \
    > test.out 2>&1
eval_tap $? 249 'RetrieveActiveOIDCClientsPublicV3' test.out

#- 250 PublicListUserIDByPlatformUserIDsV3
samples/cli/sample-apps Iam publicListUserIDByPlatformUserIDsV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'HbZC5PEmJu2BseRE' \
    --rawPID 'true' \
    --body '{"platformUserIds": ["JnSyFOe9MpVHvwrI", "jFUoag6Gv9Gnn6ZI", "ruv1NPODe0k0w5LC"]}' \
    > test.out 2>&1
eval_tap $? 250 'PublicListUserIDByPlatformUserIDsV3' test.out

#- 251 PublicGetUserByPlatformUserIDV3
samples/cli/sample-apps Iam publicGetUserByPlatformUserIDV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'Zl8l20zQc4hViPMk' \
    --platformUserId 'yruwXt80mIUyWCde' \
    > test.out 2>&1
eval_tap $? 251 'PublicGetUserByPlatformUserIDV3' test.out

#- 252 PublicGetAsyncStatus
samples/cli/sample-apps Iam publicGetAsyncStatus \
    --namespace $AB_NAMESPACE \
    --requestId '9PqtlJHnpoYQQnnb' \
    > test.out 2>&1
eval_tap $? 252 'PublicGetAsyncStatus' test.out

#- 253 PublicSearchUserV3
samples/cli/sample-apps Iam publicSearchUserV3 \
    --namespace $AB_NAMESPACE \
    --by '9vMOt2EFCq5v3Smt' \
    --limit '9' \
    --offset '8' \
    --platformBy 'nm276M6YFvsQJNwY' \
    --platformId 'kEwdMFezNLkuoh9d' \
    --query 'I1hNI2qEvvItfGyi' \
    > test.out 2>&1
eval_tap $? 253 'PublicSearchUserV3' test.out

#- 254 PublicCreateUserV3
samples/cli/sample-apps Iam publicCreateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "BQVnFmwn6tx2esPX", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "gYcQr6yVprYMpPEc", "policyId": "xLIs7azI14ccKyF0", "policyVersionId": "D2oLBmAb6DsU91KA"}, {"isAccepted": true, "localizedPolicyVersionId": "1SxDsATZNZKH8oSg", "policyId": "wEGmN5nsIatA8dxJ", "policyVersionId": "pKmR2zypNMk6Zst9"}, {"isAccepted": true, "localizedPolicyVersionId": "BdpWNbsY8W1OrPX9", "policyId": "1ROXX8M8m53Xdvpu", "policyVersionId": "Ru9U7VYsTQyM4Pjl"}], "authType": "Sw4EbZV0cTg7UMrL", "code": "XfNxP58Y9nNwh9wW", "country": "vgOsgvR8XKJO0n1h", "dateOfBirth": "xfBw6IpHccMV3MPe", "displayName": "1wdAgEXndxQvNWpT", "emailAddress": "QyKH2LFlezJt1VRn", "password": "XU9HPCRxFtoZg3jJ", "reachMinimumAge": false, "uniqueDisplayName": "r0CM1YFfSTvFkkxM"}' \
    > test.out 2>&1
eval_tap $? 254 'PublicCreateUserV3' test.out

#- 255 CheckUserAvailability
samples/cli/sample-apps Iam checkUserAvailability \
    --namespace $AB_NAMESPACE \
    --field 'jDLKoX2xbo8gskFM' \
    --query 'QBy4qm0QDi6W4ENz' \
    > test.out 2>&1
eval_tap $? 255 'CheckUserAvailability' test.out

#- 256 PublicBulkGetUsers
samples/cli/sample-apps Iam publicBulkGetUsers \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["qvpugqE98MnViK3F", "pT4FEYlBKiiTR4aD", "Fq5j8kh8V0c2j3mJ"]}' \
    > test.out 2>&1
eval_tap $? 256 'PublicBulkGetUsers' test.out

#- 257 PublicSendRegistrationCode
samples/cli/sample-apps Iam publicSendRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "i28nHXNjm4Uhrn4g", "languageTag": "lzLMeajY72rTzOGz"}' \
    > test.out 2>&1
eval_tap $? 257 'PublicSendRegistrationCode' test.out

#- 258 PublicVerifyRegistrationCode
samples/cli/sample-apps Iam publicVerifyRegistrationCode \
    --namespace $AB_NAMESPACE \
    --body '{"code": "sggReTSIQBdZ0JoX", "emailAddress": "Tro7ev9pQnn9B8Dl"}' \
    > test.out 2>&1
eval_tap $? 258 'PublicVerifyRegistrationCode' test.out

#- 259 PublicForgotPasswordV3
samples/cli/sample-apps Iam publicForgotPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "TFJt9Yf54yxI2wDG", "languageTag": "fq8ibwrjtiqO4vvB"}' \
    > test.out 2>&1
eval_tap $? 259 'PublicForgotPasswordV3' test.out

#- 260 GetAdminInvitationV3
samples/cli/sample-apps Iam getAdminInvitationV3 \
    --invitationId '3BasJZ2sWhSu8Lb9' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 260 'GetAdminInvitationV3' test.out

#- 261 CreateUserFromInvitationV3
samples/cli/sample-apps Iam createUserFromInvitationV3 \
    --invitationId '22xbL73gHmd7Y1JF' \
    --namespace $AB_NAMESPACE \
    --body '{"PasswordMD5Sum": "oon43DREtdI1WbYv", "acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "HiFjxkggMfoYXKrK", "policyId": "fhsYwdTPKe6eqG9R", "policyVersionId": "QAh9jesrZnFjZZKT"}, {"isAccepted": false, "localizedPolicyVersionId": "AsDpQVFLX1djHaJq", "policyId": "9QSjyZRfAscPpm2j", "policyVersionId": "8vp9ySVSD8TNlu0M"}, {"isAccepted": false, "localizedPolicyVersionId": "KkCLkBlG4PNIsAFc", "policyId": "L1KTOWzt9xNX7f5A", "policyVersionId": "pQ7ugeKS7kXpe8RD"}], "authType": "qPWkYgAoKhQ6K5w5", "code": "tLcivMLAOiWD6olu", "country": "UDl1hyVO2j1BQRf0", "dateOfBirth": "wCmTBGM9IBuczfH1", "displayName": "2xtuU3AcVfrYTiIH", "emailAddress": "v7BLTETqId2RQFNb", "password": "Lbo9RnhMvOhJdyz6", "reachMinimumAge": false, "uniqueDisplayName": "3kW0DhoxnTrgmMdS"}' \
    > test.out 2>&1
eval_tap $? 261 'CreateUserFromInvitationV3' test.out

#- 262 UpdateUserV3
samples/cli/sample-apps Iam updateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "Yq7dDzlTlV5AJt7I", "country": "XtmXSuO8Bk0dTfUA", "dateOfBirth": "OMlCQfif8sbecHVu", "displayName": "6Tv1x6vAgWTPBfgO", "languageTag": "r0EYfhUiosHIjHTH", "uniqueDisplayName": "Rq6pFwjdaFT5ylDs", "userName": "G7YjKw9b3f4PfklU"}' \
    > test.out 2>&1
eval_tap $? 262 'UpdateUserV3' test.out

#- 263 PublicPartialUpdateUserV3
samples/cli/sample-apps Iam publicPartialUpdateUserV3 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "kZsxmjcbQ6k5hrCL", "country": "9xQadbCSa2F8zJt6", "dateOfBirth": "ilDw1ecVMrpFckjY", "displayName": "ZaQeNVnRbffxgYGa", "languageTag": "gJWLbee3PKoHHP6Z", "uniqueDisplayName": "oFgmxjMmNuGXD0Xq", "userName": "1ykw3O5EdcpTo7wT"}' \
    > test.out 2>&1
eval_tap $? 263 'PublicPartialUpdateUserV3' test.out

#- 264 PublicSendVerificationCodeV3
samples/cli/sample-apps Iam publicSendVerificationCodeV3 \
    --namespace $AB_NAMESPACE \
    --body '{"context": "O9zGz6dCTBKIEnNv", "emailAddress": "sZNQdorhQBS6SAna", "languageTag": "C1o7ixyHgLpDMMxe"}' \
    > test.out 2>&1
eval_tap $? 264 'PublicSendVerificationCodeV3' test.out

#- 265 PublicUserVerificationV3
samples/cli/sample-apps Iam publicUserVerificationV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "9DGmWjn8Krc9SsdI", "contactType": "PGS6rHH7v0rWhvut", "languageTag": "gxlJ2dmo2XqcZcWY", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 265 'PublicUserVerificationV3' test.out

#- 266 PublicUpgradeHeadlessAccountV3
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JjYHuFpGcBU5zJmN", "country": "R7nnqI0PFhAGrb3U", "dateOfBirth": "myQaiTtODLWVT3za", "displayName": "M8jzTNoiYwSeMs6f", "emailAddress": "yQtztYe97IpDzJvE", "password": "bYFMGeBf4ijJmIIm", "uniqueDisplayName": "MVwO2HZ4p0rYLKw5", "validateOnly": true}' \
    > test.out 2>&1
eval_tap $? 266 'PublicUpgradeHeadlessAccountV3' test.out

#- 267 PublicVerifyHeadlessAccountV3
samples/cli/sample-apps Iam publicVerifyHeadlessAccountV3 \
    --namespace $AB_NAMESPACE \
    --needVerificationCode 'false' \
    --body '{"emailAddress": "NGJJAoL0nGo9WlSJ", "password": "xdf5pF16W0V0qFgK"}' \
    > test.out 2>&1
eval_tap $? 267 'PublicVerifyHeadlessAccountV3' test.out

#- 268 PublicUpdatePasswordV3
samples/cli/sample-apps Iam publicUpdatePasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"languageTag": "G4OGyB9m6bfB6nbV", "newPassword": "33V8otM9zhjzrJVU", "oldPassword": "NwrMS5xzeYBfKlJL"}' \
    > test.out 2>&1
eval_tap $? 268 'PublicUpdatePasswordV3' test.out

#- 269 PublicCreateJusticeUser
samples/cli/sample-apps Iam publicCreateJusticeUser \
    --namespace $AB_NAMESPACE \
    --targetNamespace 'GaB9iLQSwho7mS7F' \
    > test.out 2>&1
eval_tap $? 269 'PublicCreateJusticeUser' test.out

#- 270 PublicPlatformLinkV3
samples/cli/sample-apps Iam publicPlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'yf6lLwqJipEsR2b9' \
    --redirectUri '4YewStHdZRck2ZgA' \
    --ticket '9bnqlnVp0cD6N3bu' \
    > test.out 2>&1
eval_tap $? 270 'PublicPlatformLinkV3' test.out

#- 271 PublicPlatformUnlinkV3
samples/cli/sample-apps Iam publicPlatformUnlinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId '9F7G90nlYquYmYXJ' \
    --body '{"platformNamespace": "z2V1W7LjgjGdT43e"}' \
    > test.out 2>&1
eval_tap $? 271 'PublicPlatformUnlinkV3' test.out

#- 272 PublicPlatformUnlinkAllV3
samples/cli/sample-apps Iam publicPlatformUnlinkAllV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'NPyL1dFTUHxXPSN8' \
    > test.out 2>&1
eval_tap $? 272 'PublicPlatformUnlinkAllV3' test.out

#- 273 PublicForcePlatformLinkV3
samples/cli/sample-apps Iam publicForcePlatformLinkV3 \
    --namespace $AB_NAMESPACE \
    --platformId 'epe2lmtkE4YhelLN' \
    --ticket 'F5jN5zdWqwySuUhl' \
    > test.out 2>&1
eval_tap $? 273 'PublicForcePlatformLinkV3' test.out

#- 274 PublicWebLinkPlatform
samples/cli/sample-apps Iam publicWebLinkPlatform \
    --namespace $AB_NAMESPACE \
    --platformId '8dY9bze9zmlgX5Ua' \
    --clientId 'WbZRVjEkOIhxwYea' \
    --redirectUri 'NVIozAB7gfChLRRB' \
    > test.out 2>&1
eval_tap $? 274 'PublicWebLinkPlatform' test.out

#- 275 PublicWebLinkPlatformEstablish
samples/cli/sample-apps Iam publicWebLinkPlatformEstablish \
    --namespace $AB_NAMESPACE \
    --platformId 'jNp44W3vbW60kaJO' \
    --code 'I94L3e715k5eQqRN' \
    --state 'PaDXHTBFcipuwNah' \
    > test.out 2>&1
eval_tap $? 275 'PublicWebLinkPlatformEstablish' test.out

#- 276 PublicProcessWebLinkPlatformV3
samples/cli/sample-apps Iam publicProcessWebLinkPlatformV3 \
    --namespace $AB_NAMESPACE \
    --platformId '4hnkwRo5FLe9vRlT' \
    --code 'HWCZd08BOVA4xN9D' \
    --state 'HtX4eGLeVz25aDlV' \
    > test.out 2>&1
eval_tap $? 276 'PublicProcessWebLinkPlatformV3' test.out

#- 277 PublicGetUsersPlatformInfosV3
samples/cli/sample-apps Iam publicGetUsersPlatformInfosV3 \
    --namespace $AB_NAMESPACE \
    --body '{"platformId": "QokHQf1W7ZwKlvCV", "userIds": ["Oq5umhl2e0G8umXX", "8vA7mVRyUJqP7GZW", "wIMOQ64AvNKyHIg2"]}' \
    > test.out 2>&1
eval_tap $? 277 'PublicGetUsersPlatformInfosV3' test.out

#- 278 ResetPasswordV3
samples/cli/sample-apps Iam resetPasswordV3 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "JfB9sO2jRPFEcGOH", "emailAddress": "DD66xh5tT75jxCqG", "newPassword": "6WM8Jltjv4rUIw7v"}' \
    > test.out 2>&1
eval_tap $? 278 'ResetPasswordV3' test.out

#- 279 PublicGetUserByUserIdV3
eval_tap 0 279 'PublicGetUserByUserIdV3 # SKIP deprecated' test.out

#- 280 PublicGetUserBanHistoryV3
samples/cli/sample-apps Iam publicGetUserBanHistoryV3 \
    --namespace $AB_NAMESPACE \
    --userId 'dv40OTTt1xCkMBLs' \
    --activeOnly 'true' \
    --after 'twQ1jsrKSDjJS0jG' \
    --before 'jxbbMWDoEiulneIk' \
    --limit '33' \
    > test.out 2>&1
eval_tap $? 280 'PublicGetUserBanHistoryV3' test.out

#- 281 PublicListUserAllPlatformAccountsDistinctV3
samples/cli/sample-apps Iam publicListUserAllPlatformAccountsDistinctV3 \
    --namespace $AB_NAMESPACE \
    --userId 'loCe4euiNryI5pND' \
    > test.out 2>&1
eval_tap $? 281 'PublicListUserAllPlatformAccountsDistinctV3' test.out

#- 282 PublicGetUserInformationV3
samples/cli/sample-apps Iam publicGetUserInformationV3 \
    --namespace $AB_NAMESPACE \
    --userId 'Pd1zbcu6ne6faZE2' \
    > test.out 2>&1
eval_tap $? 282 'PublicGetUserInformationV3' test.out

#- 283 PublicGetUserLoginHistoriesV3
samples/cli/sample-apps Iam publicGetUserLoginHistoriesV3 \
    --namespace $AB_NAMESPACE \
    --userId 'GCDNVQ6b3LkNowNj' \
    --after '0.5650038068080516' \
    --before '0.5869751048243851' \
    --limit '30' \
    > test.out 2>&1
eval_tap $? 283 'PublicGetUserLoginHistoriesV3' test.out

#- 284 PublicGetUserPlatformAccountsV3
samples/cli/sample-apps Iam publicGetUserPlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId '9WiWgM39i9oGWN3D' \
    --after '3LiMEIH4uuHorv3C' \
    --before 'K3wPNizsoVQcC9dl' \
    --limit '69' \
    --platformId 'VSzOd2mdpzsiJGh9' \
    > test.out 2>&1
eval_tap $? 284 'PublicGetUserPlatformAccountsV3' test.out

#- 285 PublicListJusticePlatformAccountsV3
samples/cli/sample-apps Iam publicListJusticePlatformAccountsV3 \
    --namespace $AB_NAMESPACE \
    --userId 'N8vcWrOmy6X5yETP' \
    > test.out 2>&1
eval_tap $? 285 'PublicListJusticePlatformAccountsV3' test.out

#- 286 PublicLinkPlatformAccount
samples/cli/sample-apps Iam publicLinkPlatformAccount \
    --namespace $AB_NAMESPACE \
    --userId 'E4kbTB0eeA2IH2gm' \
    --body '{"platformId": "g7ZcSws20rrvIzQc", "platformUserId": "Hm5ivHNJTmzqyl7y"}' \
    > test.out 2>&1
eval_tap $? 286 'PublicLinkPlatformAccount' test.out

#- 287 PublicForceLinkPlatformWithProgression
samples/cli/sample-apps Iam publicForceLinkPlatformWithProgression \
    --namespace $AB_NAMESPACE \
    --userId 'RadLGtMm74mhoCEK' \
    --body '{"chosenNamespaces": ["myqcIZd5kyJ9sIoq", "8UoPtthZIbQvwaHK", "ywERXqQ6PymG3go5"], "requestId": "XD8eMNqmRPuju1wK"}' \
    > test.out 2>&1
eval_tap $? 287 'PublicForceLinkPlatformWithProgression' test.out

#- 288 PublicGetPublisherUserV3
samples/cli/sample-apps Iam publicGetPublisherUserV3 \
    --namespace $AB_NAMESPACE \
    --userId 'h7CAe5MqK7qDeaKg' \
    > test.out 2>&1
eval_tap $? 288 'PublicGetPublisherUserV3' test.out

#- 289 PublicValidateUserByUserIDAndPasswordV3
samples/cli/sample-apps Iam publicValidateUserByUserIDAndPasswordV3 \
    --namespace $AB_NAMESPACE \
    --userId 'bvEwoPGxsYY42Zio' \
    --password '2Yrlq8YZrG51OmdT' \
    > test.out 2>&1
eval_tap $? 289 'PublicValidateUserByUserIDAndPasswordV3' test.out

#- 290 PublicGetRolesV3
samples/cli/sample-apps Iam publicGetRolesV3 \
    --after 'omMgHQzgGGvLPPxr' \
    --before 'l8mE598fkaP0M88z' \
    --isWildcard 'false' \
    --limit '7' \
    > test.out 2>&1
eval_tap $? 290 'PublicGetRolesV3' test.out

#- 291 PublicGetRoleV3
samples/cli/sample-apps Iam publicGetRoleV3 \
    --roleId 'JbY9Fu21UNA0Ek6z' \
    > test.out 2>&1
eval_tap $? 291 'PublicGetRoleV3' test.out

#- 292 PublicGetMyUserV3
samples/cli/sample-apps Iam publicGetMyUserV3 \
    --includeAllPlatforms 'false' \
    > test.out 2>&1
eval_tap $? 292 'PublicGetMyUserV3' test.out

#- 293 PublicGetLinkHeadlessAccountToMyAccountConflictV3
samples/cli/sample-apps Iam publicGetLinkHeadlessAccountToMyAccountConflictV3 \
    --oneTimeLinkCode 'ps3aWtQ7YboSbgl9' \
    > test.out 2>&1
eval_tap $? 293 'PublicGetLinkHeadlessAccountToMyAccountConflictV3' test.out

#- 294 LinkHeadlessAccountToMyAccountV3
samples/cli/sample-apps Iam linkHeadlessAccountToMyAccountV3 \
    --body '{"chosenNamespaces": ["nCXSU8gSKF96LxY0", "8ET9kN0eC29pcAIv", "UPfAp1H3TELEYgEH"], "oneTimeLinkCode": "r0PWZDTAJWS8isb8"}' \
    > test.out 2>&1
eval_tap $? 294 'LinkHeadlessAccountToMyAccountV3' test.out

#- 295 PublicSendVerificationLinkV3
samples/cli/sample-apps Iam publicSendVerificationLinkV3 \
    --body '{"languageTag": "UkaK07wqEBi5rNUz"}' \
    > test.out 2>&1
eval_tap $? 295 'PublicSendVerificationLinkV3' test.out

#- 296 PublicVerifyUserByLinkV3
samples/cli/sample-apps Iam publicVerifyUserByLinkV3 \
    --code 'bWkO2SydEzBZiGJi' \
    > test.out 2>&1
eval_tap $? 296 'PublicVerifyUserByLinkV3' test.out

#- 297 PlatformAuthenticateSAMLV3Handler
samples/cli/sample-apps Iam platformAuthenticateSAMLV3Handler \
    --platformId 'Nf4DGWL8vIFIHhrB' \
    --code 'meBThU7miKgrv5DW' \
    --error 'd8FoB5Ru7xmaUDct' \
    --state '9mNtOrJHWylMf9t6' \
    > test.out 2>&1
eval_tap $? 297 'PlatformAuthenticateSAMLV3Handler' test.out

#- 298 LoginSSOClient
samples/cli/sample-apps Iam loginSSOClient \
    --platformId 'ZdqEC2RQQoGBEcnp' \
    --payload 'QxzuD5pdC1Ep3D5n' \
    > test.out 2>&1
eval_tap $? 298 'LoginSSOClient' test.out

#- 299 LogoutSSOClient
samples/cli/sample-apps Iam logoutSSOClient \
    --platformId 'nHjbMFwqHZ6fP4DL' \
    > test.out 2>&1
eval_tap $? 299 'LogoutSSOClient' test.out

#- 300 RequestTargetTokenResponseV3
samples/cli/sample-apps Iam requestTargetTokenResponseV3 \
    --additionalData '7M0Xr3pDavOyUYXD' \
    --code 'iENXeqCXkWv3OiIS' \
    > test.out 2>&1
eval_tap $? 300 'RequestTargetTokenResponseV3' test.out

#- 301 AdminGetDevicesByUserV4
samples/cli/sample-apps Iam adminGetDevicesByUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'l5FaT1UwFTH8y7hA' \
    > test.out 2>&1
eval_tap $? 301 'AdminGetDevicesByUserV4' test.out

#- 302 AdminGetBannedDevicesV4
samples/cli/sample-apps Iam adminGetBannedDevicesV4 \
    --namespace $AB_NAMESPACE \
    --deviceType '5g74qMRWaiORTLEE' \
    --endDate 'jfZOnKAb3LQQ64JY' \
    --limit '51' \
    --offset '12' \
    --startDate 'htg5ETXoo4HnECqY' \
    > test.out 2>&1
eval_tap $? 302 'AdminGetBannedDevicesV4' test.out

#- 303 AdminGetUserDeviceBansV4
samples/cli/sample-apps Iam adminGetUserDeviceBansV4 \
    --namespace $AB_NAMESPACE \
    --userId 'f5UWpbnBMg7AwHrS' \
    > test.out 2>&1
eval_tap $? 303 'AdminGetUserDeviceBansV4' test.out

#- 304 AdminBanDeviceV4
samples/cli/sample-apps Iam adminBanDeviceV4 \
    --namespace $AB_NAMESPACE \
    --body '{"comment": "zi5CtkYUogL41s7g", "deviceId": "b4w2id2JWETDeU03", "deviceType": "WxEtxzGFoVnkedVg", "enabled": true, "endDate": "x6uPSZE6DCZRRKLX", "ext": {"ikswV3NCmMeAT0GQ": {}, "XX2sLh0n6sKwk1y3": {}, "UVDcYNvzIsb62CBa": {}}, "reason": "jPQdrqF83INxe9Rp"}' \
    > test.out 2>&1
eval_tap $? 304 'AdminBanDeviceV4' test.out

#- 305 AdminGetDeviceBanV4
samples/cli/sample-apps Iam adminGetDeviceBanV4 \
    --banId 'QSRDcKuMzWvLdE0Y' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 305 'AdminGetDeviceBanV4' test.out

#- 306 AdminUpdateDeviceBanV4
samples/cli/sample-apps Iam adminUpdateDeviceBanV4 \
    --banId 'wmghE7EFO5pbljIc' \
    --namespace $AB_NAMESPACE \
    --body '{"enabled": false}' \
    > test.out 2>&1
eval_tap $? 306 'AdminUpdateDeviceBanV4' test.out

#- 307 AdminGenerateReportV4
samples/cli/sample-apps Iam adminGenerateReportV4 \
    --namespace $AB_NAMESPACE \
    --endDate '9HYOfqttzQwC6tTi' \
    --startDate 'QbAGPJPN083HmY5H' \
    --deviceType 'lPVXNLtc7Hq8EcM4' \
    > test.out 2>&1
eval_tap $? 307 'AdminGenerateReportV4' test.out

#- 308 AdminGetDeviceTypesV4
samples/cli/sample-apps Iam adminGetDeviceTypesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 308 'AdminGetDeviceTypesV4' test.out

#- 309 AdminGetDeviceBansV4
samples/cli/sample-apps Iam adminGetDeviceBansV4 \
    --deviceId 'aZNQGeMf8NC1cfud' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 309 'AdminGetDeviceBansV4' test.out

#- 310 AdminDecryptDeviceV4
samples/cli/sample-apps Iam adminDecryptDeviceV4 \
    --deviceId 'dykt2aJZl0EfSDnP' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 310 'AdminDecryptDeviceV4' test.out

#- 311 AdminUnbanDeviceV4
samples/cli/sample-apps Iam adminUnbanDeviceV4 \
    --deviceId 'OQF8mBdA3xjIISic' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 311 'AdminUnbanDeviceV4' test.out

#- 312 AdminGetUsersByDeviceV4
samples/cli/sample-apps Iam adminGetUsersByDeviceV4 \
    --deviceId 'hs5bz4vQRdRo239W' \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 312 'AdminGetUsersByDeviceV4' test.out

#- 313 AdminCreateTestUsersV4
samples/cli/sample-apps Iam adminCreateTestUsersV4 \
    --namespace $AB_NAMESPACE \
    --body '{"count": 46}' \
    > test.out 2>&1
eval_tap $? 313 'AdminCreateTestUsersV4' test.out

#- 314 AdminCreateUserV4
samples/cli/sample-apps Iam adminCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "6oM0NyD8P6wwcaHC", "policyId": "Utp6dA9FIELVQbNa", "policyVersionId": "sf0vwvxQdOz6lx2m"}, {"isAccepted": true, "localizedPolicyVersionId": "Z4CAtvyigKIP3Pyw", "policyId": "m3VxKNFkObrmo9z2", "policyVersionId": "Hfv2wfvRGVar63GW"}, {"isAccepted": true, "localizedPolicyVersionId": "DJSv3WqRxklxUKEl", "policyId": "S6yynuQbRsHwHGLM", "policyVersionId": "po1mqXViYQD50Nfs"}], "authType": "EMAILPASSWD", "code": "vN98xM4XSpIdWdiP", "country": "VyE00L9Jo8WSxKGU", "dateOfBirth": "hHnJogSJOHzhTKoM", "displayName": "cS3SULEfq1SNLSab", "emailAddress": "4qDHkLhAsFwpFRlr", "password": "PxzgYkyfG48Ede4Z", "passwordMD5Sum": "pmqOsZR1ClHhZ5iS", "reachMinimumAge": true, "uniqueDisplayName": "nSDxJPenERyBj3oZ", "username": "pOlpFOC6myIENS7E"}' \
    > test.out 2>&1
eval_tap $? 314 'AdminCreateUserV4' test.out

#- 315 AdminBulkUpdateUserAccountTypeV4
samples/cli/sample-apps Iam adminBulkUpdateUserAccountTypeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"testAccount": true, "userIds": ["iZJDzwvqkgVrisoR", "iMnSt6FLwAYtHkAU", "1twm7fJDWZsfdiKn"]}' \
    > test.out 2>&1
eval_tap $? 315 'AdminBulkUpdateUserAccountTypeV4' test.out

#- 316 AdminBulkCheckValidUserIDV4
samples/cli/sample-apps Iam adminBulkCheckValidUserIDV4 \
    --namespace $AB_NAMESPACE \
    --body '{"userIds": ["FjNmDWNxrMHUI9FB", "NyU8LBt2flLX57HQ", "UrPEQh2wB6OnwRAo"]}' \
    > test.out 2>&1
eval_tap $? 316 'AdminBulkCheckValidUserIDV4' test.out

#- 317 AdminUpdateUserV4
samples/cli/sample-apps Iam adminUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --userId 'ut56K2VbKNGejggV' \
    --body '{"avatarUrl": "Wbns76QsMFr1Qe1T", "country": "WgB6PiJUK51Zd25z", "dateOfBirth": "T3eNeu115rmm1s4u", "displayName": "r2KcdhexhvLEzLOj", "languageTag": "MLsRng3a8DoFpb4n", "skipLoginQueue": false, "uniqueDisplayName": "Q9WTOXdNlFXCeIHy", "userName": "QtxkltCqhuCxNzLr"}' \
    > test.out 2>&1
eval_tap $? 317 'AdminUpdateUserV4' test.out

#- 318 AdminUpdateUserEmailAddressV4
samples/cli/sample-apps Iam adminUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --userId 'xeH8FDOF9GNA99so' \
    --body '{"code": "HmKhJl9NoaOYGODD", "emailAddress": "zgjeOY8QFucD9HmL"}' \
    > test.out 2>&1
eval_tap $? 318 'AdminUpdateUserEmailAddressV4' test.out

#- 319 AdminDisableUserMFAV4
samples/cli/sample-apps Iam adminDisableUserMFAV4 \
    --namespace $AB_NAMESPACE \
    --userId '9OuHeCOSml1sNUIR' \
    > test.out 2>&1
eval_tap $? 319 'AdminDisableUserMFAV4' test.out

#- 320 AdminListUserRolesV4
samples/cli/sample-apps Iam adminListUserRolesV4 \
    --namespace $AB_NAMESPACE \
    --userId 'Ysd5VkzVc69RwsN0' \
    > test.out 2>&1
eval_tap $? 320 'AdminListUserRolesV4' test.out

#- 321 AdminUpdateUserRoleV4
samples/cli/sample-apps Iam adminUpdateUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '7lXYZZhhZ2yzAXA6' \
    --body '{"assignedNamespaces": ["H8YUZ2yTuMSclfeK", "Jns40tT17Ul1YshC", "aghlGo7YBeMxQmfV"], "roleId": "ac9JJsNEXAU1REOZ"}' \
    > test.out 2>&1
eval_tap $? 321 'AdminUpdateUserRoleV4' test.out

#- 322 AdminAddUserRoleV4
samples/cli/sample-apps Iam adminAddUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '0VIesPdqKYG59UVw' \
    --body '{"assignedNamespaces": ["Ct06zzTffOJ6Xlez", "OfXStdYAdby9oDN7", "Uczsij9DxLDl0u0z"], "roleId": "k3xP2whFCqDLxN2Y"}' \
    > test.out 2>&1
eval_tap $? 322 'AdminAddUserRoleV4' test.out

#- 323 AdminRemoveUserRoleV4
samples/cli/sample-apps Iam adminRemoveUserRoleV4 \
    --namespace $AB_NAMESPACE \
    --userId '1EqRQe6ARG5gl3uv' \
    --body '{"assignedNamespaces": ["fOQUm538rX6S967m", "Qt3kno2jWrl5lC1p", "UhN0WE9gAN5TNe3N"], "roleId": "khAdqtV0d2v8rbTB"}' \
    > test.out 2>&1
eval_tap $? 323 'AdminRemoveUserRoleV4' test.out

#- 324 AdminGetRolesV4
samples/cli/sample-apps Iam adminGetRolesV4 \
    --adminRole 'true' \
    --isWildcard 'true' \
    --limit '67' \
    --offset '24' \
    > test.out 2>&1
eval_tap $? 324 'AdminGetRolesV4' test.out

#- 325 AdminCreateRoleV4
samples/cli/sample-apps Iam adminCreateRoleV4 \
    --body '{"adminRole": true, "deletable": false, "isWildcard": true, "roleName": "URdT9Ve1aGLKGkcb"}' \
    > test.out 2>&1
eval_tap $? 325 'AdminCreateRoleV4' test.out

#- 326 AdminGetRoleV4
samples/cli/sample-apps Iam adminGetRoleV4 \
    --roleId 'XZ4S2h7T74Kq3ER8' \
    > test.out 2>&1
eval_tap $? 326 'AdminGetRoleV4' test.out

#- 327 AdminDeleteRoleV4
samples/cli/sample-apps Iam adminDeleteRoleV4 \
    --roleId '1xQq9wm04EWCsWbZ' \
    > test.out 2>&1
eval_tap $? 327 'AdminDeleteRoleV4' test.out

#- 328 AdminUpdateRoleV4
samples/cli/sample-apps Iam adminUpdateRoleV4 \
    --roleId '9tObrmWxJ1sATmkP' \
    --body '{"adminRole": true, "deletable": false, "isWildcard": false, "roleName": "MO73kKjjqG0SMQ9Y"}' \
    > test.out 2>&1
eval_tap $? 328 'AdminUpdateRoleV4' test.out

#- 329 AdminUpdateRolePermissionsV4
samples/cli/sample-apps Iam adminUpdateRolePermissionsV4 \
    --roleId 'xlrttJpSOOthB8oG' \
    --body '{"permissions": [{"action": 70, "resource": "s5mM470tl2QcTonk", "schedAction": 40, "schedCron": "d4iGj1zQvZ315gi4", "schedRange": ["wkgTADQRjyMxQpgc", "BsLKhjDxjiUdGo8r", "Npprfrm4lHMP1bQs"]}, {"action": 85, "resource": "eTgHoUG8PsoFvzrm", "schedAction": 55, "schedCron": "JtpxYmIOn6EI7IwM", "schedRange": ["K4WZfVI61DnTX61K", "JwucKebBuEzozXaw", "tx26lnEV5PL8KIIM"]}, {"action": 73, "resource": "gRwkTi0n2zi9UnpS", "schedAction": 93, "schedCron": "r9yCFcAw09dECngu", "schedRange": ["MLt1rPWsISSSVUNK", "3XAQGYQLBEmZnHzm", "DaAWBKOwspPU0Kzd"]}]}' \
    > test.out 2>&1
eval_tap $? 329 'AdminUpdateRolePermissionsV4' test.out

#- 330 AdminAddRolePermissionsV4
samples/cli/sample-apps Iam adminAddRolePermissionsV4 \
    --roleId 'Ih1y5vzV72u4jdp5' \
    --body '{"permissions": [{"action": 81, "resource": "VghOdEMdhRuevsUR", "schedAction": 83, "schedCron": "JAGJV9g2Dw7oH4ic", "schedRange": ["9Z3r9WbEkRXcHEob", "D58kdcbSgDsB3Rhg", "DzLBFCTDAEP1FI56"]}, {"action": 32, "resource": "IfkSNghd2kmA137N", "schedAction": 38, "schedCron": "rj02pyphrb9lNzyP", "schedRange": ["df2rqugwD25oftNA", "OjRI806rczAXhTUq", "ZLjJkLy3NaMKVIsQ"]}, {"action": 31, "resource": "cqHGJQMblXrjjzDA", "schedAction": 30, "schedCron": "1rzFLf8uk0SxT8Qz", "schedRange": ["JZLvRYTjD3k0ek5X", "wo2vNDXiv3OQGw9N", "Ijqj1YRmTjWDMaHu"]}]}' \
    > test.out 2>&1
eval_tap $? 330 'AdminAddRolePermissionsV4' test.out

#- 331 AdminDeleteRolePermissionsV4
samples/cli/sample-apps Iam adminDeleteRolePermissionsV4 \
    --roleId 'LWjuCfgogyRWAQuR' \
    --body '["9nz8UZBlqZWW8USz", "xCqWL9hNfe9JCbe9", "sunXIOhLmwp9w4oo"]' \
    > test.out 2>&1
eval_tap $? 331 'AdminDeleteRolePermissionsV4' test.out

#- 332 AdminListAssignedUsersV4
samples/cli/sample-apps Iam adminListAssignedUsersV4 \
    --roleId 'jYBNh8Qz9fLuJLmK' \
    --after 'udMSiMbHPK6dUZ2U' \
    --before 'noTnYVO0DKE1VhLv' \
    --limit '67' \
    > test.out 2>&1
eval_tap $? 332 'AdminListAssignedUsersV4' test.out

#- 333 AdminAssignUserToRoleV4
samples/cli/sample-apps Iam adminAssignUserToRoleV4 \
    --roleId 'ihW07JZQVxxo1PpV' \
    --body '{"assignedNamespaces": ["OH8JAMjfwYROEibo", "ITLWxm94HeCx0C2G", "a2V3RsM6YFR3S4ob"], "namespace": "tP6m9JTcfaHmPs66", "userId": "qZZR98FRbHgRmkoo"}' \
    > test.out 2>&1
eval_tap $? 333 'AdminAssignUserToRoleV4' test.out

#- 334 AdminRevokeUserFromRoleV4
samples/cli/sample-apps Iam adminRevokeUserFromRoleV4 \
    --roleId 'JCQZEb0S4hWBK6qP' \
    --body '{"namespace": "48r1fH1RsVAaTqxe", "userId": "Oj5atCd6SRmQ9Lck"}' \
    > test.out 2>&1
eval_tap $? 334 'AdminRevokeUserFromRoleV4' test.out

#- 335 AdminInviteUserNewV4
samples/cli/sample-apps Iam adminInviteUserNewV4 \
    --body '{"assignedNamespaces": ["LJquv67jeTSPctzT", "Zs4bnTtfDRyhHNeO", "c9DvrAzFrJ1aVC0c"], "emailAddresses": ["kfhviX67WartwVCD", "PrsoINlKPtNCTvQM", "pwfLCNBNwCHlAKr6"], "isAdmin": false, "isNewStudio": true, "namespace": "MlGu0tz2ioydWPnd", "roleId": "h2Gc8u2mypoI2RpA"}' \
    > test.out 2>&1
eval_tap $? 335 'AdminInviteUserNewV4' test.out

#- 336 AdminUpdateMyUserV4
samples/cli/sample-apps Iam adminUpdateMyUserV4 \
    --body '{"avatarUrl": "JYXOo7oe9i0ShkQ6", "country": "is8JUKrNJ4UgRox2", "dateOfBirth": "RybVnl6w0nW195bw", "displayName": "RJbmNGVfsb2q1vsM", "languageTag": "w0MNcuUhUt9G8IAD", "skipLoginQueue": false, "uniqueDisplayName": "fl9s6Xeqzp83J3BT", "userName": "y9MHKFDcNpeXjRuh"}' \
    > test.out 2>&1
eval_tap $? 336 'AdminUpdateMyUserV4' test.out

#- 337 AdminDisableMyAuthenticatorV4
samples/cli/sample-apps Iam adminDisableMyAuthenticatorV4 \
    > test.out 2>&1
eval_tap $? 337 'AdminDisableMyAuthenticatorV4' test.out

#- 338 AdminEnableMyAuthenticatorV4
samples/cli/sample-apps Iam adminEnableMyAuthenticatorV4 \
    --code 'cmK6vyfRELZ8HlCD' \
    > test.out 2>&1
eval_tap $? 338 'AdminEnableMyAuthenticatorV4' test.out

#- 339 AdminGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam adminGenerateMyAuthenticatorKeyV4 \
    > test.out 2>&1
eval_tap $? 339 'AdminGenerateMyAuthenticatorKeyV4' test.out

#- 340 AdminGetMyBackupCodesV4
eval_tap 0 340 'AdminGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 341 AdminGenerateMyBackupCodesV4
eval_tap 0 341 'AdminGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 342 AdminDisableMyBackupCodesV4
samples/cli/sample-apps Iam adminDisableMyBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 342 'AdminDisableMyBackupCodesV4' test.out

#- 343 AdminDownloadMyBackupCodesV4
eval_tap 0 343 'AdminDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 344 AdminEnableMyBackupCodesV4
eval_tap 0 344 'AdminEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 345 AdminGetBackupCodesV4
samples/cli/sample-apps Iam adminGetBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 345 'AdminGetBackupCodesV4' test.out

#- 346 AdminGenerateBackupCodesV4
samples/cli/sample-apps Iam adminGenerateBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 346 'AdminGenerateBackupCodesV4' test.out

#- 347 AdminEnableBackupCodesV4
samples/cli/sample-apps Iam adminEnableBackupCodesV4 \
    > test.out 2>&1
eval_tap $? 347 'AdminEnableBackupCodesV4' test.out

#- 348 AdminSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam adminSendMyMFAEmailCodeV4 \
    > test.out 2>&1
eval_tap $? 348 'AdminSendMyMFAEmailCodeV4' test.out

#- 349 AdminDisableMyEmailV4
samples/cli/sample-apps Iam adminDisableMyEmailV4 \
    > test.out 2>&1
eval_tap $? 349 'AdminDisableMyEmailV4' test.out

#- 350 AdminEnableMyEmailV4
samples/cli/sample-apps Iam adminEnableMyEmailV4 \
    --code 'k3uk4DUwPZNB5Xth' \
    > test.out 2>&1
eval_tap $? 350 'AdminEnableMyEmailV4' test.out

#- 351 AdminGetMyEnabledFactorsV4
samples/cli/sample-apps Iam adminGetMyEnabledFactorsV4 \
    > test.out 2>&1
eval_tap $? 351 'AdminGetMyEnabledFactorsV4' test.out

#- 352 AdminMakeFactorMyDefaultV4
samples/cli/sample-apps Iam adminMakeFactorMyDefaultV4 \
    --factor 'qimouSdfwjnJ3ihw' \
    > test.out 2>&1
eval_tap $? 352 'AdminMakeFactorMyDefaultV4' test.out

#- 353 AdminInviteUserV4
eval_tap 0 353 'AdminInviteUserV4 # SKIP deprecated' test.out

#- 354 AuthenticationWithPlatformLinkV4
samples/cli/sample-apps Iam authenticationWithPlatformLinkV4 \
    --extendExp 'true' \
    --clientId 'mTVUczJVKn4lNrIs' \
    --linkingToken 'kKLtIsgU1ueY544Q' \
    --password 'FWGcC81gCcBaCShS' \
    --username 'S69GsjRDMeoG76rM' \
    > test.out 2>&1
eval_tap $? 354 'AuthenticationWithPlatformLinkV4' test.out

#- 355 GenerateTokenByNewHeadlessAccountV4
samples/cli/sample-apps Iam generateTokenByNewHeadlessAccountV4 \
    --additionalData 'YPwJ2jnnEgUAvfMb' \
    --extendExp 'true' \
    --linkingToken 'hWIJwMqbpNb0pMdz' \
    > test.out 2>&1
eval_tap $? 355 'GenerateTokenByNewHeadlessAccountV4' test.out

#- 356 Verify2faCodeV4
samples/cli/sample-apps Iam verify2faCodeV4 \
    --code '6t6FOQMG1a3FXnRb' \
    --factor 'ssgvHQYxr0YYetrF' \
    --mfaToken '0iIkVnpCNcMP58zK' \
    --rememberDevice 'false' \
    > test.out 2>&1
eval_tap $? 356 'Verify2faCodeV4' test.out

#- 357 PlatformTokenGrantV4
samples/cli/sample-apps Iam platformTokenGrantV4 \
    --platformId 'e42j5bbbgS3WnOQg' \
    --codeChallenge 'S32PgwSmZeeWgcub' \
    --codeChallengeMethod 'plain' \
    --additionalData 'vP1ybvJPmiMvNtRA' \
    --clientId '3fW0H4f5TFZlzpm5' \
    --createHeadless 'false' \
    --deviceId 'Ci5ntBoO9C7xNE47' \
    --macAddress 'torAsYhz5Hj4qS2G' \
    --platformToken 'VW2UNngzYqtGQQYz' \
    --skipSetCookie 'true' \
    > test.out 2>&1
eval_tap $? 357 'PlatformTokenGrantV4' test.out

#- 358 SimultaneousLoginV4
samples/cli/sample-apps Iam simultaneousLoginV4 \
    --codeChallenge 'CXy1CSHDkndYVvds' \
    --codeChallengeMethod 'plain' \
    --simultaneousPlatform 'pspc' \
    --simultaneousTicket 'n07s18ioYQfYZNoa' \
    --nativePlatform 'steam' \
    --nativePlatformTicket 'r4QYLWb1TMnqmTWK' \
    > test.out 2>&1
eval_tap $? 358 'SimultaneousLoginV4' test.out

#- 359 TokenGrantV4
samples/cli/sample-apps Iam tokenGrantV4 \
    --codeChallenge 'kPbjtZzDpUdMiP2g' \
    --codeChallengeMethod 'plain' \
    --additionalData 'ka89kXsKq2yAcjkP' \
    --clientId 'Y6IVDGXrJjXNQDW5' \
    --code 'CQ0DYVLcFXCQvnot' \
    --codeVerifier 'eTaEQfeKcWUebsjT' \
    --extendNamespace 'cEgLiDIsk5ud4t0b' \
    --extendExp 'true' \
    --loginQueueTicket 'ZxQyGcZjxLfkVjvz' \
    --password '4iecSSltNmUmeNaO' \
    --redirectUri 'p3ORHrsR52Oe9qCP' \
    --refreshToken 'OYQKHeJA2FtCjdxI' \
    --username 'vhm61UkNU9OuIiLe' \
    --grantType 'refresh_token' \
    > test.out 2>&1
eval_tap $? 359 'TokenGrantV4' test.out

#- 360 RequestTargetTokenResponseV4
samples/cli/sample-apps Iam requestTargetTokenResponseV4 \
    --additionalData 'JTREIG5UYp8V6TDa' \
    --code 'NKKGC1uasd9cLKPI' \
    > test.out 2>&1
eval_tap $? 360 'RequestTargetTokenResponseV4' test.out

#- 361 PublicCreateTestUserV4
samples/cli/sample-apps Iam publicCreateTestUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": false, "localizedPolicyVersionId": "RcgbQp3DazMLYe4n", "policyId": "TZzZr5BRoOC0C9ue", "policyVersionId": "Y9GDjOuDB7jqF28h"}, {"isAccepted": true, "localizedPolicyVersionId": "p4mkw8OnXY5OUgVQ", "policyId": "ROcSK2H8ckpJCDyd", "policyVersionId": "L9XrKAJh5bWfqvs8"}, {"isAccepted": false, "localizedPolicyVersionId": "SzCGp6x5impHcgAy", "policyId": "zeN2eltuPZ8g27Y8", "policyVersionId": "BOb9KubLSsEelhx1"}], "authType": "EMAILPASSWD", "country": "v6jRoYJBDD6Up44n", "dateOfBirth": "pxSt1DYqlOAtTbnR", "displayName": "H7bU7ZRIR1IGA5ye", "emailAddress": "mEGXTdflBHtoSim4", "password": "Bzk1ZMsL5z7zcKtj", "passwordMD5Sum": "qezmMq81PUtNPYJV", "uniqueDisplayName": "b1W15LAvpIFOmSX7", "username": "p70rKOaGxn7ptTtZ", "verified": false}' \
    > test.out 2>&1
eval_tap $? 361 'PublicCreateTestUserV4' test.out

#- 362 PublicCreateUserV4
samples/cli/sample-apps Iam publicCreateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "zpDx3n72mlNBMIHK", "policyId": "hvmDR8PjFA3LO6vv", "policyVersionId": "033sBmXP2iJVtgaf"}, {"isAccepted": true, "localizedPolicyVersionId": "sy84gv5DtQFiK99b", "policyId": "vcfZYBEphczZEYpr", "policyVersionId": "6HLeIZhQGuduls7b"}, {"isAccepted": false, "localizedPolicyVersionId": "W2mNieVhWKyy7K20", "policyId": "KE7en1Hlykj1nWJi", "policyVersionId": "wPxZK5ZXAg3IxrSK"}], "authType": "EMAILPASSWD", "code": "e8mIgDUaWtx5eUyM", "country": "A5cHumaJ3rDEMFii", "dateOfBirth": "iHryW6KIafLBUgvs", "displayName": "6Cu4daHQHmXAsxLG", "emailAddress": "f0P6GikLPbi4nnEJ", "password": "rDBn55MPdMpT0AkY", "passwordMD5Sum": "u6pIB58hrR6GZKKV", "reachMinimumAge": false, "uniqueDisplayName": "yy9j7RH87MhaLrSm", "username": "DFVK3LCaYigVj3N3"}' \
    > test.out 2>&1
eval_tap $? 362 'PublicCreateUserV4' test.out

#- 363 CreateUserFromInvitationV4
samples/cli/sample-apps Iam createUserFromInvitationV4 \
    --invitationId 'FgoFQ6YOehInS193' \
    --namespace $AB_NAMESPACE \
    --body '{"acceptedPolicies": [{"isAccepted": true, "localizedPolicyVersionId": "hmJ73RsiWlxVY2sp", "policyId": "jKfcpmCkDcvs7qgg", "policyVersionId": "IINm9EC82UquOg93"}, {"isAccepted": true, "localizedPolicyVersionId": "i46JF2luXNcGVMrm", "policyId": "3Fl83CWnPEizSJHI", "policyVersionId": "mV4Zr2ulCiy20Hm0"}, {"isAccepted": false, "localizedPolicyVersionId": "w4jdsOXpnP98mjJf", "policyId": "wbdBcffIPFoE07Hi", "policyVersionId": "Asw8FCQ8XykdI0JQ"}], "authType": "EMAILPASSWD", "code": "hn43BVXYF7giVqMm", "country": "xJV0X4mcQQz2O9CH", "dateOfBirth": "18C3sek6QIyDKJdf", "displayName": "pa8j2FcjGW3UwvYZ", "emailAddress": "PKbz82RX223mDltg", "password": "jB853idX5lNiBO52", "passwordMD5Sum": "nVvn70WBbaj4xc0S", "reachMinimumAge": true, "uniqueDisplayName": "dSMBTMnGuJfYZFnV", "username": "FjYJj5gAUgSPAQw7"}' \
    > test.out 2>&1
eval_tap $? 363 'CreateUserFromInvitationV4' test.out

#- 364 PublicUpdateUserV4
samples/cli/sample-apps Iam publicUpdateUserV4 \
    --namespace $AB_NAMESPACE \
    --body '{"avatarUrl": "fZyoIBXVPw9TsIrS", "country": "ASDe0bmISyRZlwW7", "dateOfBirth": "8sdwPRWJXY4qsvxQ", "displayName": "XyIxiFnlCSeCeWFC", "languageTag": "Hshp8QaE768IERZa", "uniqueDisplayName": "lNRlLIDaqwswd7mg", "userName": "rKNJmcOeoILXzgcv"}' \
    > test.out 2>&1
eval_tap $? 364 'PublicUpdateUserV4' test.out

#- 365 PublicUpdateUserEmailAddressV4
samples/cli/sample-apps Iam publicUpdateUserEmailAddressV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "8CmBOJNyLA2B1zHF", "emailAddress": "0H3khTVt7lP8YVu1"}' \
    > test.out 2>&1
eval_tap $? 365 'PublicUpdateUserEmailAddressV4' test.out

#- 366 PublicUpgradeHeadlessAccountWithVerificationCodeV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountWithVerificationCodeV4 \
    --namespace $AB_NAMESPACE \
    --body '{"code": "fNXnWbY2V8uj1rTs", "country": "dara2ET0gwYRewZ6", "dateOfBirth": "umZMDGFX1rvKf6jp", "displayName": "bbL5oYZtLCo94EEn", "emailAddress": "VWqU2uIu91oNbntA", "password": "AjVSom99m4gj8akR", "reachMinimumAge": true, "uniqueDisplayName": "p5FoLTYz7WAmdy66", "username": "Y8vPkOLyBJtnFRJ3", "validateOnly": false}' \
    > test.out 2>&1
eval_tap $? 366 'PublicUpgradeHeadlessAccountWithVerificationCodeV4' test.out

#- 367 PublicUpgradeHeadlessAccountV4
samples/cli/sample-apps Iam publicUpgradeHeadlessAccountV4 \
    --namespace $AB_NAMESPACE \
    --body '{"emailAddress": "jCWXLmnnhls0mcbI", "password": "GNRKd5xOZjckgv3G", "username": "gTz1WcypMS0i0XXC"}' \
    > test.out 2>&1
eval_tap $? 367 'PublicUpgradeHeadlessAccountV4' test.out

#- 368 PublicDisableMyAuthenticatorV4
samples/cli/sample-apps Iam publicDisableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 368 'PublicDisableMyAuthenticatorV4' test.out

#- 369 PublicEnableMyAuthenticatorV4
samples/cli/sample-apps Iam publicEnableMyAuthenticatorV4 \
    --namespace $AB_NAMESPACE \
    --code 'ZU9fVNe37l6cSHnq' \
    > test.out 2>&1
eval_tap $? 369 'PublicEnableMyAuthenticatorV4' test.out

#- 370 PublicGenerateMyAuthenticatorKeyV4
samples/cli/sample-apps Iam publicGenerateMyAuthenticatorKeyV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 370 'PublicGenerateMyAuthenticatorKeyV4' test.out

#- 371 PublicGetMyBackupCodesV4
eval_tap 0 371 'PublicGetMyBackupCodesV4 # SKIP deprecated' test.out

#- 372 PublicGenerateMyBackupCodesV4
eval_tap 0 372 'PublicGenerateMyBackupCodesV4 # SKIP deprecated' test.out

#- 373 PublicDisableMyBackupCodesV4
samples/cli/sample-apps Iam publicDisableMyBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 373 'PublicDisableMyBackupCodesV4' test.out

#- 374 PublicDownloadMyBackupCodesV4
eval_tap 0 374 'PublicDownloadMyBackupCodesV4 # SKIP deprecated' test.out

#- 375 PublicEnableMyBackupCodesV4
eval_tap 0 375 'PublicEnableMyBackupCodesV4 # SKIP deprecated' test.out

#- 376 PublicGetBackupCodesV4
samples/cli/sample-apps Iam publicGetBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 376 'PublicGetBackupCodesV4' test.out

#- 377 PublicGenerateBackupCodesV4
samples/cli/sample-apps Iam publicGenerateBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 377 'PublicGenerateBackupCodesV4' test.out

#- 378 PublicEnableBackupCodesV4
samples/cli/sample-apps Iam publicEnableBackupCodesV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 378 'PublicEnableBackupCodesV4' test.out

#- 379 PublicRemoveTrustedDeviceV4
samples/cli/sample-apps Iam publicRemoveTrustedDeviceV4 \
    --namespace $AB_NAMESPACE \
    --cookie 'device_token=foo' \
    > test.out 2>&1
eval_tap $? 379 'PublicRemoveTrustedDeviceV4' test.out

#- 380 PublicSendMyMFAEmailCodeV4
samples/cli/sample-apps Iam publicSendMyMFAEmailCodeV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 380 'PublicSendMyMFAEmailCodeV4' test.out

#- 381 PublicDisableMyEmailV4
samples/cli/sample-apps Iam publicDisableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 381 'PublicDisableMyEmailV4' test.out

#- 382 PublicEnableMyEmailV4
samples/cli/sample-apps Iam publicEnableMyEmailV4 \
    --namespace $AB_NAMESPACE \
    --code 'FzlYV1VMUWNqxIlM' \
    > test.out 2>&1
eval_tap $? 382 'PublicEnableMyEmailV4' test.out

#- 383 PublicGetMyEnabledFactorsV4
samples/cli/sample-apps Iam publicGetMyEnabledFactorsV4 \
    --namespace $AB_NAMESPACE \
    > test.out 2>&1
eval_tap $? 383 'PublicGetMyEnabledFactorsV4' test.out

#- 384 PublicMakeFactorMyDefaultV4
samples/cli/sample-apps Iam publicMakeFactorMyDefaultV4 \
    --namespace $AB_NAMESPACE \
    --factor '4fhKMRhH9agw5G2x' \
    > test.out 2>&1
eval_tap $? 384 'PublicMakeFactorMyDefaultV4' test.out

#- 385 PublicGetUserPublicInfoByUserIdV4
samples/cli/sample-apps Iam publicGetUserPublicInfoByUserIdV4 \
    --namespace $AB_NAMESPACE \
    --userId 'VfgvYGBmp5E7mpm0' \
    > test.out 2>&1
eval_tap $? 385 'PublicGetUserPublicInfoByUserIdV4' test.out

#- 386 PublicInviteUserV4
samples/cli/sample-apps Iam publicInviteUserV4 \
    --body '{"additionalData": "RW4K2Ooe1Z1TPyNE", "emailAddress": "t0KVEE5rPmIKOhqJ", "namespace": "wMmgwPtgWuZMblaK", "namespaceDisplayName": "5HXnLMFEwTNIH0du"}' \
    > test.out 2>&1
eval_tap $? 386 'PublicInviteUserV4' test.out


rm -f "tmp.dat"

exit $EXIT_CODE